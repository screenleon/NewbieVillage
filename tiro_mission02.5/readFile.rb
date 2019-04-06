puts "What file you want to print?"
file_path = gets
file_path.delete!("\n")

begin
  File.open(file_path, "r") do |f|
    f.each_line do |line|
      puts line
    end
  end
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
end
