class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :label
      t.string :title
      t.text :description
      t.string :image
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
