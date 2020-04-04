require 'rails_helper'

RSpec.describe User, type: :model do
  #subject { build(:user) } 
  #pending 'add some examples to (or delete) #{__FILE__}'
  #before do
  #  @user = FactoryGirl.build :user
  #end 
 # Forma de teste usando o subjet
  # it { expect(subject).to respond_to(:email) }    
  # it { expect(subject).to respond_to(:name) }
  # it { expect(subject).to respond_to(:password) }
  # it { expect(subject).to respond_to(:password_confirmation) }
  # it { expect(subject).to be_valid }

  # Forma direta com subject inferido

  # it {is_expected.to respond_to(:email)}
  # it {is_expected.to respond_to(:name)}

  # Mais uma forma de testar nossas classes
  let(:user) { build(:user)}
  it { expect(user).to respond_to(:email) }
  it {is_expected.to validate_presence_of(:email)}

end
