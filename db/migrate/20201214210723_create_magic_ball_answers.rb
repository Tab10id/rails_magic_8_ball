class CreateMagicBallAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :magic_ball_answers do |t|
      t.string :question, null: false
      t.string :answer, null: false

      t.timestamps
    end
  end
end
