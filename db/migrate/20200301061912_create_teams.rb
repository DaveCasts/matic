class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :Name
      t.string :email
      t.decimal :size
      t.text :message
      t.integer :user_id
      t.timestamps
    end
  end
end
