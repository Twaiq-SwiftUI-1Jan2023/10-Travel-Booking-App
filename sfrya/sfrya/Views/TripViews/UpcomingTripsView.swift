import SwiftUI

struct UpcomingTripsView: View {
    @State var reviewArea : String = ""
    @Binding var selectedTab : Int
    var body: some View {
        ZStack{ //UI Container start
            //Background Color start
            LinearGradient(gradient: Gradient(colors: [Color("Bg2Color"),Color("Bg1Color")])
                           , startPoint: .bottom, endPoint: .top)
            .ignoresSafeArea(.all)
            //Background Color end
            VStack{ //content start
                VStack{ //navigation bar start
                    HStack{
                        Spacer()
                        HStack{
                            Spacer()
                            Text("رحلاتي")
                                .font(.title3)
                                .padding(.leading,50)
                                .padding(.top)
                            Spacer()
                            Button {
                            } label: {
                                Image(systemName: "chevron.forward.square")
                                    .font(.title3)
                                    .padding(.top)
                            }
                            .padding()
                            
                        }
                        .padding()
                        Spacer()
                    }
                }
                .foregroundColor(.white)
                .background(Color("Bg1Color")).ignoresSafeArea()                //navigation bar end
                VStack{ //trip filter start
                    HStack{
                        VStack{
                            Button {
                            } label: {
                                Text("الملغاة")
                            }
                        }
                        .frame(width: screenWidth*0.3, height: screenHeight*0.1)
                        VStack{
                            Button {
                                selectedTab = 8
                            } label: {
                                Text("المكتملة")
                            }
                        }
                        .frame(width: screenWidth*0.3, height: screenHeight*0.1)
                        VStack{
                            Button {
                            } label: {
                                Text("القادمة")
                                    .foregroundColor(.white)
                            }
                        }
                        .frame(width: screenWidth*0.3, height: screenHeight*0.1)
                        .background(Color("Bg1Color"))
                    }
                    .frame(width: screenWidth*0.9, height: screenHeight*0.1)
                    .background(
                        Color("Bg2Color"))
                    .cornerRadius(16)
                }
                //trip filter end
                VStack{ //trip list start
                    ScrollView(.vertical,showsIndicators: true){
                        VStack(spacing: 20){
                            ForEach(trips, id: \.id){ trip in
                                HStack{
                                    VStack{
                                        VStack{
                                            Text(trip.name)
                                        }
                                        Spacer()
                                        VStack{
                                            HStack{
                                                VStack{
                                                    Text("تاريخ الخروج")
                                                        .padding(.bottom)
                                                    Text(trip.checkOutDate)
                                                }
                                                Divider()
                                                VStack{
                                                    Text("تاريخ الدخول")
                                                        .padding(.bottom)
                                                    Text(trip.checkInDate)
                                                }
                                                
                                            }
                                        }
                                        .font(.footnote)
                                        Spacer()
                                        VStack{
                                            HStack{
                                                VStack{
                                                    Button {
                                                    } label: {
                                                        Text("الاتجاهات")
                                                            .font(.caption2)
                                                        Image(systemName: "mappin.and.ellipse")
                                                    }
                                                    
                                                }
                                                VStack{
                                                    Button {
                                                    } label: {
                                                        Text("للمساعدة")
                                                            .font(.caption2)
                                                        Image(systemName: "phone.bubble.left.fill")
                                                    }
                                                }
                                            }
                                            
                                        }
                                        .font(.footnote)
                                    }
                                    VStack{
                                        Image(trip.imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .cornerRadius(16)
                                            .frame(width: screenWidth/2.4, height: screenHeight/5)
                                            .clipped()
                                    }
                                }
                                .padding()
                                .background()
                            }
                            .cornerRadius(32)
                        }
                    }
                }
                .padding()
                //trip list end
                
            } //content end
            
            
        } //UI Container end
    }
}
