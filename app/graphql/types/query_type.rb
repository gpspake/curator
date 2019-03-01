module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # First describe the field signature:
    field :article, ArticleType, null: true do
      description "Find an article by ID"
      argument :id, ID, required: true
    end

    # Then provide an implementation:
    def article(id:)
      Article.find(id)
    end
  end
end
