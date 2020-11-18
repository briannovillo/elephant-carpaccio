def renderRow1(quantity)
    return "# #{quantity}"
end

def main(quantity)
    renderRow1(quantity)
end

puts main(ARGV[0])