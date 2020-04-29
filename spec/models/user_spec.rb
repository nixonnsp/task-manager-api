require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { build(:user)}

  it { is_expected.to have_many(:tasks).dependent(:destroy) }

  it { expect(user).to respond_to(:email) }
  it {is_expected.to validate_presence_of(:email)}

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
<<<<<<< HEAD
  let(:user) { build(:user)}
  it { expect(user).to respond_to(:email) }
  it {is_expected.to validate_presence_of(:email)}
  it { is_expected.to validate_uniqueness_of(:auth_token)}

  describe "#info" do
    it 'returns email and created_at' do
      user.save!
      allow(Devise).to receive(:friendly_token).and_return('abc123zzz')

      expect(user.info).to eq("#{user.email} - #{user.created_at} - abc123zzz")
    end
    
  end

  

  describe '#generate_authentication_token!' do
    it 'generates a unique auth token' do
      allow(Devise).to receive(:friendly_token).and_return('abc123zzzyyy')
      user.generate_authentication_token
      expect(user.auth_token).to eq('abc123zzzyyy')
    end

    

    it 'generates another auth token when current auto token already has been taken' do
      allow(Devise).to receive(:friendly_token).and_return('abc123zzzyyy', 'abc123zzzyyy', 'abc123zzzxxx')
      existing_user = create(:user)
      user.generate_authentication_token

      expect(user.auth_token).not_to eq(existing_user.auth_token)
    end
    
  end
=======
>>>>>>> adding-tasks
end
