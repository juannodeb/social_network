# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
post = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."\
          "Cras blandit porta quam, vitae rhoncus purus ultrices in."\
          "Cras vestibulum elit tristique, consectetur quam non, congue"\
          " velit. Sed metus ex, volutpat id risus nec, elementum "\
          "dignissim ipsum. Sed et nisi vehicula, vestibulum velit in, "\
          "pulvinar lorem. Mauris pretium fringilla laoreet. Vestibulum "\
          "ut orci arcu. Class aptent taciti sociosqu ad litora torquent "\
          "per conubia nostra, per inceptos himenaeos. Suspendisse potenti. "\
          "Sed quis erat at est tempus commodo eu a ipsum."

comment = 'This is a comment'

User.create!([
  { first_name: 'Juan', last_name: 'Bedón', bio: post, email: 'juan@fm.com', password: '123456789' },
  { first_name: 'Foonkie', last_name: 'Monkey', bio: post, email: 'foonkie@fm.com', password: '123456789' }
])

first_user_id = User.first.id
last_user_id  = User.last.id

Post.create!([
  { content: post, user_id: first_user_id },
  { content: post, user_id: last_user_id }
])

first_post_id = Post.first.id

Comment.create!([
  { content: comment, post_id: first_post_id, user_id: first_user_id },
  { content: comment, post_id: first_post_id, user_id: last_user_id }
])

last_comment_id = Comment.last.id

Interaction.create!([
  { interacted_on_id: first_post_id, interacted_on_type: 'Post', action: 0, user_id: first_user_id },
  { interacted_on_id: last_comment_id, interacted_on_type: 'Comment', action: 0, user_id: first_user_id }
])
