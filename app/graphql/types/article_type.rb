module Types
  class ArticleType < Types::BaseObject
    description "An article"

    field :id, ID, null: false
    field :title, String, null: false
    field :text, String, null: true
    # Fields can return lists of other objects:
    field :comments, [Types::CommentType], null: true,
          # And fields can have their own descriptions:
          description: "This article's comments, or null if this post has comments disabled."
  end
end