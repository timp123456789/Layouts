//
//  ContentView.swift
//  Layouts
//
//  Created by Timothy Petrik on 9/14/25.
//

import SwiftUI

struct ContentView: View {
    @State private var texts = ".border(.orange, width: 2).border(.orange, width: 2).border(.orange, width: 2)"
    var body: some View {
        GeometryReader { Geometry in
            VStack {
    //            Text("You have skills")
    //                .font(.largeTitle)
    //                .fontWeight(.black)
    //                .foregroundStyle(.white)
    //                .padding()
    //                .background(.marroon)
    //                .clipShape(RoundedRectangle(cornerRadius: 15))
                
                Spacer()
                
                Text(texts)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.red)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .border(.orange, width: 2)
                
                Spacer()
                
                Divider()
                    .background(.black)
                    .padding()
                    .frame(width: 150.0)
                
                Rectangle()
                    .fill(.indigo)
                    .frame(width: Geometry.size.width * 2/3, height: 1)
                
                HStack {
                    Button("Awesome") {
                        texts = "You Are Awesome!"
                    }
                    Spacer()
                    Button("Great") {
                        texts = "You Are Great!"
                    }
                }
                .buttonStyle(.borderedProminent)
    //            .border(.purple, width: 5)
                .padding()
                
                Rectangle()
                    .frame(height: 0)
                    .background(.indigo)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
