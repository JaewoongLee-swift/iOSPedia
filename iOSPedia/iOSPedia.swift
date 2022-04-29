//
//  iOSPedia.swift
//  iOSPedia
//
//  Created by 이재웅 on 2022/04/29.
//

import Foundation
import SwiftUI


struct iOSPedia: Hashable, Codable {
    var id: Int
    var title: String
    var description: String
    
    // imageName에는 어떠한 수정이 필요없으므로 private
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}

