require 'rails_helper'

# RSpec.describe Post, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

# RSpec.describe Post, type: :model do
#  it "does something we expect" do
#  end 
# end

RSpec.describe Post, type: :model do
 it "creates new posts with correct fields" do
   @post = Post.create(product_name:'GTA 5', price: 50.0, user_id: 1, location: 'gold coast',description: 'selling it cheap',sold: false, flagged: false)
   expect(@post.product_name).to eq('GTA 5')
   expect(@post.price).to eq(50.0)
   expect(@post.user_id).to eq(1)
   expect(@post.location).to eq('gold coast')
   expect(@post.description).to eq('selling it cheap')
   expect(@post.sold).to eq(false)
   expect(@post.flagged).to eq(false)
 end
end
