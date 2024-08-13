import Foundation
import Slipstream

struct HelloWorld: View {
  var body: some View {
    Text("Hello, world!")
  }
}

let sitemap: Sitemap = [
  "index.html": HelloWorld()
]

// Assumes this file is located in a Sources/ sub-directory of a Swift package.
let projectURL = URL(filePath: #filePath)
  .deletingLastPathComponent()
  .deletingLastPathComponent()

let outputURL = projectURL.appending(path: "site")

try renderSitemap(sitemap, to: outputURL)
