require 'test_helper'

class CodeingSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @codeing_skill = codeing_skills(:one)
  end

  test "should get index" do
    get codeing_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_codeing_skill_url
    assert_response :success
  end

  test "should create codeing_skill" do
    assert_difference('CodeingSkill.count') do
      post codeing_skills_url, params: { codeing_skill: { language: @codeing_skill.language, progress: @codeing_skill.progress } }
    end

    assert_redirected_to codeing_skill_url(CodeingSkill.last)
  end

  test "should show codeing_skill" do
    get codeing_skill_url(@codeing_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_codeing_skill_url(@codeing_skill)
    assert_response :success
  end

  test "should update codeing_skill" do
    patch codeing_skill_url(@codeing_skill), params: { codeing_skill: { language: @codeing_skill.language, progress: @codeing_skill.progress } }
    assert_redirected_to codeing_skill_url(@codeing_skill)
  end

  test "should destroy codeing_skill" do
    assert_difference('CodeingSkill.count', -1) do
      delete codeing_skill_url(@codeing_skill)
    end

    assert_redirected_to codeing_skills_url
  end
end
