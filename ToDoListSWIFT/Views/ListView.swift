//
//  ListView.swift
//  ToDoListSWIFT
//
//  Created by Macbook Air on 18/09/23.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
    "Задача 1",
    "Задача 2",
    "Задача 3",
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .navigationTitle("Список Дел📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView()))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}


