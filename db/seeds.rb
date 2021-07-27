# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
east_nashville = Gym.create(name: "Crossfit East Nashville", website: "http://crossfiteastnashville.com", address: "400 Davidson St, Nashville, TN 37213, United States")
peak_360 = Gym.create(name: "Peak 360 Crossfit", website: "http://peak360fitness.com", address: "6802 SW 81st St, Miami, FL 33143, United States")
sudurnes = Gym.create(name: "Crossfit Sudurnes", website: "https://reykjanes.sporthusid.is/Crossfit_Sudurnes", address: "Flugvallarbraut, 701 Keflavík, Iceland")
wonderland = Gym.create(name: "Crossfit Wonderland", website: "https://www.crossfitwonderland.com", address: "651 Rue Bridge, Montréal, QC H3K 2C8, Canada")
one_world = Gym.create(name: "Crossfit One World", website: "https://www.crossfitoneworld.com", address: "33415 Western Ave, Union City, CA 94587, United States")
new_england = Gym.create(name: "Crossfit New England", website: "https://crossfitnewengland.com", address: "15 Tech Cir, Natick, MA 01760, United States")
champlain_valley = Gym.create(name: "Champlain Valley Crossfit", website: "https://cvcfvt.com", address: "1191 S Brownell Rd #10, Williston, VT 05495, United States")
cigar_city = Gym.create(name: "Cigar City Crossfit", website: "https://www.cigarcitycrossfit.com", address: "1703 N 24th St, Tampa, FL 33605, United States")

tia = Athlete.create(first_name: "Tia-Clair", last_name: "Toomey", email: "tia@gmail.com", password: "champion", age: 28, height: 5.4, weight: 128, country: "Australia", gym: east_nashville)
noah = Athlete.create(first_name: "Noah", last_name: "Ohlsean", email: "noah@gmail.com", password: "hungry", age: 30, height: 5.7, weight: 190, country: "United States", gym: peak_360)
sara = Athlete.create(first_name: "Sara", last_name: "Sigmundsdottir", email: "sara@gmail.com", password: "pizza", age: 28, height: 5.6, weight: 152, country: "Iceland", gym: sudurnes)
adler = Athlete.create(first_name: "Jeffrey", last_name: "Adler", email: "adler@gmail.com", password: "maple", age: 27, height: 5.9, weight: 197, country: "Canada", gym: wonderland)
stephan = Athlete.create(first_name: "Stephan", last_name: "Takai", email: "stephan@gmail.com", password: "gold", age: 38, height: 5.4, weight: 140, country: "Brazil", gym: one_world)
katrin = Athlete.create(first_name: "Katrin", last_name: "Davidsdottir", email: "katrin@gmail.com", password: "focus", age: 28, height: 5.6, weight: 150, country: "Iceland", gym: new_england)
mat = Athlete.create(first_name: "Mathew", last_name: "Fraser", email: "mat@gmail.com", password: "number1", age: 31, height: 5.7, weight: 195, country: "United States", gym: champlain_valley)
luciana = Athlete.create(first_name: "Luciana", last_name: "Sugeta", email: "luciana@gmail.com", password: "rookie", age: 34, height: 5.4, weight: 107, country: "Brazil", gym: cigar_city)

angie = Workout.create(name: "Angie", group: "Girls", category: "For time", description: "100 pull-ups, 100 push-ups, 200 sit-ups, 100 squats")
cindy = Workout.create(name: "Cindy", group: "Girls", category: "Amrap", description: "20 minutes of: 5 pull-ups, 10 push-ups, 15 squats")
diane = Workout.create(name: "Diane", group: "Girls", category: "For time", description: "21-15-9 reps of: deadlifts (225/115 lb), handstand push-ups")
fran = Workout.create(name: "Fran", group: "Girls", category: "For time", description: "21-15-9 reps of: thrusters (95/65 lb), pull-ups")
grace = Workout.create(name: "Grace", group: "Girls", category: "For time", description: "30 clean and jerks (135/95 lb)")
helen = Workout.create(name: "Helen", group: "Girls", category: "For time", description: "3 rounds of: 400 meter run, 21 kettlebell swings (1.5/1 pood), 12 pull-ups")
isabel = Workout.create(name: "Isabel", group: "Girls", category: "For time", description: "30 snatches (135/95 lb)")
karen = Workout.create(name: "Karen", group: "Girls", category: "For time", description: "150 wall-ball shots (20/14 lb)")
linda = Workout.create(name: "Linda", group: "Girls", category: "For time", description: "10-9-8-7-6-5-4-3-2-1 reps of: deadlift (1 1/2 bodyweight), bench press (bodyweight), clean (3/4 bodyweight)")
mary = Workout.create(name: "Mary", group: "Girls", category: "Amrap", description: "20 minutes of: 5 handstand push-ups, 10 alternating pistols, 15 pull-ups")

