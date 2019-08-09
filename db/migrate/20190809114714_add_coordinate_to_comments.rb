class AddCoordinateToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :coordinate, index: true
  end
end
