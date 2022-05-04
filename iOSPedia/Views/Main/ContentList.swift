//
//  ContentList.swift
//  iOSPedia
//
//  Created by 이재웅 on 2022/04/29.
//

import SwiftUI

struct ContentList: View {
    var body: some View {
        ScrollView {
            ForEach(iosPedia, id: \.id) { content in
                ContentListRow(iosPedia: content)
                    .background(Color.white)
                    .cornerRadius(15.0)
                    .listRowSeparator(.hidden)
                    .padding(EdgeInsets(top: 10.0, leading: 15.0, bottom: 10.0, trailing: 15.0))
                    .shadow(radius: 5.0)
            }
            .background(Color(red: 248/255, green: 248/255, blue: 248/255))
        .listStyle(.plain)
        }
    }
}

struct ContentList_Previews: PreviewProvider {
    static var previews: some View {
        ContentList()
    }
}
