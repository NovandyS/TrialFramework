import XCTest
import SwiftUI
@testable import TrialFramework

final class TrialFrameworkTests: XCTestCase {
    @State var text: String
    
    init(text: String) {
        self.text = text
        super.init()
    }
    
    func testExample() {
        var body: some View {
            TrialFramework.MainTextField(placeholder: "Testing", text: $text)
        }
    }
    
    static var allTests = [
        ("testExample", testExample),
    ]
}
