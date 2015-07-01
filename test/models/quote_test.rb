require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

   test "unique_tag" do
     quote = Quote.create(:author => 'Shaun Shapiro', :saying => 'I\'m still hungry.')
     expected = 'SS#' + quote.id.to_s
     actual = quote.unique_tag
     assert_equal expected, actual
   end

end
