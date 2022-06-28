//
//  ContentView.swift
//  cw3.2
//
//  Created by Leena Al Jassar on 28/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var num1 = 0
    @State var num2 = 0
    @State var num3 = 0
    var body: some View {

        VStack  (spacing: 50){
            HStack{
                Text("سبحان الله العظيم")
                    .font(.system(size: 30))
                    .padding()
                
            Text("\(num1)")
                    .padding()
                    .foregroundColor(.white)
                    .font(.system(size: 25, weight: .medium, design: .rounded))
                    .frame(width: 90, height: 90)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.551, saturation: 0.414, brightness: 0.871, opacity: 0.883)/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                    .onTapGesture {
                        num1 = num1 + 1
                    }
                
                    
            }
            HStack{
                Text("سبحان الله العظيم")
                    .font(.system(size: 30))
                    .padding()
                
            Text("\(num2)")
                    .padding()
                    .foregroundColor(.white)
                    .font(.system(size: 25, weight: .medium, design: .rounded))
                    .frame(width: 90, height: 90)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.551, saturation: 0.414, brightness: 0.871, opacity: 0.883)/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                    .onTapGesture {
                        num2 = num2 + 1
                    }
            }
            HStack{
                Text("سبحان الله العظيم")
                    .font(.system(size: 30))
                    .padding()
                
            Text("\(num3)")
                    .padding()
                    .foregroundColor(.white)
                    .font(.system(size: 25, weight: .medium, design: .rounded))
                    .frame(width: 90, height: 90)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.551, saturation: 0.414, brightness: 0.871, opacity: 0.883)/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                    .onTapGesture {
                        num3 = num3 + 1
                    }
            }
            Text("إعادة")
                .padding()
                .font(.system(size: 25, weight: .medium, design: .rounded))
                .frame(width: 150, height: 50)
                .background(.yellow)
                .clipShape(Capsule())
                .onTapGesture {
                    num1 = 0
                    num2 = 0
                    num3 = 0
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
