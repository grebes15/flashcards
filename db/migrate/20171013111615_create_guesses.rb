class CreateGuesses < ActiveRecord::Migration[5.0]
  def change
  	create_table :guesses do |t|
  		t.references :round, foreign_key: true
  		t.references :card, foreign_key: true
  		t.string :response, null: false

  		t.timestamps(null: false)
  	end
  end
end
