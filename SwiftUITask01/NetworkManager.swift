//
//  NetworkManager.swift
//  SwiftUITask01
//
//  Created by 高田 朋輝 on 2021/01/31.
//

import Foundation
import Alamofire

class NetworkManager: ObservableObject {

    @Published var items: [Item] = []
    
    init() {
        AF.request("https://kiroru-inc.jp/share/scc2018/countries.json")
            .responseJSON { res in
                guard let json = res.data else {
                    return
                }
                do {
                    self.items = try JSONDecoder().decode(Array<Item>.self, from: json)
                }
                catch let error {
                    print("Decode Error: \(error.localizedDescription)")
                    return
                }
            }
    }
}
