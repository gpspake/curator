module Mutations
  class CreateArticle < Mutations::BaseMutation
    description "Create an article"

    null true

    argument :title, String, required: true
    argument :text, String, required: true

    field :article, Types::ArticleType, null: true
    field :errors, [String], null: false

    def resolve(title:, text:)
      article = Article.new(title: title, text: text)
      if article.save
        # Successful creation, return the created object with no errors
        {
          article: article,
          errors: [],
        }
      else
        # Failed save, return the errors to the client
        {
          article: nil,
          errors: article.errors.full_messages
        }
      end
    end
  end
end
