//
//  ListRowView.swift
//  ToDoListSWIFT
//
//  Created by Macbook Air on 18/09/23.
//

import SwiftUI

struct ListRowView: View {
    let title: String
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "Задача 1")
    }
}
