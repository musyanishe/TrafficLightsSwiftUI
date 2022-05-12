//
//  ButtonView.swift
//  TrafficLightsSwiftUI
//
//  Created by Евгения Шевцова on 11.05.2022.
//

import SwiftUI

struct ButtonView: View {
    
    let buttonTitle: String
    let action: () -> ()
        
    var body: some View {
        Button {
            action()
        } label: {
            Text(buttonTitle)
                .font(.title)
                .padding()
                .foregroundColor(.white)
                .background(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.white, lineWidth: 2)
                    .background(Color.blue.cornerRadius(15)))
        }
    }
    


}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(buttonTitle: "Start", action: {})
    }
}
