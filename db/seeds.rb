puts "🌱 Seeding spices..."

# Seed your database here
#planners seeding
planner1 = Planner.create(name: "Yusuf Limun and team", contact:"@teamyusuf")
planner2 = Planner.create(name: "Abanda P", contact: "@teamabanda")
planner3 = Planner.create(name: "Jay Dan Lee team", contact: "@jayteam")
planner4 = Planner.create(name: "DanielTeam", contact: "@Atudolimited")

#events seeding
event1 = Event.create(name: "wedding dinner", location: "Westland",date: "christmas day")
event2 = Event.create(name: "conference meeting", location: "Kisumu", date:"easter Friday")

#requests seeding
request1 = Request.create(name:"Lawi yo", message:"need planners for my wedding", location:"Utawala")
request2 = Request.create(name:"awino Okeo", message:"need planners for my collection reveal", location:"Utawala")
request3 = Request.create(name:"wino keyo", message:"need planners for my a party", location:"Utawala")
request4 = Request.create(name:"Lawio Okyo", message:"need planners for my birthday party", location:"Utawala")



puts "✅ Done seeding!"
