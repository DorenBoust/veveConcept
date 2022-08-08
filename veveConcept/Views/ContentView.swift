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
    @State var showOnBoarding: Bool = false
    
    var body: some View {
        //show onBoarding when splashScreen Finished
        if showOnBoarding {
            OnBoarding()
        }
        
        ZStack {
            //veveBlue color Circle that increase  3 sec after view onAppear
            Circle()
                .fill(Color("veveBlue"))
            
                .frame(width: self.animationCircle ? 10000 : 100)
                .frame(height: self.animationCircle ? 10000 : 100)
//                .animation(Animation.linear(duration: 3))
                
            
            VStack {
                ZStack {
                    
                    //veve logo increase 2 sec after veveBlue color Circle finished
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: self.animationVeve ? 10000: 150)
                        .frame(height: self.animationVeve ? 10000: 150)
                        .offset(y: self.animationVeve ? -1400: 0)
                    
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
            
            //controling the animation times
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation(.linear(duration: 3)) {
                    self.animationCircle.toggle()
                }
                

                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation(.linear(duration: 0.7)) {
                        self.animationVeve.toggle()
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                            self.showOnBoarding.toggle()
                        }
                    }

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


