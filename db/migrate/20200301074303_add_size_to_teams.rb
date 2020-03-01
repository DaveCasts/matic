class AddSizeToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :size, :decimal
  end
end
