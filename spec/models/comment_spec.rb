require 'rails_helper'

describe Comment, 'validation' do
  it { should validate_presence_of :body }
  it { should validate_presence_of :project_id }
  it { should validate_presence_of :user_id }
end

describe Comment, 'association' do
  it { should belong_to :project }
  it { should belong_to :user }
end

describe Comment, 'column_specification' do
  it { should have_db_column(:body).of_type(:string) }
  it { should have_db_column(:project_id).of_type(:integer) }
  it { should have_db_column(:user_id).of_type(:integer) }
  it { should have_db_column(:created_at).of_type(:datetime) }
  it { should have_db_column(:updated_at).of_type(:datetime) }
end
