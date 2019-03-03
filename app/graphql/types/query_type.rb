module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # First describe the field signature:
    field :article, ArticleType, null: true do
      description "Find an article by ID"
      argument :id, ID, required: true
    end

    field :posters, [PosterType], null: true do
      description "Find all posters"
    end

    field :poster, PosterType, null: true do
      description "Find a poster by ID"
      argument :id, ID, required: true
    end

    # Then provide an implementation:
    def article(id:)
      Article.find(id)
    end

    def poster(id:)
      Poster.find(id)
    end

    def posters
      Poster.all
    end
  end
end
