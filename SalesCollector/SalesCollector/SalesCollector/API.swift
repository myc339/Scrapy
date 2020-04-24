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

public struct CreateStoreInfosInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(storeAddress: String, storeId: String, storePostalCode: String, storeCode: String, storeName: String) {
    graphQLMap = ["StoreAddress": storeAddress, "StoreId": storeId, "StorePostalCode": storePostalCode, "StoreCode": storeCode, "StoreName": storeName]
  }

  public var storeAddress: String {
    get {
      return graphQLMap["StoreAddress"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "StoreAddress")
    }
  }

  public var storeId: String {
    get {
      return graphQLMap["StoreId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "StoreId")
    }
  }

  public var storePostalCode: String {
    get {
      return graphQLMap["StorePostalCode"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "StorePostalCode")
    }
  }

  public var storeCode: String {
    get {
      return graphQLMap["StoreCode"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "StoreCode")
    }
  }

  public var storeName: String {
    get {
      return graphQLMap["StoreName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "StoreName")
    }
  }
}

public struct UpdateStoreInfosInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(storeAddress: String, storeId: String, storePostalCode: String? = nil, storeCode: String? = nil, storeName: String? = nil) {
    graphQLMap = ["StoreAddress": storeAddress, "StoreId": storeId, "StorePostalCode": storePostalCode, "StoreCode": storeCode, "StoreName": storeName]
  }

  public var storeAddress: String {
    get {
      return graphQLMap["StoreAddress"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "StoreAddress")
    }
  }

  public var storeId: String {
    get {
      return graphQLMap["StoreId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "StoreId")
    }
  }

  public var storePostalCode: String? {
    get {
      return graphQLMap["StorePostalCode"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "StorePostalCode")
    }
  }

  public var storeCode: String? {
    get {
      return graphQLMap["StoreCode"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "StoreCode")
    }
  }

  public var storeName: String? {
    get {
      return graphQLMap["StoreName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "StoreName")
    }
  }
}

public struct DeleteStoreInfosInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(storeAddress: String, storeId: String) {
    graphQLMap = ["StoreAddress": storeAddress, "StoreId": storeId]
  }

  public var storeAddress: String {
    get {
      return graphQLMap["StoreAddress"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "StoreAddress")
    }
  }

  public var storeId: String {
    get {
      return graphQLMap["StoreId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "StoreId")
    }
  }
}

public struct CreateUserMarkInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(markid: String, userId: String, itemId: String, sharingId: String, store: String) {
    graphQLMap = ["Markid": markid, "UserId": userId, "itemId": itemId, "SharingId": sharingId, "Store": store]
  }

  public var markid: String {
    get {
      return graphQLMap["Markid"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Markid")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["UserId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "UserId")
    }
  }

  public var itemId: String {
    get {
      return graphQLMap["itemId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "itemId")
    }
  }

  public var sharingId: String {
    get {
      return graphQLMap["SharingId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "SharingId")
    }
  }

  public var store: String {
    get {
      return graphQLMap["Store"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Store")
    }
  }
}

public struct UpdateUserMarkInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(markid: String, userId: String, itemId: String? = nil, sharingId: String? = nil, store: String? = nil) {
    graphQLMap = ["Markid": markid, "UserId": userId, "itemId": itemId, "SharingId": sharingId, "Store": store]
  }

  public var markid: String {
    get {
      return graphQLMap["Markid"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Markid")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["UserId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "UserId")
    }
  }

  public var itemId: String? {
    get {
      return graphQLMap["itemId"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "itemId")
    }
  }

  public var sharingId: String? {
    get {
      return graphQLMap["SharingId"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "SharingId")
    }
  }

  public var store: String? {
    get {
      return graphQLMap["Store"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Store")
    }
  }
}

public struct DeleteUserMarkInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(markid: String, userId: String) {
    graphQLMap = ["Markid": markid, "UserId": userId]
  }

  public var markid: String {
    get {
      return graphQLMap["Markid"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Markid")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["UserId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "UserId")
    }
  }
}

public struct CreateUserSharingInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(shareId: String, userId: String, content: String, releaseDate: String, imgSrc: String, title: String) {
    graphQLMap = ["ShareId": shareId, "UserId": userId, "Content": content, "ReleaseDate": releaseDate, "ImgSrc": imgSrc, "title": title]
  }

  public var shareId: String {
    get {
      return graphQLMap["ShareId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ShareId")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["UserId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "UserId")
    }
  }

  public var content: String {
    get {
      return graphQLMap["Content"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Content")
    }
  }

  public var releaseDate: String {
    get {
      return graphQLMap["ReleaseDate"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ReleaseDate")
    }
  }

  public var imgSrc: String {
    get {
      return graphQLMap["ImgSrc"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ImgSrc")
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
}

public struct UpdateUserSharingInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(shareId: String, userId: String, content: String? = nil, releaseDate: String? = nil, imgSrc: String? = nil, title: String? = nil) {
    graphQLMap = ["ShareId": shareId, "UserId": userId, "Content": content, "ReleaseDate": releaseDate, "ImgSrc": imgSrc, "title": title]
  }

  public var shareId: String {
    get {
      return graphQLMap["ShareId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ShareId")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["UserId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "UserId")
    }
  }

  public var content: String? {
    get {
      return graphQLMap["Content"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Content")
    }
  }

  public var releaseDate: String? {
    get {
      return graphQLMap["ReleaseDate"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ReleaseDate")
    }
  }

  public var imgSrc: String? {
    get {
      return graphQLMap["ImgSrc"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ImgSrc")
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
}

public struct DeleteUserSharingInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(shareId: String, userId: String) {
    graphQLMap = ["ShareId": shareId, "UserId": userId]
  }

  public var shareId: String {
    get {
      return graphQLMap["ShareId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ShareId")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["UserId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "UserId")
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

public struct TableStoreInfosFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(storeAddress: TableStringFilterInput? = nil, storeId: TableStringFilterInput? = nil, storePostalCode: TableStringFilterInput? = nil, storeCode: TableStringFilterInput? = nil, storeName: TableStringFilterInput? = nil) {
    graphQLMap = ["StoreAddress": storeAddress, "StoreId": storeId, "StorePostalCode": storePostalCode, "StoreCode": storeCode, "StoreName": storeName]
  }

  public var storeAddress: TableStringFilterInput? {
    get {
      return graphQLMap["StoreAddress"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "StoreAddress")
    }
  }

  public var storeId: TableStringFilterInput? {
    get {
      return graphQLMap["StoreId"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "StoreId")
    }
  }

  public var storePostalCode: TableStringFilterInput? {
    get {
      return graphQLMap["StorePostalCode"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "StorePostalCode")
    }
  }

  public var storeCode: TableStringFilterInput? {
    get {
      return graphQLMap["StoreCode"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "StoreCode")
    }
  }

  public var storeName: TableStringFilterInput? {
    get {
      return graphQLMap["StoreName"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "StoreName")
    }
  }
}

public struct TableUserMarkFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(markid: TableStringFilterInput? = nil, userId: TableStringFilterInput? = nil, itemId: TableStringFilterInput? = nil, sharingId: TableStringFilterInput? = nil, store: TableStringFilterInput? = nil) {
    graphQLMap = ["Markid": markid, "UserId": userId, "itemId": itemId, "SharingId": sharingId, "Store": store]
  }

  public var markid: TableStringFilterInput? {
    get {
      return graphQLMap["Markid"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Markid")
    }
  }

  public var userId: TableStringFilterInput? {
    get {
      return graphQLMap["UserId"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "UserId")
    }
  }

  public var itemId: TableStringFilterInput? {
    get {
      return graphQLMap["itemId"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "itemId")
    }
  }

  public var sharingId: TableStringFilterInput? {
    get {
      return graphQLMap["SharingId"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "SharingId")
    }
  }

  public var store: TableStringFilterInput? {
    get {
      return graphQLMap["Store"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Store")
    }
  }
}

public struct TableUserSharingFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(shareId: TableStringFilterInput? = nil, userId: TableStringFilterInput? = nil, content: TableStringFilterInput? = nil, releaseDate: TableStringFilterInput? = nil, imgSrc: TableStringFilterInput? = nil, title: TableStringFilterInput? = nil) {
    graphQLMap = ["ShareId": shareId, "UserId": userId, "Content": content, "ReleaseDate": releaseDate, "ImgSrc": imgSrc, "title": title]
  }

  public var shareId: TableStringFilterInput? {
    get {
      return graphQLMap["ShareId"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ShareId")
    }
  }

  public var userId: TableStringFilterInput? {
    get {
      return graphQLMap["UserId"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "UserId")
    }
  }

  public var content: TableStringFilterInput? {
    get {
      return graphQLMap["Content"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Content")
    }
  }

  public var releaseDate: TableStringFilterInput? {
    get {
      return graphQLMap["ReleaseDate"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ReleaseDate")
    }
  }

  public var imgSrc: TableStringFilterInput? {
    get {
      return graphQLMap["ImgSrc"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ImgSrc")
    }
  }

  public var title: TableStringFilterInput? {
    get {
      return graphQLMap["title"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
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

public final class CreateStoreInfosMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateStoreInfos($input: CreateStoreInfosInput!) {\n  createStoreInfos(input: $input) {\n    __typename\n    StoreAddress\n    StoreId\n    StorePostalCode\n    StoreCode\n    StoreName\n  }\n}"

  public var input: CreateStoreInfosInput

  public init(input: CreateStoreInfosInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createStoreInfos", arguments: ["input": GraphQLVariable("input")], type: .object(CreateStoreInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createStoreInfos: CreateStoreInfo? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createStoreInfos": createStoreInfos.flatMap { $0.snapshot }])
    }

    public var createStoreInfos: CreateStoreInfo? {
      get {
        return (snapshot["createStoreInfos"] as? Snapshot).flatMap { CreateStoreInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createStoreInfos")
      }
    }

    public struct CreateStoreInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["StoreInfos"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreAddress", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreId", type: .nonNull(.scalar(String.self))),
        GraphQLField("StorePostalCode", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreCode", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreName", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(storeAddress: String, storeId: String, storePostalCode: String, storeCode: String, storeName: String) {
        self.init(snapshot: ["__typename": "StoreInfos", "StoreAddress": storeAddress, "StoreId": storeId, "StorePostalCode": storePostalCode, "StoreCode": storeCode, "StoreName": storeName])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var storeAddress: String {
        get {
          return snapshot["StoreAddress"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreAddress")
        }
      }

      public var storeId: String {
        get {
          return snapshot["StoreId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreId")
        }
      }

      public var storePostalCode: String {
        get {
          return snapshot["StorePostalCode"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StorePostalCode")
        }
      }

      public var storeCode: String {
        get {
          return snapshot["StoreCode"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreCode")
        }
      }

      public var storeName: String {
        get {
          return snapshot["StoreName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreName")
        }
      }
    }
  }
}

public final class UpdateStoreInfosMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateStoreInfos($input: UpdateStoreInfosInput!) {\n  updateStoreInfos(input: $input) {\n    __typename\n    StoreAddress\n    StoreId\n    StorePostalCode\n    StoreCode\n    StoreName\n  }\n}"

  public var input: UpdateStoreInfosInput

  public init(input: UpdateStoreInfosInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateStoreInfos", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateStoreInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateStoreInfos: UpdateStoreInfo? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateStoreInfos": updateStoreInfos.flatMap { $0.snapshot }])
    }

    public var updateStoreInfos: UpdateStoreInfo? {
      get {
        return (snapshot["updateStoreInfos"] as? Snapshot).flatMap { UpdateStoreInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateStoreInfos")
      }
    }

    public struct UpdateStoreInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["StoreInfos"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreAddress", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreId", type: .nonNull(.scalar(String.self))),
        GraphQLField("StorePostalCode", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreCode", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreName", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(storeAddress: String, storeId: String, storePostalCode: String, storeCode: String, storeName: String) {
        self.init(snapshot: ["__typename": "StoreInfos", "StoreAddress": storeAddress, "StoreId": storeId, "StorePostalCode": storePostalCode, "StoreCode": storeCode, "StoreName": storeName])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var storeAddress: String {
        get {
          return snapshot["StoreAddress"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreAddress")
        }
      }

      public var storeId: String {
        get {
          return snapshot["StoreId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreId")
        }
      }

      public var storePostalCode: String {
        get {
          return snapshot["StorePostalCode"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StorePostalCode")
        }
      }

      public var storeCode: String {
        get {
          return snapshot["StoreCode"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreCode")
        }
      }

      public var storeName: String {
        get {
          return snapshot["StoreName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreName")
        }
      }
    }
  }
}

public final class DeleteStoreInfosMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteStoreInfos($input: DeleteStoreInfosInput!) {\n  deleteStoreInfos(input: $input) {\n    __typename\n    StoreAddress\n    StoreId\n    StorePostalCode\n    StoreCode\n    StoreName\n  }\n}"

  public var input: DeleteStoreInfosInput

  public init(input: DeleteStoreInfosInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteStoreInfos", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteStoreInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteStoreInfos: DeleteStoreInfo? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteStoreInfos": deleteStoreInfos.flatMap { $0.snapshot }])
    }

    public var deleteStoreInfos: DeleteStoreInfo? {
      get {
        return (snapshot["deleteStoreInfos"] as? Snapshot).flatMap { DeleteStoreInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteStoreInfos")
      }
    }

    public struct DeleteStoreInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["StoreInfos"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreAddress", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreId", type: .nonNull(.scalar(String.self))),
        GraphQLField("StorePostalCode", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreCode", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreName", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(storeAddress: String, storeId: String, storePostalCode: String, storeCode: String, storeName: String) {
        self.init(snapshot: ["__typename": "StoreInfos", "StoreAddress": storeAddress, "StoreId": storeId, "StorePostalCode": storePostalCode, "StoreCode": storeCode, "StoreName": storeName])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var storeAddress: String {
        get {
          return snapshot["StoreAddress"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreAddress")
        }
      }

      public var storeId: String {
        get {
          return snapshot["StoreId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreId")
        }
      }

      public var storePostalCode: String {
        get {
          return snapshot["StorePostalCode"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StorePostalCode")
        }
      }

      public var storeCode: String {
        get {
          return snapshot["StoreCode"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreCode")
        }
      }

      public var storeName: String {
        get {
          return snapshot["StoreName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreName")
        }
      }
    }
  }
}

public final class CreateUserMarkMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateUserMark($input: CreateUserMarkInput!) {\n  createUserMark(input: $input) {\n    __typename\n    Markid\n    UserId\n    itemId\n    SharingId\n    Store\n  }\n}"

  public var input: CreateUserMarkInput

  public init(input: CreateUserMarkInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createUserMark", arguments: ["input": GraphQLVariable("input")], type: .object(CreateUserMark.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createUserMark: CreateUserMark? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createUserMark": createUserMark.flatMap { $0.snapshot }])
    }

    public var createUserMark: CreateUserMark? {
      get {
        return (snapshot["createUserMark"] as? Snapshot).flatMap { CreateUserMark(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createUserMark")
      }
    }

    public struct CreateUserMark: GraphQLSelectionSet {
      public static let possibleTypes = ["UserMark"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("Markid", type: .nonNull(.scalar(String.self))),
        GraphQLField("UserId", type: .nonNull(.scalar(String.self))),
        GraphQLField("itemId", type: .nonNull(.scalar(String.self))),
        GraphQLField("SharingId", type: .nonNull(.scalar(String.self))),
        GraphQLField("Store", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(markid: String, userId: String, itemId: String, sharingId: String, store: String) {
        self.init(snapshot: ["__typename": "UserMark", "Markid": markid, "UserId": userId, "itemId": itemId, "SharingId": sharingId, "Store": store])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var markid: String {
        get {
          return snapshot["Markid"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Markid")
        }
      }

      public var userId: String {
        get {
          return snapshot["UserId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "UserId")
        }
      }

      public var itemId: String {
        get {
          return snapshot["itemId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemId")
        }
      }

      public var sharingId: String {
        get {
          return snapshot["SharingId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SharingId")
        }
      }

      public var store: String {
        get {
          return snapshot["Store"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Store")
        }
      }
    }
  }
}

public final class UpdateUserMarkMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateUserMark($input: UpdateUserMarkInput!) {\n  updateUserMark(input: $input) {\n    __typename\n    Markid\n    UserId\n    itemId\n    SharingId\n    Store\n  }\n}"

  public var input: UpdateUserMarkInput

  public init(input: UpdateUserMarkInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateUserMark", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateUserMark.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateUserMark: UpdateUserMark? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateUserMark": updateUserMark.flatMap { $0.snapshot }])
    }

    public var updateUserMark: UpdateUserMark? {
      get {
        return (snapshot["updateUserMark"] as? Snapshot).flatMap { UpdateUserMark(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateUserMark")
      }
    }

    public struct UpdateUserMark: GraphQLSelectionSet {
      public static let possibleTypes = ["UserMark"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("Markid", type: .nonNull(.scalar(String.self))),
        GraphQLField("UserId", type: .nonNull(.scalar(String.self))),
        GraphQLField("itemId", type: .nonNull(.scalar(String.self))),
        GraphQLField("SharingId", type: .nonNull(.scalar(String.self))),
        GraphQLField("Store", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(markid: String, userId: String, itemId: String, sharingId: String, store: String) {
        self.init(snapshot: ["__typename": "UserMark", "Markid": markid, "UserId": userId, "itemId": itemId, "SharingId": sharingId, "Store": store])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var markid: String {
        get {
          return snapshot["Markid"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Markid")
        }
      }

      public var userId: String {
        get {
          return snapshot["UserId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "UserId")
        }
      }

      public var itemId: String {
        get {
          return snapshot["itemId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemId")
        }
      }

      public var sharingId: String {
        get {
          return snapshot["SharingId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SharingId")
        }
      }

      public var store: String {
        get {
          return snapshot["Store"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Store")
        }
      }
    }
  }
}

public final class DeleteUserMarkMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteUserMark($input: DeleteUserMarkInput!) {\n  deleteUserMark(input: $input) {\n    __typename\n    Markid\n    UserId\n    itemId\n    SharingId\n    Store\n  }\n}"

  public var input: DeleteUserMarkInput

  public init(input: DeleteUserMarkInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteUserMark", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteUserMark.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteUserMark: DeleteUserMark? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteUserMark": deleteUserMark.flatMap { $0.snapshot }])
    }

    public var deleteUserMark: DeleteUserMark? {
      get {
        return (snapshot["deleteUserMark"] as? Snapshot).flatMap { DeleteUserMark(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteUserMark")
      }
    }

    public struct DeleteUserMark: GraphQLSelectionSet {
      public static let possibleTypes = ["UserMark"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("Markid", type: .nonNull(.scalar(String.self))),
        GraphQLField("UserId", type: .nonNull(.scalar(String.self))),
        GraphQLField("itemId", type: .nonNull(.scalar(String.self))),
        GraphQLField("SharingId", type: .nonNull(.scalar(String.self))),
        GraphQLField("Store", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(markid: String, userId: String, itemId: String, sharingId: String, store: String) {
        self.init(snapshot: ["__typename": "UserMark", "Markid": markid, "UserId": userId, "itemId": itemId, "SharingId": sharingId, "Store": store])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var markid: String {
        get {
          return snapshot["Markid"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Markid")
        }
      }

      public var userId: String {
        get {
          return snapshot["UserId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "UserId")
        }
      }

      public var itemId: String {
        get {
          return snapshot["itemId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemId")
        }
      }

      public var sharingId: String {
        get {
          return snapshot["SharingId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SharingId")
        }
      }

      public var store: String {
        get {
          return snapshot["Store"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Store")
        }
      }
    }
  }
}

public final class CreateUserSharingMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateUserSharing($input: CreateUserSharingInput!) {\n  createUserSharing(input: $input) {\n    __typename\n    ShareId\n    UserId\n    Content\n    ReleaseDate\n    ImgSrc\n    title\n  }\n}"

  public var input: CreateUserSharingInput

  public init(input: CreateUserSharingInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createUserSharing", arguments: ["input": GraphQLVariable("input")], type: .object(CreateUserSharing.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createUserSharing: CreateUserSharing? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createUserSharing": createUserSharing.flatMap { $0.snapshot }])
    }

    public var createUserSharing: CreateUserSharing? {
      get {
        return (snapshot["createUserSharing"] as? Snapshot).flatMap { CreateUserSharing(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createUserSharing")
      }
    }

    public struct CreateUserSharing: GraphQLSelectionSet {
      public static let possibleTypes = ["UserSharing"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("ShareId", type: .nonNull(.scalar(String.self))),
        GraphQLField("UserId", type: .nonNull(.scalar(String.self))),
        GraphQLField("Content", type: .nonNull(.scalar(String.self))),
        GraphQLField("ReleaseDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("ImgSrc", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(shareId: String, userId: String, content: String, releaseDate: String, imgSrc: String, title: String) {
        self.init(snapshot: ["__typename": "UserSharing", "ShareId": shareId, "UserId": userId, "Content": content, "ReleaseDate": releaseDate, "ImgSrc": imgSrc, "title": title])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var shareId: String {
        get {
          return snapshot["ShareId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ShareId")
        }
      }

      public var userId: String {
        get {
          return snapshot["UserId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "UserId")
        }
      }

      public var content: String {
        get {
          return snapshot["Content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Content")
        }
      }

      public var releaseDate: String {
        get {
          return snapshot["ReleaseDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ReleaseDate")
        }
      }

      public var imgSrc: String {
        get {
          return snapshot["ImgSrc"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ImgSrc")
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
    }
  }
}

public final class UpdateUserSharingMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateUserSharing($input: UpdateUserSharingInput!) {\n  updateUserSharing(input: $input) {\n    __typename\n    ShareId\n    UserId\n    Content\n    ReleaseDate\n    ImgSrc\n    title\n  }\n}"

  public var input: UpdateUserSharingInput

  public init(input: UpdateUserSharingInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateUserSharing", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateUserSharing.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateUserSharing: UpdateUserSharing? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateUserSharing": updateUserSharing.flatMap { $0.snapshot }])
    }

    public var updateUserSharing: UpdateUserSharing? {
      get {
        return (snapshot["updateUserSharing"] as? Snapshot).flatMap { UpdateUserSharing(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateUserSharing")
      }
    }

    public struct UpdateUserSharing: GraphQLSelectionSet {
      public static let possibleTypes = ["UserSharing"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("ShareId", type: .nonNull(.scalar(String.self))),
        GraphQLField("UserId", type: .nonNull(.scalar(String.self))),
        GraphQLField("Content", type: .nonNull(.scalar(String.self))),
        GraphQLField("ReleaseDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("ImgSrc", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(shareId: String, userId: String, content: String, releaseDate: String, imgSrc: String, title: String) {
        self.init(snapshot: ["__typename": "UserSharing", "ShareId": shareId, "UserId": userId, "Content": content, "ReleaseDate": releaseDate, "ImgSrc": imgSrc, "title": title])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var shareId: String {
        get {
          return snapshot["ShareId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ShareId")
        }
      }

      public var userId: String {
        get {
          return snapshot["UserId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "UserId")
        }
      }

      public var content: String {
        get {
          return snapshot["Content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Content")
        }
      }

      public var releaseDate: String {
        get {
          return snapshot["ReleaseDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ReleaseDate")
        }
      }

      public var imgSrc: String {
        get {
          return snapshot["ImgSrc"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ImgSrc")
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
    }
  }
}

public final class DeleteUserSharingMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteUserSharing($input: DeleteUserSharingInput!) {\n  deleteUserSharing(input: $input) {\n    __typename\n    ShareId\n    UserId\n    Content\n    ReleaseDate\n    ImgSrc\n    title\n  }\n}"

  public var input: DeleteUserSharingInput

  public init(input: DeleteUserSharingInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteUserSharing", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteUserSharing.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteUserSharing: DeleteUserSharing? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteUserSharing": deleteUserSharing.flatMap { $0.snapshot }])
    }

    public var deleteUserSharing: DeleteUserSharing? {
      get {
        return (snapshot["deleteUserSharing"] as? Snapshot).flatMap { DeleteUserSharing(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteUserSharing")
      }
    }

    public struct DeleteUserSharing: GraphQLSelectionSet {
      public static let possibleTypes = ["UserSharing"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("ShareId", type: .nonNull(.scalar(String.self))),
        GraphQLField("UserId", type: .nonNull(.scalar(String.self))),
        GraphQLField("Content", type: .nonNull(.scalar(String.self))),
        GraphQLField("ReleaseDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("ImgSrc", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(shareId: String, userId: String, content: String, releaseDate: String, imgSrc: String, title: String) {
        self.init(snapshot: ["__typename": "UserSharing", "ShareId": shareId, "UserId": userId, "Content": content, "ReleaseDate": releaseDate, "ImgSrc": imgSrc, "title": title])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var shareId: String {
        get {
          return snapshot["ShareId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ShareId")
        }
      }

      public var userId: String {
        get {
          return snapshot["UserId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "UserId")
        }
      }

      public var content: String {
        get {
          return snapshot["Content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Content")
        }
      }

      public var releaseDate: String {
        get {
          return snapshot["ReleaseDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ReleaseDate")
        }
      }

      public var imgSrc: String {
        get {
          return snapshot["ImgSrc"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ImgSrc")
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

public final class GetStoreInfosQuery: GraphQLQuery {
  public static let operationString =
    "query GetStoreInfos($StoreId: String!, $StoreAddress: String!) {\n  getStoreInfos(StoreId: $StoreId, StoreAddress: $StoreAddress) {\n    __typename\n    StoreAddress\n    StoreId\n    StorePostalCode\n    StoreCode\n    StoreName\n  }\n}"

  public var StoreId: String
  public var StoreAddress: String

  public init(StoreId: String, StoreAddress: String) {
    self.StoreId = StoreId
    self.StoreAddress = StoreAddress
  }

  public var variables: GraphQLMap? {
    return ["StoreId": StoreId, "StoreAddress": StoreAddress]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getStoreInfos", arguments: ["StoreId": GraphQLVariable("StoreId"), "StoreAddress": GraphQLVariable("StoreAddress")], type: .object(GetStoreInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getStoreInfos: GetStoreInfo? = nil) {
      self.init(snapshot: ["__typename": "Query", "getStoreInfos": getStoreInfos.flatMap { $0.snapshot }])
    }

    public var getStoreInfos: GetStoreInfo? {
      get {
        return (snapshot["getStoreInfos"] as? Snapshot).flatMap { GetStoreInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getStoreInfos")
      }
    }

    public struct GetStoreInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["StoreInfos"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreAddress", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreId", type: .nonNull(.scalar(String.self))),
        GraphQLField("StorePostalCode", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreCode", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreName", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(storeAddress: String, storeId: String, storePostalCode: String, storeCode: String, storeName: String) {
        self.init(snapshot: ["__typename": "StoreInfos", "StoreAddress": storeAddress, "StoreId": storeId, "StorePostalCode": storePostalCode, "StoreCode": storeCode, "StoreName": storeName])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var storeAddress: String {
        get {
          return snapshot["StoreAddress"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreAddress")
        }
      }

      public var storeId: String {
        get {
          return snapshot["StoreId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreId")
        }
      }

      public var storePostalCode: String {
        get {
          return snapshot["StorePostalCode"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StorePostalCode")
        }
      }

      public var storeCode: String {
        get {
          return snapshot["StoreCode"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreCode")
        }
      }

      public var storeName: String {
        get {
          return snapshot["StoreName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreName")
        }
      }
    }
  }
}

public final class ListStoreInfosQuery: GraphQLQuery {
  public static let operationString =
    "query ListStoreInfos($filter: TableStoreInfosFilterInput, $limit: Int, $nextToken: String) {\n  listStoreInfos(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      StoreAddress\n      StoreId\n      StorePostalCode\n      StoreCode\n      StoreName\n    }\n    nextToken\n  }\n}"

  public var filter: TableStoreInfosFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TableStoreInfosFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
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
      GraphQLField("listStoreInfos", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListStoreInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listStoreInfos: ListStoreInfo? = nil) {
      self.init(snapshot: ["__typename": "Query", "listStoreInfos": listStoreInfos.flatMap { $0.snapshot }])
    }

    public var listStoreInfos: ListStoreInfo? {
      get {
        return (snapshot["listStoreInfos"] as? Snapshot).flatMap { ListStoreInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listStoreInfos")
      }
    }

    public struct ListStoreInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["StoreInfosConnection"]

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
        self.init(snapshot: ["__typename": "StoreInfosConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
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
        public static let possibleTypes = ["StoreInfos"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("StoreAddress", type: .nonNull(.scalar(String.self))),
          GraphQLField("StoreId", type: .nonNull(.scalar(String.self))),
          GraphQLField("StorePostalCode", type: .nonNull(.scalar(String.self))),
          GraphQLField("StoreCode", type: .nonNull(.scalar(String.self))),
          GraphQLField("StoreName", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(storeAddress: String, storeId: String, storePostalCode: String, storeCode: String, storeName: String) {
          self.init(snapshot: ["__typename": "StoreInfos", "StoreAddress": storeAddress, "StoreId": storeId, "StorePostalCode": storePostalCode, "StoreCode": storeCode, "StoreName": storeName])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var storeAddress: String {
          get {
            return snapshot["StoreAddress"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "StoreAddress")
          }
        }

        public var storeId: String {
          get {
            return snapshot["StoreId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "StoreId")
          }
        }

        public var storePostalCode: String {
          get {
            return snapshot["StorePostalCode"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "StorePostalCode")
          }
        }

        public var storeCode: String {
          get {
            return snapshot["StoreCode"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "StoreCode")
          }
        }

        public var storeName: String {
          get {
            return snapshot["StoreName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "StoreName")
          }
        }
      }
    }
  }
}

public final class GetUserMarkQuery: GraphQLQuery {
  public static let operationString =
    "query GetUserMark($UserId: String!, $Markid: String!) {\n  getUserMark(UserId: $UserId, Markid: $Markid) {\n    __typename\n    Markid\n    UserId\n    itemId\n    SharingId\n    Store\n  }\n}"

  public var UserId: String
  public var Markid: String

  public init(UserId: String, Markid: String) {
    self.UserId = UserId
    self.Markid = Markid
  }

  public var variables: GraphQLMap? {
    return ["UserId": UserId, "Markid": Markid]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUserMark", arguments: ["UserId": GraphQLVariable("UserId"), "Markid": GraphQLVariable("Markid")], type: .object(GetUserMark.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUserMark: GetUserMark? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUserMark": getUserMark.flatMap { $0.snapshot }])
    }

    public var getUserMark: GetUserMark? {
      get {
        return (snapshot["getUserMark"] as? Snapshot).flatMap { GetUserMark(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getUserMark")
      }
    }

    public struct GetUserMark: GraphQLSelectionSet {
      public static let possibleTypes = ["UserMark"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("Markid", type: .nonNull(.scalar(String.self))),
        GraphQLField("UserId", type: .nonNull(.scalar(String.self))),
        GraphQLField("itemId", type: .nonNull(.scalar(String.self))),
        GraphQLField("SharingId", type: .nonNull(.scalar(String.self))),
        GraphQLField("Store", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(markid: String, userId: String, itemId: String, sharingId: String, store: String) {
        self.init(snapshot: ["__typename": "UserMark", "Markid": markid, "UserId": userId, "itemId": itemId, "SharingId": sharingId, "Store": store])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var markid: String {
        get {
          return snapshot["Markid"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Markid")
        }
      }

      public var userId: String {
        get {
          return snapshot["UserId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "UserId")
        }
      }

      public var itemId: String {
        get {
          return snapshot["itemId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemId")
        }
      }

      public var sharingId: String {
        get {
          return snapshot["SharingId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SharingId")
        }
      }

      public var store: String {
        get {
          return snapshot["Store"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Store")
        }
      }
    }
  }
}

public final class ListUserMarksQuery: GraphQLQuery {
  public static let operationString =
    "query ListUserMarks($filter: TableUserMarkFilterInput, $limit: Int, $nextToken: String) {\n  listUserMarks(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      Markid\n      UserId\n      itemId\n      SharingId\n      Store\n    }\n    nextToken\n  }\n}"

  public var filter: TableUserMarkFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TableUserMarkFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
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
      GraphQLField("listUserMarks", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListUserMark.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listUserMarks: ListUserMark? = nil) {
      self.init(snapshot: ["__typename": "Query", "listUserMarks": listUserMarks.flatMap { $0.snapshot }])
    }

    public var listUserMarks: ListUserMark? {
      get {
        return (snapshot["listUserMarks"] as? Snapshot).flatMap { ListUserMark(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listUserMarks")
      }
    }

    public struct ListUserMark: GraphQLSelectionSet {
      public static let possibleTypes = ["UserMarkConnection"]

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
        self.init(snapshot: ["__typename": "UserMarkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
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
        public static let possibleTypes = ["UserMark"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("Markid", type: .nonNull(.scalar(String.self))),
          GraphQLField("UserId", type: .nonNull(.scalar(String.self))),
          GraphQLField("itemId", type: .nonNull(.scalar(String.self))),
          GraphQLField("SharingId", type: .nonNull(.scalar(String.self))),
          GraphQLField("Store", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(markid: String, userId: String, itemId: String, sharingId: String, store: String) {
          self.init(snapshot: ["__typename": "UserMark", "Markid": markid, "UserId": userId, "itemId": itemId, "SharingId": sharingId, "Store": store])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var markid: String {
          get {
            return snapshot["Markid"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Markid")
          }
        }

        public var userId: String {
          get {
            return snapshot["UserId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "UserId")
          }
        }

        public var itemId: String {
          get {
            return snapshot["itemId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "itemId")
          }
        }

        public var sharingId: String {
          get {
            return snapshot["SharingId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SharingId")
          }
        }

        public var store: String {
          get {
            return snapshot["Store"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Store")
          }
        }
      }
    }
  }
}

public final class GetUserSharingQuery: GraphQLQuery {
  public static let operationString =
    "query GetUserSharing($ShareId: String!, $UserId: String!) {\n  getUserSharing(ShareId: $ShareId, UserId: $UserId) {\n    __typename\n    ShareId\n    UserId\n    Content\n    ReleaseDate\n    ImgSrc\n    title\n  }\n}"

  public var ShareId: String
  public var UserId: String

  public init(ShareId: String, UserId: String) {
    self.ShareId = ShareId
    self.UserId = UserId
  }

  public var variables: GraphQLMap? {
    return ["ShareId": ShareId, "UserId": UserId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUserSharing", arguments: ["ShareId": GraphQLVariable("ShareId"), "UserId": GraphQLVariable("UserId")], type: .object(GetUserSharing.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUserSharing: GetUserSharing? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUserSharing": getUserSharing.flatMap { $0.snapshot }])
    }

    public var getUserSharing: GetUserSharing? {
      get {
        return (snapshot["getUserSharing"] as? Snapshot).flatMap { GetUserSharing(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getUserSharing")
      }
    }

    public struct GetUserSharing: GraphQLSelectionSet {
      public static let possibleTypes = ["UserSharing"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("ShareId", type: .nonNull(.scalar(String.self))),
        GraphQLField("UserId", type: .nonNull(.scalar(String.self))),
        GraphQLField("Content", type: .nonNull(.scalar(String.self))),
        GraphQLField("ReleaseDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("ImgSrc", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(shareId: String, userId: String, content: String, releaseDate: String, imgSrc: String, title: String) {
        self.init(snapshot: ["__typename": "UserSharing", "ShareId": shareId, "UserId": userId, "Content": content, "ReleaseDate": releaseDate, "ImgSrc": imgSrc, "title": title])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var shareId: String {
        get {
          return snapshot["ShareId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ShareId")
        }
      }

      public var userId: String {
        get {
          return snapshot["UserId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "UserId")
        }
      }

      public var content: String {
        get {
          return snapshot["Content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Content")
        }
      }

      public var releaseDate: String {
        get {
          return snapshot["ReleaseDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ReleaseDate")
        }
      }

      public var imgSrc: String {
        get {
          return snapshot["ImgSrc"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ImgSrc")
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
    }
  }
}

public final class ListUserSharingsQuery: GraphQLQuery {
  public static let operationString =
    "query ListUserSharings($filter: TableUserSharingFilterInput, $limit: Int, $nextToken: String) {\n  listUserSharings(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      ShareId\n      UserId\n      Content\n      ReleaseDate\n      ImgSrc\n      title\n    }\n    nextToken\n  }\n}"

  public var filter: TableUserSharingFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TableUserSharingFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
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
      GraphQLField("listUserSharings", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListUserSharing.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listUserSharings: ListUserSharing? = nil) {
      self.init(snapshot: ["__typename": "Query", "listUserSharings": listUserSharings.flatMap { $0.snapshot }])
    }

    public var listUserSharings: ListUserSharing? {
      get {
        return (snapshot["listUserSharings"] as? Snapshot).flatMap { ListUserSharing(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listUserSharings")
      }
    }

    public struct ListUserSharing: GraphQLSelectionSet {
      public static let possibleTypes = ["UserSharingConnection"]

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
        self.init(snapshot: ["__typename": "UserSharingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
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
        public static let possibleTypes = ["UserSharing"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("ShareId", type: .nonNull(.scalar(String.self))),
          GraphQLField("UserId", type: .nonNull(.scalar(String.self))),
          GraphQLField("Content", type: .nonNull(.scalar(String.self))),
          GraphQLField("ReleaseDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("ImgSrc", type: .nonNull(.scalar(String.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(shareId: String, userId: String, content: String, releaseDate: String, imgSrc: String, title: String) {
          self.init(snapshot: ["__typename": "UserSharing", "ShareId": shareId, "UserId": userId, "Content": content, "ReleaseDate": releaseDate, "ImgSrc": imgSrc, "title": title])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var shareId: String {
          get {
            return snapshot["ShareId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "ShareId")
          }
        }

        public var userId: String {
          get {
            return snapshot["UserId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "UserId")
          }
        }

        public var content: String {
          get {
            return snapshot["Content"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Content")
          }
        }

        public var releaseDate: String {
          get {
            return snapshot["ReleaseDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "ReleaseDate")
          }
        }

        public var imgSrc: String {
          get {
            return snapshot["ImgSrc"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "ImgSrc")
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

public final class OnCreateStoreInfosSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateStoreInfos($StoreAddress: String, $StoreId: String, $StorePostalCode: String, $StoreCode: String, $StoreName: String) {\n  onCreateStoreInfos(StoreAddress: $StoreAddress, StoreId: $StoreId, StorePostalCode: $StorePostalCode, StoreCode: $StoreCode, StoreName: $StoreName) {\n    __typename\n    StoreAddress\n    StoreId\n    StorePostalCode\n    StoreCode\n    StoreName\n  }\n}"

  public var StoreAddress: String?
  public var StoreId: String?
  public var StorePostalCode: String?
  public var StoreCode: String?
  public var StoreName: String?

  public init(StoreAddress: String? = nil, StoreId: String? = nil, StorePostalCode: String? = nil, StoreCode: String? = nil, StoreName: String? = nil) {
    self.StoreAddress = StoreAddress
    self.StoreId = StoreId
    self.StorePostalCode = StorePostalCode
    self.StoreCode = StoreCode
    self.StoreName = StoreName
  }

  public var variables: GraphQLMap? {
    return ["StoreAddress": StoreAddress, "StoreId": StoreId, "StorePostalCode": StorePostalCode, "StoreCode": StoreCode, "StoreName": StoreName]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateStoreInfos", arguments: ["StoreAddress": GraphQLVariable("StoreAddress"), "StoreId": GraphQLVariable("StoreId"), "StorePostalCode": GraphQLVariable("StorePostalCode"), "StoreCode": GraphQLVariable("StoreCode"), "StoreName": GraphQLVariable("StoreName")], type: .object(OnCreateStoreInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateStoreInfos: OnCreateStoreInfo? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateStoreInfos": onCreateStoreInfos.flatMap { $0.snapshot }])
    }

    public var onCreateStoreInfos: OnCreateStoreInfo? {
      get {
        return (snapshot["onCreateStoreInfos"] as? Snapshot).flatMap { OnCreateStoreInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateStoreInfos")
      }
    }

    public struct OnCreateStoreInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["StoreInfos"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreAddress", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreId", type: .nonNull(.scalar(String.self))),
        GraphQLField("StorePostalCode", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreCode", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreName", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(storeAddress: String, storeId: String, storePostalCode: String, storeCode: String, storeName: String) {
        self.init(snapshot: ["__typename": "StoreInfos", "StoreAddress": storeAddress, "StoreId": storeId, "StorePostalCode": storePostalCode, "StoreCode": storeCode, "StoreName": storeName])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var storeAddress: String {
        get {
          return snapshot["StoreAddress"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreAddress")
        }
      }

      public var storeId: String {
        get {
          return snapshot["StoreId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreId")
        }
      }

      public var storePostalCode: String {
        get {
          return snapshot["StorePostalCode"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StorePostalCode")
        }
      }

      public var storeCode: String {
        get {
          return snapshot["StoreCode"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreCode")
        }
      }

      public var storeName: String {
        get {
          return snapshot["StoreName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreName")
        }
      }
    }
  }
}

public final class OnUpdateStoreInfosSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateStoreInfos($StoreAddress: String, $StoreId: String, $StorePostalCode: String, $StoreCode: String, $StoreName: String) {\n  onUpdateStoreInfos(StoreAddress: $StoreAddress, StoreId: $StoreId, StorePostalCode: $StorePostalCode, StoreCode: $StoreCode, StoreName: $StoreName) {\n    __typename\n    StoreAddress\n    StoreId\n    StorePostalCode\n    StoreCode\n    StoreName\n  }\n}"

  public var StoreAddress: String?
  public var StoreId: String?
  public var StorePostalCode: String?
  public var StoreCode: String?
  public var StoreName: String?

  public init(StoreAddress: String? = nil, StoreId: String? = nil, StorePostalCode: String? = nil, StoreCode: String? = nil, StoreName: String? = nil) {
    self.StoreAddress = StoreAddress
    self.StoreId = StoreId
    self.StorePostalCode = StorePostalCode
    self.StoreCode = StoreCode
    self.StoreName = StoreName
  }

  public var variables: GraphQLMap? {
    return ["StoreAddress": StoreAddress, "StoreId": StoreId, "StorePostalCode": StorePostalCode, "StoreCode": StoreCode, "StoreName": StoreName]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateStoreInfos", arguments: ["StoreAddress": GraphQLVariable("StoreAddress"), "StoreId": GraphQLVariable("StoreId"), "StorePostalCode": GraphQLVariable("StorePostalCode"), "StoreCode": GraphQLVariable("StoreCode"), "StoreName": GraphQLVariable("StoreName")], type: .object(OnUpdateStoreInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateStoreInfos: OnUpdateStoreInfo? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateStoreInfos": onUpdateStoreInfos.flatMap { $0.snapshot }])
    }

    public var onUpdateStoreInfos: OnUpdateStoreInfo? {
      get {
        return (snapshot["onUpdateStoreInfos"] as? Snapshot).flatMap { OnUpdateStoreInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateStoreInfos")
      }
    }

    public struct OnUpdateStoreInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["StoreInfos"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreAddress", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreId", type: .nonNull(.scalar(String.self))),
        GraphQLField("StorePostalCode", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreCode", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreName", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(storeAddress: String, storeId: String, storePostalCode: String, storeCode: String, storeName: String) {
        self.init(snapshot: ["__typename": "StoreInfos", "StoreAddress": storeAddress, "StoreId": storeId, "StorePostalCode": storePostalCode, "StoreCode": storeCode, "StoreName": storeName])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var storeAddress: String {
        get {
          return snapshot["StoreAddress"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreAddress")
        }
      }

      public var storeId: String {
        get {
          return snapshot["StoreId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreId")
        }
      }

      public var storePostalCode: String {
        get {
          return snapshot["StorePostalCode"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StorePostalCode")
        }
      }

      public var storeCode: String {
        get {
          return snapshot["StoreCode"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreCode")
        }
      }

      public var storeName: String {
        get {
          return snapshot["StoreName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreName")
        }
      }
    }
  }
}

public final class OnDeleteStoreInfosSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteStoreInfos($StoreAddress: String, $StoreId: String, $StorePostalCode: String, $StoreCode: String, $StoreName: String) {\n  onDeleteStoreInfos(StoreAddress: $StoreAddress, StoreId: $StoreId, StorePostalCode: $StorePostalCode, StoreCode: $StoreCode, StoreName: $StoreName) {\n    __typename\n    StoreAddress\n    StoreId\n    StorePostalCode\n    StoreCode\n    StoreName\n  }\n}"

  public var StoreAddress: String?
  public var StoreId: String?
  public var StorePostalCode: String?
  public var StoreCode: String?
  public var StoreName: String?

  public init(StoreAddress: String? = nil, StoreId: String? = nil, StorePostalCode: String? = nil, StoreCode: String? = nil, StoreName: String? = nil) {
    self.StoreAddress = StoreAddress
    self.StoreId = StoreId
    self.StorePostalCode = StorePostalCode
    self.StoreCode = StoreCode
    self.StoreName = StoreName
  }

  public var variables: GraphQLMap? {
    return ["StoreAddress": StoreAddress, "StoreId": StoreId, "StorePostalCode": StorePostalCode, "StoreCode": StoreCode, "StoreName": StoreName]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteStoreInfos", arguments: ["StoreAddress": GraphQLVariable("StoreAddress"), "StoreId": GraphQLVariable("StoreId"), "StorePostalCode": GraphQLVariable("StorePostalCode"), "StoreCode": GraphQLVariable("StoreCode"), "StoreName": GraphQLVariable("StoreName")], type: .object(OnDeleteStoreInfo.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteStoreInfos: OnDeleteStoreInfo? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteStoreInfos": onDeleteStoreInfos.flatMap { $0.snapshot }])
    }

    public var onDeleteStoreInfos: OnDeleteStoreInfo? {
      get {
        return (snapshot["onDeleteStoreInfos"] as? Snapshot).flatMap { OnDeleteStoreInfo(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteStoreInfos")
      }
    }

    public struct OnDeleteStoreInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["StoreInfos"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreAddress", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreId", type: .nonNull(.scalar(String.self))),
        GraphQLField("StorePostalCode", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreCode", type: .nonNull(.scalar(String.self))),
        GraphQLField("StoreName", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(storeAddress: String, storeId: String, storePostalCode: String, storeCode: String, storeName: String) {
        self.init(snapshot: ["__typename": "StoreInfos", "StoreAddress": storeAddress, "StoreId": storeId, "StorePostalCode": storePostalCode, "StoreCode": storeCode, "StoreName": storeName])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var storeAddress: String {
        get {
          return snapshot["StoreAddress"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreAddress")
        }
      }

      public var storeId: String {
        get {
          return snapshot["StoreId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreId")
        }
      }

      public var storePostalCode: String {
        get {
          return snapshot["StorePostalCode"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StorePostalCode")
        }
      }

      public var storeCode: String {
        get {
          return snapshot["StoreCode"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreCode")
        }
      }

      public var storeName: String {
        get {
          return snapshot["StoreName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "StoreName")
        }
      }
    }
  }
}

public final class OnCreateUserMarkSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateUserMark($Markid: String, $UserId: String, $itemId: String, $SharingId: String) {\n  onCreateUserMark(Markid: $Markid, UserId: $UserId, itemId: $itemId, SharingId: $SharingId) {\n    __typename\n    Markid\n    UserId\n    itemId\n    SharingId\n    Store\n  }\n}"

  public var Markid: String?
  public var UserId: String?
  public var itemId: String?
  public var SharingId: String?

  public init(Markid: String? = nil, UserId: String? = nil, itemId: String? = nil, SharingId: String? = nil) {
    self.Markid = Markid
    self.UserId = UserId
    self.itemId = itemId
    self.SharingId = SharingId
  }

  public var variables: GraphQLMap? {
    return ["Markid": Markid, "UserId": UserId, "itemId": itemId, "SharingId": SharingId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateUserMark", arguments: ["Markid": GraphQLVariable("Markid"), "UserId": GraphQLVariable("UserId"), "itemId": GraphQLVariable("itemId"), "SharingId": GraphQLVariable("SharingId")], type: .object(OnCreateUserMark.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateUserMark: OnCreateUserMark? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateUserMark": onCreateUserMark.flatMap { $0.snapshot }])
    }

    public var onCreateUserMark: OnCreateUserMark? {
      get {
        return (snapshot["onCreateUserMark"] as? Snapshot).flatMap { OnCreateUserMark(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateUserMark")
      }
    }

    public struct OnCreateUserMark: GraphQLSelectionSet {
      public static let possibleTypes = ["UserMark"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("Markid", type: .nonNull(.scalar(String.self))),
        GraphQLField("UserId", type: .nonNull(.scalar(String.self))),
        GraphQLField("itemId", type: .nonNull(.scalar(String.self))),
        GraphQLField("SharingId", type: .nonNull(.scalar(String.self))),
        GraphQLField("Store", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(markid: String, userId: String, itemId: String, sharingId: String, store: String) {
        self.init(snapshot: ["__typename": "UserMark", "Markid": markid, "UserId": userId, "itemId": itemId, "SharingId": sharingId, "Store": store])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var markid: String {
        get {
          return snapshot["Markid"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Markid")
        }
      }

      public var userId: String {
        get {
          return snapshot["UserId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "UserId")
        }
      }

      public var itemId: String {
        get {
          return snapshot["itemId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemId")
        }
      }

      public var sharingId: String {
        get {
          return snapshot["SharingId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SharingId")
        }
      }

      public var store: String {
        get {
          return snapshot["Store"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Store")
        }
      }
    }
  }
}

public final class OnUpdateUserMarkSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateUserMark($Markid: String, $UserId: String, $itemId: String, $SharingId: String) {\n  onUpdateUserMark(Markid: $Markid, UserId: $UserId, itemId: $itemId, SharingId: $SharingId) {\n    __typename\n    Markid\n    UserId\n    itemId\n    SharingId\n    Store\n  }\n}"

  public var Markid: String?
  public var UserId: String?
  public var itemId: String?
  public var SharingId: String?

  public init(Markid: String? = nil, UserId: String? = nil, itemId: String? = nil, SharingId: String? = nil) {
    self.Markid = Markid
    self.UserId = UserId
    self.itemId = itemId
    self.SharingId = SharingId
  }

  public var variables: GraphQLMap? {
    return ["Markid": Markid, "UserId": UserId, "itemId": itemId, "SharingId": SharingId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateUserMark", arguments: ["Markid": GraphQLVariable("Markid"), "UserId": GraphQLVariable("UserId"), "itemId": GraphQLVariable("itemId"), "SharingId": GraphQLVariable("SharingId")], type: .object(OnUpdateUserMark.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateUserMark: OnUpdateUserMark? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateUserMark": onUpdateUserMark.flatMap { $0.snapshot }])
    }

    public var onUpdateUserMark: OnUpdateUserMark? {
      get {
        return (snapshot["onUpdateUserMark"] as? Snapshot).flatMap { OnUpdateUserMark(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateUserMark")
      }
    }

    public struct OnUpdateUserMark: GraphQLSelectionSet {
      public static let possibleTypes = ["UserMark"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("Markid", type: .nonNull(.scalar(String.self))),
        GraphQLField("UserId", type: .nonNull(.scalar(String.self))),
        GraphQLField("itemId", type: .nonNull(.scalar(String.self))),
        GraphQLField("SharingId", type: .nonNull(.scalar(String.self))),
        GraphQLField("Store", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(markid: String, userId: String, itemId: String, sharingId: String, store: String) {
        self.init(snapshot: ["__typename": "UserMark", "Markid": markid, "UserId": userId, "itemId": itemId, "SharingId": sharingId, "Store": store])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var markid: String {
        get {
          return snapshot["Markid"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Markid")
        }
      }

      public var userId: String {
        get {
          return snapshot["UserId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "UserId")
        }
      }

      public var itemId: String {
        get {
          return snapshot["itemId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemId")
        }
      }

      public var sharingId: String {
        get {
          return snapshot["SharingId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SharingId")
        }
      }

      public var store: String {
        get {
          return snapshot["Store"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Store")
        }
      }
    }
  }
}

public final class OnDeleteUserMarkSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteUserMark($Markid: String, $UserId: String, $itemId: String, $SharingId: String) {\n  onDeleteUserMark(Markid: $Markid, UserId: $UserId, itemId: $itemId, SharingId: $SharingId) {\n    __typename\n    Markid\n    UserId\n    itemId\n    SharingId\n    Store\n  }\n}"

  public var Markid: String?
  public var UserId: String?
  public var itemId: String?
  public var SharingId: String?

  public init(Markid: String? = nil, UserId: String? = nil, itemId: String? = nil, SharingId: String? = nil) {
    self.Markid = Markid
    self.UserId = UserId
    self.itemId = itemId
    self.SharingId = SharingId
  }

  public var variables: GraphQLMap? {
    return ["Markid": Markid, "UserId": UserId, "itemId": itemId, "SharingId": SharingId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteUserMark", arguments: ["Markid": GraphQLVariable("Markid"), "UserId": GraphQLVariable("UserId"), "itemId": GraphQLVariable("itemId"), "SharingId": GraphQLVariable("SharingId")], type: .object(OnDeleteUserMark.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteUserMark: OnDeleteUserMark? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteUserMark": onDeleteUserMark.flatMap { $0.snapshot }])
    }

    public var onDeleteUserMark: OnDeleteUserMark? {
      get {
        return (snapshot["onDeleteUserMark"] as? Snapshot).flatMap { OnDeleteUserMark(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteUserMark")
      }
    }

    public struct OnDeleteUserMark: GraphQLSelectionSet {
      public static let possibleTypes = ["UserMark"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("Markid", type: .nonNull(.scalar(String.self))),
        GraphQLField("UserId", type: .nonNull(.scalar(String.self))),
        GraphQLField("itemId", type: .nonNull(.scalar(String.self))),
        GraphQLField("SharingId", type: .nonNull(.scalar(String.self))),
        GraphQLField("Store", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(markid: String, userId: String, itemId: String, sharingId: String, store: String) {
        self.init(snapshot: ["__typename": "UserMark", "Markid": markid, "UserId": userId, "itemId": itemId, "SharingId": sharingId, "Store": store])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var markid: String {
        get {
          return snapshot["Markid"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Markid")
        }
      }

      public var userId: String {
        get {
          return snapshot["UserId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "UserId")
        }
      }

      public var itemId: String {
        get {
          return snapshot["itemId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "itemId")
        }
      }

      public var sharingId: String {
        get {
          return snapshot["SharingId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SharingId")
        }
      }

      public var store: String {
        get {
          return snapshot["Store"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Store")
        }
      }
    }
  }
}

public final class OnCreateUserSharingSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateUserSharing($ShareId: String, $UserId: String, $Content: String, $ReleaseDate: String, $ImgSrc: String) {\n  onCreateUserSharing(ShareId: $ShareId, UserId: $UserId, Content: $Content, ReleaseDate: $ReleaseDate, ImgSrc: $ImgSrc) {\n    __typename\n    ShareId\n    UserId\n    Content\n    ReleaseDate\n    ImgSrc\n    title\n  }\n}"

  public var ShareId: String?
  public var UserId: String?
  public var Content: String?
  public var ReleaseDate: String?
  public var ImgSrc: String?

  public init(ShareId: String? = nil, UserId: String? = nil, Content: String? = nil, ReleaseDate: String? = nil, ImgSrc: String? = nil) {
    self.ShareId = ShareId
    self.UserId = UserId
    self.Content = Content
    self.ReleaseDate = ReleaseDate
    self.ImgSrc = ImgSrc
  }

  public var variables: GraphQLMap? {
    return ["ShareId": ShareId, "UserId": UserId, "Content": Content, "ReleaseDate": ReleaseDate, "ImgSrc": ImgSrc]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateUserSharing", arguments: ["ShareId": GraphQLVariable("ShareId"), "UserId": GraphQLVariable("UserId"), "Content": GraphQLVariable("Content"), "ReleaseDate": GraphQLVariable("ReleaseDate"), "ImgSrc": GraphQLVariable("ImgSrc")], type: .object(OnCreateUserSharing.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateUserSharing: OnCreateUserSharing? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateUserSharing": onCreateUserSharing.flatMap { $0.snapshot }])
    }

    public var onCreateUserSharing: OnCreateUserSharing? {
      get {
        return (snapshot["onCreateUserSharing"] as? Snapshot).flatMap { OnCreateUserSharing(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateUserSharing")
      }
    }

    public struct OnCreateUserSharing: GraphQLSelectionSet {
      public static let possibleTypes = ["UserSharing"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("ShareId", type: .nonNull(.scalar(String.self))),
        GraphQLField("UserId", type: .nonNull(.scalar(String.self))),
        GraphQLField("Content", type: .nonNull(.scalar(String.self))),
        GraphQLField("ReleaseDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("ImgSrc", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(shareId: String, userId: String, content: String, releaseDate: String, imgSrc: String, title: String) {
        self.init(snapshot: ["__typename": "UserSharing", "ShareId": shareId, "UserId": userId, "Content": content, "ReleaseDate": releaseDate, "ImgSrc": imgSrc, "title": title])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var shareId: String {
        get {
          return snapshot["ShareId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ShareId")
        }
      }

      public var userId: String {
        get {
          return snapshot["UserId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "UserId")
        }
      }

      public var content: String {
        get {
          return snapshot["Content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Content")
        }
      }

      public var releaseDate: String {
        get {
          return snapshot["ReleaseDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ReleaseDate")
        }
      }

      public var imgSrc: String {
        get {
          return snapshot["ImgSrc"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ImgSrc")
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
    }
  }
}

public final class OnUpdateUserSharingSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateUserSharing($ShareId: String, $UserId: String, $Content: String, $ReleaseDate: String, $ImgSrc: String) {\n  onUpdateUserSharing(ShareId: $ShareId, UserId: $UserId, Content: $Content, ReleaseDate: $ReleaseDate, ImgSrc: $ImgSrc) {\n    __typename\n    ShareId\n    UserId\n    Content\n    ReleaseDate\n    ImgSrc\n    title\n  }\n}"

  public var ShareId: String?
  public var UserId: String?
  public var Content: String?
  public var ReleaseDate: String?
  public var ImgSrc: String?

  public init(ShareId: String? = nil, UserId: String? = nil, Content: String? = nil, ReleaseDate: String? = nil, ImgSrc: String? = nil) {
    self.ShareId = ShareId
    self.UserId = UserId
    self.Content = Content
    self.ReleaseDate = ReleaseDate
    self.ImgSrc = ImgSrc
  }

  public var variables: GraphQLMap? {
    return ["ShareId": ShareId, "UserId": UserId, "Content": Content, "ReleaseDate": ReleaseDate, "ImgSrc": ImgSrc]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateUserSharing", arguments: ["ShareId": GraphQLVariable("ShareId"), "UserId": GraphQLVariable("UserId"), "Content": GraphQLVariable("Content"), "ReleaseDate": GraphQLVariable("ReleaseDate"), "ImgSrc": GraphQLVariable("ImgSrc")], type: .object(OnUpdateUserSharing.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateUserSharing: OnUpdateUserSharing? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateUserSharing": onUpdateUserSharing.flatMap { $0.snapshot }])
    }

    public var onUpdateUserSharing: OnUpdateUserSharing? {
      get {
        return (snapshot["onUpdateUserSharing"] as? Snapshot).flatMap { OnUpdateUserSharing(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateUserSharing")
      }
    }

    public struct OnUpdateUserSharing: GraphQLSelectionSet {
      public static let possibleTypes = ["UserSharing"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("ShareId", type: .nonNull(.scalar(String.self))),
        GraphQLField("UserId", type: .nonNull(.scalar(String.self))),
        GraphQLField("Content", type: .nonNull(.scalar(String.self))),
        GraphQLField("ReleaseDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("ImgSrc", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(shareId: String, userId: String, content: String, releaseDate: String, imgSrc: String, title: String) {
        self.init(snapshot: ["__typename": "UserSharing", "ShareId": shareId, "UserId": userId, "Content": content, "ReleaseDate": releaseDate, "ImgSrc": imgSrc, "title": title])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var shareId: String {
        get {
          return snapshot["ShareId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ShareId")
        }
      }

      public var userId: String {
        get {
          return snapshot["UserId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "UserId")
        }
      }

      public var content: String {
        get {
          return snapshot["Content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Content")
        }
      }

      public var releaseDate: String {
        get {
          return snapshot["ReleaseDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ReleaseDate")
        }
      }

      public var imgSrc: String {
        get {
          return snapshot["ImgSrc"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ImgSrc")
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
    }
  }
}

public final class OnDeleteUserSharingSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteUserSharing($ShareId: String, $UserId: String, $Content: String, $ReleaseDate: String, $ImgSrc: String) {\n  onDeleteUserSharing(ShareId: $ShareId, UserId: $UserId, Content: $Content, ReleaseDate: $ReleaseDate, ImgSrc: $ImgSrc) {\n    __typename\n    ShareId\n    UserId\n    Content\n    ReleaseDate\n    ImgSrc\n    title\n  }\n}"

  public var ShareId: String?
  public var UserId: String?
  public var Content: String?
  public var ReleaseDate: String?
  public var ImgSrc: String?

  public init(ShareId: String? = nil, UserId: String? = nil, Content: String? = nil, ReleaseDate: String? = nil, ImgSrc: String? = nil) {
    self.ShareId = ShareId
    self.UserId = UserId
    self.Content = Content
    self.ReleaseDate = ReleaseDate
    self.ImgSrc = ImgSrc
  }

  public var variables: GraphQLMap? {
    return ["ShareId": ShareId, "UserId": UserId, "Content": Content, "ReleaseDate": ReleaseDate, "ImgSrc": ImgSrc]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteUserSharing", arguments: ["ShareId": GraphQLVariable("ShareId"), "UserId": GraphQLVariable("UserId"), "Content": GraphQLVariable("Content"), "ReleaseDate": GraphQLVariable("ReleaseDate"), "ImgSrc": GraphQLVariable("ImgSrc")], type: .object(OnDeleteUserSharing.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteUserSharing: OnDeleteUserSharing? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteUserSharing": onDeleteUserSharing.flatMap { $0.snapshot }])
    }

    public var onDeleteUserSharing: OnDeleteUserSharing? {
      get {
        return (snapshot["onDeleteUserSharing"] as? Snapshot).flatMap { OnDeleteUserSharing(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteUserSharing")
      }
    }

    public struct OnDeleteUserSharing: GraphQLSelectionSet {
      public static let possibleTypes = ["UserSharing"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("ShareId", type: .nonNull(.scalar(String.self))),
        GraphQLField("UserId", type: .nonNull(.scalar(String.self))),
        GraphQLField("Content", type: .nonNull(.scalar(String.self))),
        GraphQLField("ReleaseDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("ImgSrc", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(shareId: String, userId: String, content: String, releaseDate: String, imgSrc: String, title: String) {
        self.init(snapshot: ["__typename": "UserSharing", "ShareId": shareId, "UserId": userId, "Content": content, "ReleaseDate": releaseDate, "ImgSrc": imgSrc, "title": title])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var shareId: String {
        get {
          return snapshot["ShareId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ShareId")
        }
      }

      public var userId: String {
        get {
          return snapshot["UserId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "UserId")
        }
      }

      public var content: String {
        get {
          return snapshot["Content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Content")
        }
      }

      public var releaseDate: String {
        get {
          return snapshot["ReleaseDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ReleaseDate")
        }
      }

      public var imgSrc: String {
        get {
          return snapshot["ImgSrc"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ImgSrc")
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
    }
  }
}