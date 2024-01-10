//
//  SplashView.swift
//  EffectiveMobileTestTask
//
//  Created by Виктор Шималин on 18.12.2022.
//

import SwiftUI

struct SplashView: View {
    
//    @StateObject private var viewModel = ContentView()
    
    @State var isActive: Bool = false
    @State private var appeared: Bool = false
    
    // Customise your SplashScreen here
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack {
                Color("DarkBlue").ignoresSafeArea()
                
                ZStack {
                    Circle()
                        .foregroundColor(Color("OrangeTwo"))
                        .frame(width: 132, height: 132)
                    Text("Coffe Point\nIzIСompany")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.leading, 66)
                }
                .offset(x: appeared ? 0 : 30)
                .opacity(appeared ? 1 : 0)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        appeared.toggle()
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
