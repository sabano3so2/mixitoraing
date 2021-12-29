import Foundation

struct Repo: Identifiable {
    var id: Int
    var name: String
    var owner: User
    var description: String     //これが追加された（説明文と星の数）
    var stargazersCount: Int
}
