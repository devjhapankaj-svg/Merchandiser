//
//  Product.swift
//  bbe-billing-system
//
//  Created by RUDRAKSHYA on 15/03/26.
//

import Foundation
import SwiftData

@Model
class Product {
    
    var name: String
    var hsnCode: String?
    var gstApplied: Double?
    var isTaxExempt: Bool?
    var mrp: Double?
    var isDiscountApplied: Bool
    var discountApplied: Double?
    var taxExempted: Double?
    var purchasePrice: Double?
    var salePrice: Double?
    
    init(name: String, hsnCode: String? = nil, gstApplied: Double? = nil, isTaxExempt: Bool? = nil, mrp: Double? = nil, isDiscountApplied: Bool, discountApplied: Double? = nil, taxExempted: Double? = nil, purchasePrice: Double? = nil, salePrice: Double? = nil) {
        self.name = name
        self.hsnCode = hsnCode
        self.gstApplied = gstApplied
        self.isTaxExempt = isTaxExempt
        self.mrp = mrp
        self.isDiscountApplied = isDiscountApplied
        self.discountApplied = discountApplied
        self.taxExempted = taxExempted
        self.purchasePrice = purchasePrice
        self.salePrice = salePrice
    }
    
    func calculateTax() -> Double {
        return (self.mrp ?? 0) * (self.gstApplied ?? 0) / 100
    }
    
    func calcTaxExempted() -> Double {
        return (self.mrp ?? 0) * (self.taxExempted ?? 0) / 100
    }
    
    func calculatedDiscount() -> Double {
        return (self.mrp ?? 0) * (self.discountApplied ?? 0) / 100
    }
    
    func calculateSalePrice() -> Double {
        return (self.mrp ?? 0) - (self.calculatedDiscount())
    }
    
}
