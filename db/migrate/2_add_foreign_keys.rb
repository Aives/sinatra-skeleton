class AddForeignKeys < ActiveRecord::Migration
    def change
        change_table :movies do |t|
            t.integer :user_id
        end

        change_table :reviews do |t|
            t.integer :user_id
            t.integer :movie_id
        end
    end
end
