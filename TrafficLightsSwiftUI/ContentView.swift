//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Евгения Шевцова on 11.05.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State private var buttonTitle = "Start"
    @State private var currentLight = CurrentLight.red
    
    private func buttonPressed() {
        
        switch currentLight {
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        }
    }
}

extension ContentView {
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()

            VStack(spacing: 10) {
                ColorCircleView(color: .red, opacity: currentLight == .red ? 1 : 0.3 )
                ColorCircleView(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.3)
                ColorCircleView(color: .green, opacity: currentLight == .green ? 1 : 0.3)
                Spacer()
                
                ButtonView(buttonTitle: buttonTitle) {
                    self.buttonTitle = "Next"
                    buttonPressed()
                }
            }.padding()
                .preferredColorScheme(.dark)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
