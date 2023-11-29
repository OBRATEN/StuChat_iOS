//
//  LoaderManager.swift
//  StuChat_iOS
//
//  Created by Arthur Garagulya on 21.11.2023.
//

import Foundation
import SwiftUI

class LoaderManager: ObservableObject {
    
    enum LoadingStateType: Equatable {
        case hidden
        case showing
    }
    
    @Published var loadingState: LoadingStateType = .hidden
}

struct LoadingView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                ProgressView()
                    .controlSize(.large)
                    .scaleEffect(1.5)
                    .tint(.blue)
            }.background {
                RoundedRectangle(cornerRadius: 18)
                    .fill(Material.ultraThin.opacity(0.8))
                    .frame(width: 100, height: 100)
            }
            
        }
    }
}
