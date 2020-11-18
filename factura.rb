def multiply(number1, number2)
    return number1.to_i * number2.to_i
end

def renderRow1(quantity, unitPrice, baseAmount)
    return "# #{quantity} * #{unitPrice} = #{baseAmount}"
end

def main(quantity, unitPrice)
    @baseAmount = multiply(quantity, unitPrice)

    renderRow1(quantity, unitPrice, @baseAmount)
end

puts main(ARGV[0], ARGV[1])