

import SwiftUI

struct ScreenThree: View {
    var body: some View {
      
   
        
       
            
            VStack{
                
                HStack{
                    
                    Image(systemName: "list.dash")
                        .foregroundColor(.primary)
                        Spacer()
                    Image("profile")
                        .resizable()
                        .cornerRadius(12)
                        .frame(width: 60 ,height: 60)
                        
                    
                    
                }
                .padding(.top, 300)
                .padding(50)
             
                VStack{
                    Text("Let's Explore")
                        .foregroundColor(.secondary)
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                    
                    Text("The World !")
                        .foregroundColor(.secondary)
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                    
                    Text("You are in Dubai !")
                    
                        .font(.system(size: 15))
                        .foregroundColor(.secondary)
                        .fontWeight(.light)
                }
               
                .padding(.trailing,200)
                
                ZStack{
                    Color.orange
                        .edgesIgnoringSafeArea(.all)
                        .frame(height: 600)
                        .cornerRadius(20)
                        //.offset(x:0,y:150)
                    
                    HStack (spacing: 40){
                        ZStack{
                            Circle()
                                .fill(.white)
                                .frame(width: 50 ,height: 50)
                            Image(systemName: "figure.walk")
                                .foregroundColor(.black)
                            
                        }
                        .padding(.bottom,500)
                        
                        ZStack{
                            Circle()
                                .fill(.white)
                                .frame(width: 50 ,height: 50)
                            Image(systemName: "house")
                                .foregroundColor(.black)
                        }
                        .padding(.bottom,500)
                        ZStack{
                            Circle()
                                .fill(.white)
                                .frame(width: 50 ,height: 50)
                            Image(systemName: "airplane")
                                .foregroundColor(.black)
                        }
                        .padding(.bottom,500)
                        ZStack{
                            Circle()
                                .fill(.white)
                                .frame(width: 50 ,height: 50)
                            Image(systemName: "percent")
                                .foregroundColor(.black)
                        }
                       
                        

                        .padding(.bottom,500)
                    }//end hstack
                  
                    HStack(spacing: 50){
                        Text("Trips")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .padding(.top,-110)
                        
                        Text("Hotels")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .padding(.top,-110)
                    
                        
                        Text("Flights")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .padding(.top,-110)
                        
                        Text("Offers")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .padding(.top,-110)
                    }//end Hstack
                    .padding(.bottom,200)
                }//zstack
              
              

                Text("Popular offer")
                   .offset(x:-110 ,y:-450)
                
                HStack(spacing: 20){
                    
                    Color.white
                        .frame(width: 120 ,height: 120)
                        .cornerRadius(20)
                    Color.white
                        .frame(width: 120 ,height: 120)
                        .cornerRadius(20)
                    Color.white
                        .frame(width: 120 ,height: 120)
                        .cornerRadius(20)
                
                }
                .offset(x:30 ,y:-410)
               
                
                Text("Hotel Near You ")
                    .offset(x:-110 ,y:-380)
                HStack (spacing:50){
                    Color.white
                        .frame(width: 150 ,height: 140)
                        .cornerRadius(20)
                    Color.white
                        .frame(width: 150 ,height: 140)
                        .cornerRadius(20)
                }
                
                .offset(x:10 ,y:-360)
                
                
            }//second vstack
            
    
        
        
    }
}


struct ScreenThree_Previews: PreviewProvider {
    static var previews: some View {
        ScreenThree()
    }
}
