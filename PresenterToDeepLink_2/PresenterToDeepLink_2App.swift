import SwiftUI

@main
struct PresenterToDeepLink_2App: App {
   @StateObject var presenter = DeepLinkPresenter()

   var body: some Scene {
       WindowGroup {
           ContentView()
               .environmentObject(presenter)
               .onOpenURL { url in
                   presenter.handleDeepLink(url: url)
                   ///
               }
       }
   }
}
