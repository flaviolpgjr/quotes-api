class Tag
  include Mongoid::Document
  field :tag, type: String
  #field :researched, type: Mongoid::Boolean
end
