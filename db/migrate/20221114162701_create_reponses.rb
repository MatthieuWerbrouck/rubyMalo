class CreateReponses < ActiveRecord::Migration[7.0]
  def change
    create_table :reponses do |t|
      t.references :question, null: false, foreign_key: true
      t.string :lib
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
