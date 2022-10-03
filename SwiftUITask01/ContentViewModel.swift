//
//  ContentViewModel.swift
//  SwiftUITask01
//
//  Created by 高田朋輝 on 2022/10/01.
//

import Foundation

@MainActor
class ContentViewModel: ObservableObject {
    
    @Published var items: [Item] = []
    private let networkManager = NetworkManager()

    func download() async {
        Logging.debug("スレッドの確認") // MainThread
        guard let items = await networkManager.download() else {
            return
        }
        Logging.debug("スレッドの確認") // MainThread
        self.items = items
    }
}
