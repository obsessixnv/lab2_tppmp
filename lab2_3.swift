import Foundation

// 1. Опишіть словник nDict
let nDict: [String: String] = ["1": "One", "2": "Two", "3": "Three", "4": "Four", "5": "Five"]

// 2. Виведіть на екран значення масиву nDict за ключем 3.
if let valueForKey3 = nDict["3"] {
    print("Значення для ключа 3: \(valueForKey3)")
} else {
    print("Ключ 3 не знайдено")
}


// 3. Перевірити, чи існує ключ за індексом
let keysArray = Array(nDict.keys)
let index = 3// Вказуємо індекс, за яким хочемо отримати значення (для ключа "4")
if index < keysArray.count {
    let key = keysArray[index]
    if let value = nDict[key] {
        print("Значення для ключа \(key): \(value)")
    } else {
        print("Ключ \(key) не знайдено")
    }
} else {
    print("Індекс виходить за межі масиву ключів")
}

// 4. Створіть mutable словник mNDict на основі словника nDict.
var mNDict = nDict

// 5. Додайте елементи 6:Seven та 7:Six до словника mNDict.
mNDict["6"] = "Seven"
mNDict["7"] = "Six"

// 6. Оновіть значення елементів словника mNDict, не використовуючи subscript [], до наступних: 6:Six, 7:Seven, 8:Eight.
mNDict.updateValue("Six", forKey: "6")
mNDict.updateValue("Seven", forKey: "7")
mNDict.updateValue("Eight", forKey: "8")
print(mNDict)
// 7. Видаліть елемент за ключем 5 зі словника mNDict.
mNDict.removeValue(forKey: "5")
print(mNDict)
// 8. Видаліть елемент за індексом ключа 4 зі словника mNDict.
mNDict.removeValue(forKey: "4")
print(mNDict)
// 9. Визначте та виведіть на екран відстань у словнику mNDict між парами значень 1:One та 7:Seven.
// Для роботи з відстанню, перетворимо словник в масив ключів, оскільки словник не підтримує індексацію.
if let index1 = keysArray.firstIndex(of: "1"),
   let index7 = keysArray.firstIndex(of: "7") {
    let distance = index7 - index1
    print("Відстань між 1:One та 7:Seven: \(distance)")
} else {
    print("Ключі 1 або 7 не знайдено")
}

// 10. Створіть масив mNDictKeys, елементами якого є усі ключі словника mNDict.
print("Ключі словника mNDict: \(keysArray)")

// 11. Створіть масив значень зі словника mNDict.
let mNDictValues = Array(mNDict.values)
print("Значення словника mNDict: \(mNDictValues)")

// 12. Виведіть на екран кількість елементів словника mNDict, а також кількість його всіх ключів та його всіх значень.
print("Кількість елементів у словнику mNDict: \(mNDict.count)")
print("Кількість ключів у словнику mNDict: \(keysArray.count)")
print("Кількість значень у словнику mNDict: \(mNDictValues.count)")

// 13. Виведіть на екран рядкове представлення словника mNDict.
print("Рядкове представлення словника mNDict: \(mNDict)")
