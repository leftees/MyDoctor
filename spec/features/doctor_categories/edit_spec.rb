require 'spec_helper'
require 'rails_helper'

feature 'Edit Doctor Category' do

  scenario 'Edit doctor category from index page' do
  	dc = FactoryGirl.create(:doctor_category)
    visit "doctor_categories/#{dc.id}/edit"
    fill_in "Name", :with => "My test name"
    click_button "Update Doctor category"
    expect(page).to have_content 'doctor category was successfully updated.'
  end

  scenario 'Edit doctor category with blank name' do
  	dc = FactoryGirl.create(:doctor_category)
    visit "doctor_categories/#{dc.id}/edit"
    fill_in "Name", :with => ""
    click_button "Update Doctor category"
    expect(page).to have_content 'Editing Doctor'
  end


  scenario 'Edit doctor category with alpha numeric letters' do
  	dc = FactoryGirl.create(:doctor_category)
    visit "doctor_categories/#{dc.id}/edit"
    fill_in "Name", :with => "45565**%$^"
    click_button "Update Doctor category"
    expect(page).to have_content 'Editing Doctor'
  end
end