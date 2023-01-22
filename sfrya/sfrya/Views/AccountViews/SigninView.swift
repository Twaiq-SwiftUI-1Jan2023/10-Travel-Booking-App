import SwiftUI

struct SigninView: View {
    @State var emailInput : String = ""
    @State var passwordInput : String = ""
    @Binding var selectedTab : Int
    var body: some View {
        ZStack { //UI Container start
            //Background Color start
            LinearGradient(gradient: Gradient(colors: [Color("Bg2Color"),Color("Bg1Color")])
                           , startPoint: .bottom, endPoint: .top)
            .ignoresSafeArea(.all)
            //Background Color end
            VStack{ //content start
                VStack{ //top bar start
                    HStack{
                        Spacer()
                        Text("تسجيل الدخول")
                        Spacer()
                        Button {
                            selectedTab = 0
                        } label: {
                            Image(systemName: "chevron.right.square")
                        }

                    }
                    .padding()
                } //top bar end
                Spacer()
                VStack(spacing: 32.0){ //rectangle start
                    Spacer()
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
                    VStack{ //password block start
                        HStack{
                            Spacer()
                            Text("كلمة المرور")
                        }
                        .padding(.trailing)
                        HStack{ //user password input start
                            Spacer()
                            Image(systemName: "eye.slash")
                            SecureField(text:$passwordInput,
                                        prompt:Text("كلمة المرور")
                            ){}
                                .multilineTextAlignment(.trailing)
                            Image(systemName: "lock")
                            Spacer()
                        }
                        .frame(height: screenHeight/24)
                        .background(
                            Rectangle()
                                .fill(Color("Bg1Color"))
                                .cornerRadius(8)
                                .opacity(0.3))
                        .padding(.horizontal)
                        //user password input end
                    } //password block end
                    VStack { //signin block start
                        HStack{ //signin button start
                            Button {
                            } label: {
                                Text("تسجيل الدخول")
                                    .foregroundColor(Color("Fnt1Color"))
                                    .padding(.vertical)
                            }
                        }
                        .frame(width: screenWidth*0.8)
                        .background(Color("Bg1Color").opacity(0.2))
                        .cornerRadius(16)
                        
                        //signin button end
                    } //signin block end
                    VStack { //no-account block start
                        HStack{
                            HStack{ //signup button start
                                Button(action: {
                                    selectedTab = 6
                                } ,label: {
                                    Text("سجل معنا!")
                                        .underline()
                                })
                            } //signup button end
                            Text("لا تمتلك حساباً؟")
                        }
                    } //no-account block end
                    Spacer()
                    VStack { //third-party signin block start
                        HStack{
                            VStack{
                                Divider().padding(.leading)
                            }
                            VStack{
                                Text("أو سجل دخولك بواسطة")
                                    .multilineTextAlignment(.center)
                            }
                            VStack{
                                Divider().padding(.trailing)
                            }
                        }
                        HStack{ //third-party buttons start
                            VStack{ //google button start
                                Button {
                                } label: {
                                    Image("googleLogo")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                }
                                
                            }
                            .frame(width: screenWidth/8,height: screenHeight/9)
                            //google button end
                            Spacer()
                            VStack { //facebook button start
                                Button {
                                } label: {
                                    Image("facebookLogo")
                                        .resizable() .aspectRatio(contentMode: .fit)
                                }
                            }
                            .frame(width: screenWidth/9,height: screenHeight/9)
                            //facebook button end
                        }
                        .padding(.horizontal)
                        .padding([.leading,.trailing],screenWidth*0.1)
                        //third-party buttons end
                    }
                    //third-party signin block end
                }
                .frame(height: screenHeight*0.7)
                .background(Rectangle()
                    .foregroundColor(Color("Bg2Color"))
                    .cornerRadius(32)
                    .ignoresSafeArea(.all))
                //rectangle end
            }
            .foregroundColor(Color("Fnt1Color"))
            //content end
            //Logo start
            Image("sfrya-logo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: screenWidth/5, height: screenHeight/8)
                .opacity(0.8)
                .padding(.bottom, screenHeight*0.60)
            //Logo end
        }
        //UI Container end
    }
}

