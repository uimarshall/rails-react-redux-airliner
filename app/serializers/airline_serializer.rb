class AirlineSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url, :slug
  has_many :reviews
end
# rails g serializer Airline name image_url slug
