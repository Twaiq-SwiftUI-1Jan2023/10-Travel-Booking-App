import SwiftUI

struct BookingView: View {
    @State var customerNameInput : String = ""
    @State var emailInput : String = ""
    @State var mobileInput : String = ""
    @State var guestCountInput : String = ""
    @State var roomCountInput : String = ""
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
                            Text("منتجع الناصرية")
                                .font(.title3)
                                .padding(.leading,50)
                            Spacer()
                            Button {
                                selectedTab = 10
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
                
                VStack{
                    HStack{ //hotel info header start
                        VStack{
                            Text(" ⭐️ 4.25")
                        }
                        Spacer()
                        VStack{
                            Text("منتجع الناصرية")
                                .font(.headline)
                                .foregroundColor(.white)
                            Text("العذيب، العلا - السعودية")
                                .font(.caption)
                        }
                        
                    }
                    .padding()
                    //hotel info header end
                }
                .padding()
                
                VStack{ //user input fields start
                    VStack{
                        HStack {
                            Spacer()
                            Text("اسمك الثلاثي")
                        }
                        .padding(.trailing)
                        HStack{ //customer name input start
                            Spacer()
                            TextField(text:$customerNameInput,
                                      prompt:Text("الاسم الثلاثي")
                            ){}
                                .multilineTextAlignment(.trailing)
                            Image(systemName: "person")
                            Spacer()
                        }
                        .frame(height: screenHeight/24)
                        .background(
                            Rectangle()
                                .fill(Color("Bg1Color"))
                                .cornerRadius(8)
                                .opacity(0.3))
                        .padding(.horizontal)
                        //customer name input end
                    }
                }
                //user input fields end
                VStack{ //email block start
                    HStack {
                        Spacer()
                        Text("بريدك الالكتروني")
                    }
                    .padding(.trailing)
                    HStack{ //user email input start
                        Spacer()
                        TextField(text:$emailInput,
                                  prompt:Text("البريد الالكتروني")
                        ){}
                            .multilineTextAlignment(.trailing)
                        Image(systemName: "envelope")
                        Spacer()
                    }
                    .frame(height: screenHeight/24)
                    .background(
                        Rectangle()
                            .fill(Color("Bg1Color"))
                            .cornerRadius(8)
                            .opacity(0.3))
                    .padding(.horizontal)
                    //user email input end
                } //email block end
                
                VStack{ //mobile block start
                    HStack {
                        Spacer()
                        Text("رقم الجوال")
                    }
                    .padding(.trailing)
                    HStack{ //user mobile input start
                        Spacer()
                        TextField(text:$mobileInput,
                                  prompt:Text("رقم الجوال")
                        ){}
                            .multilineTextAlignment(.trailing)
                        Image(systemName: "candybarphone")
                        Spacer()
                    }
                    .frame(height: screenHeight/24)
                    .background(
                        Rectangle()
                            .fill(Color("Bg1Color"))
                            .cornerRadius(8)
                            .opacity(0.3))
                    .padding(.horizontal)
                    //user mobile input end
                } //mobile block end
                VStack{ //guests and rooms number section start
                    HStack {
                        Spacer()
                        Text("الغرفة المطلوب حجزها")
                    }
                    .padding(.trailing)
                    HStack{
                        HStack{ //user guest count input start
                            Spacer()
                            TextField(text:$guestCountInput,
                                      prompt:Text("عدد الأشخاص")
                            ){}
                                .multilineTextAlignment(.trailing)
                            Image(systemName: "figure.2.and.child.holdinghands")
                            Spacer()
                        }
                        .frame(height: screenHeight/24)
                        .background(
                            Rectangle()
                                .fill(Color("Bg1Color"))
                                .cornerRadius(8)
                                .opacity(0.3))
                        .padding(.horizontal)
                        //user guest count input end
                        HStack{ //user guest count input start
                            Spacer()
                            TextField(text:$roomCountInput,
                                      prompt:Text("عدد الغرف")
                            ){}
                                .multilineTextAlignment(.trailing)
                            Image(systemName: "bed.double")
                            Spacer()
                        }
                        .frame(height: screenHeight/24)
                        .background(
                            Rectangle()
                                .fill(Color("Bg1Color"))
                                .cornerRadius(8)
                                .opacity(0.3))
                        .padding(.horizontal)
                        //user guest count input end
                    }
                } //guests and rooms number section end
                VStack{ //price area start
                    HStack{
                        Button {
                        } label: {
                            Text("الاستمرار للدفع")
                        }
                        .frame(width: screenWidth*0.9, height: screenHeight*0.08, alignment: .center)
                        .foregroundColor(.black)
                        .background(.white)
                        .cornerRadius(16)
                    }
                }
                .padding()
                //price area end
            } //content end
            
            
        } //UI Container end
    }
}
