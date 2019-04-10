require 'optparse'
require 'fileutils'

def readFile(filePath)
  content = ""
  begin
    File.open(filePath, "r") do |f|
      f.each_line do |line|
        content << line
      end
    end
  rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
  end
  return content
end

def saveFile(filePath, content)
  File.open(filePath, "w") do |f|
    f.write content
  end
end


saveflag = false
readPath = ""
savePath = ""
content = ""

OptionParser.new do |opts|
  # Default banner is "Usage: #{opts.program_name} [options]".
  opts.banner += " [arguments...]"
  opts.separator "This demo prints the results of parsing the options."
  opts.version = "0.0.1"
  opts.on("-s", "--saveto"){
    saveflag = true
  }
  begin
    opts.parse!
  rescue OptionParser::ParseError => error
    $stderr.puts error
    $stderr.puts "(-h or --help will show valid options)"
    exit 1
  end
end

if ARGV.length == 2
  savePath = ARGV.first
  ARGV.shift
  readPath = ARGV.first
  ARGV.shift
else
  readPath = ARGV.first
  ARGV.shift
end

if saveflag
  content = readFile(readPath)
  saveFile(savePath, content)
else
  content = readFile(readPath)
  puts content
end
