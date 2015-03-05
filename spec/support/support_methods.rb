

def new_location
  Location.create!({
    name: Faker::Name.name
  })
end

def new_job_title
  JobTitle.create!({
    name: "#{Faker::Commerce.department} #{Faker::Name.title}"
    })
end

def new_organization
    Organization.create!({
      name: Faker::Company.name
    })
end

def new_person
    Person.create!({
      first_name: Faker::Name.last_name,
      last_name: Faker::Name.first_name
      })
end

def create_employment_all_ids
  Employment.create!({
    location_id: new_location.id,
    job_title_id: new_job_title.id,
    organization_id: new_organization.id,
    person_id: new_person.id
  })
end
