class CreateUnittests < ActiveRecord::Migration
  def self.up
    create_table :unittests do |t|
      t.string :title
      t.text :description
      t.text :propurl
      t.text :testurl
      t.string :basehref
      t.string :framework
      t.boolean :hinav
      t.boolean :treecrumb
      t.boolean :titles
      t.boolean :sectiontitle
      t.boolean :backpack
      t.boolean :popup
      t.string :rrptlcount

      t.timestamps
    end
  end

  def self.down
    drop_table :unittests
  end
end