murph = Workout.create(name: "Murph", group: "Hero", category: "For time", description: "Wearing a 20/14 lb vest or body armor: 1 mile run, 100 pull-ups, 200 push-ups, 300 squats, 1 mile run", about: "In memory of Navy Lieutenant Michael Murphy, 29, of Patchogue, N.Y., who was killed in Afghanistan June 28th, 2005.")
dt = Workout.create(name: "DT", group: "Hero", category: "For time", description: "5 rounds of: 12 deadlifts (155/105 lb), 9 hang power cleans (155/105 lb), 6 push jerks (155/105 lb)", about: "In honor of U.S. Air Force Staff Sgt. Timothy P. Davis, 28, who was killed on Feb. 20, 2009, while he was supporting operations in OEF and his vehicle was struck by an improvised explosive device.")
nate = Workout.create(name: "Nate", group: "Hero", category: "Amrap", description: "20 minutes of: 2 muscle-ups, 4 handstand push-ups, 8 kettlebell swings (32/24 kg)", about: "In honor of U.S. Navy Chief Special Warfare Operator (SEAL) Nate Hardy, who was killed Sunday, Feb. 4, 2008, during combat operations in Iraq.")
the_seven = Workout.create(name: "The Seven", group: "Hero", category: "For time", description: "7 rounds of: 7 handstand push-ups, 7 thrusters (135/95 lb), 7 knees-to-elbows, 7 deadlifts (245/165 lb), 7 burpees, 7 kettlebell swings (2/1.5 pood), 7 pull-ups", about: "A suicide bomber killed seven CIA officers and one Jordanian officer at a remote base in southeastern Afghanistan on Dec. 30, 2009, after posing as a potential informant reporting on Al Qaeda. Seven new stars will be etched into the memorial wall at the CIA, forever in their names. Killed in the attack were CIA officers Jennifer Lynne Matthews, 45; Scott Michael Roberson, 39; Harold E. Brown Jr., 37; Darren LaBonte, 35; Elizabeth Hanson, 30; and security contractors Jeremy Jason Wise, 35, and Dane Clark Paresi, 46.")
scotty = Workout.create(name: "Scotty", group: "Hero", category: "Amrap", description: "11 minutes of: 5 deadlifts (315/205 lb), 18 wall-ball shots (20/14 lb), 17 burpess over the bar", about: "Scott “Scotty” Deem, 31, of San Antonio, Texas, was killed while responding to a four-alarm structure fire on May 18, 2017. Deem and his fellow firefighters were searching the building for survivors, but after 11 minutes, Deem sounded a Mayday call. Rescuers were unable to locate him in time.")
artie = Workout.create(name: "Artie", group: "Hero", category: "Amrap", description: "20 minutes of: 5 pull-ups, 10 push-ups, 15 squats, 5 pull-ups, 10 thrusters (95/65 lb)", about: "Police Officer Arthur “Artie” Lopez, 29, of Babylon Village, New York, was killed in the line of duty on Oct. 23, 2012. Officer Lopez, a decorated eight-year veteran of the force, was serving on the Emergency Services Unit at the Nassau County Police Department at the time of his death.")
marston = Workout.create(name: "Marston", group: "Hero", category: "Amrap", description: "20 minutes of: 1 deadlift (405/285 lb), 10 toes-to-bar, 15 bar facing burpees", about: "Special Warfare Operator 1st Class William Blake Marston, 31, of Concord, New Hampshire, died Jan. 10, 2015, in DeLand, Florida, during military parachute training. Marston was assigned to an East Coast-based SEAL Team and served in the Navy for six years.")
bull = Workout.create(name: "Bull", group: "Hero", category: "For time", description: "2 rounds of: 200 double-unders, 50 overhead squats (135/95 lb), 50 pull-ups, 1 mile run", about: "U.S. Marine Corps Capt. Brandon "Bull" Barrett, 27, of Marion, Indiana, assigned to the 1st Battalion, 6th Marine Regiment, 2nd Marine Division, II Marine Expeditionary Force, based out of Camp Lejeune, North Carolina, was killed on May 5, 2010, while supporting combat operations in Helmand Province, Afghanistan.")
9_11_tribute = Workout.create(name: "9/11 Tribute", group: "Hero", category: "For time", description: "2001 meter run, 11 box jumps (30/24 in), 11 thrusters (125/85 lb), 11 chest-to-bar pull-ups, 11 power cleans (175/115lb), 11 handstand push-ups, 11 kettlebell swings (2/1.5 pood), 11 toes-to-bars, 11 deadlifts (170/115 lb), 11 push jerks (110/75 lb), 2001 meter row", about: "The workout is symbolic of the US terrorist tacks of September 11, 2001. The 2001 meter row and run represent the year of the attacks. The 11 Reps of 9 exercises represents the date.")
holleyman = Workout.create(name: "Holleyman", group: "Hero", category: "For time", description: "30 rounds of: 5 wall-ball shots (20/14 lb), 3 handstand push-ups, 1 power clean (225/155 lb)", about: "U.S. Army Staff Sgt. Aaron N. Holleyman, 27, of Glasgow, Mississippi, assigned to the 1st Battalion, 5th Special Forces Group, based in Fort Campbell, Kentucky, was killed on Aug. 30, 2004, when his military vehicle hit an improvised explosive device in Khutayiah, Iraq.")
hortman = Workout.create(name: "Hortman", group: "Hero", category: "Amrap", description: "45 minutes of: 800 meter run, 80 squats, 8 muscle-ups", about: "U.S. Army Capt. John D. Hortman, 30, of Inman, South Carolina, assigned to the 1st Battalion, 160th Special Operations Aviation Regiment, based in Fort Campbell, Kentucky, died on Aug. 8, 2011, in Fort Benning, Georgia, in a helicopter accident during a military training exercise.")
sisson = Workout.create(name: "Sisson", group: "Hero", category: "Amrap", description: "20 minutes of (in a 20/14 lb vest or body armor): 1 rope climb (15-ft), 5 burpees, 200 meter run", about: "U.S. Army 2nd Lt. Justin Sisson, 23, assigned to 1st Battalion, 506th Infantry Regiment, 4th Brigade Combat Team, 101st Airborne Division in Fort Campbell, Kentucky, died June 3, 2013, from wounds caused by a suicide bomber in Chamkani, Afghanistan.")

