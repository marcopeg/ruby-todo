class AddColumnToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :uname, :string
    add_column :authors, :passw, :string
  end
end
