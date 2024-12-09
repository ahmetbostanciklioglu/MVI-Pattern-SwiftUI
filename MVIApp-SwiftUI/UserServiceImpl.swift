import Foundation

class UserServiceImpl: UserService {
    
    static let shared = UserServiceImpl()
    
    private init() { }
    
    func fetchUser(id: Int) -> Result<User, UserError> {
        if id == 1 {
            return .success(User(id: 1, name: "John Doe"))
        } else {
            return .failure(.notFound)
        }
    }
}
