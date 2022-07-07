puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998) #1
Company.create(name: "Facebook", founding_year: 2004) #2
Company.create(name: "Dunder Mifflin", founding_year: 2002) #3
Company.create(name: "Enron", founding_year: 1995) #4

puts "Creating devs..."
Dev.create(name: "Rick") #1
Dev.create(name: "Morty") #2
Dev.create(name: "Mr. Meseeks") #3
Dev.create(name: "Gazorpazop") #4

puts "Creating freebies..."

Freebie.create(item_name: "Gaming Chair",value: 150,company_id:1,dev_id:1)
Freebie.create(item_name: "Ergo Chair",value: 200,company_id:2,dev_id:1)
Freebie.create(item_name: "Headset",value: 75,company_id:2,dev_id:2)
Freebie.create(item_name: "Mouse",value: 50,company_id:3,dev_id:3)
Freebie.create(item_name: "Steam Gift Card",value: 30,company_id:4,dev_id:4)
# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

puts "Seeding done!"
