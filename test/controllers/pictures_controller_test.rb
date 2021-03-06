# frozen_string_literal: true

require 'test_helper'

class PicturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @picture = pictures(:one)
  end

  test 'should get index' do
    get pictures_url
    assert_response :success
  end

  test 'should get new' do
    get new_picture_url
    assert_response :success
  end

  test 'should create picture' do
    assert_difference('Picture.count') do
      post pictures_url, params: { picture: { administrator_id: @picture.administrator_id, condition: @picture.condition, description: @picture.description, name: @picture.name, price: @picture.price } }
    end

    assert_redirected_to picture_url(Picture.last)
  end

  test 'should show picture' do
    get picture_url(@picture)
    assert_response :success
  end

  test 'should get edit' do
    get edit_picture_url(@picture)
    assert_response :success
  end

  test 'should update picture' do
    patch picture_url(@picture), params: { picture: { administrator_id: @picture.administrator_id, condition: @picture.condition, description: @picture.description, name: @picture.name, price: @picture.price } }
    assert_redirected_to picture_url(@picture)
  end

  test 'should destroy picture' do
    assert_difference('Picture.count', -1) do
      delete picture_url(@picture)
    end

    assert_redirected_to pictures_url
  end
end
