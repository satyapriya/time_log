class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :e_mail
      t.string :password
      t.string :status
      t.string :full_name
      t.text :about

      t.timestamps
    end
  end
end
