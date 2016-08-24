# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users_count = User.count
if users_count == 0
  user=User.new :email => 'admin@fabuloso.com', :password => 'abcd1234', :password_confirmation => 'abcd1234e'
  user.roles=['admin']
  user.confirmed_at=Time.now
  user.save
  user=User.new :email => 'manager@fabuloso.com', :password => 'abcd1234', :password_confirmation => 'abcd1234e'
  user.roles=['manager']
  user.confirmed_at=Time.now
  user.save
  user=User.new :email => 'user@fabuloso.com', :password => 'abcd1234', :password_confirmation => 'abcd1234e'
  user.roles=['user']
  user.confirmed_at=Time.now
  user.save
end
#
# ### Created by leosca controller generator ###
# user_from = User.first.id; user_to = User.last.id
# Fable.create([
# {  :user_id => rand(user_from..user_to),  :name => "Name1",  :story => "Story1",  :summary => "Summary1",  :views => 1,  :likes => 1 },
# {  :user_id => rand(user_from..user_to),  :name => "Name2",  :story => "Story2",  :summary => "Summary2",  :views => 2,  :likes => 2 },
# {  :user_id => rand(user_from..user_to),  :name => "Name3",  :story => "Story3",  :summary => "Summary3",  :views => 3,  :likes => 3 },
# ])
#
# ### Created by leosca controller generator ###
# fable_from = Fable.first.id; fable_to = Fable.last.id
# user_from = User.first.id; user_to = User.last.id
# Comment.create([
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description1" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description2" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description3" },
# ])
#
# ### Created by leosca controller generator ###
# fable_from = Fable.first.id; fable_to = Fable.last.id
# user_from = User.first.id; user_to = User.last.id
# Chart.create([
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 1 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 2 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 3 },
# ])
