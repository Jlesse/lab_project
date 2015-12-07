# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
user = User.create!(first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    email: Faker::Internet.free_email,
                    hashed_password: "password",
                    admin: false
                    )

experiment = Experiment.create!(title: Faker::Lorem.word,
                                problem: Faker::Lorem.sentence,
                                hypothesis: Faker::Lorem.paragraph,
                                materials: Faker::Lorem.paragraph,
                                procedure: Faker::Lorem.paragraph,
                                results: Faker::Lorem.paragraph,
                                conclusion: Faker::Lorem.paragraph,
                                proposal_id: rand(10),
                                active: true,
                                start_date: Faker::Date.backward(20),
                                end_date: Faker::Date.forward(23)
)

user.researcher_experiments.create!(experiment_id: rand(10) + 1 )
# new_user.save

observation = Observation.create!(title: Faker::Lorem.word,
                                  text: Faker::Lorem.paragraph,
                                  experiment_id: rand(10),
                                  user_id: rand(10)
                                  )

comment = Comment.create!(text: Faker::Lorem.paragraph,
                          user_id: rand(10),
                          observation_id: rand(10))

proposal = Proposal.create!(experiment_id: rand(10),
                            abstract: Faker::Lorem.paragraph,
                            proposed_funding: Faker::Commerce.price
)

procedure = Procedure.create!(text: Faker::Lorem.paragraph,
                              experiment_id: rand(10))

logs = Log.create!(procedure_id: rand(10),
                   user_id: rand(10),
                   comment: Faker::Lorem.sentence,
                   observation_id: rand(10))

end
