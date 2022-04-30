require 'rails_helper'

RSpec.describe PostsHelper, type: :helper do
  describe "#post_title" do
    it "returns the title in uppercase" do
      expect(helper.post_title "Sample Post").to eq("SAMPLE POST")
    end
  end
end
