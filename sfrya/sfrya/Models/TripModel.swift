import Foundation

struct Trip : Identifiable {
    var id = UUID()
    var name : String
    var checkInDate : String
    var checkOutDate : String
    var imageName : String
}



let trips : [Trip] = [
    Trip(name: "منتجع الناصرية", checkInDate: "22 فبراير", checkOutDate: "26 فبراير", imageName: "nasrya-hotel"),
    Trip(name: "دايموند", checkInDate: "23 ديسمبر", checkOutDate: "25 ديسمبر", imageName: "diamond-hotel"),
    Trip(name: "مخيم مسارات", checkInDate: "16 نوفمبر", checkOutDate: "20 نوفمبر", imageName: "masarat-camp"),
    Trip(name: "نزل النسيم الريفي", checkInDate: "10 يناير", checkOutDate: "20 يناير", imageName: "naseem-motel")
]
