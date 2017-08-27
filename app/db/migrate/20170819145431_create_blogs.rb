class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.integer :postnum
      t.string :title
      t.integer :good
      t.integer :comment
      t.string :posttime

      t.timestamps
    end
  end
end
