import SwiftUI

struct SearchRepositoryListView: View {
    let repositoryList: [SearchQuery.Data.Search.Node?]

    var body: some View {
        List(repositoryList, id: \.?.asRepository?.fragments.repositoryDetail.id) { repository in
            if let repo = repository?.asRepository {
                SearchRepositoryRow(repository: repo.fragments.repositoryDetail)
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
