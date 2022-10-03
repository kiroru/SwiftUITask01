//
//  ContentView.swift
//  SwiftUITask01
//
//  Created by 高田朋輝 on 2022/10/01.
//

import SwiftUI

struct ContentView: View {
    @StateObject var contentViewModel = ContentViewModel()

    var body: some View {
        List(contentViewModel.items) { item in
            ItemView(item: item)
        }
        .task {
            /**
             * taskに記述した処理が完了する前にViewが非表示になると
             * 処理は自動的にキャンセルされる
             */
            await contentViewModel.download()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
