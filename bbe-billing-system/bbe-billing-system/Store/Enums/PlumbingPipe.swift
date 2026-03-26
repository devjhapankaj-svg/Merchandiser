//
//  PlumbingPipe.swift
//  bbe-billing-system
//
//  Created by RUDRAKSHYA on 19/03/26.
//

import Foundation
enum PlumbingPipe: String, CaseIterable {
    case pvc, cpvc, upvc, hdpe, gi, copper, pex, stainlessSteel, castIron

    var displayName: String {
        rawValue.uppercased()
    }

    var isHotWaterCompatible: Bool {
        switch self {
        case .cpvc, .pex, .copper, .stainlessSteel:
            return true
        default:
            return false
        }
    }

    var commonUse: String {
        switch self {
        case .pvc: return "Cold water & drainage"
        case .cpvc: return "Hot & cold water supply"
        case .upvc: return "Cold water & plumbing"
        case .hdpe: return "Underground water supply"
        case .gi: return "Industrial & structural"
        case .copper: return "Hot & cold premium plumbing"
        case .pex: return "Flexible water supply"
        case .stainlessSteel: return "High durability systems"
        case .castIron: return "Drainage & sewage"
        }
    }
}
