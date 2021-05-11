import SwiftUI

struct DetailRepositoryView: View {
    @State var isStar: Bool = false
    
    var body: some View {
        VStack {
            Text("Hello! SwiftUI")
        }
        .navigationBarItems(trailing:
                                isStar ? Button(action: {}, label: {
                                    Image(systemName: "star.fill")
                                }) : Button(action: {}, label: {
                                    Image(systemName: "star")
                                })
        )
    }
}

struct DetailRepositoryView_Previews: PreviewProvider {
    static var previews: some View {
        DetailRepositoryView()
    }
}
