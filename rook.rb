class Rook < SlidingPiece
  def move_dirs
    [[1, 0], [0, 1], [0, -1], [-1, 0]]
  end

  # def to_s
  #   if self.black?
  #     "♜"
  # else
  #   "♖"
  # end
end
