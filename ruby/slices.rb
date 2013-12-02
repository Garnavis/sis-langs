numbers = []
16.times {numbers << rand(100)}

puts 'Printing numbers normally:'
numbers.each {|n| puts n}

line = ''
puts 'Printing numbers four at a time:'
numbers.each_index do |i|
        line << "#{numbers[i].to_s} "
    if i % 4 == 3
        puts line
        line = ''
    end
end

puts 'Printing numbers in slices:'
numbers.each_slice(4) {|slice| puts (slice.map {|n| n.to_s}).join(' ')}
