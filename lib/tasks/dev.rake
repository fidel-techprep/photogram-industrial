desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do
  if Rails.env.development?
    Photo.delete_all
    User.delete_all
  end

  

  %w[alice bob carol david eve].each do |user|
    u = User.new
    u.username = user
    u.name = "#{user.capitalize} #{Faker::Name.last_name}"
    u.email = "#{user}@example.com"
    u.password = "password"
    bs = ""
    10.times do
      bs << Faker::Company.bs
      bs << " "
    end
    u.bio = bs
    u.website_url = Faker::Internet.url
    u.image_url = "http://robohash.org/#{user}"
    u.private = [true, false].sample
    u.save!
  end

  15.times do
    p = Photo.new
    p.caption = Faker::Lorem.sentence(word_count: 10)
    p.owner_id = User.find_by(username: %w[alice bob carol david eve].sample).id
    p.image = "https://picsum.photos/640/430"
    p.likes_count = Random.new(25)
    p.save!
  end
end
