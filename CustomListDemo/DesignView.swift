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
                .fill(Color.white)
                .frame(height: 100)
            
            HStack {
                Text(item.name)
                    .foregroundColor(.black)
                    .font(.body)
                Spacer()
                Text("\(item.age)")
                    .foregroundColor(.black)
                    .font(.subheadline)
                Spacer()
                Text(item.gender)
                    .foregroundColor(.black)
                    .font(.subheadline)
            }
            .padding([.leading, .trailing], 10)
            
            
        }
        .frame(height: 54)
        .cornerRadius(24)
        .shadow(color: Color(uiColor: UIColor(red: 0.081, green: 0.415, blue: 0.775, alpha: 0.13)), radius: 10, x: 0, y: 1)
        
    }
}

struct DesignView_Previews: PreviewProvider {
    static var previews: some View {
        DesignView(item: ListModel(name: "John", age: 21, gender: "Male"))
            .previewLayout(.sizeThatFits)
    }
}
