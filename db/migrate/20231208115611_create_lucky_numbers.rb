class CreateLuckyNumbers < ActiveRecord::Migration[7.1]
  def change
    create_table :lucky_numbers do |t|
      t.integer :numbers_count
      t.string :data

      t.timestamps
    end
  end
end
