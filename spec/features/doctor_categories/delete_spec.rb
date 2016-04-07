require 'spec_helper'
require 'rails_helper'

feature 'Delete Doctor Category' do

  scenario 'Delete doctor category from index' do
  	@doctor_categories = FactoryGirl.create_list(:doctor_category, 1)
  	visit "doctor_categories"
  	expect(page).should_not have_link('Destroy')
  	expect(page).to have_content ''
  end

end