class CreateOrganisms < ActiveRecord::Migration[5.2]
  def change
    create_table :organisms do |t|
      t.string :order
      t.string :family
      t.string :genus
      t.string :species

      t.timestamps
    end
  end
end
