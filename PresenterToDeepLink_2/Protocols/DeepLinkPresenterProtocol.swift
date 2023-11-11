import SwiftUI

protocol DeepLinkPresenterProtocol {
    var selectedTab:Tab { get set }
    func handleDeepLink(url: URL)
}
