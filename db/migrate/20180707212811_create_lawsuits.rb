class CreateLawsuits < ActiveRecord::Migration[5.1]
  def change
    create_table :lawsuits do |t|
      t.text :description
      t.text :justification
      t.boolean :win
      t.references :player_turn, index: true
      t.references :complainant, index: true
      t.references :defendant, index: true
      t.references :judge, index: true
      t.references :corrector, index: true
      t.timestamps
    end
  end
end
