def assert
  raise "Assertion failed" unless yield
  puts "Pass"
end