//
//  SearchView.swift
//  iOSPedia
//
//  Created by 이재웅 on 2022/05/03.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var closeModal: Bool
    @State private var searchText = ""
    
    // 각 컨텐츠의 이름들을 배열로 담음
    var contentTitles: [CategoryContent] = {
        var array = [CategoryContent]()
        
        for data in iosPedia {
            let categoryContents = data.category
            
            for categoryContent in categoryContents {
                array.append(categoryContent)
                print("\(categoryContent.name)이 들어감")
            }
        }
        
        return array
    }()
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(closeView: $closeModal, text: $searchText)
                    .padding(EdgeInsets(top: 10.0, leading: 0.0, bottom: 10.0, trailing: 0.0))
                
                List(contentTitles.filter({ $0.name.lowercased().contains(searchText.lowercased()) || searchText == ""
                })) { categoryContent in
                        NavigationLink(destination: ContentsView(contentURL: categoryContent.contentURL, bodyTitle: categoryContent.name)) {
                            Text(categoryContent.name)
                        }
                    }
                    .listStyle(.plain)
                    .onTapGesture {
                        hideKeyboard()
                    }
                }
            // 네비게이션 바 숨기기 위함
            .navigationBarHidden(true)
            }
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
