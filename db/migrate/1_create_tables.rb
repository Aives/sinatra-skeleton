class CreateTables < ActiveRecord::Migration

  def change
    # alex
    # rob
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.timestamps
    end

    # terminator
    create_table :movies do |t|
      t.string :director
      t.string :writers
      t.string :actors
      t.integer :review_score
      t.text :reviews
      t.string :movie_genre
      t.date :release_date
    end

    # alex + terminator
    # rob + terminator
    #create_table :owned_movies do |t|
     # :user_id
      #:movie_id
    #end

  end

end
