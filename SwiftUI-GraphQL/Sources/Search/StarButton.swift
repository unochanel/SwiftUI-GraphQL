import SwiftUI

struct StarButton: View {
    @State var isStar: Bool = false
    
    var body: some View {
        Button(action: {}, label: {
            isStar ? Image(systemName: "star.fill")
                .foregroundColor(.black) : Image(systemName: "star").foregroundColor(.black)
        })
    }
}

struct StarButton_Previews: PreviewProvider {
    static var previews: some View {
        StarButton()
    }
}
