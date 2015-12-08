# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do |i|
  experiment = Experiment.create!(title: Faker::Lorem.word,
                              problem: Faker::Lorem.sentence,
                              hypothesis: Faker::Lorem.paragraph,
                              materials: Faker::Lorem.paragraph,
                              procedure: Faker::Lorem.paragraph,
                              results: Faker::Lorem.paragraph,
                              conclusion: Faker::Lorem.paragraph,
                              proposal_id: i,
                              active: true,
                              start_date: Faker::Date.backward(20),
                              end_date: Faker::Date.forward(23))

  proposal = Proposal.create!(experiment_id: i,
                            abstract: Faker::Lorem.paragraph,
                            proposed_funding: Faker::Commerce.price
                            )

  procedure = experiment.procedures.create!(text: Faker::Lorem.paragraph)
  procedure = experiment.procedures.create!(text: Faker::Lorem.paragraph)
  procedure = experiment.procedures.create!(text: Faker::Lorem.paragraph)

end


5.times do |i|
  user = User.create!(first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    email: Faker::Internet.free_email,
                    password: "password",
                    admin: false)

  user.researcher_experiments.create!(experiment_id: 1 )
  user.observations.create!(title: Faker::Lorem.word, text: Faker::Lorem.paragraph,
                            experiment_id: 1 )

  Log.create(user_id: i, observation_id: i, comment: Faker::Lorem.sentence)

  LabTask.create!(log_id: 1, procedure_id: rand(3) + 1)

end

5.times do |i|
  user = User.create!(first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    email: Faker::Internet.free_email,
                    password: "password",
                    admin: false)

  user.researcher_experiments.create!(experiment_id: 1 )
  user.observations.create!(title: Faker::Lorem.word, text: Faker::Lorem.paragraph,
                            experiment_id: 1 )

  Log.create(user_id: 5 + i, observation_id: 5 + i, comment: Faker::Lorem.sentence)

  LabTask.create!(log_id: 1, procedure_id: rand(4..6))

end

5.times do |i|
  user = User.create!(first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    email: Faker::Internet.free_email,
                    password: "password",
                    admin: false)

  user.researcher_experiments.create!(experiment_id: 1 )
  user.observations.create!(title: Faker::Lorem.word, text: Faker::Lorem.paragraph,
                            experiment_id: 1 )

  Log.create(user_id: 10 + i, observation_id: 10 + i, comment: Faker::Lorem.sentence)

  LabTask.create!(log_id: 1, procedure_id: rand(7..9))

end

5.times do |i|
  user = User.create!(first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    email: Faker::Internet.free_email,
                    password: "password",
                    admin: false)

  user.researcher_experiments.create!(experiment_id: 1 )
  user.observations.create!(title: Faker::Lorem.word, text: Faker::Lorem.paragraph,
                            experiment_id: 1 )

  Log.create(user_id: 15 + i, observation_id: 15 + i, comment: Faker::Lorem.sentence)

  LabTask.create!(log_id: 1, procedure_id: rand(10..12))

end

5.times do |i|
  user = User.create!(first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    email: Faker::Internet.free_email,
                    password: "password",
                    admin: false)

  user.researcher_experiments.create!(experiment_id: 1 )
  user.observations.create!(title: Faker::Lorem.word, text: Faker::Lorem.paragraph,
                            experiment_id: 1 )

  Log.create(user_id: 20 + i, observation_id: 20 + i, comment: Faker::Lorem.sentence)

  LabTask.create!(log_id: 1, procedure_id: rand(13..15))

end
