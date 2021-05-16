import SwiftUI

struct SearchRepositoryRow: View {
    let repository: SearchQuery.Data.Search.Node.AsRepository

    var body: some View {
        HStack {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .clipShape(Circle())
                .frame(width: 40, height: 40)
            VStack(alignment: .leading) {
                Text(repository.name)
                    .fontWeight(.bold)
                Text(repository.description ?? "")
                    .font(.caption2)
            }
            .padding(.horizontal, 4)
            Spacer()
        }
        .modifier(RowContentPadding())
    }
}

struct SearchRepositoryRow_Previews: PreviewProvider {
    static var previews: some View {
        SearchRepositoryRow(repository: .init(id: "1", name: "", description: ""))
    }
}
