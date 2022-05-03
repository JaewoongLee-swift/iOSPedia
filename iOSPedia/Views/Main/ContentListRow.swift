//
//  ContentListRow.swift
//  iOSPedia
//
//  Created by 이재웅 on 2022/04/29.
//

import SwiftUI

struct ContentListRow: View {
    var iosPedia: iOSPedia
    
    var body: some View {
        NavigationLink(destination: CategoryView(categories: iosPedia.category)) {
            HStack(spacing: 0) {
                // 크기조정 > 꽉차게 들어가도록 > width 100, height 100
                iosPedia.image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100.0, height: 100.0)
                    .cornerRadius(15.0)
                    .padding()
                
                VStack(alignment: .leading) {
                    Text(iosPedia.title)
                        .font(.title3)
                    // title 텍스트와 description, 게시물갯수 텍스트의 공간을 주기 위함
                    Text("")
                    Text(iosPedia.description)
                        .font(.caption)
                    Text("\(iosPedia.category.count)개의 게시물")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
            }
        }
        .listRowBackground(Color(red: 248/255, green: 248/255, blue: 248/255))
    }
}

struct ContentListRow_Previews: PreviewProvider {
    static var previews: some View {
        ContentListRow(iosPedia: iosPedia[3])
    }
}
