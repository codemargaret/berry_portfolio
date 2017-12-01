User.destroy_all

created_users = 0
while created_users < 5
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    username: Faker::Internet.user_name
    )
    created_users += 1 if user.save
end
p "You now have #{User.count} users in your db"

Skill.destroy_all
Endorsement.destroy_all

5.times do
  skill = Skill.create(
    description: Faker::FamilyGuy.quote,
    example: Faker::Hipster.sentences(2)
    )
  random_user = User.all.sample
  endorsement = Endorsement.create(
    skill_id: skill.id,
    user_id: random_user.id,
    body: Faker::Hipster.sentences(2)
  )
  end

p "You have created #{Skill.count} skills in your db"
p "You have created #{Endorsement.count} endorsements in your db"

Project.destroy_all
Comment.destroy_all

5.times do
  project = Project.create(
    title: Faker::FamilyGuy.quote,
    description: Faker::Hipster.sentences(2),
    link: Faker::Internet.url
    )
    random_user = User.all.sample
    comment = Comment.create(
      project_id: project.id,
      user_id: random_user.id,
      body: Faker::Hipster.sentences(2)
    )
  end

p "You have created #{Project.count} projects in your db"
p "You have created #{Comment.count} comments in your db"
