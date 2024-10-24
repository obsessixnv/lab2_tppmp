import Foundation
// 1. Опишіть масив fibArray з десяти перших чисел Фібоначчі.
var fibArray: [Int] = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
// 2. Створіть масив revArray, елементи якого знаходяться в оберненому порядку відносно масиву fibArray.
var revArray: [Int] = Array(fibArray.reversed())
// 3. Опишіть масив простих чисел snglArray, які не перевищують число 100.
var snglArray: [Int] = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
// 4. Виведіть на екран кількість елементів масиву snglArray.
print("Кількість елементів у snglArray: \(snglArray.count)")
// 5. Виведіть на екран 10-й елемент масиву snglArray.
print("10-й елемент у snglArray: \(snglArray[9])")
// 6. Виведіть на екран підмасив елементів масиву snglArray, починаючи з 15-го та закінчуючи 20-м елементами.
let subArray = snglArray[14...19]
print("Підмасив з 15-го по 20-й елемент: \(subArray)")
// 7. Створіть масив rptArray з 10 елементів, що рівні 10-му елементу масиву snglArray.
var rptArray = Array(repeating: snglArray[9], count: 10)
print("rptArray: \(rptArray)")
// 8. Опишіть масив непарних чисел oddArray (не менших за число 0, та не більших за число 10), використовуючи init(arrayLiteral:).
var oddArray: [Int] = [1, 3, 5, 7, 9]
// 9. Додайте до масиву oddArray число 11.
oddArray.append(11)
// 10. Додайте до масиву oddArray числа 15, 17, 19 у якості підмасиву.
oddArray.append(contentsOf: [15, 17, 19])
// 11. Вставте у масив oddArray число 13 на позицію між числами 11 та 15.
oddArray.insert(13, at: 6)
// 12. Видаліть елементи масиву oddArray, починаючи з 5-го та закінчуючи 8-им (невключно) елементами.
oddArray.removeSubrange(4..<7)
// 13. Видаліть останній елемент масиву oddArray та виведіть його на екран.
let lastElement = oddArray.removeLast()
print("Останній елемент oddArray: \(lastElement)")
// 14. Замініть елементи масиву oddArray, починаючи з 2-го та закінчуючи останнім, на масив з числовими елементами 2, 3, 4.
oddArray[1...] = [2, 3, 4]
// 15. Видаліть елемент масиву oddArray, який рівний числу 3.
if let index = oddArray.firstIndex(of: 3) {
    oddArray.remove(at: index)
}
// 16. Виведіть значення, яке визначає, чи міститься число 3 у масиві oddArray.
print("Чи містить oddArray число 3? \(oddArray.contains(3))")
// 17. Виведіть на екран рядкове представлення масиву oddArray.
print("oddArray як рядок: \(oddArray)")
