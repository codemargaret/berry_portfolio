require 'rails_helper'

describe Project, 'validation' do
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
  it { should validate_presence_of :link }
end

describe Project, 'association' do
  it { should have_many :comments }
end

describe Project, 'column_specification' do
  it { should have_db_column(:title).of_type(:string) }
  it { should have_db_column(:description).of_type(:string) }
  it { should have_db_column(:link).of_type(:string) }
  it { should have_db_column(:created_at).of_type(:datetime) }
  it { should have_db_column(:updated_at).of_type(:datetime) }
end
