//
//  PipeFittingAccessory.swift
//  bbe-billing-system
//
//  Created by RUDRAKSHYA on 19/03/26.
//

import Foundation


enum PipeFittingAccessory: String, CaseIterable {
    case elbow
    case tee
    case cross
    case coupling
    case union
    case reducer
    case bushing
    case cap
    case plug
    case nipple

    var displayName: String {
        rawValue.capitalized
    }

    // Example extension point
    var supportsSize: Bool {
        switch self {
        case .nipple, .reducer, .bushing:
            return true
        default:
            return false
        }
    }
}
