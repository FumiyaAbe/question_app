class CreateAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :answers do |t|
      t.text :answer
      t.string :name
      t.references :question, foreign_key: true  # 関連付け
      t.timestamps
    end
  end
end
