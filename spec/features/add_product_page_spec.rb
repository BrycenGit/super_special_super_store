require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Create new product'
    fill_in 'Name', :with => 'stones'
    fill_in 'Cost', :with => '1000'
    fill_in 'Country of origin', :with => 'Texas'
    click_on 'Enter'
    expect(page).to have_content 'Product successfully added!'
    expect(page).to have_content 'Stones'
  end

  it "gives an error when no name is entered" do
    visit new_product_path
    click_on 'Enter'
    expect(page).to have_content "Name can't be blank"
  end
end