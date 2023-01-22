import SwiftUI

struct AddReviewView: View {
    @State var reviewArea : String = ""
    @Binding var selectedTab : Int
    var body: some View {
        ZStack{ //UI Container start
            //Background Color start
            LinearGradient(gradient: Gradient(colors: [Color("Bg2Color"),Color("Bg1Color")])
                           , startPoint: .bottom, endPoint: .top)
            .ignoresSafeArea(.all)
            //Background Color end
            VStack{ //content start
                VStack{ //navigation bar start
                    HStack{
                        Spacer()
                        HStack{
                            Spacer()
                            Text("أضف تقييم")
                                .font(.title3)
                                .padding(.leading,50)
                                .padding(.top)
                            Spacer()
                            Button {
                                selectedTab = 8
                            } label: {
                                Image(systemName: "chevron.forward.square")
                                    .font(.title3)
                                    .padding(.top)
                            }
                            .padding()
                            
                        }
                        .padding(.top)
                        Spacer()
                    }
                }
                .foregroundColor(.white)
                .background(Color("Bg1Color")).ignoresSafeArea()
                //navigation bar end
                Spacer()
                VStack{ //review area start
                    VStack{ //star rate area start
                        Text("قيــِّـم فترة إقامتك")
                            .padding(.bottom)
                        HStack(spacing:32){
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                        }
                    }
                    //star rate area end
                    VStack{
                        VStack{
                            
                        HStack{
                            Spacer()
                            Spacer()
                            Text(" تـقيـيـمك")
                        }
                        .padding()
                        }
                        
                        VStack{//review text field box start
                            TextField(text:$reviewArea, prompt:Text("شاركنا تجربتك..")
                                , axis: .vertical){}
                                .lineLimit(15, reservesSpace: true)
                                .textFieldStyle(.plain)
                                .multilineTextAlignment(.trailing)
                                .padding([.leading,.top,.trailing])
                                .padding(.leading,screenWidth*0.55)
                                .background(.white)
                                .cornerRadius(16)
                        }
                        .padding()
                        //review text field box end
                    }
                }
                //review area end
                Spacer()
               
                VStack{ //submit button area start
                    HStack{
                        Button {
                        } label: {
                            Text("أرسل تقييمك")
                                .foregroundColor(.white)
                        }
                        .frame(width: screenWidth*0.9, height: screenHeight*0.08, alignment: .center)
                        .background(Color("Bg1Color"))
                        .cornerRadius(16)
                    }
                }
                .padding()
                //submit button area end
            } //content end
            
            
        } //UI Container end
    }
}
