User.destroy_all

one = User.create!(first_name: "dan", last_name: "levenson", street: 'madison', number: 500, city: 'NYC', zipcode: 55555, country: 'USA')
two = User.create!(first_name: "sue", last_name: "progoff", street: 'park', number: 50, city: 'NYC', zipcode: 55555, country: 'USA')