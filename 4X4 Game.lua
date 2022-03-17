math.randomseed(os.time())
--makes it more random
for i=0, 100, 1 do
  local randNum=math.random(1,4)
end
function help()
  print("This is somewhat like minsweeper, not exactly though. You can see the 4 by 4 grid above. One of those boxes is choosen by the computer at random. If you choose the correct box you win, if you choose a box that touches the neighbouring box (diagonals count) you can still guess boxes. If you guess a box that does not border the correct box you lose. for example, for A1, choosing A1 will makes you win, choosing A2, B1 or B2 will still allow you to guess, choosing any other square will end the game. Good Luck!!!")
end
local letter_row={"A", "B", "C", "D"}
local number_row={"1","2","3","4"}
local row_A={"1","2","3","4"}
local row_B={"1","2","3","4"}
local row_C={"1","2","3","4"}
local row_D={"1","2","3","4"}
local final_row={row_A, row_B, row_C, row_D}
function display_grid() do
  print("____________________")
  for i=1,4,1 do
    io.write("|")
    for j=1,4,1 do
      io.write(letter_row[i]..number_row[j].." | ")
    end
    print("\n|___|____|____|____|")
    --print("    |    |    |    |")
  end
end
end
display_grid()
print("")
print("Do you need help? (type in \"Y\" or type in anything else if you do not)")
local input=io.read()
input=string.upper(input)
if input=="Y" then
  help()
end
local randNum=math.random(1,4)
local firstNum=randNum
randNum=math.random(1,4)
local secondNum=randNum
local final_Num={firstNum, secondNum}
--print("final_Num",final_Num[1], final_Num[2])
function checker() do
  local letter_length=0
  local letter_input=""
  local number_input=0
  while letter_length~=1 do
    print("Enter Letter: ")
    letter_input=io.read()
    letter_input=string.upper(letter_input)
    print(letter_input)
    letter_length=#letter_input
  end
  local num_type=""
  while (num_type~="number") do
    print("Enter Number")
    number_input=tonumber(io.read())
    num_type=type(number_input)
  end
  if letter_input =="A" then
    letter_input=1
  elseif letter_input=="B" then
    letter_input=2
  elseif letter_input=="C" then
    letter_input=3
  else
    letter_input=4
  end
  local first_Check=math.abs(letter_input-final_Num[1])
  local second_Check=math.abs(number_input-final_Num[2])
  if first_Check>1 then
    print("Eliminated")
    os.exit()
  end
  if second_Check>1 then
    print("Eliminated")
    os.exit()
  end
    if first_Check==0 then
      if second_Check==0 then
        print("Success")
        os.exit()
      end
    end
    print("In-game")
  end
end
while true do
  checker()
end