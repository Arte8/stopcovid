class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.string :symptoms
      t.string :treatment
      t.string :travel
      t.string :status
      t.timestamps
    end
  end
end
