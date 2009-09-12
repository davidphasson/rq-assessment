class CreateSurveys < ActiveRecord::Migration
  def self.up
    create_table :surveys do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :total_score
      t.integer :rq_score

      t.timestamps
    end
  end

  def self.down
    drop_table :surveys
  end
end
