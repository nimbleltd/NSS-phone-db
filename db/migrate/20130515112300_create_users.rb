class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |table|
      table.column :firstname, :string
      table.column :lastname, :string
      table.column :phone, :string
      table.column :email, :string
      table.column :github, :string
      table.column :part_of_town, :string
    # create_table :user do |t|
      # t.string :first_name,
      # t.string :last_name,
      # t.string :email,
      # t.string :phone,
      # t.string :github,
      # t.string :part_of_town
    end
  end
end
