import SwiftUI

struct MainView: View {
    @State var selectedTab : Int = 0
    var body: some View {
        TabView(selection: $selectedTab){
            LoginView()
                .tabItem {
                    Image(systemName: "person")
                    Text("حسابي")
                }
                .tag(4)
            Text("Offers Tab")
                .tabItem{
                    Image(systemName: "wand.and.stars.inverse")
                    Text("العروض")
                }
                .tag(3)
            TripsView()
                .tabItem{
                    Image(systemName: "suitcase.rolling")
                    Text("الرحلات")
                }
                .tag(2)
            Text("Search Tab")
                .tabItem{
                    Image(systemName: "magnifyingglass")
                    Text("ابحث")
                }
                .tag(1)
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("الرئيسية")
                }
                .tag(0)
        }
        .accentColor(Color("Bg1Color"))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

