//
//  AddView.swift
//  ToDoListSWIFT
//
//  Created by Macbook Air on 18/09/23.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    @State var textFieldText: String = ""
    
    @State var alertTitle: String = ""
    @State var showAllert: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Запиши сюда", text: $textFieldText)
                    .padding(.horizontal)
                .frame(height: 55)
                
                Button(action: saveButtonPressed, label: {
                    Text("Save")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(16)
        }
        .navigationTitle("✏️Добавить задачу")
        .alert(isPresented: $showAllert, content: getAlert)
    }
    func saveButtonPressed() {
        if textCorrection() == true {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()}
        
    }
    
    func textCorrection() -> Bool {
        if textFieldText.count < 1 {
            alertTitle = "Пустое поле"
            showAllert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
