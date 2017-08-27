class ChangeGoodToBlogs < ActiveRecord::Migration[5.1]
  def change
    #変更後の型
def up
  change_column :blogs, :good, :integer, null: false, default: 0
end

#変更前の型
def down
  change_column :blogs, :good, :string, null: true
end
  end
end
