class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :poster_link
      t.string :series_title
      t.string :released_year
      t.string :certificate
      t.string :runtime
      t.string :genre
      t.string :imdb_rating
      t.string :overview
      t.string :meta_score
      t.string :director
      t.string :star1
      t.string :star2
      t.string :star3
      t.string :star4
      t.string :so_of_votes
      t.string :gross

      t.timestamps
    end
  end
end
