require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    # when
    get static_pages_home_url
    # then
    assert_title_and_response("Home")
  end

  test "should get help" do
    # when
    get static_pages_help_url
    # then
    assert_title_and_response("Help")
  end

  test "should get about" do
    # when
    get static_pages_about_url
    # then
    assert_title_and_response("About")
  end

  # @param [String] title
  # @return void
  def assert_title_and_response(title)
    assert_response :success
    assert_select "h1", title + " | " + @base_title
  end

end
