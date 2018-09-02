require 'test_helper'

class SalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sale = sales(:one)
  end

  test "should get index" do
    get sales_url
    assert_response :success
  end

  test "should get new" do
    get new_sale_url
    assert_response :success
  end

  test "should create sale" do
    assert_difference('Sale.count') do
      post sales_url, params: { sale: { bike_id: @sale.bike_id, chasis_no: @sale.chasis_no, customer_id: @sale.customer_id, delivery_location: @sale.delivery_location, diffrence: @sale.diffrence, dsicount: @sale.dsicount, executive_name: @sale.executive_name, financed_by: @sale.financed_by, notes: @sale.notes, payment_type_id: @sale.payment_type_id, received_amount: @sale.received_amount, sales_type: @sale.sales_type, show_room_id: @sale.show_room_id } }
    end

    assert_redirected_to sale_url(Sale.last)
  end

  test "should show sale" do
    get sale_url(@sale)
    assert_response :success
  end

  test "should get edit" do
    get edit_sale_url(@sale)
    assert_response :success
  end

  test "should update sale" do
    patch sale_url(@sale), params: { sale: { bike_id: @sale.bike_id, chasis_no: @sale.chasis_no, customer_id: @sale.customer_id, delivery_location: @sale.delivery_location, diffrence: @sale.diffrence, dsicount: @sale.dsicount, executive_name: @sale.executive_name, financed_by: @sale.financed_by, notes: @sale.notes, payment_type_id: @sale.payment_type_id, received_amount: @sale.received_amount, sales_type: @sale.sales_type, show_room_id: @sale.show_room_id } }
    assert_redirected_to sale_url(@sale)
  end

  test "should destroy sale" do
    assert_difference('Sale.count', -1) do
      delete sale_url(@sale)
    end

    assert_redirected_to sales_url
  end
end
