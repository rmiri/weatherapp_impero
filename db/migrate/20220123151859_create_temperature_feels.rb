class CreateTemperatureFeels < ActiveRecord::Migration[6.0]
  def change
    create_table :temperature_feels do |t|
      t.float :hot  
      t.float :warm     
      t.float :cold     
      t.timestamps
    end
  end
end
