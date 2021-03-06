# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

emperor = Confidant.create({
    arcana: 'Emperor',
    name:   'Yusuke',
    start_date: Date.new(2016, 06, 18),
    notes: ""
})
lovers  = Confidant.create({
    arcana: 'Lovers',
    name:   'Ann',
    start_date: Date.new(2016, 04, 15),
    notes: ""
})
chariot = Confidant.create({
    arcana: 'Chariot',
    name:   'Ryuji',
    start_date: Date.new(2016, 04, 12),
    notes: ""
})
death = Confidant.create({
    arcana: 'Death',
    name:   'Takemi',
    start_date: Date.new(2016, 04, 18),
    notes: "Prioritize her to get access to SP-regeneration accessories."
})
priestess = Confidant.create({
    arcana: 'Priestess',
    name:   'Makoto',
    start_date: Date.new(2016, 06, 21),
    notes: ""
})
sun = Confidant.create({
    arcana: 'Sun',
    name:   'Yoshida',
    start_date: Date.new(2016, 05, 06),
    notes: ""
})
hierophant = Confidant.create({
    arcana: 'Hierophant',
    name:   'Sojiro',
    start_date: Date.new(2016, 04, 20),
    notes: "Enables making coffee for cheap SP restoration."
})
moon = Confidant.create({
    arcana: 'Moon',
    name:   'Mishima',
    start_date: Date.new(2016, 05, 06),
    notes: "Advancement event is available after each of his requests is completed in Mementos"
})
fortune = Confidant.create({
    arcana: 'Fortune',
    name:   'Chihaya',
    start_date: Date.new(2016, 06, 22),
    notes: "Costs 100k yen during her flag quest series."
})
justice = Confidant.create({
    arcana: 'Justice',
    name:   'Akechi Goro',
    start_date: Date.new(2016, 06, 10),
    notes: "Automatic advancement"
})
temperance = Confidant.create({
    arcana: 'Temperance',
    name:   'Kawakami',
    start_date: Date.new(2016, 06, 01),
    notes: "Costs 5k yen per meeting"
})
devil = Confidant.create({
    arcana: 'Devil',
    name:   'Ohya',
    start_date: Date.new(2016, 06, 23),
    notes: ""
})
star = Confidant.create({
    arcana: 'Star',
    name:   'Hifumi',
    start_date: Date.new(2016, 06, 27),
    notes: "Requires rank 3 charm to flag. Do it ASAP for her support abilities."
})

hanged = Confidant.create({
    arcana: 'Hanged Man',
    name:   'Iwai',
    start_date: Date.new(2016, 05, 06),
    notes: "Available once you have max Guts."
})

fool = Confidant.create({
    arcana: 'Fool',
    name:   'Igor',
    start_date: Date.new(2016, 04, 12),
    notes: "Automatic."
})

magician = Confidant.create({
    arcana: 'Magician',
    name:   'Morgana',
    start_date: Date.new(2016, 04, 15),
    notes: "Automatic."
})

strength = Confidant.create({
    arcana: 'Strength',
    name:   'Twin Wardens',
    start_date: Date.new(2016, 05, 18),
    notes: "Flags automatically, then progresses with no time cost when you fulfill their fusion requests."
})

hermit = Confidant.create({
    arcana: 'Hermit',
    name:   'Futaba',
    start_date: Date.new(2016, 8, 31),
    notes: ""
})


# empress = ?? 
# tower = ?? 

knowledge = SocialStat.create({
    name: 'Knowledge',
    rank2: 0,
    rank3: 0,
    rank4: 0,
    rank5: 0,
})
guts = SocialStat.create({
    name: 'Guts',
    rank2: 0,
    rank3: 0,
    rank4: 0,
    rank5: 0,
})
proficiency = SocialStat.create({
    name: 'Proficiency',
    rank2: 0,
    rank3: 0,
    rank4: 0,
    rank5: 0,
})
kindness = SocialStat.create({
    name: 'Kindness',
    rank2: 0,
    rank3: 0,
    rank4: 0,
    rank5: 0,
})
charm = SocialStat.create({
    name: 'Charm',
    rank2: 0,
    rank3: 0,
    rank4: 0,
    rank5: 0,
})

# Persona 5 runs from April 10 through December 24
Date.new(2016, 4, 10).upto(Date.new(2016, 12, 24)) {|d| CalendarDay.create({date:d, notes: ''})}

