import SwiftUI

#if os(iOS) || os(macOS)
  import Inject
#endif

struct ContentView: View {
  var body: some View {
    VStack {
      Text("Hello World")
        .padding()
        .background(Color.red)
        .border(.blue)
      Button("Press me") {
        print("Button pressed")
      }
    }
    #if os(iOS) || os(macOS)
    .enableInjection()
    #endif
  }

  #if os(iOS) || os(macOS)
    @ObserveInjection var inject
  #endif
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
