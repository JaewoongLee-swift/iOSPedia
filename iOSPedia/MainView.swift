//
//  ContentView.swift
//  iOSPedia
//
//  Created by 이재웅 on 2022/04/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("리스트를 채웁시다.")
                .padding()
                .navigationTitle("Curry의 iOSPedia")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
