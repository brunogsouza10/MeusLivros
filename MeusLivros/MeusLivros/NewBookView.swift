//
//  NewBookView.swift
//  MeusLivros
//
//  Created by Bruno Gomes de Souza on 22/08/24.
//

import SwiftUI

struct NewBookView: View {
    @Environment(\.modelContext)private var context
    @Environment(\.dismiss)var dismiss
    @State private var title = ""
    @State private var author = ""
   
    var body: some View {
        NavigationStack{
            Form{
                TextField("Título do Livro", text: $title)
                TextField("Autor", text: $author)
                Button("Criar"){
                    let newBook = Book(title: title, author:author)
                    context.insert(newBook)
                    dismiss()
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                .buttonStyle(.borderedProminent)
                .padding(.vertical)
                .disabled(title.isEmpty || author.isEmpty)
                .navigationTitle("Novo Livro")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .topBarLeading){
                        Button("Cancelar"){
                            dismiss()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    NewBookView()
}
