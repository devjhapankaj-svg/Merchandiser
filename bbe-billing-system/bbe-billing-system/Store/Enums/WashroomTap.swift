//
//  WashroomTap.swift
//  bbe-billing-system
//
//  Created by RUDRAKSHYA on 19/03/26.
//

import Foundation

enum WashroomTap: String, CaseIterable {
    case pillarTap, wallMixer, basinMixer, sinkCock, bibCock, angleValve, sensorTap, longBodyTap

    var displayName: String {
        rawValue
            .replacingOccurrences(of: "Tap", with: " Tap")
            .replacingOccurrences(of: "Mixer", with: " Mixer")
            .capitalized
    }

    var isMixer: Bool {
        switch self {
        case .wallMixer, .basinMixer:
            return true
        default:
            return false
        }
    }

    var isAutomatic: Bool {
        return self == .sensorTap
    }

    var typicalUse: String {
        switch self {
        case .pillarTap: return "Wash basin"
        case .wallMixer: return "Shower + bucket"
        case .basinMixer: return "Modern wash basin"
        case .sinkCock: return "Kitchen sink"
        case .bibCock: return "Wall outlet / garden"
        case .angleValve: return "Water control"
        case .sensorTap: return "Public/modern washroom"
        case .longBodyTap: return "Utility & washing area"
        }
    }
}
