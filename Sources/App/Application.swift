import SwiftUI

#if os(iOS) || os(macOS)
  @_exported import Inject
#endif

@main
struct Application: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
  }
}
