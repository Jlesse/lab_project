# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

logs = Log.create!(procedure_id: rand(10),
                   user_id: rand(10),
                   comment: Faker::Lorem.sentence,
                   observation_id: rand(10))

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
  3.times do
    procedure = experiment.procedures.create!(text: Faker::Lorem.paragraph)
  end

end

5.times do
  user = User.create!(first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    email: Faker::Internet.free_email,
                    password: "password",
                    admin: false)

  user.researcher_experiments.create!(experiment_id: 1 )
  user.observations.create!(title: Faker::Lorem.word, text: Faker::Lorem.paragraph,
                            experiment_id: 1 )

  user.observations[0]comments.create(text: Faker::Lorem.sentence)

end

5.times do
  user = User.create!(first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    email: Faker::Internet.free_email,
                    password: "password",
                    admin: false)

  user.researcher_experiments.create!(experiment_id: 2 )
  user.observations.create!(title: Faker::Lorem.word, text: Faker::Lorem.paragraph,
                            experiment_id: 2 )

  user.observations[0]comments.create(text: Faker::Lorem.sentence)

end

5.times do
  user = User.create!(first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    email: Faker::Internet.free_email,
                    password: "password",
                    admin: false)

  user.researcher_experiments.create!(experiment_id: 3 )
  user.observations.create!(title: Faker::Lorem.word, text: Faker::Lorem.paragraph,
                            experiment_id: 3 )

  user.observations[0]comments.create(text: Faker::Lorem.sentence)

end

5.times do
  user = User.create!(first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    email: Faker::Internet.free_email,
                    password: "password",
                    admin: false)

  user.researcher_experiments.create!(experiment_id: 4 )
  user.observations.create!(title: Faker::Lorem.word, text: Faker::Lorem.paragraph,
                            experiment_id: 4 )

  user.observations[0]comments.create(text: Faker::Lorem.sentence)

end

5.times do
  user = User.create!(first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    email: Faker::Internet.free_email,
                    password: "password",
                    admin: false)

  user.researcher_experiments.create!(experiment_id: 5 )
  user.observations.create!(title: Faker::Lorem.word, text: Faker::Lorem.paragraph,
                            experiment_id: 5 )

  user.observations[0]comments.create(text: Faker::Lorem.sentence)

end
