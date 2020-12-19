class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :disease
      t.text :body

      t.timestamps
    end
  end
end
