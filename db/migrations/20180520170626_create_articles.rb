class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
       add_column :articles, :description, :text
       add_column :articles, :created_at, :datetime
       add_column :articles, :updated_at, :datetime
    end
  end
end