scores = [
    {rx: 1, time: 2:02, public: 1, athlete: adler, workout: fran},
    {rx: 1, time: 1:16, public: 1, athlete: adler, workout: grace},
    {rx: 1, time: 7:18, public: 1, athlete: adler, workout: helen},

    {rx: 1, time: 2:03, public: 1, athlete: sara, workout: grace},
    {rx: 1, time: 9:26, public: 1, athlete: sara, workout: helen},

    {rx: 1, time: 2:13, public: 1, athlete: tia, workout: fran},
    {rx: 1, time: 1:21, public: 1, athlete: tia, workout: grace},

    {rx: 1, time: 1:58, public: 1, athlete: noah, workout: fran},
    {rx: 1, time: 1:16, public: 1, athlete: noah, workout: grace},

    {rx: 1, time: 2:18, public: 1, athlete: katrin, workout: fran},
    {rx: 1, time: 1:28, public: 1, athlete: katrin, work: grace},
    {rx: 1, time: 9:16, public: 1, athlete: katrin, workout: helen},

    {rx: 1, time: 2:07, public: 1, athlete: mat, workout: fran},
    {rx: 1, time: 1:18, public: 1, athlete: mat, workout: grace},

    {rx: 1, reps: 395, date: 08/28/2018, notes: "13 rounds + 5 reps / 20 lb vest", public: 1, athlete: stephan, workout: cindy},
    {rx: 1, reps: 708, date: 05/17/2019, notes: "23 rounds + 18 reps", public: 1, athlete: stephan, workout: cindy},
    {rx: 1, time: 4:37, date: 04/12/2019, public: 1, athlete: stephan, workout: diane},
    {rx: 1, time: 8:51, date: 10/06/2018, public: 1, athlete: stephan, workout: grace},
    {rx: 1, time: 3:06, date: 07/06/2021, public: 1, athlete: stephan, workout: grace},
    {rx: 1, time: 10:21, date: 10/02/2019, public: 1, athlete: stephan, workout: helen},
    {rx: 0, reps: 390, date: 09/11/2018, notes: "13 rounds" public: 1, athlete: stephan, workout: mary},
    {rx: 1, time: 55:20, date: 05/29/2017, notes: "unpartitioned", public: 1, athlete: stephan, workout: murph},
    {rx: 1, time: 51:36, date: 05/28/2018, notes: "unpartitioned", public: 1, athlete: stephan, workout: murph},
    {rx: 1, time: 46:30, date: 05/27/2019, notes: "unpartitioned", public: 1, athlete: stephan, workout: murph},
    {rx: 1, time: 49:00, date: 05/29/2021, notes: "unpartitioned with 20 lb vest", public: 1, athlete: stephan, workout: murph},

    {rx: 0, reps: 371, date: 09/11/2018, notes: "12 rounds + 11 reps / knees push-ups", public: 1, athlete: luciana, workout: cindy},
    {rx: 0, time: 11:12, date: 04/12/2019, notes: "135 lbs, 2 mats handstand push-ups", public: 1, athlete: luciana, workout: diane},
    {rx: 0, time: 10:48, date: 06/03/2018, notes: "45 lbs thrusters, pull-ups with red band", public: 1, athlete: luciana, workout: fran},
    {rx: 0, time: 5:30, date: 10/06/2018, notes: "65 lbs", public: 1, athlete: luciana, workout: grace},
    {rx: 0, time: 3:47, date: 07/06/2021, notes: "65 lbs", public: 1, athlete: luciana, workout: grace},
    {rx: 1, time: 13:03, date: 05/10/2019, public: 1, athlete: luciana, workout: helen},
    {rx: 1, time: 11:26, date: 10/02/2019, public: 1, athlete: luciana, workout: helen},
    {rx: 0, time: 4:16, date: 02/12/2021, notes: "65 lbs" public: 1, athlete: luciana, workout: isabel},
    {rx: 1, time: 8:51, date: 04/05/2019, public: 1, athlete: luciana, workout: karen},
    {rx: 0, time: 63:15, date: 05/28/2018, notes: "20 rounds of Cindy, pull-ups with a band, no vest" public: 1, athlete: luciana, workout: murph},
    {rx: 0, time: 62:27, date: 05/28/2018, notes: "20 rounds of Cindy, no vest)" public: 1, athlete: luciana, workout: murph},
    {rx: 0, time: 74:55, date: 05/29/2021, notes: "20 rounds of Cindy, no vest" public: 1, athlete: luciana, workout: murph},
    {rx: 0, reps: 143, date: 03/05/2021, notes: "10 rounds + 3 reps / 2 bands (green/purple) bar MU, 2 mats HSPU, 45 lbs kb swing", public: 1, athlete: luciana, workout: nate},
    {rx: 0, time: 48:50, date: 12/31/2019, notes: "100 lbs power clenas", public: 1, athlete: luciana, workout: holleyman}
]

scores.each do |score|
    Score.create(score)
end