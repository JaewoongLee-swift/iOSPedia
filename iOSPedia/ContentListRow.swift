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
//        NavigationLink {
        HStack(spacing: 0) {
                iosPedia.image
                    .resizable()
                    .frame(width: 100.0, height: 100.0)
                    .cornerRadius(15.0)
                    .padding()
                VStack(alignment: .leading) {
                    Text(iosPedia.title)
                        .font(.title3)
                    Text("")
                    Text(iosPedia.description)
                        .font(.caption)
                    Text("10개의 게시물")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
            }
//        }
    }
}

struct ContentListRow_Previews: PreviewProvider {
    static var previews: some View {
        ContentListRow(iosPedia: iosPedia[0])
    }
}
