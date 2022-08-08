//
//  ContentView.swift
//  veveConcept
//
//  Created by Lior Dorenboust on 08/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var animationCircle: Bool = false
    @State var animationVeve: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color("veveBlue"))
            
                .frame(width: self.animationCircle ? 10000 : 100)
                .frame(height: self.animationCircle ? 10000 : 100)
                .animation(Animation.linear(duration: 3))
            
            VStack {
                ZStack {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: self.animationVeve ? 10000: 150)
                        .frame(height: self.animationVeve ? 10000: 150)
                        .offset(y: self.animationVeve ? -1400: 0)
                    .animation(Animation.linear(duration: 0.7))
                    
                    Text("Premium Digital \n Collectibles")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                        .offset(y: 125)
                        .multilineTextAlignment(.center)
                        
                }
                    
                
                
                ProgressView()
                    .opacity(animationCircle ? 0 : 1)
                
            }
            
        }.onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                self.animationCircle.toggle()
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    self.animationVeve.toggle()
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
