import Foundation
import Combine

class UserViewModel: ObservableObject {
    @Published var state: UserState = .loading
    
    private var userService: UserService
    private var cancellable = Set<AnyCancellable>()
    
    let intent = PassthroughSubject<UserIntent, Never>()
    
    init(userService: UserService) {
        self.userService = userService
        
        intent.sink { [weak self] action in
            self?.handleIntent(action)
        }
        .store(in: &cancellable)
    }
    
    private func handleIntent(_ intent: UserIntent) {
        switch intent {
        case .loadUser(let id):
            self .state = .loading
            let result = userService.fetchUser(id: id)
            switch result {
            case .success(let user):
                self.state = .success(user)
            case .failure(let error):
                self.state = .failure(error)
            }
        }
    }
}


