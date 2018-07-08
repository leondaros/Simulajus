class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :defense_type
      t.integer :lawsuit_type
      t.integer :evidence
      t.integer :addressing_type
      t.references :petition, index: true
      t.timestamps
    end
  end
end
