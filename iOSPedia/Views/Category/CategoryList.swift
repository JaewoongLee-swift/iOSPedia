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
        ScrollView {
            ForEach(categories, id: \.id) { category in
                CategoryListRow(categoryContent: category)
                    .background(Color.white)
                    .cornerRadius(15.0)
                    .listRowSeparator(.hidden)
                    .shadow(radius: 3.5)
                    .padding(EdgeInsets(top: 5.0, leading: 15.0, bottom: 5.0, trailing: 15.0))
            }
        }
        .background(Color(red: 248/255, green: 248/255, blue: 248/255))
    }
}

struct CategoryList_Previews: PreviewProvider {
    static var previews: some View {
        CategoryList(categories: iosPedia[0].category)
    }
}
