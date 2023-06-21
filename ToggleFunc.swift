//
//  ToggleFunc.swift
//  inna
//
//  Created by Sebin Park on 2023/06/08.
//

import Foundation
import SwiftUI

struct CheckmarkToggleStyle: ToggleStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            Spacer()
            ZStack {
                Rectangle()
                    .foregroundColor(configuration.isOn ? .Green3 : .greyishGreen5)
                    .frame(width: 46, height: 22, alignment: .center)
                    .cornerRadius(20)
                
                Circle()
                    .foregroundColor(configuration.isOn ? .Green2 : .greyishGreen2 )
                    .onTapGesture { configuration.isOn.toggle() }
                    .frame(width: 34, height: 34)
                    .offset(x: configuration.isOn ? 11 : -11, y: 0)
                    .animation(Animation.linear(duration: 0.1))
                
            }
        }
    }
    
}
