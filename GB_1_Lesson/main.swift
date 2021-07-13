//  GB_1_Lesson
//
//  Created by Oksana on 13.07.2021.
//

import Foundation

//1.Решить квадратное уравнение

func solveQuadraticEquation (a: Double, b: Double, c: Double) -> String {
    let discriminant = b * b - 4 * a * c
  
    if discriminant < 0 {
        return ("Корней нет")
    } else if discriminant == 0 {
        let x = -b / (2 * a)
        return("Есть один корень - \(String.init(format: "%.03f", x))")
    } else {
        let x1 = (-b + sqrt(discriminant)) / (2 * a)
        let x2 = (-b - sqrt(discriminant)) / (2 * a)
        return ("Есть два различных корня:\n Первый - \(String.init(format: "%.03f", x1))\n Второй - \(String.init(format: "%.03f", x2))")
    }
}
var equationResult = solveQuadraticEquation (a: 2.0, b: 11.0, c: -22.0)
print(equationResult)


//2.Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу.

func calculatTriangleParameters(leg1: Double, leg2: Double) {
    print("Дан прямоугольный треугольник с катетами: \(leg1), \(leg2)")
    
    let hypo = sqrt(leg1 * leg1  + leg2 * leg2)
    print("Гипотенуза прямого треугольника равна - \(String.init(format: "%.02f", hypo))")
    
    let per = leg1 + leg2 + hypo
    print("Периметр прямого треугольника равен - \(String.init(format: "%.02f", per))")
    
    let square = (leg1 * leg2) / 2
    print("Площадь прямого треугольника равна - \(String.init(format: "%.02f", square))")
}
calculatTriangleParameters(leg1: 8, leg2: 6)


//Рассчитать доходность депозита на 5 лет с учетом процентов.

func calculateTheDeposit(initialDeposit: Double, percent: Double) {
    let years: Int = 5
    var deposit = initialDeposit
    
    for _ in 1...years {
        deposit += (deposit / 100) * percent
    }
    print("Сумма вклада через \(years) лет составит \(String.init(format: "%.02f", deposit))")
}
calculateTheDeposit(initialDeposit: 50000, percent: 5)
