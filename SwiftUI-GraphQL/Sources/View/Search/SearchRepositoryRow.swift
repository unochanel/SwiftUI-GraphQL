import SwiftUI

struct SearchRepositoryRow: View {
    let repository: RepositoryDetail

    var body: some View {
        HStack {
            URLImage(url: repository.owner.avatarUrl)
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
        SearchRepositoryRow(repository: .init(id: "", name: "", owner: .makeUser(avatarUrl: "")))
    }
}
