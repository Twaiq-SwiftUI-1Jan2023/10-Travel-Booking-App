//
//  Model.swift
//  HomeWork
//
//  Created by Judy Alshahrani on 28/06/1444 AH.
//
//
//import SwiftUI
//
//struct Model: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct Model_Previews: PreviewProvider {
//    static var previews: some View {
//        Model()
//    }
//}
import SwiftUI
struct Img {
    var id = UUID()
    var img : String
}
struct Imgtxt {
    var id = UUID()
    var img : String
    var txt : String
}
let imgtxt : [Imgtxt] = [
    Imgtxt(img: "1", txt: "hi abdullah") ,
    Imgtxt(img: "2", txt: "hi abdullah") ,
    Imgtxt(img: "4", txt: "hi abdullah") ,
    Imgtxt(img: "1", txt: "hi abdullah") ,
    Imgtxt(img: "2", txt: "hi abdullah") ,
    Imgtxt(img: "4", txt: "hi abdullah") ,
]

let imgs : [Img] = [
Img(img: "1"),
Img(img: "2"),
Img(img: "4"),
Img(img: "4"),
Img(img: "1"),
Img(img: "2"),
Img(img: "1"),
Img(img: "4")
]

struct txtModle: View {
    let temp : Imgtxt
    var body: some View {
        HStack{
            VStack(spacing: 10){
                Image(temp.img).resizable().frame(width: 100, height: 100).cornerRadius(16)
                Text(temp.txt).font(.title2)
                HStack(spacing: 0){
                    Image(systemName: "star.fill").font(.system(size: 10)).foregroundColor(Color.yellow)
                    Image(systemName: "star.fill").font(.system(size: 10)).foregroundColor(Color.yellow)
                    Image(systemName: "star.fill").font(.system(size: 10)).foregroundColor(Color.yellow)
                    Image(systemName: "star.fill").font(.system(size: 10)).foregroundColor(Color.yellow)
                    Image(systemName: "star.fill").font(.system(size: 10)).foregroundColor(Color.yellow)

                }
            }
        }
    }
}

struct ViewModel: View {
    let temp : Img
    var body: some View {
        HStack{
            HStack{
                Image(temp.img).resizable().frame(width: 80, height: 80).cornerRadius(16) }
        }
    }
}
