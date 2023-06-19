class FileManager
  def initialize(file_name)
    @file_name = file_name
  end

  def read_file
    File.read(@file_name)
  end

  def write_file(content)
    File.open(@file_name, 'w') do |file|
      file.write(content)
    end
  end

  def count_words
    content = read_file
    words = content.split(' ')
    words.size
  end
end

# the SRP by maintaining separate responsibilities for different operations: 
# Reading and writing files (read_file and write_file methods)
# Counting words within a file (count_words method)
# This example demonstrates how a class can handle multiple related responsibilities while still adhering to the SRP. Each method focuses on a specific task, making the class more modular, maintainable, and flexible.