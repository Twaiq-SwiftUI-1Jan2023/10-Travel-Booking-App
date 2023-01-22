import SwiftUI

struct HomeView: View {
    @Binding var selectedTab : Int
    @State var showHotelView : Bool = false
    var body: some View {
        ZStack { //UI Container start
            //Background Color start
            LinearGradient(gradient: Gradient(colors: [Color("Bg2Color"),Color("Bg1Color")])
                           , startPoint: .bottom, endPoint: .top)
            .ignoresSafeArea(.all)
            //Background Color end
            //banner logo start
            Image("historical-jeddah").resizable().aspectRatio(contentMode: .fill)
                .frame(width: screenWidth, height: screenHeight*0.3, alignment: .top)
                .cornerRadius(16)
                .padding(.bottom,screenHeight*0.74).opacity(0.8)
            //banner logo end
            VStack{ //content start
                VStack{ //top bar start
                    HStack{
                        Image("bohs")
                            .resizable()
                            .frame(width: screenWidth/10, height:  screenHeight/20)
                            .cornerRadius(32)
                        Spacer()
                        Image(systemName: "list.bullet.indent")
                            .renderingMode(.original)
                    }
                    .padding([.top,.horizontal,.vertical])
                    .ignoresSafeArea()
                }
                .padding(.horizontal)
                .padding(.top,screenHeight*0.05)
                //top bar end
                Spacer()
                ZStack{
                    VStack(spacing: 32.0){ //rectangle start
                        
                        VStack{ //selection bar start
                            HStack(spacing: 32){
                                VStack {
                                    Button {
                                    } label: {
                                        VStack{
                                            Image(systemName: "wand.and.stars.inverse")
                                                .frame(width: screenWidth*0.08,height: screenHeight*0.001,alignment: .center)
                                                .background(Circle().foregroundColor(Color("Bg1Color"))
                                                    .frame(height:screenHeight*0.05))
                                                .padding(.vertical)
                                            Text("العروض")
                                        }
                                    }
                                }
                                VStack {
                                    Button {
                                    } label: {
                                        VStack{
                                            Image(systemName: "airplane.circle")
                                                .frame(width: screenWidth*0.08,height: screenHeight*0.001,alignment: .center)
                                                .background(Circle().foregroundColor(Color("Bg1Color"))
                                                    .frame(height:screenHeight*0.05))
                                                .padding(.vertical)
                                            Text("باقات السفر")
                                        }
                                    }
                                    
                                }
                                VStack {
                                    Button {
                                    } label: {
                                        VStack{
                                            Image(systemName: "building")
                                                .frame(width: screenWidth*0.08,height: screenHeight*0.001,alignment: .center)
                                                .background(Circle().foregroundColor(Color("Bg1Color"))
                                                    .frame(height:screenHeight*0.05))
                                                .padding(.vertical)
                                            Text("الفنادق")
                                            
                                        }
                                    }
                                }
                                VStack {
                                    Button(action: {
                                        selectedTab = 2
                                    } ,label: {
                                        VStack{
                                            Image(systemName: "suitcase.rolling")
                                                .frame(width: screenWidth*0.08,height: screenHeight*0.001,alignment: .center)
                                                .background(Circle().foregroundColor(Color("Bg1Color"))
                                                    .frame(height:screenHeight*0.05))
                                                .padding(.vertical)
                                            Text("الرحلات")
                                        }
                                    })
                                }
                            }
                        }
                        .font(.callout)
                        .padding(.horizontal)
                        .padding(.top)
                        //selection bar end
                        VStack{ //popular offer start
                            HStack{
                                Spacer()
                                Text("أفضل العروض")
                                    .fontWeight(.bold)
                            }
                            .padding(.horizontal)
                            HStack{
                                ScrollView(.horizontal, showsIndicators: true){
                                    HStack(spacing: 24){
                                        ForEach(offers, id: \.id) { offer in
                                            ZStack {
                                                Image(offer.imageName).resizable()
                                                VStack(spacing:4){
                                                    Text(offer.headerTitle)
                                                        .font(.subheadline)
                                                    Text(offer.description)
                                                        .font(.footnote)
                                                }
                                                .padding([.top,.bottom,.trailing],8)
                                                .background(Color("Bg1Color").opacity(0.5).cornerRadius(16))
                                                .padding([.horizontal,.vertical,.leading,.trailing])
                                                
                                            }
                                            .foregroundColor(.white)
                                            .multilineTextAlignment(.trailing)
                                            .frame(width: screenWidth/2, height: screenHeight/5.5)
                                            .cornerRadius(16)
                                        }
                                    }
                                }
                            }
                            .multilineTextAlignment(.trailing)
                            .padding(.leading)
                        }
                        //popular offer end
                        VStack{ //hotel near you start
                            HStack{
                                Spacer()
                                Text("فنادق بالقرب منك")
                                    .fontWeight(.bold)
                            }
                            .padding(.horizontal)
                            HStack{
                                ScrollView(.horizontal, showsIndicators: true){
                                    HStack(spacing: 24){
                                        ForEach(hotels, id: \.id) { hotel in
                                            ZStack{
                                                Color("Bg1Color")
                                                    .opacity(0.5)
                                                    .cornerRadius(16)
                                                if(hotel.headerTitle=="منتجع الناصرية"){
                                                    Button(action: {
                                                        showHotelView.toggle()
                                                    }, label: {
                                                        VStack{
                                                            VStack{
                                                                Image(hotel.imageName).resizable()
                                                            }
                                                            VStack{
                                                                Text(hotel.headerTitle)
                                                                    .fontWeight(.bold)
                                                                HStack{
                                                                    Text("⭐️ "+hotel.ratingStars)
                                                                    Spacer()
                                                                    Text(hotel.pricePerNight+" ر.س. ")
                                                                }
                                                                .font(.footnote)
                                                                .padding(.bottom)
                                                            }
                                                            .padding(.horizontal)
                                                        }
                                                    })
                                                    .fullScreenCover(isPresented: $showHotelView, content: {HotelView()})
                                                } else {
                                                    VStack{
                                                        VStack{
                                                            Image(hotel.imageName).resizable()
                                                        }
                                                        VStack{
                                                            Text(hotel.headerTitle)
                                                                .fontWeight(.bold)
                                                            HStack{
                                                                Text("⭐️ "+hotel.ratingStars)
                                                                Spacer()
                                                                Text(hotel.pricePerNight+" ر.س. ")
                                                            }
                                                            .font(.footnote)
                                                            .padding(.bottom)
                                                        }
                                                        .padding(.horizontal)
                                                    }
                                                }
                                                
                                                
                                            }
                                            .foregroundColor(.white)
                                            .multilineTextAlignment(.trailing)
                                            .frame(width: screenWidth/2.5, height: screenHeight/4.5)
                                            .cornerRadius(16)
                                        }
                                    }
                                }
                            }
                            .multilineTextAlignment(.center)
                            .padding([.top,.bottom,.leading])
                        }
                        //hotel near you end
                        Spacer()
                            .padding(.bottom)
                    }
                    .frame(height: screenHeight*0.8)
                    .background(Rectangle()
                        .foregroundColor(Color("Bg2Color"))
                        .cornerRadius(32)
                        .ignoresSafeArea(.all))
                    //rectangle end
                }
            }
            .foregroundColor(Color("Fnt1Color"))
            //content end
        } //UI Container end
    }
}

