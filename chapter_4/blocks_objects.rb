class ProcExample
  def pass_in_block(&action)
    @stored_proc = action
  end

  def use_proc(parameter)
    @stored_proc.call(parameter)
  end
end

eg = ProcExample.new

eg.pass_in_block { |param| puts "The parameter is #{param}"  }
eg.use_proc(99)

puts

def create_block_object(&block)
  block
end

bo = create_block_object { |param| puts "You called me with #{param}" }
bo.call 99
bo.call "cat"

bo = lambda { |param| puts "You called me with #{param}"  }
bo.call 99
bo.call "cat"