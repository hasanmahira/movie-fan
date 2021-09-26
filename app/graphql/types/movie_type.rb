class Types::MovieType < Types::BaseObject
    description "A Movie"

    field :poster_link 	,String, null: true
    field :series_title   ,String, null: true
    field :released_year  ,String, null: true
    field :certificate    ,String, null: true
    field :runtime        ,String, null: true
    field :genre          ,String, null: true
    field :imdb_rating    ,String, null: true
    field :overview       ,String, null: true
    field :meta_score     ,String, null: true
    field :director       ,String, null: true
    field :star1          ,String, null: true
    field :star2          ,String, null: true
    field :star3          ,String, null: true
    field :star4          ,String, null: true
    field :so_of_votes    ,String, null: true
    field :gross          ,String, null: true
    
end
