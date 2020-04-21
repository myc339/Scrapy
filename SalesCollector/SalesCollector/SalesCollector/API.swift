//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateMyTypeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, title: String, content: String, price: Int? = nil, rating: Double? = nil) {
    graphQLMap = ["id": id, "title": title, "content": content, "price": price, "rating": rating]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var title: String {
    get {
      return graphQLMap["title"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var content: String {
    get {
      return graphQLMap["content"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var price: Int? {
    get {
      return graphQLMap["price"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "price")
    }
  }

  public var rating: Double? {
    get {
      return graphQLMap["rating"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "rating")
    }
  }
}

public struct ModelMyTypeConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(title: ModelStringInput? = nil, content: ModelStringInput? = nil, price: ModelIntInput? = nil, rating: ModelFloatInput? = nil, and: [ModelMyTypeConditionInput?]? = nil, or: [ModelMyTypeConditionInput?]? = nil, not: ModelMyTypeConditionInput? = nil) {
    graphQLMap = ["title": title, "content": content, "price": price, "rating": rating, "and": and, "or": or, "not": not]
  }

  public var title: ModelStringInput? {
    get {
      return graphQLMap["title"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var content: ModelStringInput? {
    get {
      return graphQLMap["content"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var price: ModelIntInput? {
    get {
      return graphQLMap["price"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "price")
    }
  }

  public var rating: ModelFloatInput? {
    get {
      return graphQLMap["rating"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "rating")
    }
  }

  public var and: [ModelMyTypeConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelMyTypeConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelMyTypeConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelMyTypeConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelMyTypeConditionInput? {
    get {
      return graphQLMap["not"] as! ModelMyTypeConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct ModelIntInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public struct ModelFloatInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Double? = nil, eq: Double? = nil, le: Double? = nil, lt: Double? = nil, ge: Double? = nil, gt: Double? = nil, between: [Double?]? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Double? {
    get {
      return graphQLMap["ne"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Double? {
    get {
      return graphQLMap["eq"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Double? {
    get {
      return graphQLMap["le"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Double? {
    get {
      return graphQLMap["lt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Double? {
    get {
      return graphQLMap["ge"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Double? {
    get {
      return graphQLMap["gt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Double?]? {
    get {
      return graphQLMap["between"] as! [Double?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public struct UpdateMyTypeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, title: String? = nil, content: String? = nil, price: Int? = nil, rating: Double? = nil) {
    graphQLMap = ["id": id, "title": title, "content": content, "price": price, "rating": rating]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var title: String? {
    get {
      return graphQLMap["title"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var content: String? {
    get {
      return graphQLMap["content"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var price: Int? {
    get {
      return graphQLMap["price"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "price")
    }
  }

  public var rating: Double? {
    get {
      return graphQLMap["rating"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "rating")
    }
  }
}

public struct DeleteMyTypeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateStopshopInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(itemId: String, storeCode: String, coupon: String, category: String, item: String, imageSrc: String, priceTag: String, validity: String, itemDisclaimerText: String, itemDescription: String, salesStory: String, link: String) {
    graphQLMap = ["ItemId": itemId, "storeCode": storeCode, "Coupon": coupon, "category": category, "Item": item, "ImageSrc": imageSrc, "PriceTag": priceTag, "validity": validity, "itemDisclaimerText": itemDisclaimerText, "itemDescription": itemDescription, "SalesStory": salesStory, "link": link]
  }

  public var itemId: String {
    get {
      return graphQLMap["ItemId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ItemId")
    }
  }

  public var storeCode: String {
    get {
      return graphQLMap["storeCode"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "storeCode")
    }
  }

  public var coupon: String {
    get {
      return graphQLMap["Coupon"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Coupon")
    }
  }

  public var category: String {
    get {
      return graphQLMap["category"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "category")
    }
  }

  public var item: String {
    get {
      return graphQLMap["Item"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Item")
    }
  }

  public var imageSrc: String {
    get {
      return graphQLMap["ImageSrc"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ImageSrc")
    }
  }

  public var priceTag: String {
    get {
      return graphQLMap["PriceTag"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "PriceTag")
    }
  }

  public var validity: String {
    get {
      return graphQLMap["validity"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "validity")
    }
  }

  public var itemDisclaimerText: String {
    get {
      return graphQLMap["itemDisclaimerText"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "itemDisclaimerText")
    }
  }

  public var itemDescription: String {
    get {
      return graphQLMap["itemDescription"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "itemDescription")
    }
  }

  public var salesStory: String {
    get {
      return graphQLMap["SalesStory"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "SalesStory")
    }
  }

  public var link: String {
    get {
      return graphQLMap["link"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "link")
    }
  }
}

public struct UpdateStopshopInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(itemId: String, storeCode: String, coupon: String? = nil, category: String? = nil, item: String? = nil, imageSrc: String? = nil, priceTag: String? = nil, validity: String? = nil, itemDisclaimerText: String? = nil, itemDescription: String? = nil, salesStory: String? = nil, link: String? = nil) {
    graphQLMap = ["ItemId": itemId, "storeCode": storeCode, "Coupon": coupon, "category": category, "Item": item, "ImageSrc": imageSrc, "PriceTag": priceTag, "validity": validity, "itemDisclaimerText": itemDisclaimerText, "itemDescription": itemDescription, "SalesStory": salesStory, "link": link]
  }

  public var itemId: String {
    get {
      return graphQLMap["ItemId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ItemId")
    }
  }

  public var storeCode: String {
    get {
      return graphQLMap["storeCode"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "storeCode")
    }
  }

  public var coupon: String? {
    get {
      return graphQLMap["Coupon"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Coupon")
    }
  }

  public var category: String? {
    get {
      return graphQLMap["category"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "category")
    }
  }

  public var item: String? {
    get {
      return graphQLMap["Item"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Item")
    }
  }

  public var imageSrc: String? {
    get {
      return graphQLMap["ImageSrc"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ImageSrc")
    }
  }

  public var priceTag: String? {
    get {
      return graphQLMap["PriceTag"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "PriceTag")
    }
  }

  public var validity: String? {
    get {
      return graphQLMap["validity"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "validity")
    }
  }

  public var itemDisclaimerText: String? {
    get {
      return graphQLMap["itemDisclaimerText"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "itemDisclaimerText")
    }
  }

  public var itemDescription: String? {
    get {
      return graphQLMap["itemDescription"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "itemDescription")
    }
  }

  public var salesStory: String? {
    get {
      return graphQLMap["SalesStory"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "SalesStory")
    }
  }

  public var link: String? {
    get {
      return graphQLMap["link"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "link")
    }
  }
}

public struct DeleteStopshopInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(itemId: String, storeCode: String) {
    graphQLMap = ["ItemId": itemId, "storeCode": storeCode]
  }

  public var itemId: String {
    get {
      return graphQLMap["ItemId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ItemId")
    }
  }

  public var storeCode: String {
    get {
      return graphQLMap["storeCode"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "storeCode")
    }
  }
}

public struct CreateUsersInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(userId: String, emailAddress: String, phone: String, address: String, city: String, language: String, name: String, password: String) {
    graphQLMap = ["userId": userId, "EmailAddress": emailAddress, "Phone": phone, "Address": address, "City": city, "Language": language, "Name": name, "Password": password]
  }

  public var userId: String {
    get {
      return graphQLMap["userId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var emailAddress: String {
    get {
      return graphQLMap["EmailAddress"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "EmailAddress")
    }
  }

  public var phone: String {
    get {
      return graphQLMap["Phone"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Phone")
    }
  }

  public var address: String {
    get {
      return graphQLMap["Address"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Address")
    }
  }

  public var city: String {
    get {
      return graphQLMap["City"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "City")
    }
  }

  public var language: String {
    get {
      return graphQLMap["Language"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Language")
    }
  }

  public var name: String {
    get {
      return graphQLMap["Name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Name")
    }
  }

  public var password: String {
    get {
      return graphQLMap["Password"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Password")
    }
  }
}

public struct UpdateUsersInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(userId: String, emailAddress: String? = nil, phone: String? = nil, address: String? = nil, city: String? = nil, language: String? = nil, name: String? = nil, password: String? = nil) {
    graphQLMap = ["userId": userId, "EmailAddress": emailAddress, "Phone": phone, "Address": address, "City": city, "Language": language, "Name": name, "Password": password]
  }

  public var userId: String {
    get {
      return graphQLMap["userId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var emailAddress: String? {
    get {
      return graphQLMap["EmailAddress"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "EmailAddress")
    }
  }

  public var phone: String? {
    get {
      return graphQLMap["Phone"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Phone")
    }
  }

  public var address: String? {
    get {
      return graphQLMap["Address"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Address")
    }
  }

  public var city: String? {
    get {
      return graphQLMap["City"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "City")
    }
  }

  public var language: String? {
    get {
      return graphQLMap["Language"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Language")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["Name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Name")
    }
  }

  public var password: String? {
    get {
      return graphQLMap["Password"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Password")
    }
  }
}

public struct DeleteUsersInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(userId: String) {
    graphQLMap = ["userId": userId]
  }

  public var userId: String {
    get {
      return graphQLMap["userId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }
}

public struct ModelMyTypeFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, title: ModelStringInput? = nil, content: ModelStringInput? = nil, price: ModelIntInput? = nil, rating: ModelFloatInput? = nil, and: [ModelMyTypeFilterInput?]? = nil, or: [ModelMyTypeFilterInput?]? = nil, not: ModelMyTypeFilterInput? = nil) {
    graphQLMap = ["id": id, "title": title, "content": content, "price": price, "rating": rating, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var title: ModelStringInput? {
    get {
      return graphQLMap["title"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var content: ModelStringInput? {
    get {
      return graphQLMap["content"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var price: ModelIntInput? {
    get {
      return graphQLMap["price"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "price")
    }
  }

  public var rating: ModelFloatInput? {
    get {
      return graphQLMap["rating"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "rating")
    }
  }

  public var and: [ModelMyTypeFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelMyTypeFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelMyTypeFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelMyTypeFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelMyTypeFilterInput? {
    get {
      return graphQLMap["not"] as! ModelMyTypeFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public struct TableStopshopFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(itemId: TableStringFilterInput? = nil, storeCode: TableStringFilterInput? = nil, coupon: TableStringFilterInput? = nil, category: TableStringFilterInput? = nil, item: TableStringFilterInput? = nil, imageSrc: TableStringFilterInput? = nil, priceTag: TableStringFilterInput? = nil, validity: TableStringFilterInput? = nil, itemDisclaimerText: TableStringFilterInput? = nil, itemDescription: TableStringFilterInput? = nil, salesStory: TableStringFilterInput? = nil, link: TableStringFilterInput? = nil) {
    graphQLMap = ["ItemId": itemId, "storeCode": storeCode, "Coupon": coupon, "category": category, "Item": item, "ImageSrc": imageSrc, "PriceTag": priceTag, "validity": validity, "itemDisclaimerText": itemDisclaimerText, "itemDescription": itemDescription, "SalesStory": salesStory, "link": link]
  }

  public var itemId: TableStringFilterInput? {
    get {
      return graphQLMap["ItemId"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ItemId")
    }
  }

  public var storeCode: TableStringFilterInput? {
    get {
      return graphQLMap["storeCode"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "storeCode")
    }
  }

  public var coupon: TableStringFilterInput? {
    get {
      return graphQLMap["Coupon"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Coupon")
    }
  }

  public var category: TableStringFilterInput? {
    get {
      return graphQLMap["category"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "category")
    }
  }

  public var item: TableStringFilterInput? {
    get {
      return graphQLMap["Item"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Item")
    }
  }

  public var imageSrc: TableStringFilterInput? {
    get {
      return graphQLMap["ImageSrc"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ImageSrc")
    }
  }

  public var priceTag: TableStringFilterInput? {
    get {
      return graphQLMap["PriceTag"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "PriceTag")
    }
  }

  public var validity: TableStringFilterInput? {
    get {
      return graphQLMap["validity"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "validity")
    }
  }

  public var itemDisclaimerText: TableStringFilterInput? {
    get {
      return graphQLMap["itemDisclaimerText"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "itemDisclaimerText")
    }
  }

  public var itemDescription: TableStringFilterInput? {
    get {
      return graphQLMap["itemDescription"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "itemDescription")
    }
  }

  public var salesStory: TableStringFilterInput? {
    get {
      return graphQLMap["SalesStory"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "SalesStory")
    }
  }

  public var link: TableStringFilterInput? {
    get {
      return graphQLMap["link"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "link")
    }
  }
}

public struct TableStringFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public struct TableUsersFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(userId: TableStringFilterInput? = nil, emailAddress: TableStringFilterInput? = nil, phone: TableStringFilterInput? = nil, address: TableStringFilterInput? = nil, city: TableStringFilterInput? = nil, language: TableStringFilterInput? = nil, name: TableStringFilterInput? = nil, password: TableStringFilterInput? = nil) {
    graphQLMap = ["userId": userId, "EmailAddress": emailAddress, "Phone": phone, "Address": address, "City": city, "Language": language, "Name": name, "Password": password]
  }

  public var userId: TableStringFilterInput? {
    get {
      return graphQLMap["userId"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var emailAddress: TableStringFilterInput? {
    get {
      return graphQLMap["EmailAddress"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "EmailAddress")
    }
  }

  public var phone: TableStringFilterInput? {
    get {
      return graphQLMap["Phone"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Phone")
    }
  }

  public var address: TableStringFilterInput? {
    get {
      return graphQLMap["Address"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Address")
    }
  }

  public var city: TableStringFilterInput? {
    get {
      return graphQLMap["City"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "City")
    }
  }

  public var language: TableStringFilterInput? {
    get {
      return graphQLMap["Language"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Language")
    }
  }

  public var name: TableStringFilterInput? {
    get {
      return graphQLMap["Name"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Name")
    }
  }

  public var password: TableStringFilterInput? {
    get {
      return graphQLMap["Password"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Password")
    }
  }
}

public final class CreateMyTypeMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateMyType($input: CreateMyTypeInput!, $condition: ModelMyTypeConditionInput) {\n  createMyType(input: $input, condition: $condition) {\n    __typename\n    id\n    title\n    content\n    price\n    rating\n  }\n}"

  public var input: CreateMyTypeInput
  public var condition: ModelMyTypeConditionInput?

  public init(input: CreateMyTypeInput, condition: ModelMyTypeConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createMyType", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateMyType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createMyType: CreateMyType? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createMyType": createMyType.flatMap { $0.snapshot }])
    }

    public var createMyType: CreateMyType? {
      get {
        return (snapshot["createMyType"] as? Snapshot).flatMap { CreateMyType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createMyType")
      }
    }

    public struct CreateMyType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("price", type: .scalar(Int.self)),
        GraphQLField("rating", type: .scalar(Double.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, content: String, price: Int? = nil, rating: Double? = nil) {
        self.init(snapshot: ["__typename": "MyType", "id": id, "title": title, "content": content, "price": price, "rating": rating])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var price: Int? {
        get {
          return snapshot["price"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var rating: Double? {
        get {
          return snapshot["rating"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "rating")
        }
      }
    }
  }
}

public final class UpdateMyTypeMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateMyType($input: UpdateMyTypeInput!, $condition: ModelMyTypeConditionInput) {\n  updateMyType(input: $input, condition: $condition) {\n    __typename\n    id\n    title\n    content\n    price\n    rating\n  }\n}"

  public var input: UpdateMyTypeInput
  public var condition: ModelMyTypeConditionInput?

  public init(input: UpdateMyTypeInput, condition: ModelMyTypeConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateMyType", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateMyType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateMyType: UpdateMyType? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateMyType": updateMyType.flatMap { $0.snapshot }])
    }

    public var updateMyType: UpdateMyType? {
      get {
        return (snapshot["updateMyType"] as? Snapshot).flatMap { UpdateMyType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateMyType")
      }
    }

    public struct UpdateMyType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("price", type: .scalar(Int.self)),
        GraphQLField("rating", type: .scalar(Double.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, content: String, price: Int? = nil, rating: Double? = nil) {
        self.init(snapshot: ["__typename": "MyType", "id": id, "title": title, "content": content, "price": price, "rating": rating])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var price: Int? {
        get {
          return snapshot["price"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var rating: Double? {
        get {
          return snapshot["rating"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "rating")
        }
      }
    }
  }
}

public final class DeleteMyTypeMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteMyType($input: DeleteMyTypeInput!, $condition: ModelMyTypeConditionInput) {\n  deleteMyType(input: $input, condition: $condition) {\n    __typename\n    id\n    title\n    content\n    price\n    rating\n  }\n}"

  public var input: DeleteMyTypeInput
  public var condition: ModelMyTypeConditionInput?

  public init(input: DeleteMyTypeInput, condition: ModelMyTypeConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteMyType", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteMyType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteMyType: DeleteMyType? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteMyType": deleteMyType.flatMap { $0.snapshot }])
    }

    public var deleteMyType: DeleteMyType? {
      get {
        return (snapshot["deleteMyType"] as? Snapshot).flatMap { DeleteMyType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteMyType")
      }
    }

    public struct DeleteMyType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("price", type: .scalar(Int.self)),
        GraphQLField("rating", type: .scalar(Double.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, content: String, price: Int? = nil, rating: Double? = nil) {
        self.init(snapshot: ["__typename": "MyType", "id": id, "title": title, "content": content, "price": price, "rating": rating])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var price: Int? {
        get {
          return snapshot["price"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var rating: Double? {
        get {
          return snapshot["rating"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "rating")
        }
      }
    }
  }
}

public final class CreateStopshopMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateStopshop($input: CreateStopshopInput!) {\n  createStopshop(input: $input) {\n    __typename\n    ItemId\n    storeCode\n    Coupon\n    category\n    Item\n    ImageSrc\n    PriceTag\n    validity\n    itemDisclaimerText\n    itemDescription\n    SalesStory\n    link\n  }\n}"

  public var input: CreateStopshopInput

  public init(input: CreateStopshopInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createStopshop", arguments: ["input": GraphQLVariable("input")], type: .object(CreateStopshop.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createStopshop: CreateStopshop? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createStopshop": createStopshop.flatMap { $0.snapshot }])
    }

    public var createStopshop: CreateStopshop? {
      get {
        return (snapshot["createStopshop"] as? Snapshot).flatMap { CreateStopshop(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createStopshop")
      }
    }

    public struct CreateStopshop: GraphQLSelectionSet {
      public static let possibleTypes = ["Stopshop"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("ItemId", type: .nonNull(.scalar(String.self))),
        GraphQLField("storeCode", type: .nonNull(.scalar(String.self))),
        GraphQLField("Coupon", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .nonNull(.scalar(String.self))),
        GraphQLField("Item", type: .nonNull(.scalar(String.self))),
        GraphQLField("ImageSrc", type: .nonNull(.scalar(String.self))),
        GraphQLField("PriceTag", type: .nonNull(.scalar(String.self))),
        GraphQLField("validity", type: .nonNull(.scalar(String.self))),
        GraphQLField("itemDisclaimerText", type: .nonNull(.scalar(String.self))),
        GraphQLField("itemDescription", type: .nonNull(.scalar(String.self))),
        GraphQLField("SalesStory", type: .nonNull(.scalar(String.self))),
        GraphQLField("link", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(itemId: String, storeCode: String, coupon: String, category: String, item: String, imageSrc: String, priceTag: String, validity: String, itemDisclaimerText: String, itemDescription: String, salesStory: String, link: String) {
        self.init(snapshot: ["__typename": "Stopshop", "ItemId": itemId, "storeCode": storeCode, "Coupon": coupon, "category": category, "Item": item, "ImageSrc": imageSrc, "PriceTag": priceTag, "validity": validity, "itemDisclaimerText": itemDisclaimerText, "itemDescription": itemDescription, "SalesStory": salesStory, "link": link])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var itemId: String {
        get {
          return snapshot["ItemId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ItemId")
        }
      }

      public var storeCode: String {
        get {
          return snapshot["storeCode"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "storeCode")
        }
      }

      public var coupon: String {
        get {
          return snapshot["Coupon"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Coupon")
        }
      }

      public var category: String {
        get {
          return snapshot["category"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var item: String {
        get {
          return snapshot["Item"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Item")
        }
      }

      public var imageSrc: String {
        get {
          return snapshot["ImageSrc"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ImageSrc")
        }
      }

      public var priceTag: String {
        get {
          return snapshot["PriceTag"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PriceTag")
        }
      }

      public var validity: String {
        get {
          return snapshot["validity"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "validity")
        }
      }

      public var itemDisclaimerText: String {
        get {
          return snapshot["itemDisclaimerText"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemDisclaimerText")
        }
      }

      public var itemDescription: String {
        get {
          return snapshot["itemDescription"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemDescription")
        }
      }

      public var salesStory: String {
        get {
          return snapshot["SalesStory"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SalesStory")
        }
      }

      public var link: String {
        get {
          return snapshot["link"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "link")
        }
      }
    }
  }
}

public final class UpdateStopshopMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateStopshop($input: UpdateStopshopInput!) {\n  updateStopshop(input: $input) {\n    __typename\n    ItemId\n    storeCode\n    Coupon\n    category\n    Item\n    ImageSrc\n    PriceTag\n    validity\n    itemDisclaimerText\n    itemDescription\n    SalesStory\n    link\n  }\n}"

  public var input: UpdateStopshopInput

  public init(input: UpdateStopshopInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateStopshop", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateStopshop.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateStopshop: UpdateStopshop? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateStopshop": updateStopshop.flatMap { $0.snapshot }])
    }

    public var updateStopshop: UpdateStopshop? {
      get {
        return (snapshot["updateStopshop"] as? Snapshot).flatMap { UpdateStopshop(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateStopshop")
      }
    }

    public struct UpdateStopshop: GraphQLSelectionSet {
      public static let possibleTypes = ["Stopshop"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("ItemId", type: .nonNull(.scalar(String.self))),
        GraphQLField("storeCode", type: .nonNull(.scalar(String.self))),
        GraphQLField("Coupon", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .nonNull(.scalar(String.self))),
        GraphQLField("Item", type: .nonNull(.scalar(String.self))),
        GraphQLField("ImageSrc", type: .nonNull(.scalar(String.self))),
        GraphQLField("PriceTag", type: .nonNull(.scalar(String.self))),
        GraphQLField("validity", type: .nonNull(.scalar(String.self))),
        GraphQLField("itemDisclaimerText", type: .nonNull(.scalar(String.self))),
        GraphQLField("itemDescription", type: .nonNull(.scalar(String.self))),
        GraphQLField("SalesStory", type: .nonNull(.scalar(String.self))),
        GraphQLField("link", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(itemId: String, storeCode: String, coupon: String, category: String, item: String, imageSrc: String, priceTag: String, validity: String, itemDisclaimerText: String, itemDescription: String, salesStory: String, link: String) {
        self.init(snapshot: ["__typename": "Stopshop", "ItemId": itemId, "storeCode": storeCode, "Coupon": coupon, "category": category, "Item": item, "ImageSrc": imageSrc, "PriceTag": priceTag, "validity": validity, "itemDisclaimerText": itemDisclaimerText, "itemDescription": itemDescription, "SalesStory": salesStory, "link": link])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var itemId: String {
        get {
          return snapshot["ItemId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ItemId")
        }
      }

      public var storeCode: String {
        get {
          return snapshot["storeCode"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "storeCode")
        }
      }

      public var coupon: String {
        get {
          return snapshot["Coupon"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Coupon")
        }
      }

      public var category: String {
        get {
          return snapshot["category"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var item: String {
        get {
          return snapshot["Item"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Item")
        }
      }

      public var imageSrc: String {
        get {
          return snapshot["ImageSrc"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ImageSrc")
        }
      }

      public var priceTag: String {
        get {
          return snapshot["PriceTag"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PriceTag")
        }
      }

      public var validity: String {
        get {
          return snapshot["validity"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "validity")
        }
      }

      public var itemDisclaimerText: String {
        get {
          return snapshot["itemDisclaimerText"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemDisclaimerText")
        }
      }

      public var itemDescription: String {
        get {
          return snapshot["itemDescription"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemDescription")
        }
      }

      public var salesStory: String {
        get {
          return snapshot["SalesStory"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SalesStory")
        }
      }

      public var link: String {
        get {
          return snapshot["link"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "link")
        }
      }
    }
  }
}

public final class DeleteStopshopMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteStopshop($input: DeleteStopshopInput!) {\n  deleteStopshop(input: $input) {\n    __typename\n    ItemId\n    storeCode\n    Coupon\n    category\n    Item\n    ImageSrc\n    PriceTag\n    validity\n    itemDisclaimerText\n    itemDescription\n    SalesStory\n    link\n  }\n}"

  public var input: DeleteStopshopInput

  public init(input: DeleteStopshopInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteStopshop", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteStopshop.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteStopshop: DeleteStopshop? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteStopshop": deleteStopshop.flatMap { $0.snapshot }])
    }

    public var deleteStopshop: DeleteStopshop? {
      get {
        return (snapshot["deleteStopshop"] as? Snapshot).flatMap { DeleteStopshop(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteStopshop")
      }
    }

    public struct DeleteStopshop: GraphQLSelectionSet {
      public static let possibleTypes = ["Stopshop"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("ItemId", type: .nonNull(.scalar(String.self))),
        GraphQLField("storeCode", type: .nonNull(.scalar(String.self))),
        GraphQLField("Coupon", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .nonNull(.scalar(String.self))),
        GraphQLField("Item", type: .nonNull(.scalar(String.self))),
        GraphQLField("ImageSrc", type: .nonNull(.scalar(String.self))),
        GraphQLField("PriceTag", type: .nonNull(.scalar(String.self))),
        GraphQLField("validity", type: .nonNull(.scalar(String.self))),
        GraphQLField("itemDisclaimerText", type: .nonNull(.scalar(String.self))),
        GraphQLField("itemDescription", type: .nonNull(.scalar(String.self))),
        GraphQLField("SalesStory", type: .nonNull(.scalar(String.self))),
        GraphQLField("link", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(itemId: String, storeCode: String, coupon: String, category: String, item: String, imageSrc: String, priceTag: String, validity: String, itemDisclaimerText: String, itemDescription: String, salesStory: String, link: String) {
        self.init(snapshot: ["__typename": "Stopshop", "ItemId": itemId, "storeCode": storeCode, "Coupon": coupon, "category": category, "Item": item, "ImageSrc": imageSrc, "PriceTag": priceTag, "validity": validity, "itemDisclaimerText": itemDisclaimerText, "itemDescription": itemDescription, "SalesStory": salesStory, "link": link])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var itemId: String {
        get {
          return snapshot["ItemId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ItemId")
        }
      }

      public var storeCode: String {
        get {
          return snapshot["storeCode"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "storeCode")
        }
      }

      public var coupon: String {
        get {
          return snapshot["Coupon"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Coupon")
        }
      }

      public var category: String {
        get {
          return snapshot["category"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var item: String {
        get {
          return snapshot["Item"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Item")
        }
      }

      public var imageSrc: String {
        get {
          return snapshot["ImageSrc"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ImageSrc")
        }
      }

      public var priceTag: String {
        get {
          return snapshot["PriceTag"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PriceTag")
        }
      }

      public var validity: String {
        get {
          return snapshot["validity"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "validity")
        }
      }

      public var itemDisclaimerText: String {
        get {
          return snapshot["itemDisclaimerText"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemDisclaimerText")
        }
      }

      public var itemDescription: String {
        get {
          return snapshot["itemDescription"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemDescription")
        }
      }

      public var salesStory: String {
        get {
          return snapshot["SalesStory"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SalesStory")
        }
      }

      public var link: String {
        get {
          return snapshot["link"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "link")
        }
      }
    }
  }
}

public final class CreateUsersMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateUsers($input: CreateUsersInput!) {\n  createUsers(input: $input) {\n    __typename\n    userId\n    EmailAddress\n    Phone\n    Address\n    City\n    Language\n    Name\n    Password\n  }\n}"

  public var input: CreateUsersInput

  public init(input: CreateUsersInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createUsers", arguments: ["input": GraphQLVariable("input")], type: .object(CreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createUsers: CreateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createUsers": createUsers.flatMap { $0.snapshot }])
    }

    public var createUsers: CreateUser? {
      get {
        return (snapshot["createUsers"] as? Snapshot).flatMap { CreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createUsers")
      }
    }

    public struct CreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["Users"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("EmailAddress", type: .nonNull(.scalar(String.self))),
        GraphQLField("Phone", type: .nonNull(.scalar(String.self))),
        GraphQLField("Address", type: .nonNull(.scalar(String.self))),
        GraphQLField("City", type: .nonNull(.scalar(String.self))),
        GraphQLField("Language", type: .nonNull(.scalar(String.self))),
        GraphQLField("Name", type: .nonNull(.scalar(String.self))),
        GraphQLField("Password", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(userId: String, emailAddress: String, phone: String, address: String, city: String, language: String, name: String, password: String) {
        self.init(snapshot: ["__typename": "Users", "userId": userId, "EmailAddress": emailAddress, "Phone": phone, "Address": address, "City": city, "Language": language, "Name": name, "Password": password])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var emailAddress: String {
        get {
          return snapshot["EmailAddress"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "EmailAddress")
        }
      }

      public var phone: String {
        get {
          return snapshot["Phone"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Phone")
        }
      }

      public var address: String {
        get {
          return snapshot["Address"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Address")
        }
      }

      public var city: String {
        get {
          return snapshot["City"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "City")
        }
      }

      public var language: String {
        get {
          return snapshot["Language"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Language")
        }
      }

      public var name: String {
        get {
          return snapshot["Name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Name")
        }
      }

      public var password: String {
        get {
          return snapshot["Password"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Password")
        }
      }
    }
  }
}

public final class UpdateUsersMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateUsers($input: UpdateUsersInput!) {\n  updateUsers(input: $input) {\n    __typename\n    userId\n    EmailAddress\n    Phone\n    Address\n    City\n    Language\n    Name\n    Password\n  }\n}"

  public var input: UpdateUsersInput

  public init(input: UpdateUsersInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateUsers", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateUsers: UpdateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateUsers": updateUsers.flatMap { $0.snapshot }])
    }

    public var updateUsers: UpdateUser? {
      get {
        return (snapshot["updateUsers"] as? Snapshot).flatMap { UpdateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateUsers")
      }
    }

    public struct UpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["Users"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("EmailAddress", type: .nonNull(.scalar(String.self))),
        GraphQLField("Phone", type: .nonNull(.scalar(String.self))),
        GraphQLField("Address", type: .nonNull(.scalar(String.self))),
        GraphQLField("City", type: .nonNull(.scalar(String.self))),
        GraphQLField("Language", type: .nonNull(.scalar(String.self))),
        GraphQLField("Name", type: .nonNull(.scalar(String.self))),
        GraphQLField("Password", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(userId: String, emailAddress: String, phone: String, address: String, city: String, language: String, name: String, password: String) {
        self.init(snapshot: ["__typename": "Users", "userId": userId, "EmailAddress": emailAddress, "Phone": phone, "Address": address, "City": city, "Language": language, "Name": name, "Password": password])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var emailAddress: String {
        get {
          return snapshot["EmailAddress"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "EmailAddress")
        }
      }

      public var phone: String {
        get {
          return snapshot["Phone"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Phone")
        }
      }

      public var address: String {
        get {
          return snapshot["Address"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Address")
        }
      }

      public var city: String {
        get {
          return snapshot["City"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "City")
        }
      }

      public var language: String {
        get {
          return snapshot["Language"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Language")
        }
      }

      public var name: String {
        get {
          return snapshot["Name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Name")
        }
      }

      public var password: String {
        get {
          return snapshot["Password"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Password")
        }
      }
    }
  }
}

public final class DeleteUsersMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteUsers($input: DeleteUsersInput!) {\n  deleteUsers(input: $input) {\n    __typename\n    userId\n    EmailAddress\n    Phone\n    Address\n    City\n    Language\n    Name\n    Password\n  }\n}"

  public var input: DeleteUsersInput

  public init(input: DeleteUsersInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteUsers", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteUsers: DeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteUsers": deleteUsers.flatMap { $0.snapshot }])
    }

    public var deleteUsers: DeleteUser? {
      get {
        return (snapshot["deleteUsers"] as? Snapshot).flatMap { DeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteUsers")
      }
    }

    public struct DeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["Users"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("EmailAddress", type: .nonNull(.scalar(String.self))),
        GraphQLField("Phone", type: .nonNull(.scalar(String.self))),
        GraphQLField("Address", type: .nonNull(.scalar(String.self))),
        GraphQLField("City", type: .nonNull(.scalar(String.self))),
        GraphQLField("Language", type: .nonNull(.scalar(String.self))),
        GraphQLField("Name", type: .nonNull(.scalar(String.self))),
        GraphQLField("Password", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(userId: String, emailAddress: String, phone: String, address: String, city: String, language: String, name: String, password: String) {
        self.init(snapshot: ["__typename": "Users", "userId": userId, "EmailAddress": emailAddress, "Phone": phone, "Address": address, "City": city, "Language": language, "Name": name, "Password": password])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var emailAddress: String {
        get {
          return snapshot["EmailAddress"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "EmailAddress")
        }
      }

      public var phone: String {
        get {
          return snapshot["Phone"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Phone")
        }
      }

      public var address: String {
        get {
          return snapshot["Address"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Address")
        }
      }

      public var city: String {
        get {
          return snapshot["City"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "City")
        }
      }

      public var language: String {
        get {
          return snapshot["Language"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Language")
        }
      }

      public var name: String {
        get {
          return snapshot["Name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Name")
        }
      }

      public var password: String {
        get {
          return snapshot["Password"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Password")
        }
      }
    }
  }
}

public final class GetMyTypeQuery: GraphQLQuery {
  public static let operationString =
    "query GetMyType($id: ID!) {\n  getMyType(id: $id) {\n    __typename\n    id\n    title\n    content\n    price\n    rating\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getMyType", arguments: ["id": GraphQLVariable("id")], type: .object(GetMyType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getMyType: GetMyType? = nil) {
      self.init(snapshot: ["__typename": "Query", "getMyType": getMyType.flatMap { $0.snapshot }])
    }

    public var getMyType: GetMyType? {
      get {
        return (snapshot["getMyType"] as? Snapshot).flatMap { GetMyType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getMyType")
      }
    }

    public struct GetMyType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("price", type: .scalar(Int.self)),
        GraphQLField("rating", type: .scalar(Double.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, content: String, price: Int? = nil, rating: Double? = nil) {
        self.init(snapshot: ["__typename": "MyType", "id": id, "title": title, "content": content, "price": price, "rating": rating])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var price: Int? {
        get {
          return snapshot["price"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var rating: Double? {
        get {
          return snapshot["rating"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "rating")
        }
      }
    }
  }
}

public final class ListMyTypesQuery: GraphQLQuery {
  public static let operationString =
    "query ListMyTypes($filter: ModelMyTypeFilterInput, $limit: Int, $nextToken: String) {\n  listMyTypes(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      title\n      content\n      price\n      rating\n    }\n    nextToken\n  }\n}"

  public var filter: ModelMyTypeFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelMyTypeFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listMyTypes", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListMyType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listMyTypes: ListMyType? = nil) {
      self.init(snapshot: ["__typename": "Query", "listMyTypes": listMyTypes.flatMap { $0.snapshot }])
    }

    public var listMyTypes: ListMyType? {
      get {
        return (snapshot["listMyTypes"] as? Snapshot).flatMap { ListMyType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listMyTypes")
      }
    }

    public struct ListMyType: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelMyTypeConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelMyTypeConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["MyType"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("content", type: .nonNull(.scalar(String.self))),
          GraphQLField("price", type: .scalar(Int.self)),
          GraphQLField("rating", type: .scalar(Double.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, title: String, content: String, price: Int? = nil, rating: Double? = nil) {
          self.init(snapshot: ["__typename": "MyType", "id": id, "title": title, "content": content, "price": price, "rating": rating])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var title: String {
          get {
            return snapshot["title"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var content: String {
          get {
            return snapshot["content"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "content")
          }
        }

        public var price: Int? {
          get {
            return snapshot["price"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "price")
          }
        }

        public var rating: Double? {
          get {
            return snapshot["rating"] as? Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "rating")
          }
        }
      }
    }
  }
}

public final class GetStopshopQuery: GraphQLQuery {
  public static let operationString =
    "query GetStopshop($storeCode: String!, $ItemId: String!) {\n  getStopshop(storeCode: $storeCode, ItemId: $ItemId) {\n    __typename\n    ItemId\n    storeCode\n    Coupon\n    category\n    Item\n    ImageSrc\n    PriceTag\n    validity\n    itemDisclaimerText\n    itemDescription\n    SalesStory\n    link\n  }\n}"

  public var storeCode: String
  public var ItemId: String

  public init(storeCode: String, ItemId: String) {
    self.storeCode = storeCode
    self.ItemId = ItemId
  }

  public var variables: GraphQLMap? {
    return ["storeCode": storeCode, "ItemId": ItemId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getStopshop", arguments: ["storeCode": GraphQLVariable("storeCode"), "ItemId": GraphQLVariable("ItemId")], type: .object(GetStopshop.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getStopshop: GetStopshop? = nil) {
      self.init(snapshot: ["__typename": "Query", "getStopshop": getStopshop.flatMap { $0.snapshot }])
    }

    public var getStopshop: GetStopshop? {
      get {
        return (snapshot["getStopshop"] as? Snapshot).flatMap { GetStopshop(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getStopshop")
      }
    }

    public struct GetStopshop: GraphQLSelectionSet {
      public static let possibleTypes = ["Stopshop"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("ItemId", type: .nonNull(.scalar(String.self))),
        GraphQLField("storeCode", type: .nonNull(.scalar(String.self))),
        GraphQLField("Coupon", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .nonNull(.scalar(String.self))),
        GraphQLField("Item", type: .nonNull(.scalar(String.self))),
        GraphQLField("ImageSrc", type: .nonNull(.scalar(String.self))),
        GraphQLField("PriceTag", type: .nonNull(.scalar(String.self))),
        GraphQLField("validity", type: .nonNull(.scalar(String.self))),
        GraphQLField("itemDisclaimerText", type: .nonNull(.scalar(String.self))),
        GraphQLField("itemDescription", type: .nonNull(.scalar(String.self))),
        GraphQLField("SalesStory", type: .nonNull(.scalar(String.self))),
        GraphQLField("link", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(itemId: String, storeCode: String, coupon: String, category: String, item: String, imageSrc: String, priceTag: String, validity: String, itemDisclaimerText: String, itemDescription: String, salesStory: String, link: String) {
        self.init(snapshot: ["__typename": "Stopshop", "ItemId": itemId, "storeCode": storeCode, "Coupon": coupon, "category": category, "Item": item, "ImageSrc": imageSrc, "PriceTag": priceTag, "validity": validity, "itemDisclaimerText": itemDisclaimerText, "itemDescription": itemDescription, "SalesStory": salesStory, "link": link])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var itemId: String {
        get {
          return snapshot["ItemId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ItemId")
        }
      }

      public var storeCode: String {
        get {
          return snapshot["storeCode"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "storeCode")
        }
      }

      public var coupon: String {
        get {
          return snapshot["Coupon"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Coupon")
        }
      }

      public var category: String {
        get {
          return snapshot["category"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var item: String {
        get {
          return snapshot["Item"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Item")
        }
      }

      public var imageSrc: String {
        get {
          return snapshot["ImageSrc"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ImageSrc")
        }
      }

      public var priceTag: String {
        get {
          return snapshot["PriceTag"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PriceTag")
        }
      }

      public var validity: String {
        get {
          return snapshot["validity"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "validity")
        }
      }

      public var itemDisclaimerText: String {
        get {
          return snapshot["itemDisclaimerText"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemDisclaimerText")
        }
      }

      public var itemDescription: String {
        get {
          return snapshot["itemDescription"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemDescription")
        }
      }

      public var salesStory: String {
        get {
          return snapshot["SalesStory"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SalesStory")
        }
      }

      public var link: String {
        get {
          return snapshot["link"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "link")
        }
      }
    }
  }
}

public final class ListStopshopsQuery: GraphQLQuery {
  public static let operationString =
    "query ListStopshops($filter: TableStopshopFilterInput, $limit: Int, $nextToken: String) {\n  listStopshops(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      ItemId\n      storeCode\n      Coupon\n      category\n      Item\n      ImageSrc\n      PriceTag\n      validity\n      itemDisclaimerText\n      itemDescription\n      SalesStory\n      link\n    }\n    nextToken\n  }\n}"

  public var filter: TableStopshopFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TableStopshopFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listStopshops", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListStopshop.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listStopshops: ListStopshop? = nil) {
      self.init(snapshot: ["__typename": "Query", "listStopshops": listStopshops.flatMap { $0.snapshot }])
    }

    public var listStopshops: ListStopshop? {
      get {
        return (snapshot["listStopshops"] as? Snapshot).flatMap { ListStopshop(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listStopshops")
      }
    }

    public struct ListStopshop: GraphQLSelectionSet {
      public static let possibleTypes = ["StopshopConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "StopshopConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Stopshop"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("ItemId", type: .nonNull(.scalar(String.self))),
          GraphQLField("storeCode", type: .nonNull(.scalar(String.self))),
          GraphQLField("Coupon", type: .nonNull(.scalar(String.self))),
          GraphQLField("category", type: .nonNull(.scalar(String.self))),
          GraphQLField("Item", type: .nonNull(.scalar(String.self))),
          GraphQLField("ImageSrc", type: .nonNull(.scalar(String.self))),
          GraphQLField("PriceTag", type: .nonNull(.scalar(String.self))),
          GraphQLField("validity", type: .nonNull(.scalar(String.self))),
          GraphQLField("itemDisclaimerText", type: .nonNull(.scalar(String.self))),
          GraphQLField("itemDescription", type: .nonNull(.scalar(String.self))),
          GraphQLField("SalesStory", type: .nonNull(.scalar(String.self))),
          GraphQLField("link", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(itemId: String, storeCode: String, coupon: String, category: String, item: String, imageSrc: String, priceTag: String, validity: String, itemDisclaimerText: String, itemDescription: String, salesStory: String, link: String) {
          self.init(snapshot: ["__typename": "Stopshop", "ItemId": itemId, "storeCode": storeCode, "Coupon": coupon, "category": category, "Item": item, "ImageSrc": imageSrc, "PriceTag": priceTag, "validity": validity, "itemDisclaimerText": itemDisclaimerText, "itemDescription": itemDescription, "SalesStory": salesStory, "link": link])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var itemId: String {
          get {
            return snapshot["ItemId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "ItemId")
          }
        }

        public var storeCode: String {
          get {
            return snapshot["storeCode"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "storeCode")
          }
        }

        public var coupon: String {
          get {
            return snapshot["Coupon"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Coupon")
          }
        }

        public var category: String {
          get {
            return snapshot["category"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "category")
          }
        }

        public var item: String {
          get {
            return snapshot["Item"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Item")
          }
        }

        public var imageSrc: String {
          get {
            return snapshot["ImageSrc"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "ImageSrc")
          }
        }

        public var priceTag: String {
          get {
            return snapshot["PriceTag"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PriceTag")
          }
        }

        public var validity: String {
          get {
            return snapshot["validity"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "validity")
          }
        }

        public var itemDisclaimerText: String {
          get {
            return snapshot["itemDisclaimerText"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "itemDisclaimerText")
          }
        }

        public var itemDescription: String {
          get {
            return snapshot["itemDescription"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "itemDescription")
          }
        }

        public var salesStory: String {
          get {
            return snapshot["SalesStory"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SalesStory")
          }
        }

        public var link: String {
          get {
            return snapshot["link"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "link")
          }
        }
      }
    }
  }
}

public final class GetUsersQuery: GraphQLQuery {
  public static let operationString =
    "query GetUsers($userId: String!) {\n  getUsers(userId: $userId) {\n    __typename\n    userId\n    EmailAddress\n    Phone\n    Address\n    City\n    Language\n    Name\n    Password\n  }\n}"

  public var userId: String

  public init(userId: String) {
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUsers", arguments: ["userId": GraphQLVariable("userId")], type: .object(GetUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUsers: GetUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUsers": getUsers.flatMap { $0.snapshot }])
    }

    public var getUsers: GetUser? {
      get {
        return (snapshot["getUsers"] as? Snapshot).flatMap { GetUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getUsers")
      }
    }

    public struct GetUser: GraphQLSelectionSet {
      public static let possibleTypes = ["Users"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("EmailAddress", type: .nonNull(.scalar(String.self))),
        GraphQLField("Phone", type: .nonNull(.scalar(String.self))),
        GraphQLField("Address", type: .nonNull(.scalar(String.self))),
        GraphQLField("City", type: .nonNull(.scalar(String.self))),
        GraphQLField("Language", type: .nonNull(.scalar(String.self))),
        GraphQLField("Name", type: .nonNull(.scalar(String.self))),
        GraphQLField("Password", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(userId: String, emailAddress: String, phone: String, address: String, city: String, language: String, name: String, password: String) {
        self.init(snapshot: ["__typename": "Users", "userId": userId, "EmailAddress": emailAddress, "Phone": phone, "Address": address, "City": city, "Language": language, "Name": name, "Password": password])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var emailAddress: String {
        get {
          return snapshot["EmailAddress"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "EmailAddress")
        }
      }

      public var phone: String {
        get {
          return snapshot["Phone"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Phone")
        }
      }

      public var address: String {
        get {
          return snapshot["Address"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Address")
        }
      }

      public var city: String {
        get {
          return snapshot["City"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "City")
        }
      }

      public var language: String {
        get {
          return snapshot["Language"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Language")
        }
      }

      public var name: String {
        get {
          return snapshot["Name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Name")
        }
      }

      public var password: String {
        get {
          return snapshot["Password"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Password")
        }
      }
    }
  }
}

public final class ListUsersQuery: GraphQLQuery {
  public static let operationString =
    "query ListUsers($filter: TableUsersFilterInput, $limit: Int, $nextToken: String) {\n  listUsers(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      userId\n      EmailAddress\n      Phone\n      Address\n      City\n      Language\n      Name\n      Password\n    }\n    nextToken\n  }\n}"

  public var filter: TableUsersFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TableUsersFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listUsers", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listUsers: ListUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "listUsers": listUsers.flatMap { $0.snapshot }])
    }

    public var listUsers: ListUser? {
      get {
        return (snapshot["listUsers"] as? Snapshot).flatMap { ListUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listUsers")
      }
    }

    public struct ListUser: GraphQLSelectionSet {
      public static let possibleTypes = ["UsersConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "UsersConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Users"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("userId", type: .nonNull(.scalar(String.self))),
          GraphQLField("EmailAddress", type: .nonNull(.scalar(String.self))),
          GraphQLField("Phone", type: .nonNull(.scalar(String.self))),
          GraphQLField("Address", type: .nonNull(.scalar(String.self))),
          GraphQLField("City", type: .nonNull(.scalar(String.self))),
          GraphQLField("Language", type: .nonNull(.scalar(String.self))),
          GraphQLField("Name", type: .nonNull(.scalar(String.self))),
          GraphQLField("Password", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(userId: String, emailAddress: String, phone: String, address: String, city: String, language: String, name: String, password: String) {
          self.init(snapshot: ["__typename": "Users", "userId": userId, "EmailAddress": emailAddress, "Phone": phone, "Address": address, "City": city, "Language": language, "Name": name, "Password": password])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var userId: String {
          get {
            return snapshot["userId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public var emailAddress: String {
          get {
            return snapshot["EmailAddress"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "EmailAddress")
          }
        }

        public var phone: String {
          get {
            return snapshot["Phone"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Phone")
          }
        }

        public var address: String {
          get {
            return snapshot["Address"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Address")
          }
        }

        public var city: String {
          get {
            return snapshot["City"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "City")
          }
        }

        public var language: String {
          get {
            return snapshot["Language"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Language")
          }
        }

        public var name: String {
          get {
            return snapshot["Name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Name")
          }
        }

        public var password: String {
          get {
            return snapshot["Password"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Password")
          }
        }
      }
    }
  }
}

public final class OnCreateMyTypeSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateMyType {\n  onCreateMyType {\n    __typename\n    id\n    title\n    content\n    price\n    rating\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateMyType", type: .object(OnCreateMyType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateMyType: OnCreateMyType? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateMyType": onCreateMyType.flatMap { $0.snapshot }])
    }

    public var onCreateMyType: OnCreateMyType? {
      get {
        return (snapshot["onCreateMyType"] as? Snapshot).flatMap { OnCreateMyType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateMyType")
      }
    }

    public struct OnCreateMyType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("price", type: .scalar(Int.self)),
        GraphQLField("rating", type: .scalar(Double.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, content: String, price: Int? = nil, rating: Double? = nil) {
        self.init(snapshot: ["__typename": "MyType", "id": id, "title": title, "content": content, "price": price, "rating": rating])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var price: Int? {
        get {
          return snapshot["price"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var rating: Double? {
        get {
          return snapshot["rating"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "rating")
        }
      }
    }
  }
}

public final class OnUpdateMyTypeSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateMyType {\n  onUpdateMyType {\n    __typename\n    id\n    title\n    content\n    price\n    rating\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateMyType", type: .object(OnUpdateMyType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateMyType: OnUpdateMyType? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateMyType": onUpdateMyType.flatMap { $0.snapshot }])
    }

    public var onUpdateMyType: OnUpdateMyType? {
      get {
        return (snapshot["onUpdateMyType"] as? Snapshot).flatMap { OnUpdateMyType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateMyType")
      }
    }

    public struct OnUpdateMyType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("price", type: .scalar(Int.self)),
        GraphQLField("rating", type: .scalar(Double.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, content: String, price: Int? = nil, rating: Double? = nil) {
        self.init(snapshot: ["__typename": "MyType", "id": id, "title": title, "content": content, "price": price, "rating": rating])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var price: Int? {
        get {
          return snapshot["price"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var rating: Double? {
        get {
          return snapshot["rating"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "rating")
        }
      }
    }
  }
}

public final class OnDeleteMyTypeSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteMyType {\n  onDeleteMyType {\n    __typename\n    id\n    title\n    content\n    price\n    rating\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteMyType", type: .object(OnDeleteMyType.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteMyType: OnDeleteMyType? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteMyType": onDeleteMyType.flatMap { $0.snapshot }])
    }

    public var onDeleteMyType: OnDeleteMyType? {
      get {
        return (snapshot["onDeleteMyType"] as? Snapshot).flatMap { OnDeleteMyType(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteMyType")
      }
    }

    public struct OnDeleteMyType: GraphQLSelectionSet {
      public static let possibleTypes = ["MyType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("price", type: .scalar(Int.self)),
        GraphQLField("rating", type: .scalar(Double.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, content: String, price: Int? = nil, rating: Double? = nil) {
        self.init(snapshot: ["__typename": "MyType", "id": id, "title": title, "content": content, "price": price, "rating": rating])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var price: Int? {
        get {
          return snapshot["price"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var rating: Double? {
        get {
          return snapshot["rating"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "rating")
        }
      }
    }
  }
}

public final class OnCreateStopshopSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateStopshop($ItemId: String, $storeCode: String, $Coupon: String, $category: String, $Item: String) {\n  onCreateStopshop(ItemId: $ItemId, storeCode: $storeCode, Coupon: $Coupon, category: $category, Item: $Item) {\n    __typename\n    ItemId\n    storeCode\n    Coupon\n    category\n    Item\n    ImageSrc\n    PriceTag\n    validity\n    itemDisclaimerText\n    itemDescription\n    SalesStory\n    link\n  }\n}"

  public var ItemId: String?
  public var storeCode: String?
  public var Coupon: String?
  public var category: String?
  public var Item: String?

  public init(ItemId: String? = nil, storeCode: String? = nil, Coupon: String? = nil, category: String? = nil, Item: String? = nil) {
    self.ItemId = ItemId
    self.storeCode = storeCode
    self.Coupon = Coupon
    self.category = category
    self.Item = Item
  }

  public var variables: GraphQLMap? {
    return ["ItemId": ItemId, "storeCode": storeCode, "Coupon": Coupon, "category": category, "Item": Item]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateStopshop", arguments: ["ItemId": GraphQLVariable("ItemId"), "storeCode": GraphQLVariable("storeCode"), "Coupon": GraphQLVariable("Coupon"), "category": GraphQLVariable("category"), "Item": GraphQLVariable("Item")], type: .object(OnCreateStopshop.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateStopshop: OnCreateStopshop? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateStopshop": onCreateStopshop.flatMap { $0.snapshot }])
    }

    public var onCreateStopshop: OnCreateStopshop? {
      get {
        return (snapshot["onCreateStopshop"] as? Snapshot).flatMap { OnCreateStopshop(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateStopshop")
      }
    }

    public struct OnCreateStopshop: GraphQLSelectionSet {
      public static let possibleTypes = ["Stopshop"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("ItemId", type: .nonNull(.scalar(String.self))),
        GraphQLField("storeCode", type: .nonNull(.scalar(String.self))),
        GraphQLField("Coupon", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .nonNull(.scalar(String.self))),
        GraphQLField("Item", type: .nonNull(.scalar(String.self))),
        GraphQLField("ImageSrc", type: .nonNull(.scalar(String.self))),
        GraphQLField("PriceTag", type: .nonNull(.scalar(String.self))),
        GraphQLField("validity", type: .nonNull(.scalar(String.self))),
        GraphQLField("itemDisclaimerText", type: .nonNull(.scalar(String.self))),
        GraphQLField("itemDescription", type: .nonNull(.scalar(String.self))),
        GraphQLField("SalesStory", type: .nonNull(.scalar(String.self))),
        GraphQLField("link", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(itemId: String, storeCode: String, coupon: String, category: String, item: String, imageSrc: String, priceTag: String, validity: String, itemDisclaimerText: String, itemDescription: String, salesStory: String, link: String) {
        self.init(snapshot: ["__typename": "Stopshop", "ItemId": itemId, "storeCode": storeCode, "Coupon": coupon, "category": category, "Item": item, "ImageSrc": imageSrc, "PriceTag": priceTag, "validity": validity, "itemDisclaimerText": itemDisclaimerText, "itemDescription": itemDescription, "SalesStory": salesStory, "link": link])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var itemId: String {
        get {
          return snapshot["ItemId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ItemId")
        }
      }

      public var storeCode: String {
        get {
          return snapshot["storeCode"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "storeCode")
        }
      }

      public var coupon: String {
        get {
          return snapshot["Coupon"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Coupon")
        }
      }

      public var category: String {
        get {
          return snapshot["category"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var item: String {
        get {
          return snapshot["Item"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Item")
        }
      }

      public var imageSrc: String {
        get {
          return snapshot["ImageSrc"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ImageSrc")
        }
      }

      public var priceTag: String {
        get {
          return snapshot["PriceTag"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PriceTag")
        }
      }

      public var validity: String {
        get {
          return snapshot["validity"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "validity")
        }
      }

      public var itemDisclaimerText: String {
        get {
          return snapshot["itemDisclaimerText"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemDisclaimerText")
        }
      }

      public var itemDescription: String {
        get {
          return snapshot["itemDescription"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemDescription")
        }
      }

      public var salesStory: String {
        get {
          return snapshot["SalesStory"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SalesStory")
        }
      }

      public var link: String {
        get {
          return snapshot["link"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "link")
        }
      }
    }
  }
}

public final class OnUpdateStopshopSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateStopshop($ItemId: String, $storeCode: String, $Coupon: String, $category: String, $Item: String) {\n  onUpdateStopshop(ItemId: $ItemId, storeCode: $storeCode, Coupon: $Coupon, category: $category, Item: $Item) {\n    __typename\n    ItemId\n    storeCode\n    Coupon\n    category\n    Item\n    ImageSrc\n    PriceTag\n    validity\n    itemDisclaimerText\n    itemDescription\n    SalesStory\n    link\n  }\n}"

  public var ItemId: String?
  public var storeCode: String?
  public var Coupon: String?
  public var category: String?
  public var Item: String?

  public init(ItemId: String? = nil, storeCode: String? = nil, Coupon: String? = nil, category: String? = nil, Item: String? = nil) {
    self.ItemId = ItemId
    self.storeCode = storeCode
    self.Coupon = Coupon
    self.category = category
    self.Item = Item
  }

  public var variables: GraphQLMap? {
    return ["ItemId": ItemId, "storeCode": storeCode, "Coupon": Coupon, "category": category, "Item": Item]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateStopshop", arguments: ["ItemId": GraphQLVariable("ItemId"), "storeCode": GraphQLVariable("storeCode"), "Coupon": GraphQLVariable("Coupon"), "category": GraphQLVariable("category"), "Item": GraphQLVariable("Item")], type: .object(OnUpdateStopshop.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateStopshop: OnUpdateStopshop? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateStopshop": onUpdateStopshop.flatMap { $0.snapshot }])
    }

    public var onUpdateStopshop: OnUpdateStopshop? {
      get {
        return (snapshot["onUpdateStopshop"] as? Snapshot).flatMap { OnUpdateStopshop(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateStopshop")
      }
    }

    public struct OnUpdateStopshop: GraphQLSelectionSet {
      public static let possibleTypes = ["Stopshop"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("ItemId", type: .nonNull(.scalar(String.self))),
        GraphQLField("storeCode", type: .nonNull(.scalar(String.self))),
        GraphQLField("Coupon", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .nonNull(.scalar(String.self))),
        GraphQLField("Item", type: .nonNull(.scalar(String.self))),
        GraphQLField("ImageSrc", type: .nonNull(.scalar(String.self))),
        GraphQLField("PriceTag", type: .nonNull(.scalar(String.self))),
        GraphQLField("validity", type: .nonNull(.scalar(String.self))),
        GraphQLField("itemDisclaimerText", type: .nonNull(.scalar(String.self))),
        GraphQLField("itemDescription", type: .nonNull(.scalar(String.self))),
        GraphQLField("SalesStory", type: .nonNull(.scalar(String.self))),
        GraphQLField("link", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(itemId: String, storeCode: String, coupon: String, category: String, item: String, imageSrc: String, priceTag: String, validity: String, itemDisclaimerText: String, itemDescription: String, salesStory: String, link: String) {
        self.init(snapshot: ["__typename": "Stopshop", "ItemId": itemId, "storeCode": storeCode, "Coupon": coupon, "category": category, "Item": item, "ImageSrc": imageSrc, "PriceTag": priceTag, "validity": validity, "itemDisclaimerText": itemDisclaimerText, "itemDescription": itemDescription, "SalesStory": salesStory, "link": link])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var itemId: String {
        get {
          return snapshot["ItemId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ItemId")
        }
      }

      public var storeCode: String {
        get {
          return snapshot["storeCode"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "storeCode")
        }
      }

      public var coupon: String {
        get {
          return snapshot["Coupon"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Coupon")
        }
      }

      public var category: String {
        get {
          return snapshot["category"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var item: String {
        get {
          return snapshot["Item"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Item")
        }
      }

      public var imageSrc: String {
        get {
          return snapshot["ImageSrc"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ImageSrc")
        }
      }

      public var priceTag: String {
        get {
          return snapshot["PriceTag"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PriceTag")
        }
      }

      public var validity: String {
        get {
          return snapshot["validity"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "validity")
        }
      }

      public var itemDisclaimerText: String {
        get {
          return snapshot["itemDisclaimerText"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemDisclaimerText")
        }
      }

      public var itemDescription: String {
        get {
          return snapshot["itemDescription"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemDescription")
        }
      }

      public var salesStory: String {
        get {
          return snapshot["SalesStory"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SalesStory")
        }
      }

      public var link: String {
        get {
          return snapshot["link"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "link")
        }
      }
    }
  }
}

public final class OnDeleteStopshopSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteStopshop($ItemId: String, $storeCode: String, $Coupon: String, $category: String, $Item: String) {\n  onDeleteStopshop(ItemId: $ItemId, storeCode: $storeCode, Coupon: $Coupon, category: $category, Item: $Item) {\n    __typename\n    ItemId\n    storeCode\n    Coupon\n    category\n    Item\n    ImageSrc\n    PriceTag\n    validity\n    itemDisclaimerText\n    itemDescription\n    SalesStory\n    link\n  }\n}"

  public var ItemId: String?
  public var storeCode: String?
  public var Coupon: String?
  public var category: String?
  public var Item: String?

  public init(ItemId: String? = nil, storeCode: String? = nil, Coupon: String? = nil, category: String? = nil, Item: String? = nil) {
    self.ItemId = ItemId
    self.storeCode = storeCode
    self.Coupon = Coupon
    self.category = category
    self.Item = Item
  }

  public var variables: GraphQLMap? {
    return ["ItemId": ItemId, "storeCode": storeCode, "Coupon": Coupon, "category": category, "Item": Item]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteStopshop", arguments: ["ItemId": GraphQLVariable("ItemId"), "storeCode": GraphQLVariable("storeCode"), "Coupon": GraphQLVariable("Coupon"), "category": GraphQLVariable("category"), "Item": GraphQLVariable("Item")], type: .object(OnDeleteStopshop.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteStopshop: OnDeleteStopshop? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteStopshop": onDeleteStopshop.flatMap { $0.snapshot }])
    }

    public var onDeleteStopshop: OnDeleteStopshop? {
      get {
        return (snapshot["onDeleteStopshop"] as? Snapshot).flatMap { OnDeleteStopshop(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteStopshop")
      }
    }

    public struct OnDeleteStopshop: GraphQLSelectionSet {
      public static let possibleTypes = ["Stopshop"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("ItemId", type: .nonNull(.scalar(String.self))),
        GraphQLField("storeCode", type: .nonNull(.scalar(String.self))),
        GraphQLField("Coupon", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .nonNull(.scalar(String.self))),
        GraphQLField("Item", type: .nonNull(.scalar(String.self))),
        GraphQLField("ImageSrc", type: .nonNull(.scalar(String.self))),
        GraphQLField("PriceTag", type: .nonNull(.scalar(String.self))),
        GraphQLField("validity", type: .nonNull(.scalar(String.self))),
        GraphQLField("itemDisclaimerText", type: .nonNull(.scalar(String.self))),
        GraphQLField("itemDescription", type: .nonNull(.scalar(String.self))),
        GraphQLField("SalesStory", type: .nonNull(.scalar(String.self))),
        GraphQLField("link", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(itemId: String, storeCode: String, coupon: String, category: String, item: String, imageSrc: String, priceTag: String, validity: String, itemDisclaimerText: String, itemDescription: String, salesStory: String, link: String) {
        self.init(snapshot: ["__typename": "Stopshop", "ItemId": itemId, "storeCode": storeCode, "Coupon": coupon, "category": category, "Item": item, "ImageSrc": imageSrc, "PriceTag": priceTag, "validity": validity, "itemDisclaimerText": itemDisclaimerText, "itemDescription": itemDescription, "SalesStory": salesStory, "link": link])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var itemId: String {
        get {
          return snapshot["ItemId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ItemId")
        }
      }

      public var storeCode: String {
        get {
          return snapshot["storeCode"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "storeCode")
        }
      }

      public var coupon: String {
        get {
          return snapshot["Coupon"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Coupon")
        }
      }

      public var category: String {
        get {
          return snapshot["category"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var item: String {
        get {
          return snapshot["Item"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Item")
        }
      }

      public var imageSrc: String {
        get {
          return snapshot["ImageSrc"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ImageSrc")
        }
      }

      public var priceTag: String {
        get {
          return snapshot["PriceTag"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PriceTag")
        }
      }

      public var validity: String {
        get {
          return snapshot["validity"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "validity")
        }
      }

      public var itemDisclaimerText: String {
        get {
          return snapshot["itemDisclaimerText"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemDisclaimerText")
        }
      }

      public var itemDescription: String {
        get {
          return snapshot["itemDescription"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemDescription")
        }
      }

      public var salesStory: String {
        get {
          return snapshot["SalesStory"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SalesStory")
        }
      }

      public var link: String {
        get {
          return snapshot["link"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "link")
        }
      }
    }
  }
}

public final class OnCreateUsersSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateUsers($userId: String, $EmailAddress: String, $Phone: String, $Address: String, $City: String) {\n  onCreateUsers(userId: $userId, EmailAddress: $EmailAddress, Phone: $Phone, Address: $Address, City: $City) {\n    __typename\n    userId\n    EmailAddress\n    Phone\n    Address\n    City\n    Language\n    Name\n    Password\n  }\n}"

  public var userId: String?
  public var EmailAddress: String?
  public var Phone: String?
  public var Address: String?
  public var City: String?

  public init(userId: String? = nil, EmailAddress: String? = nil, Phone: String? = nil, Address: String? = nil, City: String? = nil) {
    self.userId = userId
    self.EmailAddress = EmailAddress
    self.Phone = Phone
    self.Address = Address
    self.City = City
  }

  public var variables: GraphQLMap? {
    return ["userId": userId, "EmailAddress": EmailAddress, "Phone": Phone, "Address": Address, "City": City]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateUsers", arguments: ["userId": GraphQLVariable("userId"), "EmailAddress": GraphQLVariable("EmailAddress"), "Phone": GraphQLVariable("Phone"), "Address": GraphQLVariable("Address"), "City": GraphQLVariable("City")], type: .object(OnCreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateUsers: OnCreateUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateUsers": onCreateUsers.flatMap { $0.snapshot }])
    }

    public var onCreateUsers: OnCreateUser? {
      get {
        return (snapshot["onCreateUsers"] as? Snapshot).flatMap { OnCreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateUsers")
      }
    }

    public struct OnCreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["Users"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("EmailAddress", type: .nonNull(.scalar(String.self))),
        GraphQLField("Phone", type: .nonNull(.scalar(String.self))),
        GraphQLField("Address", type: .nonNull(.scalar(String.self))),
        GraphQLField("City", type: .nonNull(.scalar(String.self))),
        GraphQLField("Language", type: .nonNull(.scalar(String.self))),
        GraphQLField("Name", type: .nonNull(.scalar(String.self))),
        GraphQLField("Password", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(userId: String, emailAddress: String, phone: String, address: String, city: String, language: String, name: String, password: String) {
        self.init(snapshot: ["__typename": "Users", "userId": userId, "EmailAddress": emailAddress, "Phone": phone, "Address": address, "City": city, "Language": language, "Name": name, "Password": password])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var emailAddress: String {
        get {
          return snapshot["EmailAddress"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "EmailAddress")
        }
      }

      public var phone: String {
        get {
          return snapshot["Phone"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Phone")
        }
      }

      public var address: String {
        get {
          return snapshot["Address"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Address")
        }
      }

      public var city: String {
        get {
          return snapshot["City"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "City")
        }
      }

      public var language: String {
        get {
          return snapshot["Language"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Language")
        }
      }

      public var name: String {
        get {
          return snapshot["Name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Name")
        }
      }

      public var password: String {
        get {
          return snapshot["Password"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Password")
        }
      }
    }
  }
}

public final class OnUpdateUsersSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateUsers($userId: String, $EmailAddress: String, $Phone: String, $Address: String, $City: String) {\n  onUpdateUsers(userId: $userId, EmailAddress: $EmailAddress, Phone: $Phone, Address: $Address, City: $City) {\n    __typename\n    userId\n    EmailAddress\n    Phone\n    Address\n    City\n    Language\n    Name\n    Password\n  }\n}"

  public var userId: String?
  public var EmailAddress: String?
  public var Phone: String?
  public var Address: String?
  public var City: String?

  public init(userId: String? = nil, EmailAddress: String? = nil, Phone: String? = nil, Address: String? = nil, City: String? = nil) {
    self.userId = userId
    self.EmailAddress = EmailAddress
    self.Phone = Phone
    self.Address = Address
    self.City = City
  }

  public var variables: GraphQLMap? {
    return ["userId": userId, "EmailAddress": EmailAddress, "Phone": Phone, "Address": Address, "City": City]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateUsers", arguments: ["userId": GraphQLVariable("userId"), "EmailAddress": GraphQLVariable("EmailAddress"), "Phone": GraphQLVariable("Phone"), "Address": GraphQLVariable("Address"), "City": GraphQLVariable("City")], type: .object(OnUpdateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateUsers: OnUpdateUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateUsers": onUpdateUsers.flatMap { $0.snapshot }])
    }

    public var onUpdateUsers: OnUpdateUser? {
      get {
        return (snapshot["onUpdateUsers"] as? Snapshot).flatMap { OnUpdateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateUsers")
      }
    }

    public struct OnUpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["Users"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("EmailAddress", type: .nonNull(.scalar(String.self))),
        GraphQLField("Phone", type: .nonNull(.scalar(String.self))),
        GraphQLField("Address", type: .nonNull(.scalar(String.self))),
        GraphQLField("City", type: .nonNull(.scalar(String.self))),
        GraphQLField("Language", type: .nonNull(.scalar(String.self))),
        GraphQLField("Name", type: .nonNull(.scalar(String.self))),
        GraphQLField("Password", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(userId: String, emailAddress: String, phone: String, address: String, city: String, language: String, name: String, password: String) {
        self.init(snapshot: ["__typename": "Users", "userId": userId, "EmailAddress": emailAddress, "Phone": phone, "Address": address, "City": city, "Language": language, "Name": name, "Password": password])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var emailAddress: String {
        get {
          return snapshot["EmailAddress"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "EmailAddress")
        }
      }

      public var phone: String {
        get {
          return snapshot["Phone"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Phone")
        }
      }

      public var address: String {
        get {
          return snapshot["Address"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Address")
        }
      }

      public var city: String {
        get {
          return snapshot["City"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "City")
        }
      }

      public var language: String {
        get {
          return snapshot["Language"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Language")
        }
      }

      public var name: String {
        get {
          return snapshot["Name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Name")
        }
      }

      public var password: String {
        get {
          return snapshot["Password"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Password")
        }
      }
    }
  }
}

public final class OnDeleteUsersSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteUsers($userId: String, $EmailAddress: String, $Phone: String, $Address: String, $City: String) {\n  onDeleteUsers(userId: $userId, EmailAddress: $EmailAddress, Phone: $Phone, Address: $Address, City: $City) {\n    __typename\n    userId\n    EmailAddress\n    Phone\n    Address\n    City\n    Language\n    Name\n    Password\n  }\n}"

  public var userId: String?
  public var EmailAddress: String?
  public var Phone: String?
  public var Address: String?
  public var City: String?

  public init(userId: String? = nil, EmailAddress: String? = nil, Phone: String? = nil, Address: String? = nil, City: String? = nil) {
    self.userId = userId
    self.EmailAddress = EmailAddress
    self.Phone = Phone
    self.Address = Address
    self.City = City
  }

  public var variables: GraphQLMap? {
    return ["userId": userId, "EmailAddress": EmailAddress, "Phone": Phone, "Address": Address, "City": City]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteUsers", arguments: ["userId": GraphQLVariable("userId"), "EmailAddress": GraphQLVariable("EmailAddress"), "Phone": GraphQLVariable("Phone"), "Address": GraphQLVariable("Address"), "City": GraphQLVariable("City")], type: .object(OnDeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteUsers: OnDeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteUsers": onDeleteUsers.flatMap { $0.snapshot }])
    }

    public var onDeleteUsers: OnDeleteUser? {
      get {
        return (snapshot["onDeleteUsers"] as? Snapshot).flatMap { OnDeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteUsers")
      }
    }

    public struct OnDeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["Users"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("EmailAddress", type: .nonNull(.scalar(String.self))),
        GraphQLField("Phone", type: .nonNull(.scalar(String.self))),
        GraphQLField("Address", type: .nonNull(.scalar(String.self))),
        GraphQLField("City", type: .nonNull(.scalar(String.self))),
        GraphQLField("Language", type: .nonNull(.scalar(String.self))),
        GraphQLField("Name", type: .nonNull(.scalar(String.self))),
        GraphQLField("Password", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(userId: String, emailAddress: String, phone: String, address: String, city: String, language: String, name: String, password: String) {
        self.init(snapshot: ["__typename": "Users", "userId": userId, "EmailAddress": emailAddress, "Phone": phone, "Address": address, "City": city, "Language": language, "Name": name, "Password": password])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var emailAddress: String {
        get {
          return snapshot["EmailAddress"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "EmailAddress")
        }
      }

      public var phone: String {
        get {
          return snapshot["Phone"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Phone")
        }
      }

      public var address: String {
        get {
          return snapshot["Address"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Address")
        }
      }

      public var city: String {
        get {
          return snapshot["City"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "City")
        }
      }

      public var language: String {
        get {
          return snapshot["Language"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Language")
        }
      }

      public var name: String {
        get {
          return snapshot["Name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Name")
        }
      }

      public var password: String {
        get {
          return snapshot["Password"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Password")
        }
      }
    }
  }
}