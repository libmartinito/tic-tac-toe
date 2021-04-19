require './lib/tic-tac-toe.rb'
require 'stringio'
describe Game do
  describe "#print_board" do
    it "prints the board" do
      board = [[1,2,3],[4,5,6],[7,8,9]]
      game = Game.new
      expect(game.print_board(board)).to eq("1|2|3\n-+-+-\n4|5|6\n-+-+-\n7|8|9")
    end
  end
  describe "#did_player_win?" do
    it "returns true when won with row 1" do
      board = [["X","X","X"],[4,5,6],[7,8,9]]
      game = Game.new
      expect(game.did_player_win?(board)).to eq(true)
    end

    it "returns true when won with row 2" do
      board = [[1,2,3],["X","X","X"],[7,8,9]]
      game = Game.new
      expect(game.did_player_win?(board)).to eq(true)
    end

    it "returns true when won with row 3" do
      board = [[1,2,3],[4,5,6],["X","X","X"]]
      game = Game.new
      expect(game.did_player_win?(board)).to eq(true)
    end

    it "returns true when won with column 1" do
      board = [["X",2,3],["X",5,6],["X",8,9]]
      game = Game.new
      expect(game.did_player_win?(board)).to eq(true)
    end

    it "returns true when won with column 2" do
      board = [[1,"X",3],[4,"X",6],[7,"X",9]]
      game = Game.new
      expect(game.did_player_win?(board)).to eq(true)
    end

    it "returns true when won with column 3" do
      board = [[1,2,"X"],[4,5,"X"],[7,8,"X"]]
      game = Game.new
      expect(game.did_player_win?(board)).to eq(true)
    end

    it "returns true when won with diagonal 1" do
      board = [["X",2,3],[4,"X",6],[7,8,"X"]]
      game = Game.new
      expect(game.did_player_win?(board)).to eq(true)
    end

    it "returns true when won with diagonal 2" do
      board = [[1,2,"X"],[4,"X",6],["X",8,9]]
      game = Game.new
      expect(game.did_player_win?(board)).to eq(true)
    end
  end
end

describe Player do
  let(:player_instance) {Player.new}
  describe "#move" do
    it "changes the number to X or O on the board" do
      board = [[1,2,3],[4,5,6],[7,8,9]]
      allow(player_instance).to receive(:gets).and_return('2')
      expect {player_instance.move(board)}.to output("Please choose position: \n").to_stdout.and change{board[0][1]}.from(2).to('X')
    end
  end
end