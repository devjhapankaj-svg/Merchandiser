//
//  InvoiceItem.swift
//  bbe-billing-system
//
//  Created by RUDRAKSHYA on 15/03/26.
//

import Foundation
import SwiftData

@Model
class InvoiceUnit: Identifiable {
    
    var id = UUID().uuidString
    var product: Product
    var quantity: Int
    var name: String
    var ipDescription: String
    var amount: Double
    
    
    init(id: String = UUID().uuidString, product: Product, quantity: Int, name: String, ipDescription: String, amount: Double) {
        self.id = id
        self.product = product
        self.quantity = quantity
        self.name = name
        self.ipDescription = ipDescription
        self.amount = amount
    }
    
    var total: Double {
        Double(quantity) * (product.calculateSalePrice() ?? 0)
    }
}
