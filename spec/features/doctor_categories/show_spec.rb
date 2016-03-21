require 'spec_helper'
require 'rails_helper'

feature 'Show Doctor Category' do

  scenario 'Show doctor category details in show page' do
  	dc = FactoryGirl.create(:doctor_category)
    visit "doctor_categories/#{dc.id}"
    
    expect(page).to have_content dc.name.capitalize
  end
end