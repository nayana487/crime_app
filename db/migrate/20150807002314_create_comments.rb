class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :content
      t.datetime :created_at
      t.references :incident, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
    end
  end
end
