//
//  MainView.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import SwiftUI

struct  MainView: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var isRocking = false
    @State private var isRectangleVisible = false
    @State private var profileImage: Image?
    @State private var navigateToProfile = false
    @State private var isMenuVisible = false
    @StateObject var authViewModel = AuthViewModel()
    @StateObject var timerViewModel = TimerViewModel.shared
    @State private var showAlert = false
    @StateObject var streakCount = StreakCount.shared
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color.yellow
                    .ignoresSafeArea()
                
                Circle()
                    .scale(2.1)
                    .foregroundColor(colorScheme == .dark ? .black : Color.white.opacity(0.5))
                
                Circle()
                    .scale(2)
                    .foregroundColor(colorScheme == .dark ? .black : .white)
                
                ScrollView{
                    
                    VStack {
                        
                        VStack {
                            
                            
                            
                            HStack {
                                Text("J-Learn")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.primary)
                                    .padding()
                                
                                
                                Spacer()
                                Image("dog")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 150, height: 80)
                                    .rotationEffect(Angle(degrees: isRocking ? 10 : -10))
                                    .onAppear {
                                        withAnimation(Animation.easeInOut(duration: 0.9).repeatForever(autoreverses: true)) {
                                            self.isRocking.toggle()
                                        }
                                    }
                            }
                            
                            .padding(.leading)
                            
                            
                            
                        }
                        
                        VStack{
                            /*
                            VStack {
                                
                                    HStack {
                                        ZStack {
                                            HStack {
                                                ZStack {
                                                    RoundedRectangle(cornerRadius: 50)
                                                        .frame(width: 380, height: 70)
                                                        .foregroundColor(.brown)
                                                    
                                                    
                                                    ZStack {
                                                        RoundedRectangle(cornerRadius: 30)
                                                            .frame(width: 350, height: 60)
                                                            .foregroundColor(.white)
                                                        
                                                        VStack {
                                                            Text("First Section")
                                                                .frame(width: 200)
                                                                .font(.title2)
                                                                .fontWeight(.semibold)
                                                                .foregroundColor(.black.opacity(0.7))
                                                            Text("Learn how to introduce yourself in japanese by phrases")
                                                                .multilineTextAlignment(.center)
                                                                .frame(width: 325)
                                                                .font(.caption)
                                                                .fontWeight(.semibold)
                                                                .foregroundColor(.gray)
                                                        }
                                                        
                                                    }
                                                    
                                                    
                                                    
                                                }
                                            }
                                            
                                        }
                                    }
                                
                            }.padding(.top)
                                .padding(.bottom)
                            
                            
                            */
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            VStack {
                                NavigationLink(destination: GreetingsView()) {
                                    // Tıklanınca GreetingsView'e giden bir navigasyon bağlantısı
                                    HStack {
                                        ZStack {
                                            HStack {
                                                ZStack {
                                                    RoundedRectangle(cornerRadius: 50)
                                                        .frame(width: 320, height: 130)
                                                        .foregroundColor(.gray.opacity(0.3))
                                                    
                                                    
                                                    ZStack {
                                                        RoundedRectangle(cornerRadius: 30)
                                                            .frame(width: 240, height: 90)
                                                            .foregroundColor(.white)
                                                            .padding(.leading, 60)
                                                        
                                                        Text("Basic Greetings and Introductions")
                                                            .frame(width: 200)
                                                            .font(.title3)
                                                            .fontWeight(.semibold)
                                                            .padding(.leading, 100)
                                                            .foregroundColor(.black)
                                                    }
                                                    
                                                    Circle()
                                                        .foregroundColor(.bronze.opacity(0.9))
                                                        .frame(width: 100)
                                                        .offset(x:-95)
                                                        
                                                    
                                                }
                                            }
                                            Text("👋🏻")
                                                .font(.system(size: 45))
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                                .offset(x:-95)
                                        }
                                    }.padding(.leading, 70)
                                }
                            }.padding(.top)
                                .padding(.bottom)
                            
                            
                            
                            VStack {
                                NavigationLink(destination: NumbersView()) {
                                    HStack {
                                        ZStack {
                                            HStack {
                                                ZStack {
                                                    RoundedRectangle(cornerRadius: 50)
                                                        .frame(width: 320, height: 130)
                                                        .foregroundColor(.gray.opacity(0.3))
                                                    
                                                    
                                                    ZStack {
                                                        RoundedRectangle(cornerRadius: 30)
                                                            .frame(width: 240, height: 90)
                                                            .foregroundColor(.white)
                                                            .padding(.trailing, 60)
                                                        Text("Numbers and Basic Quantities")
                                                            .frame(width: 200)
                                                            .font(.title3)
                                                            .fontWeight(.semibold)
                                                            .padding(.leading, -95)
                                                        .foregroundColor(.black)
                                                    }
                                                    
                                                    Circle()
                                                        .foregroundColor(.bronze.opacity(0.9))
                                                        .frame(width: 100)
                                                        .offset(x: 95)
                                                        
                                                }
                                            }
                                            VStack {
                                                Text("🔢")
                                                    .font(.system(size: 45))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .offset(x: 95)
                                                
                                            }
                                        }
                                    }.padding(.trailing, 70)
                                }
                            }.padding(.top)
                                .padding(.bottom)
                            
                            
                            
                            
                            VStack {
                                NavigationLink(destination: DailyRoutinesView()) {
                                    HStack {
                                        ZStack {
                                            HStack {
                                                ZStack {
                                                    RoundedRectangle(cornerRadius: 50)
                                                        .frame(width: 320, height: 130)
                                                        .foregroundColor(.gray.opacity(0.3))
                                                    
                                                    
                                                    ZStack {
                                                        RoundedRectangle(cornerRadius: 30)
                                                            .frame(width: 240, height: 90)
                                                            .foregroundColor(.white)
                                                            .padding(.leading, 60)
                                                        Text("Daily Routines")
                                                            .frame(width: 200)
                                                            .font(.title2)
                                                            .fontWeight(.semibold)
                                                            .padding(.leading, 100)
                                                        .foregroundColor(.black)
                                                    }
                                                    
                                                    Circle()
                                                        .foregroundColor(.bronze.opacity(0.9))
                                                        .frame(width: 100)
                                                        .offset(x:-95)
                                                        
                                                    
                                                }
                                            }
                                            VStack {
                                                Text("🏃🏼‍➡️")
                                                    .font(.system(size: 65))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .offset(x:-95)
                                                
                                            }
                                        }
                                    }.padding(.leading,70)
                                }
                            }.padding(.top)
                                .padding(.bottom)
                            
                            
                            
                            VStack {
                                NavigationLink(destination: QuestionsView()) {
                                    HStack {
                                        ZStack {
                                            HStack {
                                                ZStack {
                                                    RoundedRectangle(cornerRadius: 50)
                                                        .frame(width: 320, height: 130)
                                                        .foregroundColor(.gray.opacity(0.3))
                                                    
                                                    
                                                    ZStack {
                                                        RoundedRectangle(cornerRadius: 30)
                                                            .frame(width: 240, height: 90)
                                                            .foregroundColor(.white)
                                                            .padding(.trailing, 60)
                                                        Text("Basic Question Words")
                                                            .frame(width: 200)
                                                            .font(.title2)
                                                            .fontWeight(.semibold)
                                                            .padding(.leading, -95)
                                                        .foregroundColor(.black)
                                                    }
                                                    
                                                    Circle()
                                                        .foregroundColor(.bronze.opacity(0.9))
                                                        .frame(width: 100)
                                                        .offset(x: 95)
                                                       
                                                    
                                                }
                                            }
                                            VStack {
                                                Text("🤨")
                                                    .font(.system(size: 48))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .offset(x: 95)
                                            }
                                        }
                                    }.padding(.trailing, 70)
                                }
                            }
                                .padding(.bottom)
                            
                            
                            
                            VStack {
                                NavigationLink(destination: DirectionsView()) {
                                    HStack {
                                        ZStack {
                                            HStack {
                                                ZStack {
                                                    RoundedRectangle(cornerRadius: 50)
                                                        .frame(width: 320, height: 130)
                                                        .foregroundColor(.gray.opacity(0.3))
                                                    
                                                    
                                                    ZStack {
                                                        RoundedRectangle(cornerRadius: 30)
                                                            .frame(width: 240, height: 90)
                                                            .foregroundColor(.white)
                                                            .padding(.leading, 60)
                                                        Text("Directions and Basic Location Expressions")
                                                            .frame(width: 200)
                                                            .font(.title3)
                                                            .fontWeight(.semibold)
                                                            .padding(.leading, 100)
                                                        .foregroundColor(.black)
                                                    }
                                                    
                                                    Circle()
                                                        .foregroundColor(.bronze.opacity(0.9))
                                                        .frame(width: 100)
                                                        .offset(x:-97)
                                                       
                                                    
                                                }
                                            }
                                            VStack {
                                                Image(systemName: "arrow.up.arrow.down")
                                                    .font(.system(size: 45))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .offset(x: -95)
                                            }

                                        }
                                    }.padding(.leading,70)
                                }
                            }.padding(.top)
                                .padding(.bottom)
                            
                           
                            
                            
                            
                            
                            VStack {
                                NavigationLink(destination: FamilyView()) {
                                    HStack {
                                        ZStack {
                                            HStack {
                                                ZStack {
                                                    RoundedRectangle(cornerRadius: 50)
                                                        .frame(width: 320, height: 130)
                                                        .foregroundColor(.gray.opacity(0.3))
                                                    
                                                    
                                                    ZStack {
                                                        RoundedRectangle(cornerRadius: 30)
                                                            .frame(width: 240, height: 90)
                                                            .foregroundColor(.white)
                                                            .padding(.trailing, 60)
                                                        Text("Family Members and Relationship Expressions")
                                                            .frame(width: 200)
                                                            .font(.title3)
                                                            .fontWeight(.semibold)
                                                            .padding(.leading, -95)
                                                        .foregroundColor(.black)
                                                    }
                                                    
                                                    Circle()
                                                        .foregroundColor(.bronze.opacity(0.9))
                                                        .frame(width: 100)
                                                        .offset(x: 95)
                                                      
                                                    
                                                }
                                            }
                                            VStack {
                                                Text("🧑🏼‍🍼")
                                                    .font(.system(size: 65))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .offset(x: 95)
                                            }
                                        }
                                    }.padding(.trailing, 70)
                                }
                            }.padding(.top)
                                .padding(.bottom)
                            
                            
                            
                            
                            VStack {
                                NavigationLink(destination: FoodsView()) {
                                    HStack {
                                        ZStack {
                                            HStack {
                                                ZStack {
                                                    RoundedRectangle(cornerRadius: 50)
                                                        .frame(width: 320, height: 130)
                                                        .foregroundColor(.gray.opacity(0.3))
                                                    
                                                    
                                                    ZStack {
                                                        RoundedRectangle(cornerRadius: 30)
                                                            .frame(width: 240, height: 90)
                                                            .foregroundColor(.white)
                                                            .padding(.leading, 60)
                                                        Text("Food and Drink Experience")
                                                            .frame(width: 200)
                                                            .font(.title3)
                                                            .fontWeight(.semibold)
                                                            .padding(.leading, 100)
                                                        .foregroundColor(.black)
                                                    }
                                                    
                                                    Circle()
                                                        .foregroundColor(.bronze.opacity(0.9))
                                                        .frame(width: 100)
                                                        .offset(x:-95)
                                                       
                                                    
                                                }
                                            }
                                            VStack {
                                                Text("🥘")
                                                    .font(.system(size: 65))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .offset(x: -95)
                                                
                                            }
                                        }
                                    }.padding(.leading,70)
                                }
                            }.padding(.top)
                                .padding(.bottom)
                            
                     
                            
                            
                            VStack {
                                NavigationLink(destination: ColorsAndClothesView()) {
                                    HStack {
                                        ZStack {
                                            HStack {
                                                ZStack {
                                                    RoundedRectangle(cornerRadius: 50)
                                                        .frame(width: 320, height: 130)
                                                        .foregroundColor(.gray.opacity(0.3))
                                                    
                                                    
                                                    ZStack {
                                                        RoundedRectangle(cornerRadius: 30)
                                                            .frame(width: 240, height: 90)
                                                            .foregroundColor(.white)
                                                            .padding(.trailing, 60)
                                                        Text("Basic Colors and Clothing Expressions")
                                                            .frame(width: 200)
                                                            .font(.title3)
                                                            .fontWeight(.semibold)
                                                            .padding(.leading, -95)
                                                        .foregroundColor(.black)
                                                    }
                                                    
                                                    Circle()
                                                        .foregroundColor(.bronze.opacity(0.9))
                                                        .frame(width: 100)
                                                        .offset(x: 95)
                                                      
                                                    
                                                }
                                            }
                                            VStack {
                                                Text("🧤")
                                                    .font(.system(size: 60))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .offset(x: 95)
                                            }
                                        }
                                    }.padding(.trailing, 70)
                                }
                            }.padding(.top)
                                .padding(.bottom)
                            
                            
                            
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                }
                /*
                 .overlay(
                 VStack{
                 Spacer()
                 ZStack {
                 RoundedRectangle(cornerRadius: 60)
                 .foregroundColor(.black.opacity(0.8))
                 .frame(width: 350, height: 43)
                 HStack{
                 NavigationLink(destination: ProfileView(profileImage: $profileImage)) {
                 Image(systemName: "person.circle")
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .frame(width: 30, height: 30)
                 .foregroundColor(.white)
                 .fontWeight(.semibold)
                 .padding(.leading, 110)
                 
                 }
                 Spacer()
                 /*ZStack {
                  Text("🔥\(streakCount.fireCount)")
                  .foregroundColor(.white)
                  .font(.title)
                  .fontWeight(.bold)
                  .rotationEffect(Angle(degrees: isRocking ? 0 : 0))
                  
                  }*/
                 
                 NavigationLink(destination: TimerView()) {
                 Image(systemName: "timer")
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .frame(width: 30, height: 30)
                 .foregroundColor(.white)
                 .fontWeight(.semibold)
                 
                 }
                 Spacer()
                 NavigationLink(destination: SettingsView()) {
                 Image(systemName: "gear")
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .frame(width: 32, height: 32)
                 .foregroundColor(.white)
                 .fontWeight(.semibold)
                 .padding(.trailing, 110)
                 
                 }
                 
                 }.padding()
                 }
                 }.padding(.bottom, -30)
                 )
                 }
                 }.environmentObject(streakCount)
                 .navigationBarBackButtonHidden(true)
                 
                 }
                 }
                 
                 
                 struct MainView_Previews: PreviewProvider {
                 static var previews: some View {
                 MainView()
                 .environmentObject(StreakCount())
                 .environmentObject(AuthViewModel())
                 }
                 }
                 
                 */
                
                /*
                .overlay(
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Button(action: {
                                isMenuVisible.toggle()
                            }) {
                                Image(systemName: "list.dash")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.white)
                                    .padding()
                            }
                            .background(Color.black)
                            .clipShape(Circle())
                            .padding()
                            .offset(x: 15, y: -40)
                            .sheet(isPresented: $isMenuVisible) {
                                SideMenuView(authViewModel: authViewModel)
                            }
                        }
                    }
                )*/
                
                
                .overlay(
                    VStack {
                        Spacer()
                        ZStack{
                            RoundedRectangle(cornerRadius: 50)
                                .frame(width: 300, height: 60)
                                .foregroundColor(.orange)
                                .shadow(radius: 10)
                            HStack {
                                          
                                           NavigationLink(destination: SideMenuView(authViewModel: authViewModel)) {
                                               // SideMenuView'e giden bir navigasyon bağlantısı
                                               Image(systemName: "person.circle")
                                                   .resizable()
                                                   .aspectRatio(contentMode: .fit)
                                                   .frame(width: 30, height: 30)
                                                   .foregroundColor(.white)
                                                   .fontWeight(.semibold)
                                                   .padding(.leading, 110)
                                              
                                           }
                                           Spacer()
                                           // İki simge arasına boşluk eklemek için boşluk
                                           NavigationLink(destination: UserListView()) {
                                               // UserListView'e giden bir navigasyon bağlantısı
                                               Image(systemName: "magnifyingglass.circle")
                                                   .resizable()
                                                   .aspectRatio(contentMode: .fit)
                                                   .frame(width: 32, height: 32)
                                                   .foregroundColor(.white)
                                                   .fontWeight(.semibold)
                                             
                                           }
                                           Spacer()
                                           // İki simge arasına boşluk eklemek için boşluk
                                           NavigationLink(destination: SettingsView()) {
                                               // SettingsView'e giden bir navigasyon bağlantısı
                                               Image(systemName: "gear")
                                                   .resizable()
                                                   .aspectRatio(contentMode: .fit)
                                                   .frame(width: 32, height: 32)
                                                   .foregroundColor(.white)
                                                   .fontWeight(.semibold)
                                                   .padding(.trailing, 110)
                                               
                                           }
                                       }
                                   }
                               }.offset(y: 30)
                )
                
                
                .onReceive(timerViewModel.timerCompleted) { _ in
                    showAlert = true
                }
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Congratulations!"),
                        message: Text("You reached your daily goal"),
                        dismissButton: .default(Text("OK")) {
                            streakCount.fireCount += 1
                        }
                    )
                }
                .navigationBarBackButtonHidden(true)
            }
        }
        .environmentObject(streakCount)
        .environmentObject(timerViewModel)
        .navigationBarBackButtonHidden(true)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(StreakCount())
            .environmentObject(AuthViewModel())
    }
}
