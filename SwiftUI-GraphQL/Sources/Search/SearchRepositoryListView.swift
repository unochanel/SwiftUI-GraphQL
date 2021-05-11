import SwiftUI

struct SearchRepositoryListView: View {
    var body: some View {
        List(0..<20) { _ in
            SearchRepositoryRow()
        }
        .listStyle(PlainListStyle())
    }
}

struct SearchRepositoryListView_Previews: PreviewProvider {
    static var previews: some View {
        SearchRepositoryListView()
    }
}
