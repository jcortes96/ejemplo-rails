25.times do |i|
  Person.create! name: "Vendedor #{i}"
end

LOREM = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tristique tortor ac diam mattis vestibulum. Donec quis arcu iaculis arcu tristique finibus. Aliquam varius enim at posuere consequat. Duis a metus egestas, viverra metus in, iaculis augue. Suspendisse faucibus leo sit amet tortor vulputate viverra. Nunc vel nunc vel risus facilisis consequat. Aliquam cursus malesuada orci at scelerisque. Aliquam erat volutpat.'
20.times do |i|
  Complaint.create! email: "cliente_#{i}@example.org",
                    person: Person.offset(rand(Person.count)).first,
                    body: LOREM,
                    date: rand(1..10).days.ago
end
