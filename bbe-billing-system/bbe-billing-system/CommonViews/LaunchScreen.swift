//
//  LaunchScreen.swift
//  bbe-billing-system
//
//  Created by RUDRAKSHYA on 15/03/26.
//

import Foundation


import SwiftUI

struct LaunchScreen: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()

            VStack(spacing: 20) {

                Image(systemName: "doc.text.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.white)

                Text("Invoice & Billing System")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                Text("Smart • Fast • Secure Billing")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.9))
            }
        }
    }
}

#Preview {
    LaunchScreen()
}
