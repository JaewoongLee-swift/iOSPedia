//
//  WebView.swift
//  iOSPedia
//
//  Created by 이재웅 on 2022/05/03.
//

import SwiftUI
import WebKit

struct ContentWebView: UIViewRepresentable {
    var urlToLoad: String
    
    func makeUIView(context: Context) -> some UIView {
            guard let url = URL(string: self.urlToLoad) else { return WKWebView() }
            
            let webView = WKWebView()
            
            webView.load(URLRequest(url: url))
            
            return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    
    }
}
