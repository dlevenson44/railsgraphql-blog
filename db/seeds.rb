User.destroy_all
Post.destroy_all
Comment.destroy_all

one = User.create!(first_name: "dan", last_name: "levenson", street: 'madison', number: 500, city: 'NYC', zipcode: 55555, country: 'USA')
two = User.create!(first_name: "sue", last_name: "progoff", street: 'park', number: 50, city: 'NYC', zipcode: 55555, country: 'USA')

post_one = Post.create!(user_id: 1, body: 'test body 1')
post_two = Post.create!(user_id: 1, body: 'test body 1 a')
post_three = Post.create!(user_id: 2, body: 'test body 2')
post_four = Post.create!(user_id: 2, body: 'test body 2 a')

comment_one = Comment.create!(post_id: 1, body: 'test comment 1')
comment_two = Comment.create!(post_id: 1, body: 'test comment 1 a')
comment_three = Comment.create!(post_id: 2, body: 'test comment 2')
comment_four = Comment.create!(post_id: 2, body: 'test comment 2 a')
comment_five = Comment.create!(post_id: 3, body: 'test comment 3')
comment_six = Comment.create!(post_id: 3, body: 'test comment 3 a')
comment_seven = Comment.create!(post_id: 4, body: 'test comment 4')
comment_eight = Comment.create!(post_id: 4, body: 'test comment 4 a')
