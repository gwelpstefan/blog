class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.text :body
      t.reference :post

      t.timestamps
    end
    
    add_index :comment, :post_id
  end
end
