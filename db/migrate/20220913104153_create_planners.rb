class CreatePlanners < ActiveRecord::Migration[6.1]
  def change
    create_table :planners do |t|
      t.string :name
      t.string :contact
      t.timestamps  
  end
end
