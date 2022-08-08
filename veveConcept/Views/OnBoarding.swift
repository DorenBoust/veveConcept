//
//  OnBoarding.swift
//  veveConcept
//
//  Created by Lior Dorenboust on 08/08/2022.
//

import SwiftUI

struct OnBoarding: View {
    var body: some View {
        
        ZStack {
            background
            TabView{
                OnBoardingCardView()
                OnBoardingCardView()
                OnBoardingCardView()
            }
            .tabViewStyle(PageTabViewStyle())
        }
    }
    
    var background: some View {
        LinearGradient(gradient: Gradient(colors: [.white, .gray]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            .overlay(
                Image("toddBatman")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .offset(y: 75)
                    .frame(width: 1000, height: 1200, alignment: .center))
    }
}

struct OnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding()
    }
}
