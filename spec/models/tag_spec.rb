require 'rails_helper'
RSpec.describe Tag, type: :model do
    it { is_expected.to be_mongoid_document }
    it { is_expected.to have_field(:tag).of_type(String) }
end