import SwiftUI

struct ContentView: View {
    @EnvironmentObject var presenter: DeepLinkPresenter
        var body: some View {
            TabView(selection: $presenter.selectedTab) {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                    .tag(Tab.home)
                
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.crop.circle")
                    }
                    .tag(Tab.profile)
                
                CardView()
                    .tabItem {
                        Label("Card", systemImage: "creditcard")
                    }
                    .tag(Tab.card)
            }
        }
}

#Preview {
    ContentView()
}
