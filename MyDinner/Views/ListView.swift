//
//  ListView.swift
//  MyDinner
//
//  Created by Juhee Kang Johansson on 2024-02-09.
//

import SwiftUI

struct ListView: View {
    @State var categories: [CategoryModel] = [
        CategoryModel(foodTitle: "Oxpyttipanna", isFish: false, isMeat: true, isVegetable: false),
        CategoryModel(foodTitle: "Fiskpinnar", isFish: true, isMeat: false, isVegetable: false),
        CategoryModel(foodTitle: "Bibimbab", isFish: false, isMeat: false, isVegetable: true),
        
    ]
    
    var body: some View {
        List {
            ForEach(categories) { category in ListRowView(category: category)
            }
            .onDelete(perform: deletItem)
            .onMove(perform: moveItem)
        }
        .navigationTitle("My Dinner")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView())
            
        //.listStyle(PlainListStyle())
        )
        .foregroundColor(.black)
    }
    
    func deletItem(indexSet: IndexSet) {
        categories.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        categories.move(fromOffsets: from, toOffset: to)
    }
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}
