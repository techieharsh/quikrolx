require 'test_helper'

class AdPostsControllerTest < ActionController::TestCase
  setup do
    @ad_post = ad_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ad_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ad_post" do
    assert_difference('AdPost.count') do
      post :create, ad_post: { description: @ad_post.description, price: @ad_post.price, title: @ad_post.title }
    end

    assert_redirected_to ad_post_path(assigns(:ad_post))
  end

  test "should show ad_post" do
    get :show, id: @ad_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ad_post
    assert_response :success
  end

  test "should update ad_post" do
    put :update, id: @ad_post, ad_post: { description: @ad_post.description, price: @ad_post.price, title: @ad_post.title }
    assert_redirected_to ad_post_path(assigns(:ad_post))
  end

  test "should destroy ad_post" do
    assert_difference('AdPost.count', -1) do
      delete :destroy, id: @ad_post
    end

    assert_redirected_to ad_posts_path
  end
end
