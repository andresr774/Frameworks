//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Andres camilo Raigoza misas on 26/02/22.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns: [GridItem] = Array(
        repeating: .init(.flexible(), spacing: 35, alignment: .center),
        count: 3)
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, alignment: .center, spacing: 35) {
                    ForEach(MockData.frameworks, id: \.self) { item in
                        VStack {
                            Image(item.imageName)
                                .resizable()
                                .scaledToFit()
                            
                            Text(item.name)
                                .font(.title3.weight(.semibold))
                                .lineLimit(1)
                                .minimumScaleFactor(0.8)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("🍎 Frameworks")
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
