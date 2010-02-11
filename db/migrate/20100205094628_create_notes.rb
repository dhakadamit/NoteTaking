class CreateNotes < ActiveRecord::Migration
  def self.up
    create_table :notes do |t|
      t.string :title, :null => false
      t.text :content, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :notes
  end
end
