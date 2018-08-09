require "rails_helper"

describe Comment do
  describe "creation" do
    before :each do
      @user = create(:user)
      @post = create(:post_with_attachment, user_id: @user.id)
    end

    context "with valid attributes" do
      it "should be valid" do
        comment = build(:comment, user_id: @user.id, post_id: @post.id)
        expect(comment.save).to be true
      end
    end

    context "with invalid attributes" do
      it "should not be valid without description" do
        comment = build(:comment, user_id: nil, post: @post)
        expect(comment.save).to be false
      end

      it "should not be valid without photo" do
        comment = build(:comment, user_id: @user.id, post: nil)
        expect(comment.save).to be false
      end

      it "should not be valid without author (user_id)" do
        comment = build(:comment, text: nil)
        expect(comment.save).to be false
      end
    end
  end
end