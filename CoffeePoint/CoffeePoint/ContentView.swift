//
//  ContentView.swift
//  CoffeePoint
//
//  Created by Ваня Науменко on 22.12.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            ZStack {
                VStack {
                    Text("Hi world")
                        .font(.system(size: 50))
                }
            }.background(
                Image("coffe")
                    .resizable()
                    .ignoresSafeArea(.all)
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            )
    }
}

#Preview {
    ContentView()
}
