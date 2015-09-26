require 'test_helper'

class DeathsControllerTest < ActionController::TestCase
  setup do
    @death = deaths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deaths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create death" do
    assert_difference('Death.count') do
      post :create, death: { age: @death.age, birthplace: @death.birthplace, cdate: @death.cdate, cdeath: @death.cdeath, cleared: @death.cleared, color: @death.color, dname: @death.dname, doctor: @death.doctor, mstatus: @death.mstatus, nationality: @death.nationality, nextkin: @death.nextkin, occupation: @death.occupation, place: @death.place, rdate: @death.rdate, sex: @death.sex, user_id: @death.user_id }
    end

    assert_redirected_to death_path(assigns(:death))
  end

  test "should show death" do
    get :show, id: @death
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @death
    assert_response :success
  end

  test "should update death" do
    patch :update, id: @death, death: { age: @death.age, birthplace: @death.birthplace, cdate: @death.cdate, cdeath: @death.cdeath, cleared: @death.cleared, color: @death.color, dname: @death.dname, doctor: @death.doctor, mstatus: @death.mstatus, nationality: @death.nationality, nextkin: @death.nextkin, occupation: @death.occupation, place: @death.place, rdate: @death.rdate, sex: @death.sex, user_id: @death.user_id }
    assert_redirected_to death_path(assigns(:death))
  end

  test "should destroy death" do
    assert_difference('Death.count', -1) do
      delete :destroy, id: @death
    end

    assert_redirected_to deaths_path
  end
end
