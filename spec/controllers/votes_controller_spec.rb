require 'rails_helper'


describe VotesController do
  before do
    signin
  end

  include TestFactories
  include Devise::TestHelpers 
  describe '#up_vote' do
    it "adds an up-vote to the post" do
      expect {
        post( :up_vote, post_id: @post.id )
      }.to change{ @post.up_votes }.by 1
    end
  end

  describe '#down_vote' do
    it "adds a down-vote to the post" do
      expect {
          post( :down_vote, post_id: @post.id )
        }.to change{ @post.down_votes }.by 1 # Note that because the down_votes method simply counts the number of negative votes, it actually returns a positive number. Thus, the change is expected to be by +1 instead of -1.
    end
  end
end

private 

def signin
  request.env["HTTP_REFERER"] = '/'
  @user = authenticated_user
  @post = associated_post
  sign_in @user
end