//
//  InvoiceItem.swift
//  InvoiceMaker
//
//  Created by Eze Chidera Paschal on 03/09/2024.
//

import Foundation
import SwiftUI
import SwiftData

//struct InvoiceItem: Identifiable, Codable {
//    
//    var id = UUID().uuidString
//    var name: String
//    var quantity: Int
//    var description: String
//    var amount: Double
//    var discount: Double?
//    var isTaxable: Bool
//    var appliedSGST: Double?
//    var appliedCGST: Double?
//    
//    
//}

@Model
class InvoiceItem {
    var id = UUID().uuidString
    var name: String?
    var product: Product
    var quantity: Int
    
    init(product: Product, quantity: Int) {
        self.id = UUID().uuidString
        self.product = product
        self.quantity = quantity
    }
    
    var baseAmount: Double {
        (product.salePrice ?? 0.0) * Double(quantity)
    }
    
    var gstAmount: Double {
        baseAmount * product.gstPercent / 100
    }
    
    var totalAmount: Double {
        baseAmount + gstAmount
    }
}
