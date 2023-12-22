//
//  SwiftUIView.swift
//  
//
//  Created by cts-c on 22/12/23.
//

import SwiftUI

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

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MbbButton(action: {}, btnLabel: "Testing")
    }
}
