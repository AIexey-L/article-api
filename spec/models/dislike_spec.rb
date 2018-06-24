require 'rails_helper'

RSpec.describe Dislike, type: :model do
  it { should belong_to(:article) }
end