e = CalendarDay.find_by(date: Date.new(2016, 04, 12)).calendar_events.create({
        date: Date.new(2016, 04, 12),
        time_slot: '0600 Morning',

        events: "Class Lecture. The answer is 'Logic'."
})
e = CalendarDay.find_by(date: Date.new(2016, 04, 12)).calendar_events.create({
        date: Date.new(2016, 04, 12),
        time_slot: '1600 After School',
        weather: 'Cloudy',

        events: "Forced Palace infiltration. Automatically get Chariot Rank 1"
    })
e = CalendarDay.find_by(date: Date.new(2016, 04, 13)).calendar_events.create({
        date: Date.new(2016, 04, 13),
        time_slot: '2000 Evening',
        
        events: "Interrogation event. Talk to the boy in Class 2-D, the pair outside 3-C, and the boy outside 1-B."
    })
e = CalendarDay.find_by(date: Date.new(2016, 04, 15)).calendar_events.create({
        date: Date.new(2016, 04, 15),
        time_slot: '1600 After School',
        
        events: "Forced Palace infiltration. Automatically get Lovers Rank 1"
    })
e = CalendarDay.find_by(date: Date.new(2016, 04, 15)).calendar_events.create({
        date: Date.new(2016, 04, 15),
        time_slot: '2000 Evening',
        
        events: "Meet Dr. Takemi at Leblanc."
    })
e = CalendarDay.find_by(date: Date.new(2016, 04, 16)).calendar_events.create({
        date: Date.new(2016, 04, 16),
        time_slot: '0600 Morning',
        
        events: "Class event: dodge the thrown chalk (Proficieny check)",
        event_requirements: "Proficiency Rank ?"
    })
e = CalendarDay.find_by(date: Date.new(2016, 04, 17)).calendar_events.create({
        date: Date.new(2016, 04, 17),
        time_slot: '2000 Evening',
        
        events: "Free Evening."
    })

e = CalendarDay.find_by(date: Date.new(2016, 04, 18)).calendar_events.create({
    date: Date.new(2016, 04, 18),
    time_slot: '1600 After School',
    weather: 'Cloudy',
    
    events: "Free afternoon."
})
e.confidant_availability_events.create({
    confidant: death,
    location: 'Clinic',
    notes: ''
})

e = CalendarDay.find_by(date: Date.new(2016, 04, 18)).calendar_events.create({
    date: Date.new(2016, 04, 18),
    time_slot: '2000 Evening',
    weather: 'Cloudy',
    
    events: "Clean your room. (you don't have a choice)"
})
e = CalendarDay.find_by(date: Date.new(2016, 04, 19)).calendar_events.create({
    date: Date.new(2016, 04, 19),
    time_slot: '0600 Morning',
    
    events: "Class lecture about optical illusions. The answer is \"C meets A\""
})

e = CalendarDay.find_by(date: Date.new(2016, 04, 19)).calendar_events.create({
    date: Date.new(2016, 04, 19),
    time_slot: '1600 After School',
    
    events: "Free afternoon"
})
e.confidant_availability_events.create({
    confidant: chariot,
    location: 'School 2F',
})
e = CalendarDay.find_by(date: Date.new(2016, 04, 19)).calendar_events.create({
    date: Date.new(2016, 04, 19),
    time_slot: '2000 Evening',
    
    events: "Free evening. I forgot to note who was available"
})

e = CalendarDay.find_by(date: Date.new(2016, 04, 20)).calendar_events.create({
    date: Date.new(2016, 04, 20),
    time_slot: '0500 Early Morning',
    
    events: "Read on the train"
})
e = CalendarDay.find_by(date: Date.new(2016, 04, 20)).calendar_events.create({
    date: Date.new(2016, 04, 20),
    time_slot: '1600 After School',
    weather: 'Rain',

    events: "Free afternoon. Part-time jobs are now available. No social links want to play yet, so I usually study."
})
e = CalendarDay.find_by(date: Date.new(2016, 04, 20)).calendar_events.create({
    date: Date.new(2016, 04, 20),
    time_slot: '2000 Evening',
    weather: 'Rain',

    events: "Free evening, but you can't go out yet"
})
e.confidant_availability_events.create({
    confidant: hierophant,
    location: 'Leblanc',
})


