import SwiftUI

struct SearchRepositoryRow: View {
    var body: some View {
        HStack {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .clipShape(Circle())
                .frame(width: 40, height: 40)
            VStack(alignment: .leading) {
                Text("repository")
                    .fontWeight(.bold)
                Text("description")
                    .font(.caption)
            }
            .padding(.horizontal, 4)
            Spacer()
            StarButton()
        }
        .modifier(RowContentPadding())
    }
}

struct SearchRepositoryRow_Previews: PreviewProvider {
    static var previews: some View {
        SearchRepositoryRow()
    }
}
