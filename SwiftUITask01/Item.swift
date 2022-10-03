//
//  Item.swift
//  SwiftUITask01
//
//  Created by 高田 朋輝 on 2021/01/30.
//

import Foundation

struct Item: Identifiable, Codable {

    let id = UUID()
    let imageUrl: String
    let jname: String
    let ename: String
    
    enum CodingKeys: String, CodingKey {
        case imageUrl
        case jname
        case ename
    }
    
    init(imageUrl:String, jname:String, ename: String) {
        self.imageUrl = imageUrl
        self.jname = jname
        self.ename = ename
    }

}
