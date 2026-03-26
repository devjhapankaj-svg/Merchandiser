//
//  SanitoryItem.swift
//  bbe-billing-system
//
//  Created by RUDRAKSHYA on 17/03/26.
//

import Foundation
import SwiftData

//Toilets (Water Closets): Wall-hung, floor-mounted, one-piece, and two-piece toilets.




@Model
class SanitoryItem: Identifiable {
    public var itemId : String?
    public var hsnCode: String?
    public var barcodeId: String?
    public var name: String?
    public var openingQuantity: Int?
    public var currentQuantity: Int?
    public var purchasePrice: Double?
    public var salePrice: Double?
    public var mrp: Double?
    public var gstApplicable: Double?
//    public var sanitoryType: SanitaryType?
    
    init(itemId: String? = nil, hsnCode: String? = nil, barcodeId: String? = nil, name: String? = nil, openingQuantity: Int? = nil, currentQuantity: Int? = nil, purchasePrice: Double? = nil, salePrice: Double? = nil, mrp: Double? = nil, gstApplicable: Double? = nil) {
        self.itemId = itemId
        self.hsnCode = hsnCode
        self.barcodeId = barcodeId
        self.name = name
        self.openingQuantity = openingQuantity
        self.currentQuantity = currentQuantity
        self.purchasePrice = purchasePrice
        self.salePrice = salePrice
        self.mrp = mrp
        self.gstApplicable = gstApplicable
    }
    
}
