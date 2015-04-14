require 'rails_helper'
 
describe "Visiting profiles" do
 
  before do
    @user = create(:user)
    @post = create(:post, user: @user)
    @comment = Comment.create(user: @user, post: @post, body: "A comment")
    allow(@comment).to receive(:send_favorite_emails)
    @comment.save
  end

  describe "not signed in" do

    it "denies access to profile since user isn't signed in" do
      visit user_path(@user)
      expect(current_path).to eq(root_path)
    end
  end

  describe "user signed in" do
    
    before do
      login_as(@user, :scope => :user)
    end

    it "shows profile" do
      visit user_path(@user)
      expect(current_path).to eq(user_path(@user))

      expect( page ).to have_content(@user.name)
      expect( page ).to have_content(@post.title)
      expect( page ).to have_content(@comment.body)
    end
  end

end