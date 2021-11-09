//
//  ContactListView.swift
//  Facetime100ms
//
//  Created by Mayank Gupta on 09/11/21.
//

import SwiftUI

struct ContactListView: View {
    @State var contacts = [UserModel(image: "girl", name: "Krystal"), UserModel(image: "girl", name: "Krystal"), UserModel(image: "girl", name: "Krystal")]
    
    var body: some View {
        NavigationView {
            List(self.$contacts, rowContent: {
                contact in
                NavigationLink(destination: FacetimeView(), label: {
                    ContactListCell(user: contact.wrappedValue)
                })
            })
                .navigationTitle("Facetime Clone")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}
