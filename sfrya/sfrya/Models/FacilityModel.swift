import Foundation
struct Facility : Identifiable{
    var id = UUID()
    var name : String
    var imageName : String
}


let essentialFacilities : [Facility] = [
    Facility(name: "أجهزة تكييف", imageName: "air.conditioner.horizontal"),
    Facility(name: "انترنت", imageName: "wifi"),
    Facility(name: "صراف آلي", imageName: "banknote"),
    Facility(name: "الرعاية الصحية", imageName: "stethoscope")
]

let entertainmentFacilities : [Facility] = [
    Facility(name: "نادي رياضي", imageName: "figure.run"),
    Facility(name: "ترفيه منزلي", imageName: "tv.and.mediabox"),
    Facility(name: "مقهى", imageName: "mug"),
    Facility(name: "مخيم خارجي", imageName: "house.lodge"),
]

let otherFacilities : [Facility] = [
Facility(name: "مواقف مخصصة", imageName: "parkingsign.circle"),
Facility(name: "مطاعم", imageName: "fork.knife"),
Facility(name: "تسوق", imageName: "bag"),
Facility(name: "غرف اجتماعات", imageName: "table.furniture")
]
