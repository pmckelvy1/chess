class Knight < SteppingPiece
  def move_dirs
    [[-2, -1], [-2,  1], [-1, -2], [-1,  2], [ 1, -2], [ 1,  2], [ 2, -1], [ 2,  1]]
  end
end
