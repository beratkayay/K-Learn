//
//  AnimalsTestView.swift
//  K-Learn
//
//  Created by berat kaya on 11.03.2024.
//

import SwiftUI

struct FamilyView: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        NavigationView {
            ZStack {
                Color.yellow
                    .ignoresSafeArea()

                Circle()
                    .scale(2)
                    .foregroundColor(colorScheme == .dark ? .black : Color.white.opacity(0.5))

                Circle()
                    .scale(1.9)
                    .foregroundColor(colorScheme == .dark ? .black : .white)


                ZStack {
                    VStack {
                        
                        HStack {
                            
                            

                            Button(action: {
                                presentationMode.wrappedValue.dismiss() } )
                            {
                                Image(systemName: "arrow.backward.circle")
                                    .foregroundColor(.blue)
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    
                                    
                                    
                            }
    
                            

                            Text("Family")
                                .font(.title)
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        
                        NavigationLink(destination: Family0View()) {
                            HStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 350, height: 80)
                                        .foregroundColor(.brown.opacity(0.7))
                                        .shadow(color: .brown, radius: 10)

                                    HStack{
                                        ZStack {
                                            Circle()
                                                .frame(width: 60)
                                            .foregroundColor(.white)
                                            Text("1")
                                                .font(.largeTitle)
                                                .fontWeight(.bold)
                                                .foregroundColor(.gray)
                                        }
                                        Text("Unit 1")
                                            .font(.body)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                        Spacer()
                                    }.padding()
                                }
                                Spacer()
                            }
                        }


                        NavigationLink(destination: Family1View()) {
                            HStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 350, height: 80)
                                        .foregroundColor(.brown.opacity(0.7))
                                        .shadow(color: .brown, radius: 10)

                                    HStack{
                                        ZStack {
                                            Circle()
                                                .frame(width: 60)
                                            .foregroundColor(.white)
                                            Text("2")
                                                .font(.largeTitle)
                                                .fontWeight(.bold)
                                                .foregroundColor(.gray)
                                        }
                                        Text("Unit 2")
                                            .font(.body)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                        Spacer()
                                    }.padding()
                                }
                                Spacer()
                            }
                        }

     
                        NavigationLink(destination: Family2View()) {
                            HStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 350, height: 80)
                                        .foregroundColor(.brown.opacity(0.7))
                                        .shadow(color: .brown, radius: 10)

                                    HStack{
                                        ZStack {
                                            Circle()
                                                .frame(width: 60)
                                            .foregroundColor(.white)
                                            Text("3")
                                                .font(.largeTitle)
                                                .fontWeight(.bold)
                                                .foregroundColor(.gray)
                                        }
                                        Text("Unit 3")
                                            .font(.body)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                        Spacer()
                                    }.padding()
                                }
                                Spacer()
                            }
                        }

                        
                        Spacer()
                    }.padding()
                }.padding()
            }
            
        }.navigationBarBackButtonHidden(true)
    }
}


#Preview {
    FamilyView()
}
