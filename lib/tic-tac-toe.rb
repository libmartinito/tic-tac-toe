class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
  def start_game
    board = [[1,2,3],[4,5,6],[7,8,9]]
    current_player = "player1"
    puts print_board(board)
    loop do
      if current_player == "player1"
        @player1.move(board,current_player)
      else @player2.move(board,current_player)
      end
      puts print_board(board)
      puts "Congratulations!" if did_player_win?(board,current_player)
      if current_player == "player1"
        current_player = "player2"
      else current_player = "player1"
      end
      break if did_player_win?(board,current_player)
    end
  end
  
  def print_board(array)
    columnSeparator = "|"
    rowSeparator = "\n-+-+-\n"
    array.map{|row| row.join(columnSeparator)}.join(rowSeparator)
  end

  def did_player_win?(array,current_player)
    if current_player == "player1"
      symbol = "X"
    else symbol = "O"
    end
    i = 0
    status = false
    s = status
    while i <=2 do
      s = true if array[i].all?(symbol)
      i += 1
    end
    j = 0
    while j <= 2 do
      arr = [array[0][j],array[1][j],array[2][j]]
      s = true if arr.all?(symbol)
      j += 1
    end
    diagonal1 = [array[0][0],array[1][1],array[2][2]]
    diagonal2 = [array[0][2],array[1][1],array[2][0]]
    s = true if diagonal1.all?(symbol)
    s = true if diagonal2.all?(symbol)
    return s
  end
end

class Player
  def move(array,current_player)
    if current_player == "player1"
      symbol = "X"
    else symbol = "O"
    end
    puts "Please choose position: "
    position = gets.chomp
    i = 0
    while i <= 2 do
      index = i if array[i].include?(position.to_i)
      i += 1
    end
    array[index][array[index].index(position.to_i)] = symbol
  end
end

player1 = Player.new
player2 = Player.new

game = Game.new(player1,player2)

game.start_game

