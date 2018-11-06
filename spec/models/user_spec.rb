require 'rails_helper'

RSpec.describe User, type: :model do
 it "creates new User with correct fields" do
   @user = User.create(
     email:'foo@bar.com',
     username:'This is foo question',
     address:'51 china st',
     suburb:'chinatown',
     postcode: 4122,
     phone: '0101010200'
     )
   expect(@user.email).to eq('foo@bar.com')
   expect(@user.username).to eq('This is foo question')
   expect(@user.address).to eq('51 china st')
   expect(@user.suburb).to eq('chinatown')
   expect(@user.postcode).to eq(4122)
   expect(@user.phone).to eq('0101010200')
 end
end
