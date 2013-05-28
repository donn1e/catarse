require 'spec_helper'

describe Payment do
  describe "associations" do
    it{ should belong_to :backer }
  end

  describe "validations" do
    it{ should validate_presence_of :backer }
    it{ should validate_presence_of :token }
  end
end
