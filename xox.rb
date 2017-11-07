class Xox

  def initialize()
   @fields = Array.new(10, " ")
    $keepGoing = true
    $winner = "no winner yet"
 end

 attr_accessor :fields, :keepGoing


  def printField
    fields.each_with_index do |x,i|
      if i == 0 then
      puts ""
      else
      if i == 3 || i == 6 || i == 9 then
        print "#{x}\n"
      else
        print "#{x}|"
      end
    end
    end
  end


  def playGame
fields[0] = "sss"
  printField
  while $keepGoing do
  nextMove
  endIt
  if $keepGoing
  computerPlay
  end
  printField
    endIt
  end

end

  def endIt
    if (fields[1] == fields[2] && fields[2] == fields[3] && fields[1] != " ")
    $keepGoing = false
      puts "Player #{fields[1]} is the winner!"
    elsif (fields[1] == fields[4] && fields[4] == fields[7] && fields[1] != " ")
      $keepGoing = false
      puts "Player #{fields[1]} is the winner!"
    elsif (fields[3] == fields[6] && fields[6] == fields[9] && fields[3] != " ")
      $keepGoing = false
      puts "Player #{fields[3]} is the winner!"
    elsif (fields[1] == fields[5] && fields[5] == fields[9] && fields[9] != " ")
      $keepGoing = false
      puts "Player #{fields[9]} is the winner!"
    elsif (fields[3] == fields[5] && fields[5] == fields[7] && fields[3] != " ")
      $keepGoing = false
      puts "Player #{fields[3]} is the winner!"
    elsif (fields[7] == fields[8] && fields[8] == fields[9] && fields[9] != " ")
      $keepGoing = false
      puts "Player #{fields[9]} is the winner!"
  end
end


  def nextMove
    rightInputs = [1,2,3,4,5,6,7,8,9]
    puts "Enter next move"
    move = gets.chop.to_i
    if rightInputs.include?(move) && fields[move] == " " then
      fields[move] = "X"

    else
      wrongInput = true
    while wrongInput do
      puts "Wrong input, try again"
      newTry = gets.chop.to_i
      if  rightInputs.include?(newTry) && fields[newTry] == " " then
           fields[newTry] = "X"
        wrongInput = false
    end
    end
  end

end


  def computerPlay
    9.times do |i|
      if fields[i+1] == " " then
        fields[i+1] = "O"
        return
      end
    end
  end





end

x1 = Xox.new
x1.playGame

