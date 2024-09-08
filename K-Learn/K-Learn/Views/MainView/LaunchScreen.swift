//
//  LaunchScreen.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import SwiftUI

struct LaunchScreen: View {
    @State private var isRocking = false
    var body: some View {
        ZStack {
            if isRocking {
                MainView() // Ana ekrana geçiş
            } else {
                Image("dog") // Kullanmak istediğiniz logo görüntüsünün adını ekleyin
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 80)
                    .onAppear {
                        // 3 saniye sonra ana ekrana geçiş
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            withAnimation {
                                self.isRocking.toggle()
                            }
                        }
                    }
            }
        }.navigationBarBackButtonHidden(true)
    }
}
struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
