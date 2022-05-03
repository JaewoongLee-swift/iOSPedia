//
//  SearchView.swift
//  iOSPedia
//
//  Created by 이재웅 on 2022/05/03.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    // 각 컨텐츠의 이름들을 배열로 담음
    var contentTitles: [String] = {
        var array = [String]()
        
        for data in iosPedia {
            let contents = data.category
            
            for content in contents {
                array.append(content.name)
            }
        }
        
        return array
    }()
    
    var body: some View {
        VStack {
            SearchBar(text: $searchText)
                .padding(EdgeInsets(top: 10.0, leading: 0.0, bottom: 10.0, trailing: 0.0))
            
            List {
                // 현재 검색을 입력하지 않을 경우 모든 리스트가 뜨도록 구현
                ForEach(contentTitles.filter{ $0.contains(searchText) || searchText == "" }, id: \.self) { searchText in
                    Text(searchText)
                }
            }
            .listStyle(.plain)
            .onTapGesture {
                hideKeyboard()
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

//화면 터치시 키보드 숨김
#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
