//
//  ItemModel.swift
//  MyDinner
//
//  Created by Juhee Kang Johansson on 2024-02-09.
//

import Foundation

struct CategoryModel: Identifiable {
    let id: String = UUID().uuidString
    let foodTitle: String
    let isFish: Bool
    let isMeat: Bool
    let isVegetable: Bool
    //let isCompleted: Bool
}
