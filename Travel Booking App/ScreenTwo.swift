
//بقى البوردر + الدائرة + تنسيق الالوان الكارثية :(

import SwiftUI

struct ScreenTwo: View {
    var body: some View {
       
        
        VStack {
            ZStack{
                Color.orange
                    .edgesIgnoringSafeArea(.top)
                
                //arrow sign and sign in word
                Image(systemName: "arrow.backward")
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .font(.system(size: 25))
                    .padding(.top ,-30)
                    .padding(.leading , -170)
                
                Text("Register New Account")
                    .foregroundColor(.white)
                    .font(.system(size: 18))
                
                    .fontWeight(.medium)
                    .padding(.top ,-30)
                
                
            }//end zstack1
            
            ZStack{
                
            Color.white
                .frame(height: 610)
             
                .edgesIgnoringSafeArea(.bottom)
                
                Text("Enter Email")
                    .fontWeight(.light)
                    .font(.system(size: 15))
                    .foregroundColor(.secondary)
                    .padding(.top ,-70)
                    .padding(.leading ,-150)
                
                
                    .frame(width: 300 , height: 50)
                    .background(Color(.orange))
                    .padding(.top ,-230)
                
                 
                
                Text("email@Example.com")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .padding(.top ,-215)
                    .padding(.leading ,-10)
                
                Image(systemName: "envelope")
                    .font(.system(size: 20))
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .padding(.top ,-215)
                    .padding(.leading ,-130)
                    
                   
                Text("Password")
                    .fontWeight(.light)
                    .font(.system(size: 15))
                    .foregroundColor(.secondary)
                    .padding(.top ,-70)
                    .padding(.leading ,-150)
                
                
                    .frame(width: 300 , height: 50)
                    .background(Color(.orange))
                    //.cornerRadius(10)
                    .padding(.top ,-100)
                    
                
                Text("*************")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .padding(.top ,-80)
                    .padding(.leading ,-10)
                    
                
                Image(systemName: "lock")
                    .font(.system(size: 20))
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .padding(.top ,-90)
                    .padding(.leading ,-130)
               
                Image(systemName: "eye.slash")
                    .font(.system(size: 20))
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .padding(.top ,-85)
                    .padding(.leading ,220)
                
                //2
                VStack{
                    Text("Confirm Password")
                        .fontWeight(.light)
                        .font(.system(size: 15))
                        .foregroundColor(.secondary)
                        .padding(.top ,-60)
                        .padding(.leading ,-150)
                    
                    
                        .frame(width: 300 , height: 50)
                        .background(Color(.orange))
                    //.cornerRadius(10)
                        .padding(.top ,90)
                    
                    
                    Text("*************")
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .padding(.top ,-40)
                        .padding(.leading ,-10)
                    
                    
                    Image(systemName: "lock")
                        .font(.system(size: 20))
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .padding(.top ,-60)
                        .padding(.leading ,-130)
                    
                    Image(systemName: "eye.slash")
                        .font(.system(size: 20))
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .padding(.top ,-60)
                        .padding(.leading ,220)
                }
              
            }
            
            ZStack{
                
                Color.orange
                    .frame(width: 300 , height: 50)
                    .padding(.top , -210)
                 Text("Log In ")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .font(.system(size: 20))
                    .padding(.top , -200)
                
                HStack{
                    Text("Don't have an account ? ")
                        .foregroundColor(.secondary)
                        .padding(.top , -150)
                        .padding(.leading ,40)
                
                    Text("Sign UP")
                        .foregroundColor(.orange)
                        .fontWeight(.semibold)
                        .padding(.top , -150)
                        .padding(.trailing ,50)
                 
                }
                
                ZStack{
                    Text("Or sign in with ")
                        .foregroundColor(.secondary)
                        .fontWeight(.medium)
                        .font(.system(size: 17))
                        .padding(.top, -90)
                    
                    HStack{
                        
                        
                         Text("Google")
                        .frame(width: 170 , height:60)
                        .background(Color(.red))
                        .cornerRadius(20)
                        .foregroundColor(.white)
                        .padding(.leading)
                        
                        //Image("google"
                           //.frame(width:1 , height: 2)
                         Spacer()
                        
                        Text("facebook")
                       .frame(width: 170 , height:60)
                       .background(Color(.blue))
                       .cornerRadius(20)
                       .foregroundColor(.white)
                       .padding(.trailing)
                            
                            
                    }
                }
                     
            }
            
        }
    }
}

struct ScreenTwo_Previews: PreviewProvider {
    static var previews: some View {
        ScreenTwo()
    }
}
