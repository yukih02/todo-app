# == Schema Information
#
# Table name: todos
#
#  id         :bigint           not null, primary key
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class TodoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
