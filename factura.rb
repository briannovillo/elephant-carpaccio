def renderRow1(quantity, unitPrice)
    return "# #{quantity} * #{unitPrice} = "
end

def main(quantity, unitPrice)
    renderRow1(quantity, unitPrice)
end

puts main(ARGV[0], ARGV[1])