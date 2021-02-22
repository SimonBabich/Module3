/*:
 ## Упражнение для приложения - типы тренировок
 
 >Эти упражнения закрепляют понимание Swift в контексте фитнес-приложения.
 
 Ваше приложение позволяет отслеживать разные типы тренировок.  При проектировании приложения вы решили создать базовый клас `Workout`, от которого будут наследовать все остальные классы с разными типами тренировок.  Ниже определены три класса. `Workout` — базовый класс со свойствами `time` (время) и `distance` (дистанция), а `Run` (бег) и `Swim` (плавание) — классы-наследники, добавляющие специфичные свойства классу `Workout`.
 
 Также определён массив `workouts` (тренировки), представляющий собой журнал предыдущих тренировок.  Вы используете классы и массив для упражнений ниже.
 */
class Workout {             // тренировка
    let time: Double        // время
    let distance: Double    // дистанция
    
    init(time: Double, distance: Double) {
        self.time = time
        self.distance = distance
    }
}

class Run: Workout {    // бег
    let cadence: Double // темп
    
    init(cadence: Double, time: Double, distance: Double) {
        self.cadence = cadence
        super.init(time: time, distance: distance)
    }
}

class Swim: Workout {   // плавание
    let stroke: String  // стиль
    
    init(stroke: String, time: Double, distance: Double) {
        self.stroke = stroke
        super.init(time: time, distance: distance)
    }
}

var workouts: [Workout] = [
    Run(cadence: 4.0, time: 360.0, distance: 400.0),
    Swim(stroke: "на спине", time: 320.1, distance: 30.0),
    Swim(stroke: "по собачий", time: 53.7, distance: 30.0),
    Run(cadence: 40.4, time: 2788.9, distance: 10000.0)
]
/*:
 
 Напишите функции `describeRun(runningWorkout:)` и `describeSwim(swimmingWorkout:)`, принимающие объекты типа`Run` и `Swim` соответственно.  Ни одна не должна возвращать значений.  Каждая функция должна вывести описание тренировки, включая темп бега, либо стиль плавания.  Время представлено в секундах, расстояние — в метрах, темп — в шагах в минуту.
 */
func describeRun(runningWorkout: Run) {
    print("Run:\n time: \(runningWorkout.time)\n distance: \(runningWorkout.distance)\n cadence: \(runningWorkout.cadence)")
}

func describeSwim(swimmingWorkout: Swim) {
    print("Swim:\n time: \(swimmingWorkout.time)\n distance: \(swimmingWorkout.distance)\n cadence: \(swimmingWorkout.stroke)")
}
/*:
 Переберите все тренировки в массиве `workouts` и, с помощью приведения типов, вызовите либо `describeRun(runningWorkout:)`, либо `describeSwim(swimmingWorkout:)` для каждого.  Обратите внимание, что будет выведено в консоль.
 */
for workout in workouts {
    switch workout {
    case let run as Run:
        describeRun(runningWorkout: run)
    case let swim as Swim:
        describeSwim(swimmingWorkout: swim)
    default:
        print("не бег и не плавание")
    }
}
/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Ранее](@previous)  |  страница 2 из 2
