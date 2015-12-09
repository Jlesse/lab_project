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
                              proposal_id: i + 1,
                              active: true,
                              start_date: Faker::Date.backward(20),
                              end_date: Faker::Date.forward(23))

  proposal = Proposal.create!(experiment_id: i + 1,
                            abstract: Faker::Lorem.paragraph,
                            proposed_funding: Faker::Commerce.price
                            )

  procedure = experiment.procedures.create!(text: Faker::Lorem.sentence)
  procedure = experiment.procedures.create!(text: Faker::Lorem.sentence)
  procedure = experiment.procedures.create!(text: Faker::Lorem.sentence)
  procedure = experiment.procedures.create!(text: Faker::Lorem.sentence)
  procedure = experiment.procedures.create!(text: Faker::Lorem.sentence)
  procedure = experiment.procedures.create!(text: Faker::Lorem.sentence)

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

  Log.create(user_id: 1 + i, observation_id: 1 + i, comment: Faker::Lorem.sentence)
  # Log.create(user_id: 2, observation_id: i, comment: Faker::Lorem.sentence)

  # LabTask.create!(log_id: 1 + i, procedure_id: rand(6) + 1)
  # LabTask.create!(log_id: 2 + i, procedure_id: rand(6) + 1)
  LabTask.create!(log_id: 1 + i, procedure_id: rand(6) + 1)

end

5.times do |i|
  user = User.create!(first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    email: Faker::Internet.free_email,
                    password: "password",
                    admin: false)

  user.researcher_experiments.create!(experiment_id: 2 )
  user.observations.create!(title: Faker::Lorem.word, text: Faker::Lorem.paragraph,
                            experiment_id: 2 )

  Log.create(user_id: 6 + i, observation_id: 6 + i, comment: Faker::Lorem.sentence)
  # Log.create(user_id: 7 + i, observation_id: 7 + i, comment: Faker::Lorem.sentence)

  LabTask.create!(log_id: 6 + i, procedure_id: rand(7..13))
  # LabTask.create!(log_id: 7 + i, procedure_id: rand(7..13))
  # LabTask.create!(log_id: 8 + i, procedure_id: rand(7..13))

end

5.times do |i|
  user = User.create!(first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    email: Faker::Internet.free_email,
                    password: "password",
                    admin: false)

  user.researcher_experiments.create!(experiment_id: 3 )
  user.observations.create!(title: Faker::Lorem.word, text: Faker::Lorem.paragraph,
                            experiment_id: 3 )

  Log.create(user_id: 11 + i, observation_id: 11 + i, comment: Faker::Lorem.sentence)
  # Log.create(user_id: 12 + i, observation_id: 12 + i, comment: Faker::Lorem.sentence)


  LabTask.create!(log_id: 11 + i, procedure_id: rand(13..19))
  # LabTask.create!(log_id: 12 + i, procedure_id: rand(13..19))
  # LabTask.create!(log_id: 13 + i, procedure_id: rand(13..19))

end

5.times do |i|
  user = User.create!(first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    email: Faker::Internet.free_email,
                    password: "password",
                    admin: false)

  user.researcher_experiments.create!(experiment_id: 4 )
  user.observations.create!(title: Faker::Lorem.word, text: Faker::Lorem.paragraph,
                            experiment_id: 4 )

  Log.create(user_id: 16 + i, observation_id: 16 + i, comment: Faker::Lorem.sentence)
  # Log.create(user_id: 17 + i, observation_id: 17 + i, comment: Faker::Lorem.sentence)

  LabTask.create!(log_id: 16 + i, procedure_id: rand(19..25))
  # LabTask.create!(log_id: 17 + i, procedure_id: rand(19..25))
  # LabTask.create!(log_id: 18 + i, procedure_id: rand(19..25))

end

5.times do |i|
  user = User.create!(first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    email: Faker::Internet.free_email,
                    password: "password",
                    admin: false)

  user.researcher_experiments.create!(experiment_id: 5 )
  user.observations.create!(title: Faker::Lorem.word, text: Faker::Lorem.paragraph,
                            experiment_id: 5 )

  Log.create(user_id: 21 + i, observation_id: 21 + i, comment: Faker::Lorem.sentence)
  # Log.create(user_id: 22 + i, observation_id: 22 + i, comment: Faker::Lorem.sentence)

  LabTask.create!(log_id: 21 + i , procedure_id: rand(25..30))
  # LabTask.create!(log_id: 22 + i , procedure_id: rand(25..30))
  # LabTask.create!(log_id: 23 + i , procedure_id: rand(25..30))

end
