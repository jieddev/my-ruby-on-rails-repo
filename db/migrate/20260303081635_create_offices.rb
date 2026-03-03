class CreateOffices < ActiveRecord::Migration[8.1]
  def change
    create_table :offices do |t|
      t.string :location
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
