class CreatePetitions < ActiveRecord::Migration[5.1]
  def change
    create_table :petitions do |t|
      t.text :history
      t.text :pedido
      t.text :facts
      t.text :justification
      t.text :addressing
      t.references :user, index: true
      t.references :lawsuit, index: true
      t.timestamps
    end
  end
end
