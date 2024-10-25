package com.example.calculator.model;

public class Model {


    public double calculate(double num1, double num2, String operator) throws ArithmeticException {
        double result = 0;

        if (operator.equals("+")) {
            result= num1 + num2;
        }
        if (operator.equals("-")) {
            result=  num1 - num2;
        }
        if (operator.equals("*")) {
            result=  num1 * num2;
        }
        if (operator.equals("/")) {
            if (num2 != 0) {
                result=  num1 / num2;
            } else {
                throw new ArithmeticException("Division by zero is not allowed.");
            }
        }
        return result;
    }
}
