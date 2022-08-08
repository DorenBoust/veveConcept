//
//  OnBoarding.swift
//  veveConcept
//
//  Created by Lior Dorenboust on 08/08/2022.
//

import SwiftUI

struct OnBoarding: View {
    @State var selection = 0
    @State var startOpacity = false
    var body: some View {
        VStack {
            ZStack {
                
                TabView (selection: $selection){
                    OnBoardingCardView().tag(0)
                    OnBoardingCardView().tag(1)
                    OnBoardingCardView().tag(2)
                }
                .tabViewStyle(PageTabViewStyle())
                .background(
                    ZStack {
                        BatmanBackground(selection: $selection)
                        SpidermanBackground(selection: $selection)
                    }
                )
            }
            Spacer()
            Button {
                print("sefs")
            } label: {
                Text("kesafsef")
            }

        }
        .opacity(startOpacity ? 1 : 0)
        .onAppear {
            withAnimation(.linear(duration: 0.3)) {
                startOpacity = true
            }
        }
        
        
    }
}

struct OnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding()
    }
}
