Skill.destroy_all

5.times do
  skill = Skill.create(
    description: Faker::FamilyGuy.quote,
    example: Faker::Hipster.sentences(2)
    )
  end

p "You have created #{Skill.count} skills in your db"

Project.destroy_all

5.times do
  project = Project.create(
    title: Faker::FamilyGuy.quote,
    description: Faker::Hipster.sentences(2),
    link: Faker::Internet.url
    )
  end

p "You have created #{Project.count} projects in your db"
