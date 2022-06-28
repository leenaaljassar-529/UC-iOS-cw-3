//
//  ContentView.swift
//  cw3.1
//
//  Created by Leena Al Jassar on 27/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var num = ""
    @State var grade = ""
    var body: some View {
        ZStack{
        Color.gray.opacity(0.1)
            .ignoresSafeArea()
        
        VStack{

            Text("حاسبة الدرجات")
                .foregroundColor(Color(hue: 0.585, saturation: 0.498, brightness: 0.541))
            .padding()
            .font(.system(size: 35, weight: .medium, design: .rounded))
            
      Image("grades")
                .resizable()
                .frame(width: 170, height: 170)
                .padding()
            
            
            TextField("ادخل درجاتك", text:$num)
                .padding()
                .frame(width: 350, height: 50)
            
            Text("احسب درجتي")
                .font(.system(size: 22))
                .foregroundColor(Color(hue: 0.585, saturation: 0.511, brightness: 0.209))
                .padding()
                .background(Color(red: 0.442, green: 0.642, blue: 0.849, opacity: 0.61))
                .clipShape(Capsule())
                .onTapGesture {
                
                    if Int(num)! >= 90{
                        grade = "امتياز"
                    }
                    else if Int(num)! >= 80 {
                        grade = "جيد جداً"
                    }
                    else if Int(num)! >= 70 {
                        grade = "جيّد"
                    }
                    else if Int(num)! >= 60 {
                        grade = "مقبول"
                    }
                    else {
                        grade = "راسب"
                    }
                }
            
            Text("لقد حصلت على درجة")
                .font(.system(size: 22))
                .padding()
                .foregroundColor(Color(hue: 0.585, saturation: 0.498, brightness: 0.541))
            
            Text(grade)
                .font(.system(size: 75, weight: .semibold, design: .rounded))
                .padding()
                .foregroundColor(Color(hue: 0.585, saturation: 0.498, brightness: 0.541))
            
      Spacer()
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
