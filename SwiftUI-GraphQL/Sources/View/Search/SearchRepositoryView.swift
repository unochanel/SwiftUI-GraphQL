import SwiftUI

struct SearchRepositoryView: View {
    @StateObject var queryViewModel = QueryViewModel<SearchQuery>()
    @State var query: String = ""

    var body: some View {
        NavigationView {
            VStack {
                SearchRepositoryBar(query: $query, action: {
                    queryViewModel.fetch(query: .init(first: 20, query: query, type: .repository))
                })
                if let nodes = queryViewModel.data?.search.nodes {
                    SearchRepositoryListView(repositoryList: nodes)
                }
                Spacer()
            }
            .navigationTitle("Repository")
        }
    }
}

struct SearchRepositoryView_Previews: PreviewProvider {
    static var previews: some View {
        SearchRepositoryView(query: "")
    }
}
