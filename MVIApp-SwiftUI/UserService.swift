import Foundation


protocol UserService {
    func fetchUser(id: Int) -> Result<User, UserError>
}


