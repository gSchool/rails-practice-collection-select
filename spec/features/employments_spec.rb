describe "employments index" do
  scenario " see related organizations, people, job titles, locations" do
    employment1 = create_employment_all_ids
    employment2 = create_employment_all_ids
    employment3 = create_employment_all_ids
    employment4 = create_employment_all_ids
    visit root_path
    expect(page).to have_content(employment1.job_title.name)
    expect(page).to have_content(employment2.location.name)
    expect(page).to have_content(employment3.organization.name)
    expect(page).to have_content(employment4.person.full_name)
  end

  scenario "Test that all new page employment select boxes work" do
    employment1 = create_employment_all_ids
    employment2 = create_employment_all_ids
    employment3 = create_employment_all_ids
    employment4 = create_employment_all_ids
    visit new_employment_path
    select(employment1.job_title.name, from: 'employment_job_title_id')
    select(employment2.location.name, from: 'employment_location_id')
    select(employment3.organization.name, from: 'employment_organization_id')
    select(employment4.person.full_name, from: 'employment_person_id')
    click_on("Create Employment")
    expect(page).to have_content(employment1.job_title.name)
    expect(page).to have_content(employment2.location.name)
    expect(page).to have_content(employment3.organization.name)
    expect(page).to have_content(employment4.person.full_name)
  end



end