e = CalendarDay.find_by(date: Date.new(2016, 04, 21)).calendar_events.create({
    date: Date.new(2016, 04, 21),
    time_slot: '1600 After School',
    weather: 'Rain',

    events: "Free afternoon"
})
e.confidant_availability_events.create({
    confidant: death,
    location: 'Clinic',
})
e = CalendarDay.find_by(date: Date.new(2016, 04, 21)).calendar_events.create({
    date: Date.new(2016, 04, 21),
    time_slot: '2000 Evening',
    weather: 'Cloudy',

    events: "Free evening, but you can't wander yet"
})
e.confidant_availability_events.create({
    confidant: hierophant,
    location: 'Leblanc',
})

e = CalendarDay.find_by(date: Date.new(2016, 04, 22)).calendar_events.create({
    date: Date.new(2016, 04, 22),
    time_slot: '1600 After School',

    events: "Free afternoon"
})
e.confidant_availability_events.create({
    confidant: chariot,
    location: 'School 2F',
})
e.confidant_availability_events.create({
    confidant: death,
    location: 'Clinic',
})
e = CalendarDay.find_by(date: Date.new(2016, 04, 22)).calendar_events.create({
    date: Date.new(2016, 04, 22),
    time_slot: '2000 Evening',

    events: "I chose an infiltration run, so I'm not sure if Hierophant was available tonight."
})

e = CalendarDay.find_by(date: Date.new(2016, 04, 23)).calendar_events.create({
    date: Date.new(2016, 04, 23),
    time_slot: '0600 Morning',

    events: "Class lecture: Nero performed Singing at the Olympics."
})
e = CalendarDay.find_by(date: Date.new(2016, 04, 23)).calendar_events.create({
    date: Date.new(2016, 04, 23),
    time_slot: '1600 After School',
    weather: "Sunny",
    events: "Free afternoon"
})
e.confidant_availability_events.create({
    confidant: death,
    location: 'Clinic',
})

e = CalendarDay.find_by(date: Date.new(2016, 04, 23)).calendar_events.create({
    date: Date.new(2016, 04, 23),
    time_slot: '2000 Evening',
    weather: "Sunny",
    events: "Free evening"
})
e.confidant_availability_events.create({
    confidant: hierophant,
    location: 'Leblanc',
})

e = CalendarDay.find_by(date: Date.new(2016, 04, 24)).calendar_events.create({
    date: Date.new(2016, 04, 24),
    time_slot: '1100 Daytime',
    weather: "Sunny",
    events: "Free day."
})
e.confidant_availability_events.create({
    confidant: death,
    location: 'Clinic',
})

e = CalendarDay.find_by(date: Date.new(2016, 04, 24)).calendar_events.create({
    date: Date.new(2016, 04, 24),
    time_slot: '2000 Evening',

    events: "Free evening"
})
e.confidant_availability_events.create({
    confidant: hierophant,
    location: 'Leblanc',
})

e = CalendarDay.find_by(date: Date.new(2016, 04, 25)).calendar_events.create({
    date: Date.new(2016, 04, 25),
    time_slot: '0600 Morning',

    events: "Lecture: The opposite meaning is doing something where you are convinced you are right."
})
e = CalendarDay.find_by(date: Date.new(2016, 04, 25)).calendar_events.create({
    date: Date.new(2016, 04, 25),
    time_slot: '1600 After School',
    weather: 'Cloudy',

    events: "Free time"
})
e.confidant_availability_events.create({
    confidant: death,
    location: 'Clinic',
})
e = CalendarDay.find_by(date: Date.new(2016, 04, 25)).calendar_events.create({
    date: Date.new(2016, 04, 25),
    time_slot: '2000 Evening',
    weather: 'Cloudy',

    events: "Free time"
})
e.confidant_availability_events.create({
    confidant: hierophant,
    location: 'Leblanc',
})

e = CalendarDay.find_by(date: Date.new(2016, 04, 26)).calendar_events.create({
    date: Date.new(2016, 04, 26),
    time_slot: '0500 Early Morning',
    weather: 'Sunny',

    events: ""
})
e = CalendarDay.find_by(date: Date.new(2016, 04, 26)).calendar_events.create({
    date: Date.new(2016, 04, 26),
    time_slot: '1600 After School',
    weather: 'Sunny',

    events: "Free time. If there are Confidants available, I forgot to note them, as I chose to Steal Treasure today"
})
e = CalendarDay.find_by(date: Date.new(2016, 04, 26)).calendar_events.create({
    date: Date.new(2016, 04, 26),
    time_slot: '2000 Evening',
    weather: 'Sunny',

    events: "Free time"
})
e.confidant_availability_events.create({
    confidant: death,
    location: 'Clinic',
})


