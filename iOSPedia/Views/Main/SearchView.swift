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
    
    var filteredContents: [CategoryContent] {
        if searchText == "" {
            return contentTitles
        }
        
        return contentTitles.filter {
            $0.name.lowercased().contains(searchText.lowercased())
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(closeView: $closeModal, text: $searchText)
                    .padding(EdgeInsets(top: 10.0, leading: 0.0, bottom: 10.0, trailing: 0.0))
                
                if filteredContents.count == 0 {
                    Spacer()
                    
                    Text("검색결과가 존재하지 않습니다.")
                        .foregroundColor(.secondary)
                        .font(.system(size: 25.0))
                        .bold()
                    
                    Spacer()
                } else {
                    List(filteredContents, id: \.self) { categoryContent in
                        NavigationLink {
                            ContentsView(contentURL: categoryContent.contentURL, bodyTitle: categoryContent.name)
                        } label: {
                            Text(categoryContent.name)
                        }
                    }
                    .listStyle(.plain)
                    .onTapGesture {
                        hideKeyboard()
                    }
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
