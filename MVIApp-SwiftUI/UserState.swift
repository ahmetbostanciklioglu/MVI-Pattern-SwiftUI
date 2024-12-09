import Foundation

enum UserState {
    case loading
    case success(User)
    case failure(UserError)
}
