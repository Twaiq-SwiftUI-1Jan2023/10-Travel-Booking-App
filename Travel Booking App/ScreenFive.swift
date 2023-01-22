

import SwiftUI

struct ScreenFive: View {
    var body: some View {
      
        VStack{
            ZStack{
                Color.orange
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 100)
                    
                Text("Pan Pacifc Hotel")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    
                    .foregroundColor(.white)
                Image(systemName: "arrow.left")
                
                    .font(.system(size: 20))
                    .fontWeight(.light)
                    .offset(x:-150 )
                    .foregroundColor(.black)
            }
            
            ZStack{
                
                Color.gray
                    .frame(width: 350 ,height: 250)
                    .cornerRadius(20, corners: [.topLeft , .topRight])
                
                Image(systemName: "bookmark")
                    .padding(.leading,300)
                    .padding(.top,-100)
        
                Text("03/05")
                    .padding(.top,210)
                    .padding(.leading, 200)
                Image(systemName: "photo")
                    .padding(.top,210)
                    .padding(.leading, 300)
            }
            
            HStack{
                
                VStack{
                    Text("Pan Pacifc Hotel")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    Text("Dakha,Bangaldesh")
                        .fontWeight(.light)
                        .foregroundColor(.secondary)
                        .font(.system(size: 15))
                    
                }
                Spacer()
                
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .font(.system(size: 13))
                    Text("4.9 (5.6 reviews)")
                    .font(.system(size: 13))
                    .foregroundColor(.secondary)
                    .padding(.trailing,20)
            }
            
            .padding(.leading,20)
            
            VStack{
                Text("Name")
                    .font(.system(size: 15))
                    .foregroundColor(.secondary)
                    .padding(.top, 10)
                    .padding(.trailing,300)
                Color.secondary
                    .frame(width: 350 ,height: 40)
                    .cornerRadius(10)
                
                Text("Email Address")
                    .font(.system(size: 15))
                    .foregroundColor(.secondary)
                    .padding(.top, 10)
                    .padding(.trailing,250)
                Color.secondary
                    .frame(width: 350 ,height: 40)
                    .cornerRadius(10)
                
                Text("Phone Number")
                    .font(.system(size: 15))
                    .foregroundColor(.secondary)
                    .padding(.top, 10)
                    .padding(.trailing,250)
                Color.secondary
                    .frame(width: 350 ,height: 40)
                    .cornerRadius(10)
                
                Text("Room's Required")
                    .font(.system(size: 15))
                    .foregroundColor(.secondary)
                    .padding(.top, 10)
                    .padding(.trailing,250)
                HStack (spacing: 34){
                    Color.secondary
                        .frame(width: 160 ,height:40)
                        .cornerRadius(10)
                      
                    Color.secondary
                        .frame(width: 160 ,height: 40)
                        .cornerRadius(10)
                }
                
                ZStack{
                    Color.secondary
                        .frame(width: 350 ,height: 40)
                        .cornerRadius(10)
                    Text("Procced to Pay")
                        .offset(x:120 ,y:-10)
                        .font(.system(size: 15))
                        .foregroundColor(.secondary)
                        .padding(.top, 16)
                        .padding(.trailing,250)
                }
            }
            
           
        }//end main stack
    }
}

struct ScreenFive_Previews: PreviewProvider {
    static var previews: some View {
        ScreenFive()
    }
}
