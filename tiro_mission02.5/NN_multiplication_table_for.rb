puts "input number"
userInput = gets.to_i
# puts "userInput: " + userInput
n1 = 0
n2 = 0

#0|1,2,3,4,5,6
showMessage = ""
showMessage << "0|1"
n1 = 2
for n1 in 2..userInput
  showMessage = showMessage + "," + n1.to_s
end
puts showMessage

#--------------
showMessage = ""
minusMaxNumber = 2 * userInput + 1
n1 = 1
for n1 in 1..minusMaxNumber
  showMessage << "-"
end
puts showMessage

#1|1,2,3
#2|2,4,6
showMessage = ""
n1 = 1
for n1 in 1..userInput
  showMessage = showMessage + n1.to_s + "|" + n1.to_s
  for n2 in 2..userInput
    multiNumber = n1 * n2
    showMessage = showMessage + "," + multiNumber.to_s
  end
  showMessage += "\n"
end
puts showMessage
