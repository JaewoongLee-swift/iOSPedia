//
//  CategoryView.swift
//  iOSPedia
//
//  Created by 이재웅 on 2022/05/02.
//

import SwiftUI

struct CategoryView: View {
    var categories: [CategoryContent]
    
    var body: some View {
        CategoryList(categories: categories)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(categories: iosPedia[0].category)
    }
}
