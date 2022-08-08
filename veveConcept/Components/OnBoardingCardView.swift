//
//  OnBoardingCardView.swift
//  veveConcept
//
//  Created by Lior Dorenboust on 08/08/2022.
//

import SwiftUI
import SwiftUIX

struct OnBoardingCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            //Title
            LinearGradient(gradient: Gradient(colors: [.white, Color("veveBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .frame(height: 120)
                .mask(Text("Welcome to \nthe world of \ndigital collectibles")
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
                    .lineLimit(3)
                    .frame(maxWidth: .infinity, alignment: .leading)
                )
            
            
            //Description
            Text("VeVe digital collectibles come in limited edition releases, can be purchased, sold and traded, upgraded and customized, placed in virtual showrooms, shared on social and more, all through the VeVe app!")
                .foregroundColor(.white)
                .font(.subheadline)
            
        }
        .padding(30)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("veveBlue"), Color("whiteOpacity")]), startPoint: .top, endPoint: .bottom)
        )
        //Card
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        //Card Border
        .overlay(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .stroke(LinearGradient(gradient: Gradient(colors: [Color("veveBlue"), .clear]), startPoint: .top, endPoint: .bottom)
                        , lineWidth: 5)
                .blur(radius: 5)
        )
        //BlurGlass background
        .background(
            VisualEffectBlurView(blurStyle: .systemUltraThinMaterial)
                .mask(RoundedRectangle(cornerRadius: 30, style: .continuous)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color("whiteOpacity"), Color.blue.opacity(0)]), startPoint: .top, endPoint: .bottom)))
            
        )
        .padding(20)
    }
    
}


struct OnBoardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingCardView().previewLayout(.sizeThatFits)
    }
}
