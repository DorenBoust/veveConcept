//
//  BatmanBackground.swift
//  veveConcept
//
//  Created by Lior Dorenboust on 08/08/2022.
//

import SwiftUI

struct BatmanBackground: View {
    @State var appear = false
    @Binding var selection: Int
    @State var active = true
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.white, .gray]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            .overlay(
                Image("toddBatman")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .offset(y: 75)
                    .frame(width: 1000, height: 1200, alignment: .center))
            .opacity(active ? 1 : 0)
            .onAppear{
                update()
            }
            .onChange(of: selection) { value in
                update()
            }
    }
    
    func update() {
        if selection == 0 {
            withAnimation(.linear(duration: 10)) {
                appear = true
            }
            withAnimation {
                active = true
            }
            
            
        } else {
            withAnimation(.linear(duration: 10)) {
                appear = false
            }
            withAnimation {
                active = false
            }
            
        }
    }
}

struct BatmanBackground_Previews: PreviewProvider {
    static var previews: some View {
        BatmanBackground(selection: .constant(0))
    }
}
