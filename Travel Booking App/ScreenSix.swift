

import SwiftUI

struct ScreenSix: View {
    var body: some View {
        
        VStack{
            
            ZStack {
                Color.orange
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 100)
                
                Text("My Trips")
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
                
                Color.white
                    .frame(width: 350 , height: 70)
                    .cornerRadius(20)
                HStack (spacing: 40){
                    Text("Uboming")
                        .foregroundColor(.orange)
                    ZStack{
                        Color.orange
                            .frame(width: 100 ,height: 60)
                        Text("Completed")
                            .foregroundColor(.white)
                        
                    }
                    
                    Text("Canceled")
                        .foregroundColor(.orange)
                    
                }
            }
            
            //ll
            
            HStack (){
                VStack {
                    Color.secondary
                        .frame(width: 150 ,height:120)
                        .cornerRadius(20)
                    Color.secondary
                        .frame(width: 150 ,height:120)
                        .cornerRadius(20)
                    Color.secondary
                        .frame(width: 150 ,height:120)
                        .cornerRadius(20)
                    Color.secondary
                        .frame(width: 150 ,height:120)
                        .cornerRadius(20)
                }
                .padding(.trailing ,110)
                
                VStack{
                  
                    Text("The Pardies Inn ")
                        .padding(.leading,-130)
                    
                        
                    
                    Text("Check-In")
                        .foregroundColor(.green)
                        .font(.system(size: 13))
                        .padding(.leading,-130)
                    
                    Text("Sat ,21 Agu")
                        .foregroundColor(.secondary)
                        .font(.system(size: 13))
                        .offset(x:-100 ,y:10)
                    
                    
                    Text("Check-Out")
                        .foregroundColor(.red)
                        .font(.system(size: 13))
                        .padding(.leading,-10)
                        .offset(x:5 ,y:-45)
                    
                    Text("Sat ,21 Agu")
                        .foregroundColor(.secondary)
                        .font(.system(size: 13))
                        .offset(x:5 ,y:-40)
                }
                .padding(.top,-250)
                
                VStack{
                  
                    Text("The Pardies Inn ")
                        .padding(.leading,-190)
                    
                        
                    
                    Text("Check-In")
                        .foregroundColor(.green)
                        .font(.system(size: 13))
                        .padding(.leading,-190)
                    
                    Text("Sat ,21 Agu")
                        .foregroundColor(.secondary)
                        .font(.system(size: 13))
                        .offset(x:-165 ,y:-2)
                    
                    
                    Text("Check-Out")
                        .foregroundColor(.red)
                        .font(.system(size: 13))
                        .padding(.leading,-10)
                        .offset(x:-60 ,y:-40)
                    
                    Text("Sat ,21 Agu")
                        .foregroundColor(.secondary)
                        .font(.system(size: 13))
                        .offset(x:-50 ,y:-40)
                }
             
            }//end h
            
        }//end main s
        // .padding(.trailing,190)
        
    }
    
}

struct ScreenSix_Previews: PreviewProvider {
    static var previews: some View {
        ScreenSix()
    }
}
