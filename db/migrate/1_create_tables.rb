class CreateTables < ActiveRecord::Migration

  def change
    
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.timestamps
    end

    create_table :movies do |t|
      t.string :name
      t.string :director
      t.string :writer
      t.string :actor
      t.string :movie_genre
      t.date :release_date
    end

    create_table :reviews do |t|
      t.text :review
      t.integer :review_score
      t.timestamps
    end
  end
end
