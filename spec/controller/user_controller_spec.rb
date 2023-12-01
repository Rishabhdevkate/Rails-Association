require 'rails_helper'

RSpec.describe "UsersController", type: :controller do
  describe "GET /index" do
    it 'assign user' do
        users = User.create
        debugger
        get :index
        except(assign(:user)).to eq([user]) 
    end
    
  end
end