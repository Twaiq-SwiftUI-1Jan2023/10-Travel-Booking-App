

import SwiftUI

struct SwiftUIView2: View {
    var body: some View {
        ZStack{
            Color("11")
                .ignoresSafeArea()
            Rectangle()
                .cornerRadius(70)
                .foregroundColor(Color.white)
                .frame(width: 400 , height: 750)
                .offset(y:100)
            VStack{
                Text("Let's Explore                                                      the World!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.leading)
                
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    Text("You Are In Sauth Africa")
                }
                .padding(.leading, -160.0)
                .foregroundColor(Color.white)
                Text("")
                Spacer()
                HStack(spacing: 100) {
                    
                    Button {
                        
                    } label: {
                    
                        Image(systemName: "figure.walk")
                            .foregroundColor(Color.purple)
                            .font(.system(size:50))
                            
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "house.fill")
                                .foregroundColor(Color.pink)
                                .font(.system(size:50))
                                
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "airplane.circle")
                                    .foregroundColor(Color.orange)
                                    .font(.system(size:50))
                                    
                                Button {
                                    
                                } label: {
                                    Image(systemName: "dollarsign.circle")
                                        .foregroundColor(Color.blue)
                                        .font(.system(size:50))
                                    
                                }
                            }
                        }
                    }
                    
                  }
                HStack(spacing: 40){
                    Text("trip")
                        .foregroundColor(Color.gray)
                    Text("Hotels")
                        .foregroundColor(Color.gray)
                    Text("Flit")
                        .foregroundColor(Color.gray)
                    Text("offer")
                        .foregroundColor(Color.gray)
                    
                }
                Text("Popular Ofer")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .padding(.leading, -180.0)
                                ScrollView (.horizontal, showsIndicators: false) {
                                    HStack {
                                        ForEach(0..<5) { index in
                                            Rectangle()
                                                .fill(Color("11"))
                                                .frame(width: 100, height: 100)
                                                .cornerRadius(20)
                                                .shadow(radius: 10)
                                        }
                                    }
                                }
                
                Text("Hotel Near You")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .padding(.leading, -180.0)
                                ScrollView (.horizontal, showsIndicators: false) {
                                    HStack {
                                        ForEach(0..<4) { index in
                                            Rectangle()
                                                .fill(Color("11"))
                                                .frame(width: 190, height: 190)
                                                .cornerRadius(20)
                                                .shadow(radius: 10)
                                                
                                        }
                                    }
                                    Spacer()
 
             }
                
           }

        }

    }
      
}

        
    
    struct SwiftUIView2_Previews: PreviewProvider {
        static var previews: some View {
            SwiftUIView2()
        }
    }
