require 'rails_helper'

describe Product do
  it { should have_many(:reviews) }
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :country_of_origin }
end

describe Product do
  it("titleizes the name of an product") do
    product = product.create({name: "jamon", cost: 20, country_of_origin: "italy"})
    expect(product.name()).to(eq("Jamon"))
  end
end