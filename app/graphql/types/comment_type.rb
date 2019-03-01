module Types
  class CommentType < Types::BaseObject
    description "An article comment"

    field :id, ID, null: false
    field :article, ArticleType, null: false
    field :commenter, String, null: false
    field :body, String, null: false
  end
end
