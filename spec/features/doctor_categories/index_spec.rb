require 'spec_helper'
require 'rails_helper'

feature 'Listing Doctor Categories ' do

  scenario 'List doctor categories datas' do
  	@doctor_categories = FactoryGirl.create_list(:doctor_category, 10)
  	visit "doctor_categories"
    expect(page).to have_content ''
  end

end