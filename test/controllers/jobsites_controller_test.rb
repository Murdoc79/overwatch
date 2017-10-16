require 'test_helper'

class JobsitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jobsite = jobsites(:one)
  end

  test "should get index" do
    get jobsites_url
    assert_response :success
  end

  test "should get new" do
    get new_jobsite_url
    assert_response :success
  end

  test "should create jobsite" do
    assert_difference('Jobsite.count') do
      post jobsites_url, params: { jobsite: { address: @jobsite.address } }
    end

    assert_redirected_to jobsite_url(Jobsite.last)
  end

  test "should show jobsite" do
    get jobsite_url(@jobsite)
    assert_response :success
  end

  test "should get edit" do
    get edit_jobsite_url(@jobsite)
    assert_response :success
  end

  test "should update jobsite" do
    patch jobsite_url(@jobsite), params: { jobsite: { address: @jobsite.address } }
    assert_redirected_to jobsite_url(@jobsite)
  end

  test "should destroy jobsite" do
    assert_difference('Jobsite.count', -1) do
      delete jobsite_url(@jobsite)
    end

    assert_redirected_to jobsites_url
  end
end
