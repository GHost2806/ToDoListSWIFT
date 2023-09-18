//
//  ItemModel.swift
//  ToDoListSWIFT
//
//  Created by Macbook Air on 18/09/23.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isComplited: Bool
}
