//
//  ListRowView.swift
//  MyDinner
//
//  Created by Juhee Kang Johansson on 2024-02-09.
//

import SwiftUI

struct ListRowView: View {
    
    let category: CategoryModel
    
    var body: some View {
        HStack {
            Image(systemName: category.isFish ? "fish.fill" : "")
                .foregroundColor(.blue)
            Image(systemName: category.isMeat ? "car.fill" : "")
                .foregroundColor(.red)
            Image(systemName: category.isVegetable ? "carrot.fill" : "")
                .foregroundColor(.orange)
            Text(category.foodTitle)
            //Spacer()
        }
        .font(.title2)
        .padding(.vertical,8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var food1 = CategoryModel(foodTitle: "Fish and chips", isFish: true, isMeat: false, isVegetable: false)
    static var food2 = CategoryModel(foodTitle: "Spagetti med köttfärssås", isFish: false, isMeat: true, isVegetable: false)
    static var food3 = CategoryModel(foodTitle: "Pasta Sallad", isFish: false, isMeat: false, isVegetable: true)
    
    
    static var previews: some View {
        Group {
            ListRowView(category: food1)
            ListRowView(category: food2)
            ListRowView(category: food3)
        }
        .previewLayout(.sizeThatFits)
    }
}
