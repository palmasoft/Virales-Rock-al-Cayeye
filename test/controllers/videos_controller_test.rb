require 'test_helper'

class VideosControllerTest < ActionController::TestCase
  test "should get formulario" do
    get :formulario
    assert_response :success
  end

  test "should get todos" do
    get :todos
    assert_response :success
  end

  test "should get presentacion" do
    get :presentacion
    assert_response :success
  end

end
