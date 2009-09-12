class CreateResponses < ActiveRecord::Migration
  def self.up
    create_table :responses do |t|
# Many to many
      t.integer :survey_id
      t.integer :question_id
      t.integer :response

      t.timestamps
    end
  end

  def self.down
    drop_table :responses
  end
end
