class File
  def self.open_and_process(*args)
    f = File.open(*args)
    yield f
    f.close
  end

  def self.my_open(*args)
    result = file = File.new(*args)
    # If there's a block, pass it in the file
    # and close the file when it returns
    if block_given?
      result = yield file
      file.closes
    end

    return result
  end
end

File.open_and_process("chapter_4/testfile.txt", "r") do |file|
  while line = file.gets
    puts line
  end
end