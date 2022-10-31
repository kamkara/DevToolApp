class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers, id: :uuid do |t|
      t.json :content
      t.boolean :correct

      t.timestamps
    end
  end
end
