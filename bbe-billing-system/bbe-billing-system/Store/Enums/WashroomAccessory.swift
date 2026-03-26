//
//  WashroomAccessory.swift
//  bbe-billing-system
//
//  Created by RUDRAKSHYA on 19/03/26.
//

import Foundation


enum WashroomAccessory {
    case fixture(Fixture)
    case hardware(Hardware)
    case hygiene(Hygiene)
    case utility(Utility)

    enum Fixture {
        case toilet, urinal, washBasin, shower
    }

    enum Hardware {
        case faucet, showerHead, tap
    }

    enum Hygiene {
        case soapDispenser, handDryer, dustbin
    }

    enum Utility {
        case bucket, mug, mirror, towelRack, toiletPaperHolder
    }
}
