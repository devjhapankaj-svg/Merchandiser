//
//  Invoice.swift
//  InvoiceMaker
//
//  Created by Eze Chidera Paschal on 03/09/2024.
//

import Foundation
import SwiftData

@Model
final class Invoice {
    enum Status: String, Codable {
        case paid
        case pending
        case partialPaid
        case overdue
    }
    
    
    var id: String
    var invoiceNumber: String
    var currency: String
    var invoiceDate: Date
    var paymentDue: String
    var clientName: String
    var items: [InvoiceItem]
    var status: Status
    
    var totalAmount: Double {
        items.reduce(0) {$0 + $1.amount  }
    }
    
    
    var imageName: String {
        switch status {
        case .paid:
            "checkmark"
        case .pending:
            "hourglass"
        case .overdue:
            "clock.badge.exclamationmark.fill"
        case .partialPaid:
            "clock.badge.checkmark.fill"
        }
        
    }
    
    
    init(id: String = UUID().uuidString, invoiceNumber: String, currency: String, invoiceDate: Date = Date(), paymentDue: String, clientName: String, items: [InvoiceItem], status: Status = .pending) {
        self.id = id
        self.invoiceNumber = invoiceNumber
        self.currency = currency
        self.invoiceDate = invoiceDate
        self.paymentDue = paymentDue
        self.clientName = clientName
        self.items = items
        self.status = status
    }
    
}
