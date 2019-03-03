module Types
  class PosterType < Types::BaseObject

    description   "A poster"

    field :name,        String, null: true
    field :description, String, null: true
    field :artists,     String, null: true
    field :year,        String, null: true
    field :width,       Int,    null: true
    field :height,      Int,    null: true
    field :venue,       String, null: true
    field :designer,    String, null: true
    field :printer,     String, null: true
    field :notes,       String, null: true
    field :series,      String, null: true
    field :signed_by,   String, null: true
  end
end
