//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    //Add
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs;
    }
    
    func add(_ list: Array<Int> ) -> Int {
        var total = 0
        for num in list {
            total += num;
        }
        return total;
    }
    
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        var ret = [String: Int]();
        ret["x"] = lhs["x"]! + rhs["x"]!;
        ret["y"] = lhs["y"]! + rhs["y"]!;
        return ret;
    }
    
    //Subtract
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs;
    }
    
    func subtract(_ list: Array<Int> ) -> Int {
        var total = 0
        for num in list {
            total -= num;
        }
        return total;
    }
    
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        var ret = [String: Int]();
        ret["x"] = lhs["x"]! - rhs["x"]!;
        ret["y"] = lhs["y"]! - rhs["y"]!;
        return ret;
    }
    
    //Multiply
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs;
    }
    
    func multiply(_ list: Array<Int> ) -> Int {
        var total = 1
        for num in list {
            total *= num;
        }
        return total;
        
    }
    
    //Divide
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    func divide(_ list: Array<Int> ) -> Int {
        var total = 0
        for num in list {
            total /= num
        }
        return total
        
    }
    
    //Count
    func count(_ list: Array<Int>) -> Int {
        return list.count
    }
    
    //Average
    func avg(_ list: Array<Int>) -> Int {
        var total = self.add(list)
        total /= list.count
        return total
    }
    
    //MathOP
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int{
        return op(lhs, rhs);
    }
    
    func mathOp(args: Array<Int>, beg: Int, op: (Int, Int) -> Int) -> Int {
        var total = beg;
        
        for index in 0..<args.count {
            total = op(args[index], total);
        }
        
        return total;
    }
}
