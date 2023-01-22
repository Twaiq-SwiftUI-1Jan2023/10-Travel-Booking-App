import Foundation
struct Hotel : Identifiable {
    var id = UUID()
    var imageName : String
    var headerTitle : String
    var ratingStars : String
    var pricePerNight : String
}

let hotels : [Hotel] = [
    Hotel(imageName: "nasrya-hotel", headerTitle: "منتجع الناصرية", ratingStars: "4.25", pricePerNight: "2400"),
    Hotel(imageName: "diamond-hotel", headerTitle: "دايموند", ratingStars: "4.6", pricePerNight: "350"),
    Hotel(imageName: "masarat-camp", headerTitle: "مخيم مسارات", ratingStars: "4.45", pricePerNight: "1035"),
    Hotel(imageName: "naseem-motel", headerTitle: "نزل النسيم الريفي", ratingStars: "4.05", pricePerNight: "517.5")
]
