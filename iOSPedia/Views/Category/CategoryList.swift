//
//  CategoryList.swift
//  iOSPedia
//
//  Created by 이재웅 on 2022/05/02.
//

import SwiftUI

struct CategoryList: View {
    var categories: [CategoryContent]
    
    var body: some View {
        List(categories, id: \.id) { category in
            CategoryListRow(categoryContent: category)
                .background(Color.white)
                .cornerRadius(15.0)
                .listRowSeparator(.hidden)
                .shadow(radius: 5.0)
                .padding(EdgeInsets(top: 3.0, leading: 0.0, bottom: 3.0, trailing: 0.0))
        }
        .background(Color(red: 248/255, green: 248/255, blue: 248/255))
        .listStyle(.plain)
    }
}

struct CategoryList_Previews: PreviewProvider {
    static var previews: some View {
        CategoryList(categories: iosPedia[0].category)
    }
}
