import Foundation
struct Offer : Identifiable {
    var id = UUID()
    var imageName : String
    var headerTitle : String
    var description : String
}

let offers : [Offer] = [
    Offer(imageName: "alula-weekend", headerTitle: "عطلة نهاية أسبوع في العلا", description: "تضمن هذه الباقة لمدة يومين فرصة مثالية للباحثين عن تجربة ثقافية ممتعة ومثيرة للاهتمام في قلب العلا."),
    Offer(imageName: "tabuk-trip", headerTitle: "الجبل والوادي في تبوك", description: "اكتشف روعة مدينة تبوك وخليج العقبة مع باقة عطلتنا التي توفّر لك أروع المزايا لمشاهدة أبرز المواقع الأثرية مثل قلعة تبوك الأثرية، متحف الكناني للتراث ومغاير شعيب."),
    Offer(imageName: "abha-journey", headerTitle: "الطبيعة في أبها و جبال فيفاء", description: "تمنحك هذه الباقة تجربة متكاملة ومثالية! بدءاً من جبال أبها الشاهقة وغاباتها الخلابة وصولاً إلى جبال فيفاء الشهيرة والقرى التاريخية المليئة بالحكايات."),
    Offer(imageName: "farasan-island", headerTitle: "رحلة إلى جازان وجزر فرسان", description: "إنها فرصتك للاستجمام في عطلة نهاية الأسبوع والابتعاد عن الروتين اليومي مع باقة الـ4 ليالٍ التي نقدمها لك؛ حيث الطبيعية المُدهشة والجزر الساحرة والشواطئ الصافية.")
]
