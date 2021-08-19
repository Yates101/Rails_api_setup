class ReviewSerializer
  include JSONAPI::Serializer
  attributes :title, :description, :score, :dog_id
end
