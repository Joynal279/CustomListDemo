//
//  ContentView.swift
//  CustomListDemo
//
//  Created by Joynal Abedin on 14/2/23.
//

import SwiftUI

struct ListModel: Identifiable {
    let id = UUID()
    let name: String
    let age: Int
    let gender: String
}

struct ContentView: View {
    
    private let values: [ListModel] = [
        ListModel(name: "John", age: 24, gender: "Male"),
        ListModel(name: "Joynal", age: 25, gender: "Male"),
        ListModel(name: "Abedin", age: 25, gender: "Male"),
        ListModel(name: "Maria", age: 22, gender: "Female"),
    ]
    
    var body: some View {
        VStack {
            List(values) { item in
                DesignView(item: item)
                    .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
