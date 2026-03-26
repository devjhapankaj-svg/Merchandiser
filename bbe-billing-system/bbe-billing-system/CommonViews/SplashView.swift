//
//  File.swift
//  bbe-billing-system
//
//  Created by RUDRAKSHYA on 15/03/26.
//

import Foundation

import SwiftUI

struct SplashView: View {
    
    @State private var isActive = false
    @Environment(\.managedObjectContext) private var context
    
    var body: some View {
        if isActive {
            /*ContentView()*/ // Your main screen
            InvoiceScreenView().environment(\.managedObjectContext, context)
        } else {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color.white.opacity(0.9), Color.red]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    Image("app_icon_medium").resizable()
                                        .frame(width: 94, height: 94)
                    
                    
                    Text("Baba Baidhyanath Enterprises")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("Invoice & Billing System")
                        .font(.callout)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                    
                    Text("Smart • Fast • Secure Billing")
                        .font(.subheadline)
                        .foregroundColor(.white.opacity(0.9))
                    
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .white))
                        .scaleEffect(1.5)
                        .padding(.top, 20)
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation {
                        isActive = true
                    }
                }
            }
        }
    }
}
