import SwiftUI

struct SearchRepositoryListView: View {
    let repositoryList: [SearchQuery.Data.Search.Node?]

    var body: some View {
        List(repositoryList, id: \.?.asRepository?.id) { repository in
            if let repo = repository?.asRepository {
                SearchRepositoryRow(repository: repo)
            }
        }
        .listStyle(PlainListStyle())
    }
}

struct SearchRepositoryListView_Previews: PreviewProvider {
    static var previews: some View {
        SearchRepositoryListView(repositoryList: [])
    }
}
