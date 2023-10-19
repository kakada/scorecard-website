class CreateFeedbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks do |t|
      t.string :email
      t.text   :message

      t.timestamps
    end
  end
end
