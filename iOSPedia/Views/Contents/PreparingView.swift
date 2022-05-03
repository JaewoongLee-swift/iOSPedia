//
//  PreparingView.swift
//  iOSPedia
//
//  Created by 이재웅 on 2022/05/03.
//

import SwiftUI

struct PreparingView: View {
    var body: some View {
        VStack {
            Image(systemName: "exclamationmark.triangle.fill")
                .resizable()
                .frame(width: 200.0, height: 200.0, alignment: .center)
            Text("컨텐츠를 준비중입니다")
                .font(.system(size: 30.0))
                .bold()
        }
    }
}

struct PreparingView_Previews: PreviewProvider {
    static var previews: some View {
        PreparingView()
    }
}
