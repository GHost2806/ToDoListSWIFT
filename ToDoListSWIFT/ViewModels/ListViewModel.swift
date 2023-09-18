//
//  ListViewModel.swift
//  ToDoListSWIFT
//
//  Created by Macbook Air on 18/09/23.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    init() {
        getItems()
    }
    func getItems() {
        let newItems = [
            ItemModel(title: "Задача 1", isComplited: false),
            ItemModel(title: "Задача 2", isComplited: true)
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}
