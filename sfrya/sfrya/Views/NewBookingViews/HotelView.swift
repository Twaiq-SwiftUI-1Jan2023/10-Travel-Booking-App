import SwiftUI
struct HotelView: View {
    @State var selectedTab : Int = 10
    var body: some View{
        TabView(selection: $selectedTab) {
            HotelDetailsView(selectedTab: $selectedTab)
                .tabItem {
                }
                .tag(10)
            BookingView(selectedTab: $selectedTab)
                .tabItem {
                }
                .tag(11)
        }
    }
}
struct HotelView_Previews: PreviewProvider {
    static var previews: some View {
        HotelView()
    }
}
