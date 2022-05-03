//
//  ContentsView.swift
//  iOSPedia
//
//  Created by 이재웅 on 2022/05/02.
//

import SwiftUI

struct ContentsView: View {
    var contentURL: String
    var bodyTitle: String
    
    var body: some View {
        ContentWebView(urlToLoad: contentURL)
            .background(Color(red: 248/255, green: 248/255, blue: 248/255))
        
        .navigationTitle(bodyTitle)
    }
}

struct ContentsView_Previews: PreviewProvider {
    static var previews: some View {
        let url = "https://seons-dev.tistory.com/44"
        ContentsView(contentURL: url, bodyTitle: "타이틀임!!!!!")
    }
}
