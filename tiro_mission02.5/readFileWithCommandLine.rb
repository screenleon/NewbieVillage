for arg in ARGV
  file_path = arg
  puts "open " + file_path + "\n"
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
  puts "\n"
  puts "\n"

end
