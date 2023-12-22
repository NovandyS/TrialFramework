import SwiftUI

public struct MainTextField: View {

    @State var placeholder: String
    @Binding var text: String
    
    public init(placeholder: String, text: Binding<String>) {
        self._placeholder = State(initialValue: placeholder)
        self._text = text
    }
    
    public var body: some View {
        HStack {
            Image(systemName: "person")
                .foregroundColor(.blue)
            TextField(placeholder, text: $text)
                .font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(.blue)
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.blue, lineWidth: 1)
        )
    }
}

public struct MbbButton: View {
    
    @State var btnLabel: String
    
    public init(action: @escaping () -> Void, btnLabel: String) {
        self.btnLabel = btnLabel
    }
    
    public var body: some View {
        Button(action: {}) {
            Text(btnLabel)
                .font(.system(size: 20))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding()
        }
        .foregroundColor(.white)
        .background(Color.blue)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        
    }
}
