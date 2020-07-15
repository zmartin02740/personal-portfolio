10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "I want to go to the moon because that is where all
    the rich people go and I want to be like that."
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Portfolio subtitle: #{portfolio_item}",
    body: "Portfolio body: #{portfolio_item}",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x150"
  )
end