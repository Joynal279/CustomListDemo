//
//  DesignView.swift
//  CustomListDemo
//
//  Created by Joynal Abedin on 14/2/23.
//

import SwiftUI

struct DesignView: View {
    
    let item: ListModel
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(Color.blue)
                .frame(height: 100)
            
            HStack {
                Text(item.name)
                    .foregroundColor(.white)
                    .font(.title)
                Spacer()
                Text("\(item.age)")
                    .foregroundColor(.white)
                    .font(.title2)
                Spacer()
                Text(item.gender)
                    .foregroundColor(.white)
                    .font(.title2)
            }
            .padding([.leading, .trailing], 10)
            
        }
        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
    }
}

struct DesignView_Previews: PreviewProvider {
    static var previews: some View {
        DesignView(item: ListModel(name: "John", age: 21, gender: "Male"))
            .previewLayout(.sizeThatFits)
    }
}
