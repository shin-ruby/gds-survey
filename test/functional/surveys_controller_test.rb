require 'test_helper'

class SurveysControllerTest < ActionController::TestCase
  setup do
    @survey = surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey" do
    assert_difference('Survey.count') do
      post :create, survey: { company: @survey.company, department: @survey.department, email: @survey.email, name: @survey.name, phone: @survey.phone, q10: @survey.q10, q1: @survey.q1, q2: @survey.q2, q3: @survey.q3, q4: @survey.q4, q5: @survey.q5, q6: @survey.q6, q7: @survey.q7, q8: @survey.q8, q9: @survey.q9 }
    end

    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should show survey" do
    get :show, id: @survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey
    assert_response :success
  end

  test "should update survey" do
    put :update, id: @survey, survey: { company: @survey.company, department: @survey.department, email: @survey.email, name: @survey.name, phone: @survey.phone, q10: @survey.q10, q1: @survey.q1, q2: @survey.q2, q3: @survey.q3, q4: @survey.q4, q5: @survey.q5, q6: @survey.q6, q7: @survey.q7, q8: @survey.q8, q9: @survey.q9 }
    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should destroy survey" do
    assert_difference('Survey.count', -1) do
      delete :destroy, id: @survey
    end

    assert_redirected_to surveys_path
  end
end
