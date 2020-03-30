require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  before do
    @user = FactoryGirl.build :user
  end 

  it { expect(@user).to respond_to(:email) }
  it { expect(@user).to respond_to(:name) }
  it { expect(@user).to respond_to(:password) }
  it { expect(@user).to respond_to(:password_confirmation) }
  it { expect(@user).to be_valid }

end
