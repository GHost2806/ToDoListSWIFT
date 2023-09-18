//
//  ItemModel.swift
//  ToDoListSWIFT
//
//  Created by Macbook Air on 18/09/23.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isComplited: Bool
    
    init(id: String = UUID().uuidString, title: String, isComplited: Bool) {
        self.title = title
        self.isComplited = isComplited
        self.id = id
    }
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isComplited: !isComplited)
    }
}
