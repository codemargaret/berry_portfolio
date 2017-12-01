require 'rails_helper'

describe Skill, 'validation' do
  it { should validate_presence_of :description }
  it { should validate_presence_of :example }
end

describe Skill, 'association' do
  it { should have_many :endorsements }
end

describe Skill, 'column_specification' do
  it { should have_db_column(:description).of_type(:string) }
  it { should have_db_column(:example).of_type(:string) }
  it { should have_db_column(:created_at).of_type(:datetime) }
  it { should have_db_column(:updated_at).of_type(:datetime) }
end
