//: [Previous](@previous)


import UIKit

let now = Date()
let formatter = DateFormatter()

formatter.locale = Locale(identifier: "en_US")
formatter.setLocalizedDateFormatFromTemplate("yyyyMMMMdE")
var result = formatter.string(from: now)
print(result)
print(formatter.dateFormat)

formatter.locale = Locale(identifier: "ko_KR")
formatter.setLocalizedDateFormatFromTemplate("yyyyMMMMdE")
result = formatter.string(from: now)
print(result)
print(formatter.dateFormat)

formatter.dateFormat = "yyyy-MM-d(E)"
result = formatter.string(from: now)
print(result)



//: [Next](@next)
