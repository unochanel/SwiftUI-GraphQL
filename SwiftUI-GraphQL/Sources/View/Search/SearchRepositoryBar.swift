import SwiftUI

struct SearchRepositoryBar: View {
    let query: Binding<String>
    let action: () -> Void
    
    var body: some View {
        ZStack {
            HStack {
                TextField("Search Repository", text: query)
                    .padding(.horizontal, 8)
                    .frame(height: 32)
                    .background(Color(.white))
                    .cornerRadius(8)
                Button(action: action, label: {
                    Text("Search")
                        .padding(.leading, 8)
                })
            }
            .frame(height: 64)
        }
        .padding([.leading, .trailing], 16)
        .background(Color(.systemGray6))
    }
}

struct SearchRepositoryBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchRepositoryBar(query: .constant(""), action: {})
    }
}
