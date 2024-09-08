//
//  PlacesTestView.swift
//  K-Learn
//
//  Created by berat kaya on 14.03.2024.
//

import SwiftUI

struct FoodsView: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var navigateToMainView = false
  

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
    
                            

                            Text("Places")
                                .font(.title)
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        
                        NavigationLink(destination: Foods0View()) {
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
                                            Text("☕️")
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


                        NavigationLink(destination:Foods1View()) {
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
                                            Text("🍿")
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

     
                        NavigationLink(destination: Foods2View()) {
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
                                            Text("🏋🏼")
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
            
            .navigationBarHidden(true)
        }.navigationBarHidden(true)
    }
}


#Preview {
    FoodsView()
}
