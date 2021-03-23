# rails g serializer Review title description score airline_id
class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score, :airline_id
end
