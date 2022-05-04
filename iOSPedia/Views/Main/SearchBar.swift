//
//  SearchBar.swift
//  iOSPedia
//
//  Created by 이재웅 on 2022/05/03.
//

import SwiftUI

struct SearchBar: View {
    
    // SearchView를 닫기 위한 변수
    @Binding var closeView: Bool
    
    // TextField의 텍스트를 받는 변수
    @Binding var text: String
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                
                TextField("검색", text: $text)
                    .foregroundColor(.primary)
                
                if !text.isEmpty {
                    Button(action: {
                        self.text = ""
                    }) {
                        Image(systemName: "xmark.circle.fill")
                    }
                } else {
                    EmptyView()
                }
                
            }
            .padding(EdgeInsets(top: 4.0, leading: 8.0, bottom: 4.0, trailing: 8.0))
            .foregroundColor(.secondary)
            .background(Color(.secondarySystemBackground))
            .cornerRadius(10.0)
            
            Button {
                closeView = false
            } label: {
                Text("취소")
            }
        }
        .padding(.horizontal)
    }
}
