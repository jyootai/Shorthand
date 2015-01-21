class AddDetailsToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :username, :string
    add_column :notes, :note_id, :integer
  end
end
