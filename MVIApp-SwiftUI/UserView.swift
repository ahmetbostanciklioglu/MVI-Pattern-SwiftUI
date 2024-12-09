import SwiftUI

struct UserView: View {
    @ObservedObject var viewModel: UserViewModel
    
    var body: some View {
        VStack {
            switch viewModel.state {
            case .loading:
                ProgressView("Loading...")
                    .progressViewStyle(CircularProgressViewStyle())
            case .success(let user):
                Text("User Name: \(user.name)")
            case .failure(let error):
                Text("Error: \(error.localizedDescription)")
            }
        }
        .onAppear {
            viewModel.intent.send(.loadUser(id: 1))
        }
    }
}


