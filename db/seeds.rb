# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# user=User.new :email => 'admin@Fabuloso.com', :password => 'abcd1234', :password_confirmation => 'abcd1234'
# user.roles=['admin']
# user.save
# user=User.new :email => 'manager@Fabuloso.com', :password => 'abcd1234', :password_confirmation => 'abcd1234'
# user.roles=['manager']
# user.save
# user=User.new :email => 'user@Fabuloso.com', :password => 'abcd1234', :password_confirmation => 'abcd1234'
# user.roles=['user']
# user.save
#
# ### Created by leosca controller generator ###
# user_from = User.first.id; user_to = User.last.id
# Fable.create([
# {  :user_id => rand(user_from..user_to),  :name => "Name1",  :story => "Story1",  :summary => "Summary1",  :views => 1,  :likes => 1 },
# {  :user_id => rand(user_from..user_to),  :name => "Name2",  :story => "Story2",  :summary => "Summary2",  :views => 2,  :likes => 2 },
# {  :user_id => rand(user_from..user_to),  :name => "Name3",  :story => "Story3",  :summary => "Summary3",  :views => 3,  :likes => 3 },
# {  :user_id => rand(user_from..user_to),  :name => "Name4",  :story => "Story4",  :summary => "Summary4",  :views => 4,  :likes => 4 },
# {  :user_id => rand(user_from..user_to),  :name => "Name5",  :story => "Story5",  :summary => "Summary5",  :views => 5,  :likes => 5 },
# {  :user_id => rand(user_from..user_to),  :name => "Name6",  :story => "Story6",  :summary => "Summary6",  :views => 6,  :likes => 6 },
# {  :user_id => rand(user_from..user_to),  :name => "Name7",  :story => "Story7",  :summary => "Summary7",  :views => 7,  :likes => 7 },
# {  :user_id => rand(user_from..user_to),  :name => "Name8",  :story => "Story8",  :summary => "Summary8",  :views => 8,  :likes => 8 },
# {  :user_id => rand(user_from..user_to),  :name => "Name9",  :story => "Story9",  :summary => "Summary9",  :views => 9,  :likes => 9 },
# {  :user_id => rand(user_from..user_to),  :name => "Name10",  :story => "Story10",  :summary => "Summary10",  :views => 10,  :likes => 10 },
# {  :user_id => rand(user_from..user_to),  :name => "Name11",  :story => "Story11",  :summary => "Summary11",  :views => 11,  :likes => 11 },
# {  :user_id => rand(user_from..user_to),  :name => "Name12",  :story => "Story12",  :summary => "Summary12",  :views => 12,  :likes => 12 },
# {  :user_id => rand(user_from..user_to),  :name => "Name13",  :story => "Story13",  :summary => "Summary13",  :views => 13,  :likes => 13 },
# {  :user_id => rand(user_from..user_to),  :name => "Name14",  :story => "Story14",  :summary => "Summary14",  :views => 14,  :likes => 14 },
# {  :user_id => rand(user_from..user_to),  :name => "Name15",  :story => "Story15",  :summary => "Summary15",  :views => 15,  :likes => 15 },
# {  :user_id => rand(user_from..user_to),  :name => "Name16",  :story => "Story16",  :summary => "Summary16",  :views => 16,  :likes => 16 },
# {  :user_id => rand(user_from..user_to),  :name => "Name17",  :story => "Story17",  :summary => "Summary17",  :views => 17,  :likes => 17 },
# {  :user_id => rand(user_from..user_to),  :name => "Name18",  :story => "Story18",  :summary => "Summary18",  :views => 18,  :likes => 18 },
# {  :user_id => rand(user_from..user_to),  :name => "Name19",  :story => "Story19",  :summary => "Summary19",  :views => 19,  :likes => 19 },
# {  :user_id => rand(user_from..user_to),  :name => "Name20",  :story => "Story20",  :summary => "Summary20",  :views => 20,  :likes => 20 },
# {  :user_id => rand(user_from..user_to),  :name => "Name21",  :story => "Story21",  :summary => "Summary21",  :views => 21,  :likes => 21 },
# {  :user_id => rand(user_from..user_to),  :name => "Name22",  :story => "Story22",  :summary => "Summary22",  :views => 22,  :likes => 22 },
# {  :user_id => rand(user_from..user_to),  :name => "Name23",  :story => "Story23",  :summary => "Summary23",  :views => 23,  :likes => 23 },
# {  :user_id => rand(user_from..user_to),  :name => "Name24",  :story => "Story24",  :summary => "Summary24",  :views => 24,  :likes => 24 },
# {  :user_id => rand(user_from..user_to),  :name => "Name25",  :story => "Story25",  :summary => "Summary25",  :views => 25,  :likes => 25 },
# {  :user_id => rand(user_from..user_to),  :name => "Name26",  :story => "Story26",  :summary => "Summary26",  :views => 26,  :likes => 26 },
# {  :user_id => rand(user_from..user_to),  :name => "Name27",  :story => "Story27",  :summary => "Summary27",  :views => 27,  :likes => 27 },
# {  :user_id => rand(user_from..user_to),  :name => "Name28",  :story => "Story28",  :summary => "Summary28",  :views => 28,  :likes => 28 },
# {  :user_id => rand(user_from..user_to),  :name => "Name29",  :story => "Story29",  :summary => "Summary29",  :views => 29,  :likes => 29 },
# {  :user_id => rand(user_from..user_to),  :name => "Name30",  :story => "Story30",  :summary => "Summary30",  :views => 30,  :likes => 30 },
# ])
#
# ### Created by leosca controller generator ###
# fable_from = Fable.first.id; fable_to = Fable.last.id
# user_from = User.first.id; user_to = User.last.id
# Comment.create([
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description1" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description2" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description3" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description4" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description5" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description6" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description7" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description8" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description9" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description10" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description11" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description12" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description13" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description14" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description15" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description16" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description17" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description18" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description19" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description20" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description21" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description22" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description23" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description24" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description25" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description26" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description27" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description28" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description29" },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :description => "Description30" },
# ])
#
# ### Created by leosca controller generator ###
# fable_from = Fable.first.id; fable_to = Fable.last.id
# user_from = User.first.id; user_to = User.last.id
# Chart.create([
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 1 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 2 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 3 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 4 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 5 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 6 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 7 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 8 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 9 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 10 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 11 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 12 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 13 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 14 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 15 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 16 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 17 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 18 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 19 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 20 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 21 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 22 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 23 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 24 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 25 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 26 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 27 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 28 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 29 },
# {  :fable_id => rand(fable_from..fable_to),  :user_id => rand(user_from..user_to),  :reference_date => "2016-07-12 00:00:00.000",  :point => 30 },
# ])
