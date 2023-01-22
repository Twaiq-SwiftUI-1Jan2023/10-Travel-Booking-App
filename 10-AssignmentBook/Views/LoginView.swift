import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        NavigationView{
            ZStack{
                Color("colorbg").ignoresSafeArea()
                Image("2").resizable().frame(width: UIScreen.main.bounds.width / 5, height: UIScreen.main.bounds.height / 10).cornerRadius(64).offset(x: 0, y: -280).zIndex(5)
                VStack{
                    
                    HStack(){
                        Button{
                            
                        }label: {
                            Image(systemName: "arrow.left").font(.title3).bold()
                        }
                        Spacer()
                        Text("Sign in ").font(.title2).padding(.trailing)
                        
                        
                        Spacer()
                        Text("")
                    }.padding().foregroundColor(.white).frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height / 6)
                    
                    
                    VStack(){
                        VStack(alignment: .leading,spacing: 10){
                            Text("Enter Email").foregroundColor(Color(.systemGray)).padding(.leading , 25)
                            HStack{
                                
                                Image(systemName: "envelope").foregroundColor(.black).font(.title).padding()
                                
                                TextField("Enter", text: $username).frame(width: UIScreen.main.bounds.width - 120, height: 60)
                            }.background(Color(.white)).cornerRadius(16).padding()
                            Text(" Password").foregroundColor(Color(.systemGray)).padding(.leading , 25)
                            HStack{
                                
                                Image(systemName: "lock").foregroundColor(.black).font(.title).padding()
                                
                                SecureField("Enter", text: $password).frame(width: UIScreen.main.bounds.width - 170, height: 60)
                                Image(systemName: "eye.slash").foregroundColor(.black).font(.title2).padding(.trailing)
                            }.background(Color(.white)).cornerRadius(16).padding()
                            VStack{
                                
                                Button{
                                    
                                }label: {
                                    ZStack(alignment: .center){
                                        
                                        Rectangle().frame(width: UIScreen.main.bounds.width - 40, height: 70).cornerRadius(16).foregroundColor(Color("colorbg"))
                                        Text("Sign in ").foregroundColor(.white)
                                    }
                                    
                                }
                                
                            }.padding()
                            VStack{
                                HStack(){
                                    Text("Dont't have on account?")
                                    NavigationLink(destination: regsView()   .navigationBarHidden(true)){
                                        Text("Sign up ").bold().foregroundColor(Color("colorbg"))}
                                    
                                }.frame(maxWidth:UIScreen.main.bounds.width - 40 , alignment: .center )
                                Spacer()
                                VStack{
                                    Text("Or sign in with")
                                    HStack{
                                        Button{}label: {
                                            ZStack{
                                                Rectangle().frame(width: UIScreen.main.bounds.width - 250, height: 70).cornerRadius(16).foregroundColor(.white)
                                                
                                                HStack{
                                                    Image("g").font(.title3)
                                                    Text("Google").foregroundColor(.primary)
                                                }
                                            }.padding(.leading)
                                            
                                        }
                                        
                                        
                                        Button{}label: {
                                            ZStack{
                                                Rectangle().frame(width: UIScreen.main.bounds.width - 250, height: 70).cornerRadius(16).foregroundColor(Color("ff"))
                                                
                                                HStack{
                                                    Image("face").font(.title3)
                                                    Text("FaceBook").foregroundColor(.white)
                                                }
                                            }.padding()
                                        }
                                        
                                    }
                                }
                            }
                        }.frame(maxWidth: UIScreen.main.bounds.width  ,maxHeight:UIScreen.main.bounds.height / 1.4 , alignment: .leading).padding()
                        
                        
                    }.frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height / 1.2).background(Color(.systemGray5)).cornerRadius(42).padding()
                    
                }.foregroundColor(.primary)
            }
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
