//
//  OnBoarding.swift
//  veveConcept
//
//  Created by Lior Dorenboust on 08/08/2022.
//

import SwiftUI

struct OnBoarding: View {
    @State var selection = 0
    var body: some View {
        
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
        
    }
}

struct OnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding()
    }
}
