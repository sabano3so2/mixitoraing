import SwiftUI

struct RepoDetailView: View {
    let repo: Repo      // Repo をプロパティとして宣言する
    
    var body: some View {
        ScrollView {
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Image("GitHubMark")
                            .resizable()
                            .frame(width: 16.0, height: 16.0)
                        Text(repo.owner.name)
                            .font(.caption)
                    }
                    
                    Text(repo.name)
                        .font(.body)
                        .fontWeight(.bold)
                                    
                    if let description = repo.description {
                        Text(description)
                            .padding(.top, 4)
                    }
                    
                    HStack {
                        Image(systemName: "star")
                        Text("\(repo.stargazersCount) stars")
                    }
                    .padding(.top, 8)
                    Spacer()
                }
                Spacer()
            }
            .padding(8)
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct RepoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RepoDetailView(repo: .mock1)
    }
}
