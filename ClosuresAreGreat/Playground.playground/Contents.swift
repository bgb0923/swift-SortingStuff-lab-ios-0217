



























func performOperation(with numbers: Double..., operation: (Double,Double) -> Double) -> Double {
    let x = numbers[0]
    let numbers = numbers.dropFirst()
    return numbers.reduce(x, operation)
}

print(performOperation(with: 5, 2, -9) {$0 - $1})