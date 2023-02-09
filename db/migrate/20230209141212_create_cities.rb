class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :city_name
      t.belongs_to :dog, index: true
      t.belongs_to :patient, index: true

      t.timestamps
    end
  end
end
