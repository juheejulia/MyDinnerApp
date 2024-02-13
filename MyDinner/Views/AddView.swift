//
//  AddView.swift
//  MyDinner
//
//  Created by Juhee Kang Johansson on 2024-02-09.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
   
    var body: some View {
    ScrollView {
        VStack {
            
            TextField("Write here...", text: $textFieldText)
                .padding(.horizontal)
                .frame(height: 500)
                .background(Color.teal.opacity(0.1))
                .cornerRadius(30)

            Button(action: {
                
            }, label: {
                Text("Save".uppercased())
                    .foregroundColor(.white)
                    .frame(height: 40)
                    .frame(maxWidth: 100)
                    .background(Color.green)
                    .cornerRadius(10)
                    .padding(10)
            })
        }
        .padding(10)
    }
    .navigationTitle("Add an Item")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
