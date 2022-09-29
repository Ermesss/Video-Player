//
//  ContentView.swift
//  Video Player
//
//  Created by Ermanno Fissore on 29/09/2022.
//

import SwiftUI
import AVKit

struct ContentView: View {
    var body: some View {
        VStack {
            
            player().frame(height: UIScreen.main.bounds.height / 2.3)
            Spacer()
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
    struct player : UIViewControllerRepresentable {
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<player>) -> AVPlayerViewController {
            
            let controller = AVPlayerViewController()
            let url = "https://youtu.be/zGe6Dy-JRNI"
            let player1 = AVPlayer(url: URL(string: url)!)
            controller.player = player1
            return controller
        }
        
        func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<player>) {
            
        }
        
    }
}
