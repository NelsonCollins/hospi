require 'test_helper'

class BirthsControllerTest < ActionController::TestCase
  setup do
    @birth = births(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:births)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create birth" do
    assert_difference('Birth.count') do
      post :create, birth: { bloodgroup: @birth.bloodgroup, childname: @birth.childname, date: @birth.date, dreg: @birth.dreg, fage: @birth.fage, fathername: @birth.fathername, genotype: @birth.genotype, lga: @birth.lga, mage: @birth.mage, mothername: @birth.mothername, nationality: @birth.nationality, nmidwife: @birth.nmidwife, occupation: @birth.occupation, raddress: @birth.raddress, reg_num: @birth.reg_num, sbirth: @birth.sbirth, sex: @birth.sex, sorigin: @birth.sorigin, time: @birth.time, time: @birth.time, weight: @birth.weight }
    end

    assert_redirected_to birth_path(assigns(:birth))
  end

  test "should show birth" do
    get :show, id: @birth
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @birth
    assert_response :success
  end

  test "should update birth" do
    patch :update, id: @birth, birth: { bloodgroup: @birth.bloodgroup, childname: @birth.childname, date: @birth.date, dreg: @birth.dreg, fage: @birth.fage, fathername: @birth.fathername, genotype: @birth.genotype, lga: @birth.lga, mage: @birth.mage, mothername: @birth.mothername, nationality: @birth.nationality, nmidwife: @birth.nmidwife, occupation: @birth.occupation, raddress: @birth.raddress, reg_num: @birth.reg_num, sbirth: @birth.sbirth, sex: @birth.sex, sorigin: @birth.sorigin, time: @birth.time, time: @birth.time, weight: @birth.weight }
    assert_redirected_to birth_path(assigns(:birth))
  end

  test "should destroy birth" do
    assert_difference('Birth.count', -1) do
      delete :destroy, id: @birth
    end

    assert_redirected_to births_path
  end
end
