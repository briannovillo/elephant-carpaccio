def getDiscountForAmountGreaterThan(amount)
    @discounts = {
        1000 => 3.00,
        5000 => 5.00,
        7000 => 7.00,
        10000 => 10.00,
        50000 => 15.00
    };
    @bestDiscountAvailable = @discounts.keys().select{ |key| amount >= key }.last()
    return @discounts[@bestDiscountAvailable] ? @discounts[@bestDiscountAvailable] : 0.00;
end

def getTaxForState(state)
    @taxes = {
        "UT" => 6.85,
        "NV" => 8.00,
        "TX" => 6.25,
        "AL" => 4.00,
        "CA" => 8.25
    }
    return @taxes[state]
end

def percentage(number, percent)
    return ((percent / 100) * number).round(2)
end

def multiply(number1, number2)
    return number1.to_i * number2.to_i
end

def renderRow1(quantity, unitPrice, baseAmount)
    return "# #{quantity} * #{unitPrice} = #{baseAmount}"
end

def renderRow2(state, tax, percentage)
    return "#{state} #{tax} = #{percentage}"
end

def renderRow3(discount, discountAmount)
    return "DTO % #{discount} #{discountAmount}"
end

def main(quantity, unitPrice, state)
    @baseAmount = multiply(quantity, unitPrice)

    @tax = getTaxForState(state)
    @taxAmount = percentage(@baseAmount, @tax)

    @discount = getDiscountForAmountGreaterThan(@baseAmount)
    @discountAmount = percentage(@baseAmount, @discount)

    "#{renderRow1(quantity, unitPrice, @baseAmount)}\n#{renderRow2(state, @tax, @taxAmount)}\n#{renderRow3(@discount, @discountAmount)}"
end

puts main(ARGV[0], ARGV[1], ARGV[2])