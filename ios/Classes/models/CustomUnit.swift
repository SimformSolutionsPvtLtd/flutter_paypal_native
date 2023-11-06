import UIKit

class CustomUnit: Codable {
    let referenceId: String
    let price: String
    let currency: String
    let payeeEmailAddress: String
    let payeeMerchantId: String

    init(referenceId: String, price: String, currency: String, payeeEmailAddress: String, payeeMerchantId: String) {
        self.referenceId = referenceId
        self.price = price
        self.currency = currency
        self.payeeEmailAddress = payeeEmailAddress
        self.payeeMerchantId = payeeMerchantId
    }
}
