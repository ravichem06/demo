class CreateModels < ActiveRecord::Migration[5.0]
  def change
    create_table :models do |t|
      t.string :name
      t.string :designer
      t.belongs_to :client
      t.belongs_to :project
      t.belongs_to :app

      t.timestamps
    end
  end
end
