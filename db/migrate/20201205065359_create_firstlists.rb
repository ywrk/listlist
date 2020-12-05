class CreateFirstlists < ActiveRecord::Migration[6.0]
  def change
    create_table :firstlists do |t|
      t.string  :title                , null: false
      t.string  :text1                , null: false
      t.string  :text2                , null: false
      t.string  :text3                , null: false
      t.string  :text4                , null: false
      t.string  :text5                , null: false
      t.string  :text6                , null: false
      t.timestamps
    end
  end
end
