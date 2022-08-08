//
//  SpidermanBackground.swift
//  veveConcept
//
//  Created by Lior Dorenboust on 08/08/2022.
//

import SwiftUI

struct SpidermanBackground: View {
    @State var appear = false
    @Binding var selection: Int
    @State var active = false
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.white, .gray]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            .overlay(
                Image("spiderman")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .offset(y: 40)
                    .frame(width: 900, height: 1200, alignment: .center))
            .opacity(active ? 1 : 0)
            .onAppear{
                update()
            }
            .onChange(of: selection) { value in
                update()
            }
    }
    
    func update() {
        if selection == 1 {
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

struct SpidermanBackground_Previews: PreviewProvider {
    static var previews: some View {
        SpidermanBackground(selection: .constant(1))
    }
}
