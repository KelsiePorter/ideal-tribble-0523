class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :creation_year
      t.string :genre
      t.references :studio, foreign_key: true

      t.timstamps
    end
  end
end
