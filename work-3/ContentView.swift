//
//  ContentView.swift
//  work-3
//
//  Created by cheenlee on 5/4/20.
//  Copyright © 2020 cheenlee. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    

    @State var cl = Color (#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
    
    var body: some View {
        ZStack{
            cl
        .edgesIgnoringSafeArea(.all)
            
        VStack{
            
            HStack{
                Image (systemName: "cube.fill")
                Spacer()
                Image (systemName: "safari.fill")
            }
            .padding(.horizontal, 20.0)
            Spacer()
            
            HStack(alignment: .bottom){
            Text ("02:10")
                .font(Font.system (size: 50))
            Text ("10")
                .offset(y:-10)
                
            }
            .padding(.vertical, 8.0)
        
            Text ("مضى على الآذان")
                .padding()
            
            
            HStack {
            Text ("<")
                .padding(.horizontal)
                Spacer()
            Text ("28 إبريل - 5 رمضان")
                Spacer()
            Text (">")
                .padding(.horizontal)   }
                
                .padding(.all)
            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3314260563)))
            
            HStack{
                VStack(spacing: 40.0)
                {
                Text ("3:44 AM")
                Text ("5:09 AM")
                Text ("11:46 AM")
                Text ("3:21 pm")
                Text ("6:22 pm")
                Text ("7:45 pm")   }
            
                Spacer()
                
            VStack(spacing: 40.0)
            {
                Text ("الفجر")
                    .onTapGesture {
                    self.cl = Color (#colorLiteral(red: 0.9276117682, green: 0.6431370378, blue: 0.5108053088, alpha: 1))}
                Text ("الشروق")
                .onTapGesture {
                    self.cl = Color (#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))}
                Text ("الظهر")
                .onTapGesture {
                    self.cl = Color (#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1))}
                Text ("العصر")
                .onTapGesture {
                    self.cl = Color (#colorLiteral(red: 0.7838687301, green: 0.5928652287, blue: 0.6830102205, alpha: 1))}
                Text ("المغرب")
                .onTapGesture {
                    self.cl = Color (#colorLiteral(red: 0.5178864598, green: 0.7575941682, blue: 0.7076640725, alpha: 1))}
                Text ("العشاء")
                .onTapGesture {
                     self.cl = Color (#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))}
                }
       }
        .font(Font.system (size: 20))
            .padding(.all,50.0)
                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3314260563)))
                .offset(y:33)
            
    }
        .foregroundColor(.white)

        
}
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
