puts "input number"
userInput = gets.to_i
# puts "userInput: " + userInput
n1 = 0
n2 = 0

#0|1,2,3,4,5,6
showMessage = ""
showMessage << "0|1"
n1 = 2
while n1 <= userInput do
  showMessage = showMessage + "," + n1.to_s
  n1 += 1
end
puts showMessage

#--------------
showMessage = ""
minusMaxNumber = 2 * userInput + 1
n1 = 1
while n1 <= minusMaxNumber do
  showMessage << "-"
  n1 += 1
end
puts showMessage

#1|1,2,3
#2|2,4,6
showMessage = ""
n1 = 1
while n1 <= userInput do
  showMessage = showMessage + n1.to_s + "|" + n1.to_s
  n2 = 2
  while n2 <= userInput do
    multiNumber = n1 * n2
    showMessage = showMessage + "," + multiNumber.to_s
    n2 += 1
  end
  showMessage += "\n"
  n1 += 1
end
puts showMessage
