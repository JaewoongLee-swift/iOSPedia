//
//  ModelData.swift
//  iOSPedia
//
//  Created by 이재웅 on 2022/04/29.
//

import Foundation

var iosPedia: [iOSPedia] = jsonLoad("iOSPediaData.json")

//JSON 파일 데이터 불러오는 함수
func jsonLoad<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    // JSON 파일 호출
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't load \(filename) in main bundle.")
    }
    
    // JSON의 데이터 호출
    do {
        // 데이터를 Date타입으로 변경. Swift에서 Data타입으로 받을 경우, 저장/로드/변환이 쉬움
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    // JSON 데이터 디코딩 (JSON -> Struct로 변환)
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
