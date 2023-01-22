import SwiftUI

struct TripsView: View {
    @State var selectedTab : Int = 8
    var body: some View {
        TabView(selection: $selectedTab) {
            UpcomingTripsView(selectedTab: $selectedTab)
                .tabItem {
                }
                .tag(7)
            CompletedTripsView(selectedTab: $selectedTab)
                .tabItem {
                }
                .tag(8)
            AddReviewView(selectedTab: $selectedTab)
                .tabItem {
                }
                .tag(9)
        }
    }
}
