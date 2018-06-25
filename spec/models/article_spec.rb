require 'rails_helper'

RSpec.describe Article, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should have_one(:like).dependent(:destroy) }
  it { should have_one(:dislike).dependent(:destroy) }
end
