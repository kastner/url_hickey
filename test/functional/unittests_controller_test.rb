require 'test_helper'

class UnittestsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unittests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unittest" do
    assert_difference('Unittest.count') do
      post :create, :unittest => { }
    end

    assert_redirected_to unittest_path(assigns(:unittest))
  end

  test "should show unittest" do
    get :show, :id => unittests(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => unittests(:one).id
    assert_response :success
  end

  test "should update unittest" do
    put :update, :id => unittests(:one).id, :unittest => { }
    assert_redirected_to unittest_path(assigns(:unittest))
  end

  test "should destroy unittest" do
    assert_difference('Unittest.count', -1) do
      delete :destroy, :id => unittests(:one).id
    end

    assert_redirected_to unittests_path
  end
end
