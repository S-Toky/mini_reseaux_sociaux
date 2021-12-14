class CreateCoordinates < ActiveRecord::Migration[6.1]
  def change
    create_table :coordinates do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.datetime :birthdate
      t.string :cellphone
      t.string :phone
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
