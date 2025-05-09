def benchmark
    # Capture the start time
    start_time = Time.now

    # Yield to the block (i.e., run the code inside the block)
    yield
  
    # Capture the end time after block has run
    end_time = Time.now
  
    # Return the difference (duration) in seconds
    end_time - start_time
end
 
# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = "apple"*100000000
 
running_time = benchmark { long_string.reverse }
 
puts "string.reverse took #{running_time} seconds to run"