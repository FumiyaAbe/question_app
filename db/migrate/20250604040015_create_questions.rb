class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :content
      t.string :name
      t.timestamps
    end
  end
end
