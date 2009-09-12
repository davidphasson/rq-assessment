class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.string :text
      t.integer :category_id
      t.string :lower_title
      t.string :upper_title

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
