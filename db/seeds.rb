Skill.destroy_all

5.times do
  skill = Skill.create(
    description: Faker::FamilyGuy.quote,
    example: Faker::Hipster.sentences(2)
    )
  end



p "You have created #{Skill.count} skills in your db"
