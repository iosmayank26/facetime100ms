//
//  ContactListCell.swift
//  Facetime100ms
//
//  Created by Mayank Gupta on 09/11/21.
//

import SwiftUI

struct ContactListCell: View {
    var user: UserModel
    var body: some View {
        HStack(spacing: 20) {
            Image(user.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70, alignment: .center)
                .clipShape(Circle())
            Text(user.name)
                .bold()
        }
        .padding()
    }
}
