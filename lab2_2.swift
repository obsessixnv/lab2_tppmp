import Foundation

// 1. Опишіть множину chSet із символів а, b, c та d.
let chSet: Set<Character> = ["a", "b", "c", "d"]

// 2. Створіть mutable множину mChSet на основі множини chSet.
var mChSet = chSet

// 3. Виведіть на екран кількість елементів множини mChSet.
print("Кількість елементів у mChSet: \(mChSet.count)")

// 4. Вставте символ е в множину mChSet.
mChSet.insert("e")

// 5. Створіть множину srtChSet, яка є відсортованою версією множини mChSet.
let srtChSet = Set(mChSet.sorted())
print("Відсортована множина: \(srtChSet)")

// 6. Видаліть з множини mChSet символ f та виведіть повідомлення про видалення.
if let removedF = mChSet.remove("f") {
    print("Видалений символ: \(removedF)")
} else {
    print("Символ 'f' не було в множині")
}

// 7. Видаліть символ d з множини mChSet за його індексом та виведіть рядкове представлення множини mChSet.
if let index = mChSet.firstIndex(of: "d") {
    mChSet.remove(at: index)
}
print("Множина після видалення d: \(mChSet)")

// 8. Виведіть відстань у множині mChSet між першим елементом та символом а.
if let first = mChSet.first, let aIndex = mChSet.firstIndex(of: "a") {
    let distance = mChSet.distance(from: mChSet.firstIndex(of: first)!, to: aIndex)
    print("Відстань між першим елементом та 'a': \(distance)")
} else {
    print("Символ 'a' не знайдено у множині")
}

// 9. Вставте символ а в множину mChSet.
mChSet.insert("a")

// 10. Опишіть множини aSet (зі значеннями One, Two, Three, 1, 2) та bSet (зі значеннями 1, 2, 3, One, Two).
let aSet: Set<AnyHashable> = ["One", "Two", "Three", 1, 2]
let bSet: Set<AnyHashable> = [1, 2, 3, "One", "Two"]

// 11. Створіть множину, яка містить всі спільні елементи для множин aSet та bSet.
let commonSet = aSet.intersection(bSet)
print("Спільні елементи: \(commonSet)")

// 12. Створіть множини, які містять унікальні елементи у множині aSet по відношенню до bSet та навпаки.
let uniqueASet = aSet.subtracting(bSet)
let uniqueBSet = bSet.subtracting(aSet)
print("Унікальні елементи в aSet: \(uniqueASet)")
print("Унікальні елементи в bSet: \(uniqueBSet)")

// 13. Створіть множину, яка містить елементи, які не є спільними для множин aSet та bSet.
let symmetricDifferenceSet = aSet.symmetricDifference(bSet)
print("Не спільні елементи: \(symmetricDifferenceSet)")

// 14. Створіть множину, яка об'єднує усі елементи множин aSet та bSet.
let unionSet = aSet.union(bSet)
print("Об'єднана множина: \(unionSet)")

// 15. Опишіть множини xSet (зі значеннями 2...4), ySet (зі значеннями 1...6), zSet (зі значеннями 3, 4, 2) та x1Set (зі значеннями 5, 6, 7).
let xSet: Set<Int> = [2, 3, 4]
let ySet: Set<Int> = [1, 2, 3, 4, 5, 6]
let zSet: Set<Int> = [2, 3, 4]
let x1Set: Set<Int> = [5, 6, 7]

// 16. Виведіть значення, які визначають чи множина xSet входить у множину ySet, а також чи множина ySet входить у множину xSet.
print("xSet входить у ySet: \(xSet.isSubset(of: ySet))")
print("ySet входить у xSet: \(ySet.isSubset(of: xSet))")

// 17. Виведіть значення, які визначають чи множина xSet містить множину ySet, а також чи множина ySet містить множину xSet.
print("xSet містить ySet: \(xSet.isSuperset(of: ySet))")
print("ySet містить xSet: \(ySet.isSuperset(of: xSet))")

// 18. Виведіть значення, яке визначає чи множини xSet та zSet є рівними.
print("xSet дорівнює zSet: \(xSet == zSet)")

// 19. Виведіть значення, яке визначає чи множина xSet входить у множину zSet, але не є рівною множині zSet.
print("xSet входить у zSet, але не є рівною: \(xSet.isStrictSubset(of: zSet))")

// 20. Виведіть значення, яке визначає чи множина xSet містить множину zSet, але не є рівною множині zSet.
print("xSet містить zSet, але не є рівною: \(xSet.isStrictSuperset(of: zSet))")
