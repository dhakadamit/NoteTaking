class CreateNotesTags < ActiveRecord::Migration
  def self.up
    create_table :n.save, :id => false do |t|
      t.integer :note_id, :null => false
      t.integer :tag_id, :null => false
    end
  end

  def self.down
    drop_table :notes_tags
  end
end
