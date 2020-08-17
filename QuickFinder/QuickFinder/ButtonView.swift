//
//  ButtonView.swift
//  QuickFinder
//
//  Created by Vishnu Penubarthi on 8/17/20.
//  Copyright © 2020 Vishnu Penubarthi. All rights reserved.
//

import Foundation
import SwiftUI

struct MyBtn: View {
    let btn_name : String
    init(title: String) {
        self.btn_name = title
    }
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                .background(Color.white)
            
                //                .fill(LinearGradient(gradient: Gradient(colors: [Color.white,Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 20, x: 20, y: 20)
            
            Text(self.btn_name).font(.largeTitle)
                
//                .font(.system(weight: .semibold, design: .rounded))
//                .frame(width: 200, height: 60)
//                .background(Color.white)
//                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
//                .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 20, x: 20, y: 20)
            
        }
    }
}
