require 'rails_helper'
describe Idea do
  describe "#has_comments?" do
    it "returns false when there are no comments" do
      expect(subject.has_comments?).to be false
    end

    it "returns true when there are comments" do
      subject.comments.build
      expect(subject.has_comments?).to be true
    end
  end
end
