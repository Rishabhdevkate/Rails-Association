require 'rails_helper'

RSpec.describe User, type: :model do
  # context 'when creating a user' do
  #   let(:user) {build :user}
  #   # let(:user1) {create :user}
  #   let(:user2) {build :user}

  #   it 'should be a valid user' do
  #     expect(user.valid?).to eq(true)
  #   end
  #   # it 'if the value of age is nil than it take 23 ' do
  #   #   expect(user1.age).to eq(23)
  #   # end

  #   it 'give a valid age' do
  #     user.save
  #     expect(user2.save).to eq(false)
  #     expect{user2.save!}.to raise_error(ActiveRecord::RecordInvalid)
  #   end
  context "Associations" do
    it { should have_many(:profiles) }
  end
end
