1.times do |index|
 User.create!( name: "admin",
                 email: "admin2@gmail.com",
                 password: "123456",
                 password_confirmation: "123456",
                 admin: true )
 		end
10.times do |index|
		Task.create!(
			    title: Faker::Lorem.words,
			    content: Faker::Lorem.sentence,
			    status: ["Completed","In progress","Not started"].sample,
          deadline: '2020-11-06',
			    priority: ["high", "medium","low"].sample,
			    user_id: User.all.pluck(:id).sample,
			)
end
10.times do |id|
	Label.create!(
		      id: id,
		      name: Faker::Verb.past_participle,
		   )
end
10.times do |n|
		Labelling.create!(task_id: rand(1..20), label_id: rand(1..3))
  end
