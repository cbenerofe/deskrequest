require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "DeskRequest"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | DeskRequest"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | DeskRequest"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | DeskRequest"
  end


end
