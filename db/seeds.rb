# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

calendar_events = CalendarEvent.create([
    {
        date: Date.new(2016, 04, 12),
        time_slot: '0600 Morning',

        events: "Class Lecture. The answer is 'Logic'."
    },
    {
        date: Date.new(2016, 04, 12),
        time_slot: '1600 After School',
        weather: 'Cloudy',

        events: "Forced Palace infiltration. Automatically get Chariot Rank 1"
    },
    {
        date: Date.new(2016, 04, 13),
        time_slot: '2000 Evening',
        
        events: "Interrogation event. Talk to the boy in Class 2-D, the pair outside 3-C, and the boy outside 1-B."
    },
    {
        date: Date.new(2016, 04, 15),
        time_slot: '1600 After School',
        
        events: "Forced Palace infiltration. Automatically get Lovers Rank 1"
    },
    {
        date: Date.new(2016, 04, 15),
        time_slot: '2000 Evening',
        
        events: "Meet Dr. Takemi at Leblanc."
    },
    {
        date: Date.new(2016, 04, 16),
        time_slot: '0600 Morning',
        
        events: "Class event: dodge the thrown chalk (Proficieny check)",
        event_requirements: "Proficiency Rank ?"
    },
    {
        date: Date.new(2016, 04, 17),
        time_slot: '2000 Evening',
        
        events: "Free Evening."
    },
    {
        date: Date.new(2016, 04, 18),
        time_slot: '1600 After School',
        weather: 'Cloudy',
        
        events: "Free afternoon."
    },
])

