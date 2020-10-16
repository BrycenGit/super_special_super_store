require 'rails_helper'

describe "the add a review process" do
  it "adds a new review" do
    visit products_path
    click_link 'Create new product'
    fill_in 'Name', :with => 'stones'
    fill_in 'Cost', :with => '1000'
    fill_in 'Country of origin', :with => 'Texas'
    click_on 'Enter'
    click_on 'Stones'
    click_on 'Add a review'
    fill_in 'Author', :with => 'Brycen'
    fill_in 'Rating', :with => '5'
    fill_in 'Content body', :with => 'Literally the best review ever have you seen a better one so so so awesome! you are way the best!'
    click_on 'Enter'
    expect(page).to have_content 'review successfully added!'
    expect(page).to have_content 'Brycen'
  end

  it "gives an error when no name is entered" do
    visit products_path
    click_link 'Create new product'
    fill_in 'Name', :with => 'stones'
    fill_in 'Cost', :with => '1000'
    fill_in 'Country of origin', :with => 'Texas'
    click_on 'Enter'
    click_on 'Stones'
    click_on 'Add a review'
    click_on 'Enter'
    expect(page).to have_content "Author can't be blank"
  end
end