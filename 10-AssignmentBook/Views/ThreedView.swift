
import SwiftUI
struct ThreeddView: View {
    let v : String
    let color : Color

    var body: some View {
        VStack {
            Image(systemName: "\(v)")
                .font(.system(size: 55))
                .foregroundColor(color)
            
            Text ("Trips")
                .foregroundColor(Color.gray)
        }
    }
}

struct ThreedView: View {
    var body: some View {
        ZStack{
            Color("Cback")
            VStack{
                Image("4").resizable().frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height  / 3)
                VStack(spacing: 10){
                    HStack (spacing : 30) {
                        ThreeddView(v: "figure.walk.circle.fill", color: Color.brown)
                        ThreeddView(v: "building.2.crop.circle.fill", color: Color.yellow)
                        ThreeddView(v: "airplane.circle.fill", color: Color.blue)
                        ThreeddView(v: "dollarsign.circle.fill", color: Color.green)
                    }.padding()
                    
                    HStack{
                        Text("Popler")
                        Spacer()
                        Text("")
                    }.padding(.horizontal)
                    
                    HStack{
                        ScrollView(.horizontal , showsIndicators: false){
                            HStack{
                                ForEach(imgs,id: \.id){ i in
                                    
                                    ViewModel(temp: i)
                                    
                                }
                                
                            }
                        }
                        
                    }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 10)
                    HStack{
                        Text("Popler")
                        Spacer()
                        Text("")
                    }.padding(.horizontal)
                    
                    HStack{
                        ScrollView(.horizontal ,showsIndicators: false){
                            HStack{
                                ForEach(imgtxt,id: \.id){ i in
                                    
                                    txtModle(temp: i)
                                }
                                
                            }
                        }
                    }
                    Spacer()
                }.frame(width: UIScreen.main.bounds.width   , height: UIScreen.main.bounds.height / 1.40).background().cornerRadius(32)
            }
            
            
        }.ignoresSafeArea()
    }
    
}

struct ThreedView_Previews: PreviewProvider {
    static var previews: some View {
        ThreedView()
    }
}
