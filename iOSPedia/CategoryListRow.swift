//
//  CategoryListRow.swift
//  iOSPedia
//
//  Created by 이재웅 on 2022/05/02.
//

import SwiftUI

struct CategoryListRow: View {
    var categoryContent: CategoryContent
    
    var body: some View {
        HStack {
            Text(categoryContent.name)
                .font(.body)
                .padding()
            
            Spacer()
        }
        .listRowBackground(Color(red: 248/255, green: 248/255, blue: 248/255))
    }
}

struct CategoryListRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListRow(categoryContent: iosPedia[0].category[0])
    }
}
