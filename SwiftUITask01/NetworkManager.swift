//
//  NetworkManager.swift
//  SwiftUITask01
//
//  Created by 高田 朋輝 on 2021/01/31.
//

import Foundation
import Alamofire

class NetworkManager {
    
    func download() async -> [Item]? {
        do {
            Logging.debug("スレッドの確認") // SubThread
            return try await AF
                .request("https://kiroru-inc.jp/share/scc2018/countries.json")
                .serializingDecodable([Item].self)
                .value
        }
        catch let error {
            Logging.debug("Error: \(error.localizedDescription)")
            return nil
        }
    }
}
