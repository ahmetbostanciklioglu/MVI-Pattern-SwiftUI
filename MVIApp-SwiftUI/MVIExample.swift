import SwiftUI


import SwiftUI

@main
struct MVIExample: App {
    var body: some Scene {
        WindowGroup {
            UserView(viewModel: UserViewModel(userService: UserServiceImpl.shared))
        }
    }
}
