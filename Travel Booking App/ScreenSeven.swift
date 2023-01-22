
import SwiftUI

struct ScreenSeven: View {
    var body: some View {
        VStack{
            ZStack{
                Color.orange
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 100)
                
                Text("Add Reviews ")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                
                Image(systemName: "arrow.left")
                    .font(.system(size: 20))
                    .fontWeight(.light)
                    .offset(x:-150 )
                    .foregroundColor(.black)
            }
            VStack{
                Text("Rate Your Stay ")
                    .foregroundColor(.primary)
                    .fontWeight(.semibold)
                    .font(.system(size: 20))
                    .padding(.trailing,200)
                    .padding(20)
                HStack(spacing: 20){
                    Image(systemName: "star.fill")
                        .font(.system(size: 25))
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .font(.system(size: 25))
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .font(.system(size: 25))
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .font(.system(size: 25))
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .font(.system(size: 25))
                        .foregroundColor(.yellow)
                }
                Text("Your Rate ")
                    .foregroundColor(.primary)
                    .fontWeight(.semibold)
                    .font(.system(size: 20))
                    .padding(.trailing,250)
                    .padding(20)
                ZStack{
                    Color.gray
                        .frame(width: 350 ,height: 200)
                        .cornerRadius(20)
                    Text("Write your stay experence here")
                        .padding(.trailing ,40)
                        .padding(.top ,-70)
                        .foregroundColor(.secondary)
                }
                
              
                
            }
            
            Spacer()
            ZStack{
                Color.orange
                    .frame(width: 350 ,height: 60)
                    .cornerRadius(20)
                Text("Submit Your Reveiw ")
            }
        }
        
    }
}

struct ScreenSeven_Previews: PreviewProvider {
    static var previews: some View {
        ScreenSeven()
    }
}
