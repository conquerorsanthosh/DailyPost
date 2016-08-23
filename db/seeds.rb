# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Category.destroy_all
Comment.destroy_all
Article.destroy_all
Profile.destroy_all
=begin
User.create!(
[
    {:email=>'conque@gmail.com' ,:password=>'walter$9'},
    {email:'aulina@gmail.com' ,password:'tomnjerry'},
    {email:'rudra@gmail.com' ,password:'mogli'},
    {email:'kavitha@gmail.com' ,password:'bageera'},
    {email:'prabhagmail.com' ,password:'baalu'},
    {email:'gkmurthy@gmail.com' ,password:'sheerkhan'},
    {email:'anton@gmail.com' ,password:'mothi'},
    {email:'tara@gmail.com' ,password:'chameli'},
    {email:'harie@gmail.com' ,password:'radha'},
    {email:'doro@gmail.com' ,password:'redflower'}
])

Profile.create!(
[
  {user_id:1,name:"santhosh", age:34,twitter:"hippo4chimpu" ,location:"bangalore"  },

  {user_id:2,name:'aulina', age:34,twitter:'aulinatrinita' ,location:'bangalore'  },
  {user_id:3,name:'rudra', age:1,twitter:'metiger' ,location:'bangalore'  },
  {user_id:4,name:'kavitha', age:30,twitter:'kkm' ,location:'bangalore'  },
  {user_id:5,name:'prabhavathy', age:55,twitter:'sweetmom' ,location:'bangalore'  },
  {user_id:6,name:'krishnamoorthy', age:60,twitter:'gkm' ,location:'bangalore'  },
  {user_id:7,name:'anton sudiantoro', age:47,twitter:'tonusud' ,location:'jakarta'  },
  {user_id:8,name:'tara', age:16,twitter:'taranin' ,location:'BSD'  },
  {user_id:9,name:'harish', age:16,twitter:'hkmurthy' ,location:'pune'  },
  {user_id:10,name:'doro', age:16,twitter:'dorothea' ,location:'singapore'  }

])

userlist_ids=User.all.pluck(:id)
Article.create!(
[
    {user_id:userlist_ids[0],title:'about rails',contents:'rails is a wonderful framework',location:'bangalore'},
    {user_id:userlist_ids[1],title:'about makeup',contents:'revelon is awesome brand bla bla',location:'bangalore'},
    {user_id:userlist_ids[2],title:'about mall',contents:'like to go to mall with mom and dad',location:'bangalore'},
    {user_id:userlist_ids[3],title:'Android app',contents:'my new app is inspirin',location:'bangalore'},
    {user_id:userlist_ids[4],title:'My chella kutty',contents:'rudra is so cute',location:'bangalore'},
    {user_id:userlist_ids[5],title:'Homepathy',contents:'medicine for cold is bella dona',location:'bangalore'},
    {user_id:userlist_ids[6],title:'Gadget guru',contents:'Iphone seven is awesome ,splendid',location:'Jakarta'},
    {user_id:userlist_ids[7],title:'Instagram',contents:'instagaram is wonderful platform to share',location:'BSD'},
    {user_id:userlist_ids[8],title:'back home',contents:'so good to be home',location:'pune'},
    {user_id:userlist_ids[9],title:'miss him',contents:'long distance relation is difficult',location:'singapore'}

]
)

articlelist_ids=Article.all.pluck(:id)

    Comment.create!(
    [
    {email:'tom@qq.com',article_id:articlelist_ids[0],body:'yep rails is awesome'},
    {email:'mary@qq.com',article_id:articlelist_ids[1],body:'himalaya is the best'},
    {email:'atharva@qq.com',article_id:articlelist_ids[2],body:'i am atharava i too enjoy going with mom n dad'},
    {email:'ciniq@gmail.com',article_id:articlelist_ids[3],body:'yes your is good but needs improvement'},
    {email:'tatha@wood.com',article_id:articlelist_ids[4],body:'yessss i too love rudra'},
    {email:'santhosh@yahoo.com',article_id:articlelist_ids[5],body:"homeopathy needs to prove more"},
    {email:'androidbot@gmail.com',article_id:articlelist_ids[6],body:"i think android is cool"},
    {email:'someone@picsq.com',article_id:articlelist_ids[7],body:"you have posted good pics"},
    {email:'vijay@qq.com',article_id:articlelist_ids[8],body:"hi welcome back"},
    {email:'mom@green.com',article_id:articlelist_ids[9],body:"he also miss you dear"}

    ]

)

=end

