import SwiftUI

struct LoginView: View {
    @State var selectedTab : Int = 5
    var body: some View {
        TabView(selection: $selectedTab) {
            SigninView(selectedTab: $selectedTab)
                .tabItem {
                }
                .tag(5)
            SignupView(selectedTab: $selectedTab)
                .tabItem {
                }
                .tag(6)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
