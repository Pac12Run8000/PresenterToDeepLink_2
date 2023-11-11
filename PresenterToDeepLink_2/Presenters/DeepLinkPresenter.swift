import SwiftUI

class DeepLinkPresenter: ObservableObject, DeepLinkPresenterProtocol {
    @Published var selectedTab: Tab = .home

    func handleDeepLink(url: URL) {
        switch url.host {
        case "card":
            selectedTab = .card
        case "profile":
            selectedTab = .profile
        case "home":
            selectedTab = .home
        default:
            break
        }
    }
}
