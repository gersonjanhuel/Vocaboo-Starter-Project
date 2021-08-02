//
//  MyVocabulariesView.swift
//  Vocaboo
//
//  Created by Gerson Janhuel on 02/08/21.
//

import SwiftUI
import CoreData

struct MyVocabulariesView: View {
    
    @State var myVocabularies: [String] = ["Vocab 1", "Vocab 2", "Vocab 3"]
    
    var body: some View {
        List {
            ForEach(myVocabularies, id:\.self) { vocab in
                Text(vocab)
            }
            .onDelete(perform: { indexSet in
                myVocabularies.remove(atOffsets: indexSet)
                
            })
            
        }
        .listStyle(PlainListStyle())
        .navigationTitle("My Vocabularies")
        .navigationBarItems(trailing:
            Button(action: {
                showAlert()
            }, label: {
                Text("Add")
            })
        )
    }
    
    // show alert with TextField
    private func showAlert() {
        // create new alert
        let alert = UIAlertController(title: "Add", message: nil, preferredStyle: .alert)
        
        // add text field
        alert.addTextField { (textField) in
            textField.placeholder = "Type new word"
        }
        
        // add Cancel button
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        // add Save button
        alert.addAction(UIAlertAction(title: "Save", style: .default) { _ in
            let textField = alert.textFields![0] as UITextField
            if let newVocab = textField.text {
                myVocabularies.append(newVocab)
            }
        })
        
        // get root view controller
        let controller = UIApplication.shared.windows.first!.rootViewController!
        controller.present(alert, animated: true)
    }
    
    // CORE DATA - save new vocab
    private func saveNewVocab(word: String) {
        
    }
    
    //CORE DATA - delete vocab
    private func deleteVocab(at index: IndexSet) {
        
    }
}

struct MyVocabulariesView_Previews: PreviewProvider {
    static var previews: some View {
        MyVocabulariesView()
    }
}
