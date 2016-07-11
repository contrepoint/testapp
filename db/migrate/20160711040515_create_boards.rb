class CreateBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :boards do |t|
      t.string :state, default: '-' * 9

      t.timestamps
    end
  end
end
