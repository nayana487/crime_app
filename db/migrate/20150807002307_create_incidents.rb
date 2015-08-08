class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string :name
      t.string :content
      t.string :title
      t.datetime :created_at
      t.references :region, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
    end
  end
end
