//
//  FacetimeView.swift
//  Facetime100ms
//
//  Created by Mayank Gupta on 09/11/21.
//

import SwiftUI

struct FacetimeView: View {
    
    @State var isMuted: Bool = false
    @State var videoIsShowing: Bool = true
    
    var body: some View {
        Spacer()
        videoOptions
                .padding(.bottom, 10)
       
    }
    
    var videoOptions: some View {
        HStack(spacing: 20) {
            Spacer()
            Button {
                
            } label: {
                Image(systemName: videoIsShowing ? "video.fill" : "video.slash.fill")
                    .frame(width: 60, height: 60, alignment: .center)
                    .background(Color.white)
                    .foregroundColor(Color.black)
                    .clipShape(Circle())
            }
            
            Button {
                
            } label: {
                Image(systemName: "phone.down.fill")
                    .frame(width: 60, height: 60, alignment: .center)
                    .background(Color.red)
                    .foregroundColor(Color.white)
                    .clipShape(Circle())
            }
            
            Button {
                
            } label: {
                Image(systemName: isMuted ? "mic.slash.fill" : "mic.fill")
                    .frame(width: 60, height: 60, alignment: .center)
                    .background(Color.white)
                    .foregroundColor(Color.black)
                    .clipShape(Circle())
            }
            Spacer()
        }
    }
    
}

struct FacetimeView_Previews: PreviewProvider {
    static var previews: some View {
        FacetimeView()
    }
}
