class AddFilesToModel < ActiveRecord::Migration[5.0]
  def change
    add_column :models, :file, :string
  end
end
