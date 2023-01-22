

import SwiftUI

struct ScreenFour: View {
    var body: some View {

        VStack{
            
            ZStack{
                Color.orange
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 100)
                    //.offset(y:-350)
                Text("Pan Pacifc Hotel")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    //.offset(y:-350)
                    .foregroundColor(.white)
                Image(systemName: "arrow.left")
                
                    .font(.system(size: 20))
                    .fontWeight(.light)
                    .offset(x:-150 )
                    .foregroundColor(.black)
            }
            
            ZStack{
                
                Color.gray
                    .frame(width: 350 ,height: 300)
                    .cornerRadius(20, corners: [.topLeft , .topRight])
                
                Image(systemName: "bookmark")
                    .padding(.leading,300)
                    .padding(.top,-120)
        
                Text("03/05")
                    .padding(.top,250)
                    .padding(.leading, 200)
                Image(systemName: "photo")
                    .padding(.top,250)
                    .padding(.leading, 300)
            }
            
            HStack(spacing: 20){
                
                Text("Details")
                    .font(.system(size: 15))
                Text("Facilities")
                    .font(.system(size: 15))
                Text("Revews")
                    .font(.system(size: 15))
                    
                HStack{
                    Text("Direction")
                        .font(.system(size: 15))
                }
                .padding(.leading,75)
            }
            .padding(18)
            HStack (spacing: 37){
                ZStack{
                    Circle()
                        .fill(.secondary)
                        .frame(width: 60,height: 60)
                    Image(systemName: "music.note.house")
                        .foregroundColor(.white)
                }
                ZStack{
                    Circle()
                        .fill(.secondary)
                        .frame(width: 60,height: 60)
                    Image(systemName: "parkingsign.brakesignal")
                        .foregroundColor(.white)
                }
                ZStack{
                    Circle()
                        .fill(.secondary)
                        .frame(width: 60,height: 60)
                    Image(systemName: "air.conditioner.horizontal")
                        .foregroundColor(.white)
                }
                ZStack{
                    Circle()
                        .fill(.secondary)
                        .frame(width: 60,height: 60)
                    Image(systemName: "humidifier.and.droplets")
                        .foregroundColor(.white)
                }
            }
            
            HStack (spacing: 37){
                
                ZStack{
                    Circle()
                        .fill(.secondary)
                        .frame(width: 60,height: 60)
                    Image(systemName: "bathtub")
                        .foregroundColor(.white)
                }
                ZStack{
                    Circle()
                        .fill(.secondary)
                        .frame(width: 60,height: 60)
                    Image(systemName: "wifi.router")
                        .foregroundColor(.white)
                }
                ZStack{
                    Circle()
                        .fill(.secondary)
                        .frame(width: 60,height: 60)
                    Image(systemName: "bed.double")
                        .foregroundColor(.white)
                }
                ZStack{
                    Circle()
                        .fill(.secondary)
                        .frame(width: 60,height: 60)
                    Image(systemName: "frying.pan")
                        .foregroundColor(.white)
                }
            }
            .padding()
            HStack (spacing: 37){
                
                ZStack{
                    Circle()
                        .fill(.secondary)
                        .frame(width: 60,height: 60)
                    Image(systemName: "microwave")
                        .foregroundColor(.white)
                }
                ZStack{
                    Circle()
                        .fill(.secondary)
                        .frame(width: 60,height: 60)
                    Image(systemName: "washer.fill")
                        .foregroundColor(.white)
                }
                ZStack{
                    Circle()
                        .fill(.secondary)
                        .frame(width: 60,height: 60)
                    Image(systemName: "figure.cooldown")
                        .foregroundColor(.white)
                }
                ZStack{
                    Circle()
                        .fill(.secondary)
                        .frame(width: 60,height: 60)
                    Image(systemName: "figure.open.water.swim")
                        .foregroundColor(.white)
                }
            }
            .padding()
            ZStack{
                Color.orange
                    .frame(width: 350,height: 80)
                    .cornerRadius(20)
                Text("$1000/night")
                    .foregroundColor(.white)
                    .padding(.trailing,200)
                ZStack{
                    Color.white
                        .frame(width: 150 ,height: 60)
                        .cornerRadius(20)
                    Text("Book Now !")
                }
                .padding(.leading,150)
            }
           
            .padding(.bottom,30)
        }

    }
}

struct ScreenFour_Previews: PreviewProvider {
    static var previews: some View {
        ScreenFour()
    }
}
