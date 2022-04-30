require 'rails_helper'

RSpec.describe Post, type: :model do
  context "during validation" do
    it "rejects if title is empty" do
      expect(Post.create title: "", body: "Sample post 1").to be_invalid
    end

    it "rejects if body is empty" do
      expect(Post.create title: "Sample post", body: "").to be_invalid
    end

    it "rejects if body is longer than 250 characters" do
      expect(Post.create title: "Sample post", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed nunc congue, ultrices mauris sit amet, pretium magna. Phasellus enim leo, auctor et sodales ac, suscipit in ante. Interdum et malesuada fames ac ante ipsum primis in faucibus portaa ante.").to be_invalid
    end
  end
end
