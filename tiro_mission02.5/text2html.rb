puts "text without END"
userInput = gets
rowNumber = 1
text = ""
stringMatch = false
userInput.delete!("\n")

text << "<table>\n"
while userInput != "END" do
  text << "<tr><td>"
  text << rowNumber.to_s
  text << "</td><td>"
  text << userInput
  text << "</td></tr>\n"
  rowNumber += 1
  userInput = gets
  userInput.delete!("\n")
end

text << "</table>\n"

if rowNumber != 1 then
  puts text
end
