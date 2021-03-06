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
        NavigationLink(destination: ContentsView(contentURL: categoryContent.contentURL, bodyTitle: categoryContent.name)) {
            HStack {
                Text(categoryContent.name)
                    .foregroundColor(.black)
                    .font(.body)
                    .padding()
                
                Spacer()
            }
        }
        .listRowBackground(Color(red: 248/255, green: 248/255, blue: 248/255))
    }
}

struct CategoryListRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListRow(categoryContent: iosPedia[0].category[0])
    }
}
