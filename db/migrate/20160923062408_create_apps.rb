class CreateApps < ActiveRecord::Migration[5.0]
  def change
    create_table :apps do |t|
      t.string :name
      t.belongs_to :client
      t.belongs_to :project

      t.timestamps
    end
  end
end
