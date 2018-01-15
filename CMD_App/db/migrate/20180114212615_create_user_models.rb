class CreateUserModels < ActiveRecord::Migration[5.0]
  def change
    create_table :user_models do |t|
      t.string :email
      t.string :name
      t.string :specialty
      t.boolean :is_subscribed
      t.integer :phone

      t.timestamps
    end
  end
end
