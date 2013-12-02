module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end
  
  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end
  
  module InstanceMethods   
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')
      file.each {|row| @csv_contents << row.chomp.split(', ')}
    end

    attr_accessor :headers, :csv_contents

    def each(&block)
      @csv_contents.each {|row| yield CsvRow.new(headers, row)}
    end

    def initialize
      read 
    end
  end
end

class CsvRow
  def initialize(headers=[], row=[])
    @headers = headers
    @row = row
  end

  def method_missing(name)
    @row[headers.index(name.to_s)]
  end
end

class RubyCsv
  include ActsAsCsv
  acts_as_csv
end

m = RubyCsv.new
m.each {|row| row.one}
