class CreateEmojis < ActiveRecord::Migration
  def change
    create_table :emojis do |t|
      t.string :symbol
      t.string :definition

      t.timestamps null: false
    end
  end
end
