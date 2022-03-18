//
//  FruitDetailNutrientsView.swift
//  Fructus
//
//  Created by Visarut Tippun on 18/3/22.
//

import SwiftUI

struct FruitDetailNutrientsView: View {
    var fruit: Fruit
    let nutrients: [String] = ["Energy",
                               "Sugar",
                               "Fat",
                               "Protein",
                               "Vitamins",
                               "Minerals"]
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { index in
                    Divider()
                        .padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[index])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[index])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        } //: GroupBox
    }
}

struct FruitDetailNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailNutrientsView(fruit: fruitData.first!)
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
