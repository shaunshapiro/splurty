require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
   test "quote show page" do
     quote = Quote.create(:author => 'Shaun Shapiro', :saying => 'Metal...GEAR?!?!')
     get :show, :id => quote.id
     assert_response :success
   end

   test "quote show page, not found" do
   	get :show, :id => 'LOL'
   	assert_response :not_found
   end
end
