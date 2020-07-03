# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  staff = Staff.create!([
      {
        name:        "Claire Wilson",
        dateOfBirth: "15/06/1989",
        address:     "12 Westdyke Drive",
        postcode:    "AB32 6QK",
        phone:       "01224742665",
        email:       "c.wilson@rgu.ac.uk",
        jobTitle:    "Admin Assistant"
      },
      {
        name:        "Lucy Jones",
        dateOfBirth: "30/09/1975",
        address:     "12 Berrywell Drive",
        postcode:    "AB42 8JD",
        phone:       "01224743578",
        email:       "l.jones@rgu.ac.uk",
        jobTitle:    "Accounts Manager"
      },
      {
        name:        "Adam White",
        dateOfBirth: "09/11/1995",
        address:     "56 Brimmond Avenue",
        postcode:    "AB56 7PD",
        phone:       "0135867845",
        email:       "a.white@rgu.ac.uk",
        jobTitle:    "Software Developer"
      }
    ])

  Budget.create!([
      {
        name: "Office"
      },
      {
        name: "Maintenance"
      },
      {
        name: "Hardware"
      }
    ])

    Department.create!([
      {
        name: "Accounts"
      },
      {
        name: "Estates"
      },
      {
        name: "IT"
      }
    ])


    Contract.create!([
      {
        post:            "Permanent",
        startDate:       "14/08/2010",
        grade:           "A",
        salary:          "16000",
        annualLeave:     25,
        probationStatus: "Passed"
      },
      {
        post:            "Permanent",
        startDate:       "19/02/1995",
        grade:           "D",
        salary:          "28500",
        annualLeave:     30,
        probationStatus: "Passed"
      },
      {
        post:            "Permanent",
        startDate:       "05/07/2016",
        endDate:         "01/12/2019",
        grade:           "D",
        salary:          "28500",
        annualLeave:     30,
        probationStatus: "Passed"
      }
    ])

    ExtraDuty.create!([
      {
        title: "First Aider"
      },
      {
        title: "Mental Health First Aider"
      },
      {
        title: "Fire Warden"
      }
    ])

    StaffType.create!([
      {
        title: "Academic"
      },
      {
        title: "Admin"
      },
      {
        title: "Support"
      },
      {
        title: "Researcher"
      },
      {
        title: "Demonstrator"
      },
      {
        title: "Ambassador"
      },
      {
        title: "Visiting Staff"
      },
    ])

    Manager.create!([
      {
        name: "Bob"
      },
      {
        name: "Tim"
      },
      {
        name: "Earl"
      }
    ])


    claire = Staff.find_by(name: "Claire Wilson");
    lucy = Staff.find_by(name: "Lucy Jones");
    adam = Staff.find_by(name: "Adam White");

    claire.extra_duties << ExtraDuty.find_by(title: "First Aider")
    lucy.extra_duties   << ExtraDuty.find_by(title: "Fire Warden")
    adam.extra_duties   << ExtraDuty.find_by(title: "First Aider")

    claire.staff_types << StaffType.find_by(title: "Admin");
    lucy.staff_types   << StaffType.find_by(title: "Admin");
    adam.staff_types   << StaffType.find_by(title: "Support");

    claire.departments << Department.find_by(name: "Accounts");
    lucy.departments << Department.find_by(name: "Accounts");
    adam.departments << Department.find_by(name: "IT");


    claire.manager = Manager.find_by(name: "Earl");
    lucy.manager = Manager.find_by(name: "Tim");
    adam.manager = Manager.find_by(name: "Bob");
