class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.belongs_to :author, references: :users
      t.text :title
      t.text :content
      t.belongs_to :team

      t.timestamps
    end
  end
end
