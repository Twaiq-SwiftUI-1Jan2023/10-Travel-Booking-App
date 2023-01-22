import SwiftUI

struct HotelDetailsView: View {
    @Binding var selectedTab : Int
    @Environment(\.presentationMode) var presentationMode
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
                            Text("منتجع الناصرية")
                                .font(.title3)
                                .padding(.leading,50)
                            Spacer()
                            Button {
                                presentationMode.wrappedValue.dismiss()
                            } label: {
                                Image(systemName: "chevron.forward.square")
                                    .font(.title3)
                            }
                            .padding()
                            
                        }
                        .padding(.top)
                        Spacer()
                    }
                }
                .foregroundColor(.white)
                .background(Color("Bg1Color")).ignoresSafeArea()
                //navigation bar end
                Spacer()
                
                VStack{ //hotel image start
                    Image("nasrya-hotel").resizable()
                }
                .frame(width: screenWidth*0.9, height: screenHeight*0.25, alignment: .center)
                .cornerRadius(16)
                //hotel image end
                Spacer()
                
                VStack{ //hotel facilities start
                    VStack{
                        HStack{ //hotel headers start
                            Text("الاتجاهات")
                                .fontWeight(.semibold)
                            Spacer()
                            Text("المراجعات")
                            Text("الخدمات")
                                .fontWeight(.bold)
                                .underline()
                            Text("التفاصيل")
                        }
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .padding()
                        //hotel headers end
                    }
                    VStack{ //facilities listed start
                        HStack(spacing:20){
                            ForEach(essentialFacilities, id: \.id){ facility in
                                VStack{
                                    Image(systemName: facility.imageName)
                                        .frame(width: screenWidth*0.08,height: screenHeight*0.001,alignment: .center)
                                        .background(Circle().foregroundColor(Color("Bg1Color"))
                                            .frame(height:screenHeight*0.05))
                                        .padding(.vertical)
                                        .padding(.horizontal)
                                    Text(facility.name)
                                        .font(.caption2)
                                }
                            }
                        }
                        Spacer()
                        HStack(spacing: 20){
                            ForEach(entertainmentFacilities, id: \.id){ facility in
                                VStack{
                                    Image(systemName: facility.imageName)
                                        .frame(width: screenWidth*0.08,height: screenHeight*0.001,alignment: .center)
                                        .background(Circle().foregroundColor(Color("Bg1Color"))
                                            .frame(height:screenHeight*0.05))
                                        .padding(.vertical)
                                        .padding(.horizontal)
                                    Text(facility.name)
                                        .font(.caption2)
                                }
                            }
                        }
                        Spacer()
                        HStack(spacing: 20){
                            ForEach(otherFacilities, id: \.id){ facility in
                                VStack{
                                    Image(systemName: facility.imageName)
                                        .frame(width: screenWidth*0.08,height: screenHeight*0.001,alignment: .center)
                                        .background(Circle().foregroundColor(Color("Bg1Color"))
                                            .frame(height:screenHeight*0.05))
                                        .padding(.vertical)
                                        .padding(.horizontal)
                                    Text(facility.name)
                                        .font(.caption2)
                                }
                            }
                        }
                        
                    }
                    .multilineTextAlignment(.center)
                    .padding([.horizontal,.top])
                    //facilities listed end
                }
                .padding()
                //hotel facilities end
                VStack{ //price area start
                    HStack{
                        Button {
                            selectedTab = 11
                        } label: {
                            Text("احجز الآن!")
                                .foregroundColor(Color("Fnt1Color"))
                        }
                        .frame(width: screenWidth*0.3, height: screenHeight*0.05, alignment: .center)
                        .background(Color("Bg2Color"))
                        .cornerRadius(16)
                        HStack{
                            Text("الليلة الواحدة")
                                .foregroundColor(.black)
                                .opacity(0.4)
                            Text("2400 ر.س. /")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        }
                    }
                }
                .frame(width: screenWidth*0.9, height: screenHeight*0.08, alignment: .center)
                .background(Color("Bg1Color"))
                .cornerRadius(16)
                .padding()
                //price area end
            } //content end
            
            
        } //UI Container end
    }
}
