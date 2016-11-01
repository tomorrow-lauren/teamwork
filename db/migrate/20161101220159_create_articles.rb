class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.integer :user_id
      t.text :title
      t.text :content
      t.integer :team_id

      t.timestamps
    end
  end
end
