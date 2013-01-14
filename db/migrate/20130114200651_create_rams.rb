class CreateRams < ActiveRecord::Migration
  def change
    create_table :rams do |t|
      t.string :name
      t.string :country
      t.string :like
      t.string :friend

      t.timestamps
    end
  end
end
