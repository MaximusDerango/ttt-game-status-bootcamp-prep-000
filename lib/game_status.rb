# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8],
    [0, 3, 6], [1, 4, 7], [2, 5, 8],
    [0, 4, 8], [2, 4, 6]
]

def won?(board)
  WIN_COMBINATIONS.detect?{|lin| lin.uniq.length == 1 && ["X", "O"].include?(lin.uniq[0])}
end

def full?(board)
  board.all?{|x| x == "X" || x == "O"}
end

def draw?(board)
  full?(board) && won?(board) == false
end

def over?(board)
  won?(board) || draw?(board)
end

def winner?(board)
 board[won?(board)[0]]
end