import SwiftUI

struct SearchRepositoryBar: View {
    @State var text: String
    @State var action: () -> Void
    
    var body: some View {
        ZStack {
            HStack {
                TextField("Search Repository", text: $text)
                    .padding([.leading, .trailing], 8)
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
        SearchRepositoryBar(text: "", action: {})
    }
}
