//
//  ContentView.swift
//  iOSPedia
//
//  Created by 이재웅 on 2022/04/29.
//

import SwiftUI

struct MainView: View {
    @State var showView: Bool = false
    
    var body: some View {
        NavigationView {
            ContentList()
                .background(Color(red: 248/255, green: 248/255, blue: 248/255))
                .navigationTitle("Curry의 iOSPedia")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing)
                    {
                        Button(action: {
                            showView = true
                        }, label: {
                            Image(systemName: "magnifyingglass")
                        })
                        .fullScreenCover(isPresented: $showView) {
                            SearchView(closeView: $showView)
                        }
                    }
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
