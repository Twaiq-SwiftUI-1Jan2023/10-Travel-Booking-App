
import SwiftUI

struct SignInPage: View {
    @State var userName = ""
    @State var myPass = ""
    var body: some View {
        ZStack{
            Color("c1").ignoresSafeArea()
            VStack{
                HStack{
                    Button{}
                label: {
                    Image(systemName: "arrow.backward.square")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .padding()
                }
                    Spacer()
                    Text("Sign in")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.trailing , 50)
                    Spacer()
                }//end of h-stack sign -<
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(UIColor.secondarySystemBackground)).ignoresSafeArea()
                    VStack{
                        Image("img3")
                            .clipShape(Circle())
                            .padding(.bottom )
                        Text("Enter Email")
                            .foregroundColor(.gray)
                            .padding(.trailing , 270)
                            .padding(.top)
                        TextField("UserName", text: $userName)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                        Text("Password")
                            .foregroundColor(.gray)
                            .padding(.trailing , 270)
                        SecureField(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/"Password"/*@END_MENU_TOKEN@*/, text: $myPass)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                        
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color("c1"))
                                .frame(width: 300 , height: 40)
                            
                            Button("Log in") {
                                
                                if userName == "A" && myPass == "123"{
                                    Text("Logged in successfully")
                                }
                                else{
                                    Text("UserName or password worng")
                                }
                            }.foregroundColor(.white)
                                .padding()
                            
                        }//end of z stack button
                        HStack{
                            Text("Don't have an account?").foregroundColor(.gray).padding(.leading , 20)
                            Text("Sign Up").foregroundColor(Color("c1"))
                            Spacer()
                        }
                        HStack {
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color("c1"))
                                    .frame(width: 120 , height: 70)
                                
                                
                                Button{} label: {
                                    Image("img1").resizable().frame(width: 120 , height: 70)
                                }.foregroundColor(.white).padding()
                            }//end of z stack google
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color("c1"))
                                    .frame(width: 120 , height: 70)
                                
                                Button{} label: {
                                    Image("img2").resizable().frame(width: 120 , height: 70)
                                }.foregroundColor(.white)
                            }//face book
                        }//end of h stack ggogle , face book
                    } // end of v stack
                }//end of z stack round
                
            }//end of Vs
            
        }//end of content stack-z
        
        
    }
}

struct SignInPage_Previews: PreviewProvider {
    static var previews: some View {
        SignInPage()
    }
}
