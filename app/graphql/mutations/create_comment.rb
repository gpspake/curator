module Mutations
  class CreateComment < Mutations::BaseMutation
    description "create a comment"

    null true

    argument :article_id, ID, required: true
    argument :commenter, String, required: true
    argument :body, String, required: true

    field :comment, Types::CommentType, null: true
    field :errors, [String], null: false

    def resolve(article_id:, commenter:, body:)
      article = Article.find(article_id)
      comment = article.comments.new(commenter: commenter, body: body)
      if comment.save
        # Successful creation, return the created object with no errors
        {
          article: article,
          comment: comment,
          errors: [],
        }
      else
        # Failed save, return the errors to the client
        {
          comment: nil,
          errors: comment.errors.full_messages
        }
      end
    end
  end
end
