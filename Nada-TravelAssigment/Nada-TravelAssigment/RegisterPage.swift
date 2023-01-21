
import SwiftUI

struct RegisterPage: View {
    @State var userName1 = ""
    @State var myPass1 = ""
    
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
                           
                        Text("Enter Email")
                            .foregroundColor(.gray)
                            .padding(.trailing , 270)
                            .padding(.top)
                        TextField("UserName", text: $userName1)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                        Text("Password")
                            .foregroundColor(.gray)
                            .padding(.trailing , 290)
                        SecureField("Password", text: $myPass1)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                        
                        Text("Confirm Pass")
                            .foregroundColor(.gray)
                            .padding(.trailing , 270)
                        SecureField("Confirm Password", text: $myPass1)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                    
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color("c1"))
                                .frame(width: 300 , height: 40)
                            
                            Button("Sign Up") {

                                if userName1 == "A" && myPass1 == "123"{
                                    Text("Logged in successfully")
                                }
                                else{
                                    Text("UserName or password worng")
                                }
                            }.foregroundColor(.white)
                                .padding()
                            
                        }//end of z stack button
                        
                        HStack{
                            Text("Already have account?").foregroundColor(.gray)
                                .padding(.leading ,20)
                            Text("Sign In").foregroundColor(Color("c1"))
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
            }//end of v stack conten
        }//end if z stack contenr
    }
}

struct RegisterPage_Previews: PreviewProvider {
    static var previews: some View {
        RegisterPage()
    }
}
