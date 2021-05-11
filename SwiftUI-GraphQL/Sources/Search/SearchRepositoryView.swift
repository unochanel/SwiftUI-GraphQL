import SwiftUI

struct SearchRepositoryView: View {
    var body: some View {
        NavigationView {
            VStack {
                SearchRepositoryBar(text: "text", action: {})
                SearchRepositoryListView()
            }
            .navigationTitle("Repository")
        }
    }
}

struct SearchRepositoryView_Previews: PreviewProvider {
    static var previews: some View {
        SearchRepositoryView()
    }
}
