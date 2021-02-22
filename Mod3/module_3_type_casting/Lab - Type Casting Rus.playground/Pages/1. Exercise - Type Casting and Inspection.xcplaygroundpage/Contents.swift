/*:
 ## Упражнение - приведение типов и их контроль
 
 Создайте коллекцию типа [Any], включающую несколько вещественных чисел, целых, строк и булевых значений.  Распечатайте содержимое коллекции.
 */
let list: [Any] = [20, "Vanga", true, 52.8, false]

/*:
 Пройдите по всем элементам коллекции.  Для каждого целого, напечайте "Целое число " и его значение.  Повторите то же самое для вещественных чисел, строк и булевых значений.
 */
for item in list {
    if item is Int {
        print("Целое число: \(item)")
    } else if item is Double {
        print("Число с плавующей точкой: \(item)")
    } else if item is Bool {
        print("Булевое значение: \(item)")
    } else if item is String {
        print("Строка: \(item)")
    } else {
        print("Неизвестный тип: \(item)")
    }
}

/*:
 Создайте словарь [String : Any], где все значения — это смесь вещественных и целых чисел, строк и булевых значений.  Выведите пары ключ/значения для всех элементов коллекции.
 */
let dict1: [String : Any] = ["one": 22, "two": 82.5, "three": true, "four": "44", "five": false]

/*:
 Создайте переменную `total` типа `Double`, равную 0.  Переберите все значения словаря, и добавьте значение каждого целого и вещественного числа к значению вашей переменной.  Для каждой строки добавьте 1.  Для каждого булева значения, добавьте 2, в случае, если значение равно `true`, либо вычтите 3, если оно `false`.  Напечатайте значение `total`.
 */
var total: Double = 0

for (_, value) in dict1 {
    switch value {
    case let value as Int:
        total += Double(value)
    case let value as Double:
        total += value
    case _ as String:
        total += 1
    case let value as Bool:
        if value {
            total += 2
        } else {
            total -= 3
        }
    default:
        print("Неизвестное значение")
    }
}

print("Total: \(total)")

/*:
 Создайте переменную `total2` типа `Double`, и установите её равной 0.  Снова пройдите по всей коллекции, складывая все целые и вещественные числа.  Для каждой строки, встретившейся на пути, попробуйте сконвертировать её в число, и добавьте это значение к общему.  Игнорируйте булевы значения.  Распечатайте итог.
 */
var total2: Double = 0

for (_, value) in dict1 {
    switch value {
    case let value as Int:
        total2 += Double(value)
    case let value as Double:
        total2 += value
    case let value as String:
        if let num: Double = Double(value) {
            total2 += num
        }
    default:
        print("Неизвестное значение \(value)")
    }
}

print("Total2: \(total2)")
//: страница 1 из 2  |  [Далее: упражнение для приложения - типы тренировок](@next)
