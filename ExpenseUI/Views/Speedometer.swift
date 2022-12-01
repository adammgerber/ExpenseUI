//
//  Speedometer.swift
//  ExpenseUI
//
//  Created by Adam Gerber on 30/11/2022.
//

import SwiftUI

struct Speedometer: View {
    @Binding var progress: CGFloat
    var body: some View {
        GeometryReader{proxy in
            let size = proxy.size
            
            ZStack{
                //To construct speedometer shape, iterate capsule shape to 180 degrees
                ForEach(1...60, id: \.self){index in
                    //MARK: 60 * 30 = 180
                    let deg = CGFloat(index) * 3
                    
                    Capsule()
                        .fill(.gray.opacity(0.25))
                        .frame(width: 40, height: 4)
                        .offset(x: -(size.width - 40) / 2)
                        .rotationEffect(.init(degrees: deg))
                }
            }
            .frame(width: size.width, height: size.height, alignment: .bottom)
            
            ZStack{
                //To construct speedometer shape, iterate capsule shape to 180 degrees
                ForEach(1...60, id: \.self){index in
                    //MARK: 60 * 30 = 180
                    let deg = CGFloat(index) * 3
                    
                    Capsule()
                        .fill(deg < 60 ? Color("Ring1") : (deg >= 60 && deg < 120 ? Color("Ring2") : Color("Ring3")))
                        .frame(width: 40, height: 4)
                        .offset(x: -(size.width - 40) / 2)
                        .rotationEffect(.init(degrees: deg))
                }
            }
            .frame(width: size.width, height: size.height, alignment: .bottom)
            
            //MARK: Masking for Updating Progress and Animation
            .mask{
                Circle()
                    //progress = CGFloat = 0.5 defined in Home()
                    .trim(from: 0, to: progress / 2 + 0.002)
                    .stroke(.white, lineWidth: 40)
                    .frame(width: size.width - 40, height: size.width - 40)
                    .offset(y: -(size.height) / 2)
                    .rotationEffect(.init(degrees: 180))
            }
        }
        .overlay(alignment: .bottom, content:{
            HStack{
                Text("0%")
                    .font(.system(size: 15, weight: .semibold))
                Spacer()
                
                AnimatedNumberText(value: CGFloat(Int(progress * 100)), font: .system(size: 15, weight: .semibold), floatingPoint: 0, additionalString: "%")
            }
            .offset(y: 35)
        })
        .overlay(alignment: .bottom, content: {
            // MARK: Custom Indicator Shape
            IndicatorShape()
                .fill(Color("Indicator"))
                .overlay(alignment: .bottom, content: {
                    Circle()
                        .fill(Color("Indicator"))
                        .frame(width: 30, height: 30)
                        .overlay{
                            Circle()
                                .fill(Color("BG"))
                                .padding(6)
                        }
                        .offset(y: 10)
                })
                .frame(width: 25)
                .padding(.top, 40)
                .rotationEffect(.init(degrees: -90), anchor: .bottom)
                .rotationEffect(.init(degrees: progress * 180), anchor: .bottom)
                .offset(y: -5)
        })
        .padding(.top)
        .padding(10)
    }
}

struct Speedometer_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
