class AddSubTagIdToTag < ActiveRecord::Migration[5.1]
  def change
    add_column :tags, :sub_tag_id, :integer
    add_column :tags, :sub_tag_type, :string
    add_index :tags, [:sub_tag_type, :sub_tag_id]
  end
end
