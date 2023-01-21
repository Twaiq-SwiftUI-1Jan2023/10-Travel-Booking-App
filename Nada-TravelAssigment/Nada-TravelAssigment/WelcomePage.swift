

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        ZStack{
            Color("c1").ignoresSafeArea()
            // Image("img4").ignoresSafeArea()
            
            VStack{
                
                Text("Let's Explore the World")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .bold()
                
                HStack{
                    Image(systemName: "location").foregroundColor(.white)
                    Text("Riyadh")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    
                }.padding(.trailing , 260)
                ZStack{
                    RoundedRectangle(cornerRadius: 80)
                        .fill(Color(UIColor.secondarySystemBackground)).ignoresSafeArea()
                    VStack{
                      
                        HStack{
                            VStack{
                                Image("map").resizable().frame(width: 50 , height: 40)
                                Text("Trips")
                            }.padding()
                            VStack{
                                Image("hotel").resizable().frame(width: 50 , height: 40)
                                Text("Hotels")
                            }.padding()
                            
                            VStack{
                                Image("flight").resizable().frame(width: 50 , height: 40)
                                Text("Flight")
                            }.padding()
                            VStack{
                                Image("offer").resizable().frame(width: 50 , height: 40)
                                Text("Offers")
                            }.padding()
                        }//end of Hstack
                        Text("Popula offer").font(.title2).bold().padding(.trailing,250)
                        HStack{
                            Image("offer1").resizable().frame(width: 120 , height: 100)
                            Image("offer2").resizable().frame(width: 120 , height: 100)
                            Image("offer3").resizable().frame(width: 120 , height: 100)
                        }//end hstack of offer
                        Text("Hotel Near You").font(.title2).bold().padding(.trailing,210)
                        
                        HStack{
                            VStack{
                                Image("hotel1").resizable().frame(width: 220 , height: 150)
                                Text("Fairmont Hotel").bold()
                                HStack{
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star")
                                    Text("1200SR")
                                }.padding(.bottom , 90)
                                
                            }
                            
                            VStack{
                                Image("hotel2").resizable().frame(width: 220 , height: 150)
                                Text("marriott Hotel").bold()
                                HStack{
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star")
                                    Image(systemName: "star")
                                    Text("1900SR").padding(.trailing)
                                }.padding(.bottom , 90)
                                
                            }//end of v mariot
                            
                        }
                        HStack{
                            VStack{
                                Image(systemName: "house")
                                Text("home")
                            }.padding()
                            
                            VStack{
                                Image(systemName: "person")
                                Text("Profil")
                            }.padding()
                            
                            VStack{
                                Image(systemName: "heart")
                                Text("Fav")
                            }.padding()
                            
                            VStack{
                                Image(systemName: "cart")
                                Text("cart")
                            }.padding()
                        }
                    } // end of v round
                } // end of z roun
            }// ens of v
        }//end of z
    }
}

struct WelcomePage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePage()
    }
}
