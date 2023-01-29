//
//  ContentView.swift
//  The Word Card Game
//
//  Created by Samuel Dalafiari on 27/01/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = WordGameViewModel()

    var body: some View {
        ZStack {
            Image(vm.backgroundImage)
                .resizable()
                .ignoresSafeArea()

            VStack {
                Spacer()
                Image("logo")
                Spacer()

                HStack {
                    Spacer()
                    Image(vm.playerCard)
                        .transition(.opacity.animation(.default))
                    Spacer()
                    Image(vm.cpuCard)
                        .transition(.opacity.animation(.default))

                    Spacer()
                }
                Spacer()

                Button {
                    vm.deal()
                } label: {
                    Image("button")
                }

                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(vm.playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(vm.cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
