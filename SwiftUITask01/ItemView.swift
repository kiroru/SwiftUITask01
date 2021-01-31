//
//  ItemView.swift
//  SwiftUITask01
//
//  Created by 高田 朋輝 on 2021/01/30.
//

import SwiftUI
import SDWebImageSwiftUI

struct ItemView: View {
    
    let item: Item
    
    var body: some View {
        HStack {
            WebImage(url: URL(string: item.imageUrl))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 70)
            VStack(alignment: .leading) {
                Text(item.jname)
                Text(item.ename)
            }
        }
    }

}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item:Item(
                imageUrl: "https://kiroru-inc.jp/share/scc2018/Japan.png",
                jname: "日本",
                ename: "Japan"
            )
        )
    }
}
