//
//  PostViewController.swift
//  SalesCollector
//
//  Created by 陈雨梦 on 2020/4/23.
//  Copyright © 2020 northeastern. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import AWSAppSync
import AWSS3
import Amplify

class PostViewController: UIViewController,UITextViewDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate,CLLocationManagerDelegate {
    
    @IBOutlet weak var TextBotConstraint: NSLayoutConstraint!
    @IBOutlet weak var TextView: UITextView!
    let locationManager = CLLocationManager()
    let imagepicker = UIImagePickerController()
    var address:String?
    var imagePath:String?
    var appSyncClient:AWSAppSyncClient?
    var managedObjectContext: NSManagedObjectContext? = nil

    
    override func viewDidLoad() {
        super.viewDidLoad()
        TextView.becomeFirstResponder()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        NotificationCenter.default.addObserver(self, selector: #selector(_KeyboardHeightChanged(_:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
        TextView.text = "Share unkown Sale with others!"
        TextView.textColor = UIColor.gray
        locationManager.requestWhenInUseAuthorization()
        managedObjectContext = appDelegate.persistentContainer.viewContext
        if CLLocationManager.locationServicesEnabled(){
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        }
        // Do any additional setup after loading the view.
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location: CLLocation = manager.location else { return }
           fetchCityAndCountry(from: location) { city, state, street,error in
               guard let city = city, let state = state,let street = street, error == nil else { return }
            self.address = "Address:\(city),\(state),\(street)"
           }
    }
    
    func fetchCityAndCountry(from location: CLLocation, completion: @escaping (_ city: String?, _ state:  String?,_ street:String?, _ error: Error?) -> ()) {
        CLGeocoder().reverseGeocodeLocation(location) { placemarks, error in
            completion(placemarks?.first?.locality,
                       placemarks?.first?.administrativeArea,
                       placemarks?.first?.thoroughfare,
                       error)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(_KeyboardHeightChanged(_:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
        TextView.text = "Share unkown Sale with others!"
        TextView.textColor = UIColor.gray
    }
    @IBAction func Close(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    @objc private func _KeyboardHeightChanged(_ notification: Notification){
        if let frame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue{
            UIView.animate(withDuration: 0.5, animations: {
                self.TextBotConstraint.constant == 0 ? (self.TextBotConstraint.constant = frame.cgRectValue.height) : (self.TextBotConstraint.constant = 0)
            })
            
        }
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "Placeholder"
            textView.textColor = UIColor.lightGray
        }
    }
    
    @IBAction func PostSale(_ sender: UIBarButtonItem) {
        print(self.TextView.text)
        var imagesArray = [Any]()

        TextView.attributedText.enumerateAttribute(NSAttributedString.Key.attachment, in: NSRange(location: 0, length: TextView.attributedText.length), options: [], using: {(value,range,stop) -> Void in
              if (value is NSTextAttachment) {
                  let attachment: NSTextAttachment? = (value as? NSTextAttachment)
                  var image: UIImage? = nil

                  if ((attachment?.image) != nil) {
                    image = attachment?.image
                  } else {
                      image = attachment?.image(forBounds: (attachment?.bounds)!, textContainer: nil, characterIndex: range.location)
                  }

                  if image != nil {
                    imagesArray.append(image)
                  }
              }
          })
        if imagesArray.count == 0{
            imagePath = "No Image"
        }
       
//        var path = "imagesrc:\(imagePath)"
        let saveContent = TextView.text
        guard let user = try! managedObjectContext?.fetch(UserInfo.fetchRequest()) as? [UserInfo] else{return  }
        let time = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let date =  dateFormatter.string(from: time)
        guard let data = UIImage(named: imagePath!)!.resized(withPercentage: 0.2)?.jpegData(compressionQuality: 0.5)  else {return }
        let fileName = user.first!.id! + UUID().uuidString.prefix(10)
            uploadData(data: data, fileName: fileName)
        let filepath = "https://salesimage171909-dev.s3.amazonaws.com/public/\(fileName).jpg"
        let mutation = CreateUserSharingMutation(input: CreateUserSharingInput(shareId: UUID().uuidString, userId: (user.first?.id)!, content: saveContent!, releaseDate: date, imgSrc: filepath, title: "No"))
        appSyncClient?.perform(mutation: mutation){(result,error) in
            if let error = error {
                print("error\(error)")
            }
            print("Mutation Complete")
            let alert = UIAlertController(title: "title", message: "post success", preferredStyle: .alert  )
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil    ))
            self.present(alert, animated: true, completion: nil)
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func Location(_ sender: UIButton) {
       
        locationManager.startUpdatingLocation()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.locationManager.stopUpdatingLocation()
            print("address:\(self.address)")
            let NSstr = NSAttributedString(string: self.address ?? "Not found")
            self.TextView.textStorage.insert(NSstr, at: self.TextView.selectedRange.location)

        }
//        locationManager.stopUpdatingLocation()
//        print(
    }
    
    @IBAction func SharePhoto(_ sender: UIButton) {
        
        imagepicker.delegate = self
        imagepicker.allowsEditing = false
        imagepicker.sourceType = .photoLibrary
        self.present(imagepicker, animated: true, completion: nil)
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            let attachment = NSTextAttachment()
            attachment.image = pickedImage
            let newImageWidth = (TextView.bounds.size.width - 20 )
            let scale = newImageWidth/pickedImage.size.width
            let newImageHeight = pickedImage.size.height * scale
            //resize this
            let imageURL = info[UIImagePickerController.InfoKey.imageURL] as? URL
            imagePath = imageURL?.path ?? ""
            
            attachment.bounds = CGRect.init(x: 0, y: 0, width: newImageWidth, height: newImageHeight)
            //put your NSTextAttachment into and attributedString
            let attString = NSAttributedString(attachment: attachment)
            //add this attributed string to the current position.
            TextView.textStorage.insert(attString, at: TextView.selectedRange.location)
        }
        
           dismiss(animated: true, completion: nil)
       }
       
       func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
           dismiss(animated: true, completion: nil)
       }
    
    
    
    
    
    func uploadData(data:Data,fileName:String) {

//      let data: Data = Data() // Data to be uploaded

      let expression = AWSS3TransferUtilityUploadExpression()
         expression.progressBlock = {(task, progress) in
            DispatchQueue.main.async(execute: {
              // Do something e.g. Update a progress bar.
           })
      }

      var completionHandler: AWSS3TransferUtilityUploadCompletionHandlerBlock?
      completionHandler = { (task, error) -> Void in
         DispatchQueue.main.async(execute: {
            // Do something e.g. Alert a user for transfer completion.
            // On failed uploads, `error` contains the error object.
            print("s3 upload error \(error)")
         })
      }

      let transferUtility = AWSS3TransferUtility.default()

      transferUtility.uploadData(data,
           bucket: "salesimage171909-dev",
           key: "public/\(fileName).jpg",
           contentType: "image/jpg",
           expression: expression,
           completionHandler: completionHandler).continueWith {
              (task) -> AnyObject? in
                  if let error = task.error {
                     print("Error: \(error.localizedDescription)")
                  }

                  if let _ = task.result {
                     // Do something with uploadTask.
                    print("upload success")
                  }
                  return nil;
          }
    }
    
}





extension UIImage {
    func resized(withPercentage percentage: CGFloat, isOpaque: Bool = true) -> UIImage? {
        let canvas = CGSize(width: size.width * percentage, height: size.height * percentage)
        let format = imageRendererFormat
        format.opaque = isOpaque
        return UIGraphicsImageRenderer(size: canvas, format: format).image {
            _ in draw(in: CGRect(origin: .zero, size: canvas))
        }
    }
    func resized(toWidth width: CGFloat, isOpaque: Bool = true) -> UIImage? {
        let canvas = CGSize(width: width, height: CGFloat(ceil(width/size.width * size.height)))
        let format = imageRendererFormat
        format.opaque = isOpaque
        return UIGraphicsImageRenderer(size: canvas, format: format).image {
            _ in draw(in: CGRect(origin: .zero, size: canvas))
        }
    }
}
