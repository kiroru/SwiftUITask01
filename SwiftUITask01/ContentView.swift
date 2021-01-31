//
//  ContentView.swift
//  SwiftUITask01
//
//  Created by 高田 朋輝 on 2021/01/30.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var contentViewModel: NetworkManager

    var body: some View {
        List(contentViewModel.items) { item in
            ItemView(item: item)
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
