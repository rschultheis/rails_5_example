class CreateCitizens < ActiveRecord::Migration[5.1]
  def change
    create_table :citizens do |t|
      t.references :country, foreign_key: true
      t.text :name
      t.integer :age

      t.timestamps
    end
  end
end
