regexp = Regexp.compile(ARGV[0])

File.open(ARGV[1]) do |f|
    f.each_line do |line|
        puts line if regexp.match(line)
    end
end
