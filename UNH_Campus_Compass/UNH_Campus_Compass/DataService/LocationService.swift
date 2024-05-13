
//
//  LocationService.swift
//  UNH_Campus_Compass
//
//  Created by Galven on 3/2/24.

//  This files holds a class that lists all locations
//

import Foundation
import MapKit

class LocationService {
    static var locations: [Location] = [ // list of locations
        Location(
            name: "Memorial Union Building (MUB)",
            use: "Core",
            coordinates: CLLocationCoordinate2D(latitude: 43.134499058847865, longitude: -70.930046634757),
            description: "The Memorial Union Building is home to a variety of facilities and services to help students make the most out of their time here at UNH. Some of the most popular features are the UNH Bookstore, Campus Services, Games Room, Granite Square Station Mailroom, Union Court, and Holloway Commons.",
            assetNames: ["MUB"], // put pics and stuff in here
            link: "https://www.unh.edu/mub/" // a link to unh website
        ),
        Location(
            name: "Thompson Hall (T-Hall)",
            use: "Core",
            coordinates: CLLocationCoordinate2D(latitude: 43.13600027007222, longitude: -70.93245555876618),
            description: "Thompson Hall, known affectionately as T-Hall, is an icon of the Durham campus. It is recognizable for its clock tower and colonial-style architecture, making it a symbolic and historic landmark. T-Hall is the home of UNH Graduate School",
            assetNames: ["T-hall"], // put pics and stuff in here
            link: "https://gradschool.unh.edu"
        ),
        Location(
            name: "Dimond Library",
            use: "Core",
            coordinates: CLLocationCoordinate2D(latitude: 43.13580979332678, longitude: -70.93332794689441),
            description: "The Diamond Library is the main library on campus and houses collections supporting the humanities, social sciences, business, health sciences, human services, education, and earth sciences. It is also home to the federal and state depository piblication collections, multimedia, Special Collections, University Archives, and the University Museum. Students enjoy using the library's quiet rooms and comfortable seating to study.",
            assetNames: ["dimon library"], // put pics and stuff in here
            link: "https://library.unh.edu/locations/dimond-library" // a link to unh website
        ),
        Location(
            name: "Holloway Commons (HoCo)",
            use: "Dining",
            coordinates: CLLocationCoordinate2D(latitude: 43.13536591021633, longitude: -70.92934110407364),
            description: "Holloway Commons is centrally located and the largest dining hall on campus. It features many individual food stations where fresh items are prepared right on the spot. Favorites include stir-fry and brick-oven specialties.",
            assetNames: ["Hoco","Hoco 2"], // put pics and stuff in here
            link: "https://www.unh.edu/dining/facility/holloway-commons-hoco" // a link to unh website
        ),
        Location(
            name: "Philbrook Dining Hall (Philly)",
            use: "Dining",
            coordinates: CLLocationCoordinate2D(latitude: 43.13228856450793, longitude: -70.93486735989683),
            description: "Philbrook Dining Hall offers an Allergen-Friendly station, the Mongolian Grill, and toasted subs made to order. It features booth-style seating, tables, and a separate breakfast dining room, making this a popular meeting destination. The lobby of Philly has a late-night dining option.",
            assetNames: ["Philly"], // put pics and stuff in here
            link: "https://www.unh.edu/dining/facility/philbrook-dining-hall"
        ),
        Location(
            name: "Wildcatessen (Wildkitty)",
            use: "Dining",
            coordinates: CLLocationCoordinate2D(latitude: 43.13811203525413, longitude: -70.9298988791844),
            description: "Wildcatessen is a late-night dining option, constantly expanding offerings to keep up with the changing times of today's student. It features goodies like the Steak Bomb, sushi, cereal, and whatever else a student could be looking for. Wild Kitty also offers a full line of convenience grab-n-go packaged items and health and beauty aids.",
            assetNames: ["Wildkitty"],
            link: "https://www.unh.edu/dining/facility/wildcatessen"
        ),
        Location(
            name: "Dairy Bar",
            use: "Dining",
            coordinates: CLLocationCoordinate2D(latitude: 43.13943504633248, longitude: -70.93607437428321),
            description: "The UNH Dairy Bar is an ice cream shop located next to the train station. It is focused on healthy foods and sustainability, selecting wholesome, local products. The Dairy Bar uses compostable containers and cutlery for takeaway orders and EnergyStar-rated equipment in the kitchen.",
            assetNames: [],
            link: "https://www.unh.edu/dining/unh-dairy-bar"
        ),
        Location(
            name: "Train Station",
            use: "Transportation",
            coordinates: CLLocationCoordinate2D(latitude: 43.139235539827986, longitude: -70.93620593379947),
            description: "The Amtrak Downeaster has a station right here on the UNH campus. Students enjoy taking the train up to places in Maine or down to Boston, Massachusetts. There is a 15% student discount.",
            assetNames: ["train station"],
            link: "https://amtrakdowneaster.com/stations/durham-unh/"
        ),
        Location(
            name: "Health & Wellness",
            use: "Health",
            coordinates: CLLocationCoordinate2D(latitude: 43.13620289657497, longitude: -70.92863773393046),
            description: "Health & Wellness is a source for medical services, wellness education and promotion, and public health expertise on campus. It is open to UNH students, faculty, and staff. Psychological and Counseling Services (PACS) is also located in this building.",
            assetNames: ["Health and wellness"],
            link: "https://www.unh.edu/health/"
        ),
        Location(
            name: "Wolff House",
            use: "Health",
            coordinates: CLLocationCoordinate2D(latitude: 43.13588138857817, longitude: -70.92839840465312),
            description: "Wolff House is home to UNH Sexual Harassment and Rape Prevention Program (SHARPP). SHARPP is committed to ending all forms of violence and continuing to work towards dismantling systems of oppression within our community. It provides services to victims/survivors of sexual violence, relationship abuse, and stalking.",
            assetNames: [],
            link: "https://www.unh.edu/sharpp/"
        ),
        Location(
            name: "Hamel Recreation Center (HRC)",
            use: "Recreation",
            coordinates: CLLocationCoordinate2D(latitude: 43.139003471136164, longitude: -70.93338393595033),
            description: "Hamel Recreation Center is a 158,000 square-foot, state-of-the-art facility with 18,000 square-foot of fitness space located in the heart of campus. It boasts multi-activity courts and exercise, yoga, and cycling studios. Make the climb on the 850-square-foot bouldering wall, or enjoy classic court sports on one of three wood floor courts, two raquetball courts, and an international squash court. Cooking classes take place in the Demonstration Kitchen, part of UNH's Health & Wellness satellite office, Thrive.",
            assetNames: ["hame rec"], // put pics and stuff in here
            link: "https://campusrec.unh.edu/facilities/hamel-recreation-center"
        ),
        Location(
            name: "Outdoor Pool",
            use: "Recreation",
            coordinates: CLLocationCoordinate2D(latitude: 43.13945154221807, longitude: -70.93267896355772),
            description: "The UNH Outdoor Pool offers zero-depth entry, swim lanes, a concession stand, and plenty of space for free swimming. Social space around the pool is a great place to relax when not enjoying the water.",
            assetNames: [],
            link: "https://campusrec.unh.edu/facilities/outdoor-pool"
        ),
        Location(
            name: "Great Lawn (Thompson Hall Lawn)",
            use: "Recreation",
            coordinates: CLLocationCoordinate2D(latitude: 43.13674840229689, longitude: -70.93260142455009),
            description: "The Great Lawn is a large lawn located in front of Thompson Hall. Students enjoy hanging out and studying on blankets in nice weather. A highlight of the Great Lawn is its use for University Day (UDay). UDay is a tradition here at UNH that brings together students, staff, faculty, and Durham community members to celebrate and learn more about the more than 200 student groups, campus departments, local businesses, and more.",
            assetNames: [],
            link: "https://www.unh.edu/mub/events/university-day"
        ),
        Location(
            name: "Fish Bowl (Scott Hall Lawn)",
            use: "Recreation",
            coordinates: CLLocationCoordinate2D(latitude: 43.137027579286496, longitude: -70.93150350701458),
            description: "The Fish Bowl is a large lawn located in front of Scott Hall. Students study and hang out at the picnic tables, Adirondack chairs, and sometimes even hammocks. Many campus-wide events are held here, including University Day (UDay).",
            assetNames: [],
            link: "https://www.unh.edu/mub/events/university-day"
        ),
        Location(
            name: "College Woods",
            use: "Recreation",
            coordinates: CLLocationCoordinate2D(latitude: 43.136547336529176, longitude: -70.93793596136096),
            description: "College Woods is located on the west side of the main campus. It comprises approximately 250 acres of woods, streams, and small fields. College Woods is the oldest and most intensively used University property for education, research, and recreation. It is not uncommon to see walkers, runners, and classes all in one brief stroll through the woods.",
            assetNames: [],
            link: "https://colsa.unh.edu/collegeWoods"
        ),
        Location(
            name: "Whittemore Center Arena (The Whitt)",
            use: "Athletics",
            coordinates: CLLocationCoordinate2D(latitude: 43.13984211645444, longitude: -70.93441773290876),
            description: "The Whittemore Center is a multi-purpose arena. It is home to the UNH Wildcats Hockey. Other events that happen in the Whitt include career fairs, open skate, and concerts.",
            assetNames: ["whittemore"], // put pics and stuff in here
            link: "https://campusrec.unh.edu/facilities/whittemore-center-arena" // a link to unh website
        ),
        Location(
            name: "Memorial Field",
            use: "Athletics",
            coordinates: CLLocationCoordinate2D(latitude: 43.13912390640341, longitude: -70.93496571845886),
            description: "Memorial Field is most commonly known as the showcase for UNH lacrosse and field hockey teams. This field can be rented by UNH students, faculty, staff, and the community.",
            assetNames: [],
            link: "https://campusrec.unh.edu/facilities/outdoor-fields"
        ),
        Location(
            name: "Field House",
            use: "Athletics",
            coordinates: CLLocationCoordinate2D(latitude: 43.139050460763166, longitude: -70.93810644752693),
            description: "Inside the Field House is the Lundholm Gymnasium and the Swasey Indoor Pool. With a capacity of 2,500, Lundholm Gym is a great location for athletic and health and wellness activities as well as large scale events such as trade shows, concerts, and more. The Swasey Indoor Pool consists of an eight-lane competitive lap pool ranging in depth from 4.5 to 13.5 feet, with 1- and 3-meter spring boards.",
            assetNames: [], // put pics and stuff in here
            link: "https://campusrec.unh.edu/facilities"
        ),
        Location(
            name: "Tucker Field",
            use: "Athletics",
            coordinates: CLLocationCoordinate2D(latitude: 43.13771383215191, longitude: -70.93785493065948),
            description: "Located right next to Wildcat Stadium, Tucker Field is the practice facility and home venue for the UNH men's and women's soccer and women's lacrosse teams.",
            assetNames: [], // put pics and stuff in here
            link: "https://unhwildcats.com"
        ),
        Location(
            name: "Wildcat Stadium",
            use: "Athletics",
            coordinates: CLLocationCoordinate2D(latitude: 43.138685348133066, longitude: -70.93917420334567),
            description: "Wildcat Stadium has a capacity of 11,015 and is the perfect location for large scale athletic events, like UNH Football, and non-athletic outdoor events.",
            assetNames: [], // put pics and stuff in here
            link: "https://www.unh.edu/events-conferences/facility/wildcat-stadium"
        ),
        Location(
            name: "Tennis and Pickleball Courts",
            use: "Athletics",
            coordinates: CLLocationCoordinate2D(latitude: 43.1398119585811, longitude: -70.93957154443034),
            description: "The tennis and pickleball courts are open sunup to sundown. Equipment is available at the Hamel Recreation Center.",
            assetNames: [], // put pics and stuff in here
            link: "https://campusrec.unh.edu/facilities/tennis-pickleball-courts"
        ),
        Location(
            name: "Bremner Field",
            use: "Athletics",
            coordinates: CLLocationCoordinate2D(latitude: 43.139314631531896, longitude: -70.94118387612926),
            description: "Bremner field is home to UNH's men's and women's soccer teams and local community youth sports. The field can be rented by UNH students, faculty, staff, and the community.",
            assetNames: [],
            link: "https://campusrec.unh.edu/facilities/outdoor-fields"
        ),
        Location(
            name: "Boulder Field",
            use: "Athletics",
            coordinates: CLLocationCoordinate2D(latitude: 43.14055362289061, longitude: -70.94309542030499),
            description: "Boulder Field is a landmark for all kinds of events, from the senior picnic to the annual Solar Fest. The space is available at no cost to all UNH students, faculty, and staff.",
            assetNames: [],
            link: "https://campusrec.unh.edu/facilities/outdoor-fields"
        ),
        Location(
            name: "Student Rec Field",
            use: "Athletics",
            coordinates: CLLocationCoordinate2D(latitude: 43.13898104737574, longitude: -70.94414534752691),
            description: "The Student Rec Field is where current wildcats play club sports and intramural leagues, and home field for future Wildcats. This field can be rented by UNH students, faculty, staff, and the community.",
            assetNames: [], // put pics and stuff in here
            link: "https://campusrec.unh.edu/facilities/outdoor-fields"
        ),
        Location(
            name: "Smith Hall",
            use: "Administration",
            coordinates: CLLocationCoordinate2D(latitude: 43.13726583560457, longitude: -70.93071701756737),
            description: "Smith Hall is home to the Office of Undergraduate Admissions. It is the place to go for general information about UNH or to meet with an admissions counselor.",
            assetNames: ["smith hall"], // put pics and stuff in here
            link: "https://admissions.unh.edu" // a link to unh website
        ),
        Location(
            name: "President's House",
            use: "Administration",
            coordinates: CLLocationCoordinate2D(latitude: 43.13608778896792, longitude: -70.92956241522926),
            description: "The President's House is the official residence of the university's president. It is a historic building, symbolizing the university's leadership and playing a role in fostering connections between the university administration, faculty, students, and the wider community.",
            assetNames: [],
            link: "https://www.unh.edu"
        ),
        Location(
            name: "Hood House",
            use: "Administration",
            coordinates: CLLocationCoordinate2D(latitude: 43.1352785881001, longitude: -70.93076497900688),
            description: "Hood House is a campus services building home to Career and Professional Success (CAPS), the University Advising Center, First-Year Programs, Military and Veterans Services, CONNECT Program, Study Away USA, and Orientation.",
            assetNames: ["Hood House"], // put pics and stuff in here
            link: "https://www.unh.edu/career/"
        ),
        Location(
            name: "Housing Office",
            use: "Administration",
            coordinates:CLLocationCoordinate2D(latitude: 43.13304024530727, longitude: -70.93127881095279),
            description: "This is where the UNH Office of Housing & Residential Life is. Living on campus is designed to provide fun and engaging activities, promote opportunities to meet new people, and offer resources as students find their way on campus.",
            assetNames:[],
            link:"https://www.unh.edu/housing/"
        ),
        Location(
            name: "UNH Police Department",
            use: "Administration",
            coordinates: CLLocationCoordinate2D(latitude: 43.133562602340824, longitude: -70.93874213010761),
            description: "The primary mission of the University of New Hampshire Police Departnemt is to partner with all UNH communities to provide exceptional public safety services with respect, fairness, integrity, and transparency to ensure safe learning environments.",
            assetNames: [],
            link: "https://www.unh.edu/upd/"
        ),
        Location(
            name: "Durham Fire Department",
            use: "Administration",
            coordinates: CLLocationCoordinate2D(latitude: 43.13649083731678, longitude: -70.93602987428326),
            description: "The Durham Fire Department is a full service combination department serving the community of Durham and the UNH campus.",
            assetNames: [],
            link: "https://www.ci.durham.nh.us/fire"
        ),
        Location(
            name: "Elliott Alumni Center",
            use: "Administration",
            coordinates: CLLocationCoordinate2D(latitude: 43.140167288571, longitude: -70.93249373564558),
            description: "The Elliott Alumni Center is here to keep your wildcat connection string and vibrant for life. It is dedicated to ensuring wildcats recieve all the benefits of their UNH network.",
            assetNames: [],
            link: "https://unhconnect.unh.edu"
        ),
        Location(
            name: "Parsons Hall",
            use: "Academic - CEPS",
            coordinates: CLLocationCoordinate2D(latitude: 43.13370595442157, longitude: -70.93397900222595),
            description: "Parsons is the chemistry teaching and research facility at the university and provides the foundation courses for virtually all engineering, physical science, and life science majors. It holds a Chemistry Library, which supports research in analytical, inorganic, organic, organometallic, and physical chemistry, as well as materials science and related disciplines. Chemistry instruction materials, including course reserves, are also available here.",
            assetNames: [], // put pics and stuff in here
            link: "https://library.unh.edu/locations/chemistry-library" // a link to unh website
        ),
        Location(
            name: "Kingsbury Hall",
            use: "Academic - CEPS",
            coordinates: CLLocationCoordinate2D(latitude: 43.134143771438204, longitude: -70.93415413290913),
            description: "Kingsbury Hall provides students the environment they need to learn to become the next generation of scientists, engineers, and mathematicians. The laboratories have the appropriate infrascructure, with high-bay areas and heating, air conditioning, and ventalation throughout. All departements in Kingsbury have computer clusters and student project spaces. Students like to grab a coffee and a snack at Albert's and study in the Engineering, Math, and Computer Science Library.",
            assetNames: ["Kingsbury hall","Kingsbury 2 Hall"], // put pics and stuff in here
            link: "https://ceps.unh.edu/facility/kingsbury-hall" // a link to unh website
        ),
        Location(
            name: "Morse Hall",
            use: "Academic - CEPS",
            coordinates: CLLocationCoordinate2D(latitude: 43.13493821103771, longitude: -70.93571333106124),
            description: "Morse Hall is home to the University's renowned institute for study of Earth, Oceans, and Space. The core of the building is an atrium with great acoustics, providing an informal concert venue. Morse Hall provides lab space for some of the world's greatest scientific and engineering minds.",
            assetNames: ["Morse hall"], // put pics and stuff in here
            link: "https://ceps.unh.edu/facility/learning-spaces"
        ),
        Location(
            name: "DeMeritt Hall",
            use: "Academic - CEPS",
            coordinates: CLLocationCoordinate2D(latitude: 43.136415096820876, longitude: -70.9339209370604),
            description: "DeMeritt Hall provides state-of-the-art laboratories, classrooms, lecture halls, and offices of the physics department. It has light, space, air, and enough blackboards to write out the derivation of every physics equation ever. Here is the home of the pioneering studio math/physics class, with its focus on small group work and learning through multimedia.",
            assetNames: ["demertti","demeritti 2"],
            link: "https://ceps.unh.edu/facility/learning-spaces"
        ),
        Location(
            name: "James Hall",
            use: "Academic - CEPS",
            coordinates: CLLocationCoordinate2D(latitude: 43.136826310894804, longitude: -70.93465884342454),
            description: "James Hall boasts state-of-the-art classrooms, teaching labs, and offices for faculty and graduate students. Instructional and research field activities are enhanced with a field-science support suite for equipment storage and staging as well as an instructional courtyard. Although it was renovated in 2010, James Hall holds many historically important features as it was one of the original buildings on the Durham campus.",
            assetNames: ["james hall","james 2 hall"], // put pics and stuff in here
            link: "https://ceps.unh.edu/facility/learning-spaces"
        ),
        Location(
            name: "Gregg Hall",
            use: "Academic - CEPS",
            coordinates: CLLocationCoordinate2D(latitude: 43.1350597868611, longitude: -70.93845094544821),
            description: "Gregg Hall is a state-of-the-art research and teaching facility that is home to the Department of Civil Engineering's Environmental Research Group and NOAA Center's and the College of Life Sciences and Agriculture's Hubbard Center for Genome Studies. Along with the Chase Ocean Engineerig Laboratory, it anchors the university's West Campus. Gregg Hall and its programs symbolize the university's committment to inquiry-based education and engagement through research and scholarship.",
            assetNames: [],
            link: "https://ceps.unh.edu/facility/learning-spaces"
        ),
        Location(
            name: "Chase Ocean Engineeing Laboratory",
            use: "Academic - CEPS",
            coordinates: CLLocationCoordinate2D(latitude: 43.1357733680159, longitude: -70.93930736078875),
            description: "The Jere A. Chase Ocean Engineering Laboratory (COEL) is equipped with state-of-the-art testing facilities for underwater/ocean engineering. Resident faculty use the laboratory to conduct research in the areas of ocean engineering, ocean mapping, ocean acoustics, hydrogeology, and hydrographic surveying. Graduate and undergraduate students also take advantage of COEL to support their thesis work. Some features are en engineering tank and a wave/tow tank.",
            assetNames: [],
            link: "https://marine.unh.edu/research-centers/facilities/jere-chase-ocean-engineering-laboratory"
        ),
        Location(
            name: "UNH Observatory",
            use: "Academic - CEPS",
            coordinates: CLLocationCoordinate2D(latitude: 43.14719819308792, longitude: -70.9442091607882),
            description: "The UNH Observatory is part of the Department of Physics & Astronomy. It serves as a center for astronomical research, education, and public outreach. The observatory houses several telescopes, including a 14-inch Schmidt-Cassegrain telescope. It hosts regular open houses and events where visitors can observe celestial objects and learn about astronomy from UNH faculty and students. The observatory also contributes to research efforts in areas such as planetary science, stellar astrophysics, and observational astronomy.",
            assetNames: [],
            link: "https://ceps.unh.edu/physics/observatory"
        ),
        Location(
            name: "UNH InterOperability Laboratory (UNH-IOL)",
            use: "Academic - CEPS",
            coordinates: CLLocationCoordinate2D(latitude: 43.13623521826034, longitude: -70.92660373685578),
            description: "The UNH InterOperability Laboratory tests networking and data communications products. Since 1988, the laboratory has fostered multi-vendor interoperability while preparing students for careers in the industry. The laboratory has grown steadily into one of the industry's premier independent proving new grounds for new technologies.",
            assetNames: [],
            link: "https://innovation.unh.edu/unh-interoperability-lab"
        ),
        Location(
            name: "Hewitt Hall",
            use: "Academic - CHHS",
            coordinates: CLLocationCoordinate2D(latitude:  43.136341711365475, longitude: -70.93492988757875),
            description: "Hewitt Hall is part of the College of Health and Human Services. It is home to the Department of Recreation Management and Policy and the Center on Aging and Community Living (CACL).",
            assetNames: ["hewitt"], // put pics and stuff in here
            link: "https://chhs.unh.edu"
        ),
        Location(
            name: "Pettee Hall",
            use: "Academic - CHHS",
            coordinates: CLLocationCoordinate2D(latitude: 43.137173694018635, longitude: -70.93555826263483),
            description: "Pettee Hall is home to the Institude on Disability (IOD). Through innovative and interdisciplinary research, academic, service, and dissemination initiatives, theIOD builds local, state, and national capacities to respond to the needs of individuals with disabilities and their families.",
            assetNames: ["pettee"],
            link: "https://iod.unh.edu"
        ),
        Location(
            name: "New Hampshire Hall",
            use: "Academic - CHHS",
            coordinates: CLLocationCoordinate2D(latitude: 43.13829036239349, longitude: -70.93400493091816),
            description: "New Hampshire Hall holds a variety disciplines. It is home to the Department of Kinesiology and had a studio for theatre and dance.",
            assetNames: [], // put pics and stuff in here
            link: "https://chhs.unh.edu"
        ),
        Location(
            name: "Health Sciences Simulation Center",
            use: "Academic - CHHS",
            coordinates: CLLocationCoordinate2D(latitude: 43.13553028833301, longitude: -70.93816863487847),
            description: "The Health Sciences Simulation Center provides enhanced educational opportunities for students pursuing nursing, as well as those majoring in occupational therapy, communication sciences and disorders, health sciences, and other clinical areas. The Center provides the next level of education, bringing students and faculty together in a high-tech environment, ensuring that students are maximally prepared and competent. The 20,000 square foot building houses 35 offices, multiple learning classrooms, and fully equipped simulation labs that mimic hospital, clinic, primary care, and other health care settings.",
            assetNames: [],
            link: "https://chhs.unh.edu/centers-institutes/health-sciences-simulation-center"
        ),
        Location(
            name: "McConnell Hall",
            use: "Academic - COLA",
            coordinates: CLLocationCoordinate2D(latitude: 43.13293835090485, longitude: -70.93209912705409),
            description: "McConnell Hall houses the Departments of Psychology and Sociology. It provides classrooms, faculty offices, and academic commons.", // put a desc from unh website
            assetNames: [], // put pics and stuff in here
            link: "https://cola.unh.edu" // a link to unh website
        ),
        Location(
            name: "Horton Hall",
            use: "Academic - COLA",
            coordinates: CLLocationCoordinate2D(latitude: 43.13373539030258,longitude: -70.932020588001),
            description: "The Horton Social Science Center primarily houses academic departments and offices related to the social sciences, including anthropology, sociology, psychology, and political science. The hall provides classrooms, lecture halls, laboratories, and faculty offices. Horton is home to the largest lecture hall on campus.",
            assetNames: ["horton"], // put pics and stuff in here
            link: "https://cola.unh.edu" // a link to unh website
        ),
        Location(
            name: "Paul Creative Arts Center (PCAC)",
            use: "Academic - COLA",
            coordinates: CLLocationCoordinate2D(latitude: 43.134466577382135, longitude: -70.93360339612346),
            description: "The Paul Creative Arts Center is UNH's center for the fine and performing arts. Visual art, music, dance, and theatre are living and breathing every day at PCAC.",
            assetNames: ["PCAC"], // put pics and stuff in here
            link: "https://cola.unh.edu/paul-creative-arts-center"
        ),
        Location(
            name: "Morill Hall",
            use: "Academic - COLA",
            coordinates: CLLocationCoordinate2D(latitude: 43.13756788471399, longitude: -70.93437532520626),
            description: "Morrill Hall is an academic building holding classrooms and offices of the College of Liberal Arts. It is home to the Department of Education.",
            assetNames: [],
            link: "https://cola.unh.edu/education"
        ),
        Location(
            name: "Murkland Hall",
            use: "Academic - COLA",
            coordinates: CLLocationCoordinate2D(latitude:43.13622572605272, longitude:-70.9332707876016),
            description:"Murkland Hall serves as the administrative hub for the university, housing various administrative offices. It also accomodates academic departments and classrooms, incuding foreign language departments.",
            assetNames: [], // put pics and stuff in here
            link: "https://cola.unh.edu"
        ),
        Location(
            name: "Hamilton Smith Hall (Ham Smith)",
            use: "Academic - COLA",
            coordinates: CLLocationCoordinate2D(latitude: 43.135807962800236, longitude: -70.93111606946681),
            description: "Hamilton Smith Hall is houses various departments and facilities, primarily within the College of Liberal Arts. Some of the departments and programs located here include Englis, History, Philosophy, Women's and Gender Studies, and Classics.",
            assetNames: ["Ham Ham Smith"], // put pics and stuff in here
            link: "https://cola.unh.edu"
        ),
        Location(
            name: "Spaulding Life Sciences Center",
            use: "Academic - COLSA",
            coordinates: CLLocationCoordinate2D(latitude: 43.135358156647996, longitude:-70.93458927708612 ),
            description: "The Spaulding Life Sciences Center is a state-of-the-art research facility dedicated to life sciences. It houses laboratories, classrooms, and collaborative spaces for research in various areas such as biology, biotechnology, genetics, and biochemistry. The center facilitates interdisciplinary research and provides opportunities for students and faculty to engage in cutting-edge scientific exploration.",
            assetNames: ["spaulding"], // put pics and stuff in here
            link: "https://colsa.unh.edu"
        ),
        Location(
            name: "Rudman Hall",
            use: "Academic - COLSA",
            coordinates: CLLocationCoordinate2D(latitude: 43.135734851044596, longitude:-70.93536798873203 ),
            description: "Rudman Hall is part of the College of Life Sciences and Agriculture. This modern academic building houses various departments and facilities, including classrooms, lecture halls, administrative offices, and research laboratories.",
            assetNames: ["rudman"], // put pics and stuff in here
            link: "https://colsa.unh.edu"
        ),
        Location(
            name: "Taylor Hall",
            use: "Academic - COLSA",
            coordinates: CLLocationCoordinate2D(latitude: 43.13750926097063, longitude: -70.9351256862759),
            description: "Taylor Hall is home to UNH Extension. UNH Extension strengthens people and communities in New Hampshire by providing trusted knowledge, practical education, and cooperative solutions. It works in five broad topic areas: Community and Economic Development, Education & 4-H Youth Development, Food & Agriculture, Health and Well-Being, and Natural Resources.",
            assetNames: ["taylor hall"],
            link: "https://extension.unh.edu"
        ),
        Location(
            name: "Kendall Hall",
            use: "Academic - COLSA",
            coordinates: CLLocationCoordinate2D(latitude: 43.13754370615834, longitude: -70.93563051661287),
            description: "Kendall Hall is an academic building holding classrooms and offices of the College of Life Sciences and Agriculture. It is home to the Department of Agriculture, Nutrition, and Food Systems.",
            assetNames: [],
            link: "https://colsa.unh.edu/agriculture-nutrition-food-systems"
        ),
        Location(
            name: "Nesmith Hall",
            use: "Academic - COLSA",
            coordinates: CLLocationCoordinate2D(latitude: 43.13817453886336, longitude: -70.93578953195343),
            description: "Nesmith Hall is home to UNH Human Resources and many classrooms for the College of Life Sciences and Agriculture.",
            assetNames: ["nezemith"],
            link: "https://www.unh.edu/hr/"
        ),
        Location(
            name: "Ritzman Animal Nutrition Laboratory",
            use: "Academic - COLSA",
            coordinates: CLLocationCoordinate2D(latitude: 43.136423583194286, longitude: -70.9387295454481),
            description: "The Ritzman Animal Nutrition Laboratory is a significant research unit and nutrition laboratory. It is home to UNH Energy and Campus Development.",
            assetNames: [],
            link: "https://energy.sr.unh.edu"
        ),
        Location(
            name: "MacFarlane Research Greenhouses",
            use: "Academic - COLSA",
            coordinates: CLLocationCoordinate2D(latitude: 43.14088265694763, longitude: -70.93909096078855),
            description: "With more than 25,000 square feet of greenhouse, the MacFarlane Research Greenhouses are dedicated to research and testing associated with the NH Agricultural Experiment Station and College of Life Sciences and Agriculture.",
            assetNames: [],
            link: "https://colsa.unh.edu/facility/macfarlane-research-greenhouses"
                ),
        Location(
            name: "Thompson School of Applied Science",
            use: "Academic - COLSA",
            coordinates: CLLocationCoordinate2D(latitude: 43.142019481891516, longitude: -70.93881185894243),
            description: "The Thompson School of Applied Science offers exceptional two-year degree programs in Applied Animal Science, Forest Technology, and Veterinary Technology. Students experience a wide range of hands-on learning opportunities and gain the knowledge needde to stand out in a competitive marketplace after graduation. The programs are closely connected to the university's corresponding four-year programs, meaning there is a clear pathway to completing a four-year bachelor's degree.",
            assetNames: [],
            link: "https://colsa.unh.edu/thompson-school-applied-science"
        ),
        Location(
            name: "Barton Hall",
            use: "Academic - COLSA",
            coordinates: CLLocationCoordinate2D(latitude: 43.14184457223296, longitude: -70.93895759146983),
            description: "Barton Hall holds the UNH Brewing Science Laboratory. This laboratory is both a fully equipped professional beverage manufacturing facility and one of the most advanced analytical beer chemistry labs in the state. It supports UNH's Brewing Science minor and provides beneficial beery testing services to New Hampshire brewers.",
            assetNames: [],
            link: "https://colsa.unh.edu/facility/brewing-science-laboratory"
        ),
        Location(
            name: "Putnam Hall",
            use: "Academic - COLSA",
            coordinates: CLLocationCoordinate2D(latitude: 43.141423026384935, longitude: -70.93952284544785),
            description: "Putnam Hall holds administrative offices, classrooms, and laboratories for the Thompson School of Applied Science.",
            assetNames: [],
            link: "https://colsa.unh.edu/thompson-school-applied-science"
        ),
        Location(
            name: "New Hampshire Veterinary Diagnostic Laboratory",
            use: "Academic - COLSA",
            coordinates: CLLocationCoordinate2D(latitude: 43.141002342401116, longitude: -70.94019595894245),
            description: "The New Hampshire Veterinary Diagnostic Laboratory assists the NH Commissioner of Agriculture and State Veterinarian in their efforts to monitor and control important animal diseases. It contributes to the academic, research, and outreach missions of the UNH College of Life Sciences and Agriculture.",
            assetNames: [],
            link: "https://colsa.unh.edu/new-hampshire-veterinary-diagnostic-laboratory"
        ),
        Location(
            name: "Horse Barn",
            use: "Academic - COLSA",
            coordinates: CLLocationCoordinate2D(latitude: 43.14221468126666, longitude: -70.94104090311811),
            description: "The UNH Horse Barn is a 40-stall turnout and pasture facility.",
            assetNames: [],
            link: "https://colsa.unh.edu/facility/equine-facilities"
        ),
        Location(
            name: "Smith Equine Center",
            use: "Academic - COLSA",
            coordinates: CLLocationCoordinate2D(latitude: 43.14301456547173, longitude: -70.94349873195327),
            description: "The Lou & Lutza Smith Equine Center houses boarders and the stallion that arrives each spring for ANSC 724. It includes laboratory and artificial insemination rooms as well as classrooms, conference space, and student housing.",
            assetNames: [],
            link: "https://colsa.unh.edu/facility/equine-facilities"
        ),
        // old dairy barn
        Location(
            name: "Woodman Horticulture Farm",
            use: "Academic - COLSA",
            coordinates: CLLocationCoordinate2D(latitude: 43.15023243183163, longitude: -70.94229342453265),
            description: "The 155-acre NH Agricultural Experiment Station's Woodman Horticulture Research Farmfocuses on the research, teaching, and outreach on the production of horticultural and ornamental crops. Part of the farm is wooded and used for research and teaching in areas such as forestry, wildlife biology, entomology, and water quality. It also contains the equestrian cross country course. The farm hosts many visitors each year, and it is a frequent site of outreach programs for agricultural initiatives.",
            assetNames: [],
            link: "https://colsa.unh.edu/facility/woodman-horticulture-research-farm"
        ),
        Location(
            name: "Fairchild Dairy Teaching and Research Center",
            use: "Academic - COLSA",
            coordinates: CLLocationCoordinate2D(latitude: 43.1466214507094, longitude: -70.95201974913986),
            description: "The Fairchild Dairy Teaching and Research Center is representative of a typical New England Dairy operation, thereby developing new knowledge and management expertise geared directly to many state and regional stakeholders in the dairy industry. It houses about 90 milking-age cows and approximately 70 growing, replacement animals. The facility relies heavily on student labor, with about 40 students working part-time at the farm at any given time during the academic year.",
            assetNames: [],
            link: "https://colsa.unh.edu/facility/fairchild-dairy-teaching-research-center"
        ),
        Location(
            name: "Paul College",
            use: "Academic - Paul",
            coordinates: CLLocationCoordinate2D(latitude: 43.13687109422137, longitude: -70.92899811957331),
            description: "The Peter T. Paul College of Business and Economics provides state-of-the-art facilities, including classrooms, lecture halls, computer labs, and collaboration spaces. It is home to various centers and institutes focused on business innovation, entrepreneurship, and economic research.",
            assetNames: ["PAUL college"], // put pics and stuff in here
            link: "https://paulcollege.unh.edu"
        ),
        Location(
            name: "Conant Hall",
            use: "Academic - Other",
            coordinates: CLLocationCoordinate2D(latitude: 43.13606609703356, longitude: -70.93388387226),
            description: "Conant Hall is currently home to the offices of Education Abroad and the University Honors Program. Starting fall 2024, the University Honors Program will be moving to Huddleston Hall.",
            assetNames: ["conant hall"], // put pics and stuff in here
            link: "https://www.unh.edu/global/education-abroad"
        ),
        Location(
            name: "Huddleston Hall",
            use: "Academic - Other",
            coordinates: CLLocationCoordinate2D(latitude: 43.13487422326135, longitude: -70.92856684544807),
            description: "In Fall 2024, Huddleston Hall will be the new home of the Hamel Honors and Scholars College. The renovated building will house Honors classrooms, offices, advising spaces, as well as generous and varied spaces for students to gather, study, and feel at home. Conveniently located on Main Street, near the Holloway Commons dining hall and Honors housing in Fairchild Hall, Huddleston Hall will be a home base for Honors students, staff, and faculty.",
            assetNames: [],
            link: "https://www.unh.edu/honors/"
        ),
        Location(
            name: "UNH Entrepreneurship Center",
            use: "Academic - Other",
            coordinates: CLLocationCoordinate2D(latitude: 43.136590749744535, longitude: -70.9265369337996),
            description: "The Peter T. Paul Entrepreneurship Center delivers a unique, hands-on, experiential programming that inspires, nurtures, and mentors students from any major, at every step in the process, anywhere from idea development to company creation. It operates as a start-up in an academic environment, and most programs are donor funded.Led by a proven serial entrepreneur, the ECenter is rapidly demonstrating significant success throughout the UNH student community.",
            assetNames: [],
            link: "https://www.unh.edu/ecenter/"
        ),
        Location(
            name: "Carsey School of Public Policy",
            use: "Academic - Other",
            coordinates: CLLocationCoordinate2D(latitude: 43.1394629102939, longitude: -70.92884707918431),
            description: "The Carsey School of Public Policy is a UNH graduate school widely known for its research, policy education, and civic engagement work. The school publishes policy-relevant research briefs, offers four master's degree programs, and brings people together for thoughtful dialogue to address societal challenges.",
            assetNames: [],
            link: "https://carsey.unh.edu"
        ),
        Location(
            name: "Zais Hall",
            use: "ROTC",
            coordinates: CLLocationCoordinate2D(latitude: 43.13560681390693, longitude: -70.93623141226605),
            description: "Zais Hall is home to ROTC. UNH Army ROTC and UNH Air & Space Force ROTC offer exciting and challenging training that features classroom instruction, physical fitness training, leadership laboratories, and field training exercises. Cadets build lifelong friendships, pay for school through scholarship programs, and have a rewarding job waiting for them after graduation.",
            assetNames: [],
            link: "https://www.unh.edu/army/"
        ),
        Location(
            name: "Williamson Hall (Willy)",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.131526206908994, longitude: -70.93571766174476),
            description: "Williamson offers first-year only housing with some gender inclusive housing. It is a twin hall to Chritensen and located right next to Philbrook Dining Hall. It has many spaces to hang out and meet other first year students. It might be big but each floor is small, allowing communities to develop and strong friendships to be made. Outside, there is a large space with picnic tables.",
            assetNames: ["williamson"], // put pics and stuff in here
            link: "https://www.unh.edu/housing/facility/williamson-hall"
        ),
        Location(
            name: "Christensen Hall (Chrissy)",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.131204648020905, longitude: -70.93452838873232),
            description: "Christensen offers first-year only housing. It is a twin hall to Williamson and located right next to Philbrook Dining Hall. It has many spaces to hang out and meet other first year students. The first floor study lounge includes a fireplace and the basement rec lounge includes a 52\" TV, pool table, ping pong table, foosball table, and a piano. There are athletic courts outside and a large outdoor space with picnic tables.",
            assetNames: ["christiansen"], // put pics and stuff in here
            link: "https://www.unh.edu/housing/facility/christensen-hall"
        ),
        Location(
            name: "Hubbard Hall",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.13198880034787, longitude: -70.93352107551895),
            description: "Hubbard is a medium co-ed residence hall that houses a varied population and houses the Transfer Community. Being a part of this community is a great way to get started at UNH. Hubbard students study hard but have a lot of fun at the same time.",
            assetNames: ["Hubbard"],
            link: "https://www.unh.edu/housing/facility/hubbard-hall"
        ),
        Location(
            name: "Babcock Hall",
            use: "Residnce",
            coordinates: CLLocationCoordinate2D(latitude: 43.132434650292694, longitude: -70.93280795898963),
            description: "Babcock is a residence hall with a vibrant community of individuals 21 and older. There is a mix of international, graduate, and undergraduate students. The building offers single occupancy rooms, each of which includes a mini fridge.",
            assetNames: ["Babcock"],
            link: "https://www.unh.edu/housing/facility/babcock-hall"
        ),
        Location(
            name: "Handler Hall",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.133835472233756, longitude: -70.93651876078879),
            description: "Handler Hall is a residence hall part of the Sercs. It is home to the InCEPSion Residential Learning Community. Students in this learning community not only live together, but are likely to have class together, and benefit from knowing and studying with other students in CEPS right where they live. The community is an active one that encourages hard work on academic pursuits, getting involved on campus, learning about our differences, and creating healthy habits.",
            assetNames: ["handler hall"],
            link: "https://www.unh.edu'housing/facility/handler-hall"
        ),
        Location(
            name: "Peterson Hall",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.13302251484125, longitude: -70.93708581845924),
            description: "Peterson Hall is a residence hall part of the Sercs. It is a medium co-ed hall with traditional and suite style rooms, all air-conditioned. Each of the five floors have a large open lounge area and a study lounge. The first floor has a kitchen, laundry facility, and a recreation lounge with a large screen television and ping-pong table.",
            assetNames: ["Peterson Hall"],
            link: "https://www.unh.edu/housing/facility/peterson-hall"
        ),
        Location(
            name: "Haaland Hall",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.13229898018931, longitude: -70.93724291107495),
            description: "Haaland Hall is a residence hall part of the Sercs. It houses students from a diverse array of backgrounds and represent many different identities and personalities. Haaland is home to many CEPS and COLSA students due to its close proximity to the Engineering school in Kingsbury Hall and the residential learning community for Environmental Sustainability first-year students. There is a community kitchen, laundry facility, lots of study space, several TVs, two academic classrooms, and air-conditioning, as well as a volleyball court outside.",
            assetNames: ["Halland Hall"],
            link: "https://www.unh.edu/housing/facility/haaland-house"
        ),
        Location(
            name: "Richardson House",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.13158030690903, longitude: -70.93772049147007),
            description: "Richardson House is a perfect home for students who like having their own space but also enjoy hanging out with friends. The building has two lounges for students to hang out with friends and study. Richardson is part of the minis, four buildings that function as one residence hall.",
            assetNames: ["Richardson"],
            link: "https://www.unh.edu/housing/facility/minis-richardson-house"
        ),
        Location(
            name: "Eaton House",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.13148469039268, longitude: -70.9366635539768),
            description: "Eaton House houses the arts community. It is part of the Minis, four buildings that function as one residence hall. Easton is located towards a quieter side of campus and close to College Woods. Home to students who enjoy the creative art process, residents in Eaton House enjoy the small, vibrant community.",
            assetNames: ["Eaton Hal"],
            link: "https://www.unh.edu/housing/facility/minis-eaton-house"
        ),
        Location(
            name: "Hall House",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.1311351974127, longitude: -70.93664514729441),
            description: "Hall House houses the Outdoor Experimental Education community. It is part of the Minis, four buildings that function as one residence hall. Many students who choose to live in Hall House enjoy biking, hiking, swimming, rock climbing, and a variety of other outdoor activities. Located right near College Woods and surrounded by plenty of great trees for hammocking or slack-lining, Hall House is a great environment for all sorts of fun outdoor experiences.",
            assetNames: ["Hall House"],
            link: "https://www.unh.edu/housing/facility/minis-hall-house"
        ),
        Location(
            name: "Marston House",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.13112254499634, longitude: -70.93704287428346),
            description: "Marston House is home to residents who mostly live in single rooms but enjoy utilizing the lounge spaces for recreation and academics. Marston residents tend to have a diverse array of majors, interests, and ideas. They are an engaged community and very active participants in many of the Minis-wide events.",
            assetNames: ["Marston Hall"],
            link: "https://www.unh.edu/housing/facility/minis-marston-house"
        ),
        Location(
            name: "Hitchcock Hall",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.13309599496151, longitude: -70.93085900620711),
            description: "As part of Upper Quad residence halls, Hitchcock Hall connects to Devine and Randall Hall. Hitchcock is compromised of three floor communities for students who prefer to live in a community compromised of people who share their same gender identity. It has a large lounge for studying and a courtyard that provides a great opportuniy for students to hang out in warm weather. Hitchcock is close to the center of campus and many academic buildings.",
            assetNames: ["Hitchcock"],
            link: "https://www.unh.edu/housing/facility/upper-quad-hitchcock-hall"
        ),
        Location(
            name: "Randall Hall",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.1334337035389, longitude: -70.93095914952205),
            description: "As part of the Upper Quad residence halls, Randall connects to Devine and Hitchcock Hall. Randall is compromised of four floors located in the middle of the Upper Quad. The first floor has a lounge, perfect for studying or hanging out. The second floor is home to the large Randall study lounge and a full kitchen. There is a fireplace for a nice area to connect with others. Randall is truly in the heart of campus, close to all academic buildings, the MUB, HoCo, and Diamond Library.",
            assetNames: ["Randall Hall"],
            link: "https://www.unh.edu/housing/facility/upper-quad-randall-hall"
        ),
        Location(
            name: "Devine Hall",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.13337257027955, longitude: -70.93021916979623),
            description: "As part of the Upper Quad residence halls, Devine Hall connects to Hitchcock and Randall Hall. The Upper Quad is close to central academic buildings, HoCo, and the MUB. Living in Devine gives a small hall feel, while living in a large hall. It has a giant lounge where residents can play a game of pool, join a ping-pong game, cook in the kitchen, or chill watching the large HD television.",
            assetNames: [],
            link: "https://www.unh.edu/housing/facility/upper-quad-devine-hall"
        ),
        Location(
            name: "Gibbs Hall",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.13242499694538, longitude: -70.93014237944733),
            description: "Gibbs Hall houses a small tight-knit community called \"The Clubhouse\". The Gibbs staff and Hall Council provide residents with opportunities for this active community to get to know each other. While Gibbs does focus on active and healthy living, Hall Staff provides a wide variety of socials and programs that cater to many different interests.",
            assetNames: ["Gibbs Hall"], // put pics and stuff in here
            link: "https://www.unh.edu/housing/facility/gibbs-hall"
        ),
        Location(
            name: "Hunter Hall",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.13262368289321, longitude: -70.92956296136013),
            description: "Hunter is a small but involved co-ed residence hall made up of first-year and upper-class students. It is ideally located on campus with a great backyard as well as an open quad area that is home to the Lower Quad four square court. Students often hang out in these areas to study or catch up with friends.",
            assetNames: ["Hunter Hall"],
            link: "https://www.unh.edu/housing/facility/hunter-hall"
        ),
        Location(
            name: "Engelhardt Hall",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.13329703511918, longitude: -70.92942528650507),
            description: "Engelhardt Hall houses the Alcohol and Drug-Free Community. It is a small hall, making it easy to get to know everyone in the building. Engelhardt is part of the three lower quad halls of Hunter, Gibbs, and Engelhardt. Located just steps away from downtown, Memorial Union Building, and Holloway Commons, students are close to all campus activities and events. With study lounges, inside bike storage, and an involved community of residents, Engelhardt is an awesome place to experience life at UNH.",
            assetNames: ["Angleheart"], // put pics and stuff in here
            link: "https://www.unh.edu/housing/facility/engelhardt-hall"
        ),
        Location(
            name: "Mills Hall",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.13426335691854, longitude: -70.92842856753609),
            description: "Mills Hall is a large, suite-styled, residence hall, centrally located on campus and near downtown Durham. It consists of sophomore and upper-class students only. Residents have access to a ping-pong table, TVs, and a seminar room. Mills is conveniently located next to the MUB and bordering a quad area where students can play whiffle ball relax in Adirondack chairs, or lay out and read their favorite book.",
            assetNames: ["Mill hall"],
            link: "https://www.unh.edu/housing/facility/mills-hall"
        ),
        Location(
            name: "Alexander Hall",
            use:"Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.13392199941809, longitude: -70.92775302520639),
            description: "Alexander Hall is a first-year only residence hall. It houses the College of Liberal Arts residential learning community as well as the gender inclusive community. Alexander is centrally located on campus and shares an outdoor quad area with several other residence halls. There are two main lounges where students hang out, one for fun and recreation and the other for studying.",
            assetNames: [],
            link: "https://www.unh.edu/housing/facility/alexander-hall"
        ),
        Location(
            name: "Hetzel Hall",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.13429895948479, longitude: -70.92728006078886),
            description: "Hetzel Hall is currently under renovation and unavailable for housing assignments.",
            assetNames: [],
            link: "https://www.unh.edu/housing/facility/hetzel-hall"
        ),
        Location(
            name: "Fairchild Hall",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.13466188793087, longitude: -70.92790860311851),
            description: "Fairchild Hall houses the International Connections and Honors communities. As the International Connections themed hall, Fairchild aims to house international students as well as domestic students who want a rich and diverse cultural experience. Also housing the Honors community, this is a place for students who want to live in a building with high academic expectations. Outside there is a patio and a quad area to throw frisbees, toss footballs, or study with an outdoor WiFi connection. The full kitchen is always in use by residents known for their international cuisine.",
            assetNames: ["Fairchild hall"],
            link: "https://www.unh.edu/housing/facility/fairchild-hall"
        ),
        Location(
            name: "Stoke Hall",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.137614342545916, longitude: -70.92900642520618),
            description: "Stoke Hall is the largest residence hall at UNH, located near the heart of campus, across from Paul College, and a short walk to everything downtown has to offer. The community at Stoke is very diverse with the second and thirs floors housing predominately upper division students and floors five to eight housing first-yesr only communities. It has an upgraded gaming lounge on the first floor featuring pool tables, ping-pong tables, and gaming consoles. A newly updated study lounge is on the fifth floor. All floors have a gender-inclusive restroom.",
            assetNames: ["Stoke hall"],
            link: "https://www.unh.edu/housing/facility/stoke-hall"
        ),
        Location(
            name: "Sawyer Hall",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.13710936625731, longitude: -70.92995306814744),
            description: "Sawyer Hall houses the Paul Professional Partnership Residential Learning Community. It is a small co-ed hall in a prime location, right across from Paul College. The building contains primarily double rooms set up in a traditional residence hall layout.",
            assetNames: ["Sawyer"],
            link: "https://www.unh.edu/housing/facility/sawyer-hall"
        ),
        Location(
            name: "Scott Hall",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.13766142544916, longitude: -70.93128868717154),
            description: "Scott Hall is a residence hall located in the heart of campus and is arguably the most picturesque, with its classic design and sprawling lawn. Living here, residents are just minutes from Paul College, the field house, and Whittemore Center. Scott also hosts the Paul Professional Partnership Residential Learning Community.",
            assetNames: ["scott hall"],
            link: "https://www.unh.edu/housing/facility/scott-hall"
        ),
        Location(
            name: "Congreve Hall",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.13777838910887, longitude: -70.93230253568369),
            description: "Congreve is a residence hall in the center of campus. Proximity to the campus core and steps away from recreation facilities are just a few of the reasons students are attracted to life in Congreve. Residents enjoy the diverse population, kitchen facilities, the 5 awesome lounges, and hanging out with friends. This building also offers a Gender Inclusive restroom on each floor.",
            assetNames: ["congreve"], // put pics and stuff in here
            link: "https://www.unh.edu/housing/facility/congreve-hall"
        ),
        Location(
            name: "McLaughlin Hall",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.13858793836989, longitude: -70.9320558368546),
            description: "McLaughlin Hall is a first-year only residence hall housing the College of Health and Human Services Residential Learning Community. It is a small hall with residents who enjoy a strong sense of community within the building, as well as its great location. Situated on a hill overlooking the western side of campus, McLaughlin is surrounded by trees and grassy areas. It is close to the Diamond Library, Paul College, The Whittemore Center, Campus Rec, the outdoor pool, Amtrak station, and the Dairy Bar.",
            assetNames: [],
            link: "https://www.unh.edu/facility/mclaughlin-hall"
        ),
        Location(
            name: "Lord Hall",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.13892151792457, longitude: -70.93189571355771),
            description: "Lord Hall is a small residence hall that houses first-year residents with a great sense of community. It is conveniently located for easy access to the main campus and it is right next to the Whittemore Center. Getting to know other Lord residents is easy. RA's host weekly socials on each floor, as well as building socials in one of the four hall lounges. The main lounge on the first floor is home to a fireplace, a pool table, a piano, and flat screen TV.",
            assetNames: [],
            link: "https://www.unh.edu/housing/facility/lord-hall"
        ),
        Location(
            name: "Jessie Doe Hall",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.13877363757325, longitude: -70.9310084135577),
            description: "Jessie Doe Hall is a first-year only residence hall. It is ideally located for easy access to the main campus, next door to the Whittemore Center. Jessie Doe offers singles and doubles, two large lounges - one in the basement for studying and one on the first floor for playing pool, ping-pong, socializing, hanging by the fireplace, and watching the big screen TV.",
            assetNames: [],
            link: "https://www.unh.edu/housing/facility/jessie-doe-hall"
        ),
        Location(
            name: "Adams Tower West (ATW)",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.139314635252695, longitude: -70.93073846753583),
            description: "Adams Tower West is a second-year only residence hall. It is just steps away from the Hamel Rec Center, Whittemore Center, Outdoor Pool, Paul College, and more. All suites consist of one spacious triple room with its own private bathroom, air-conditioning, and floor-to-ceiling windows overlooking a beautiful wooded campus area. Life in ATW gives residents the feeling of independence within a close-knit, upper-divison community.",
            assetNames: [],
            link: "www.unh.edu/housing/facility/adams-tower-west"
        ),
        Location(
            name: "Woodside",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.14153752697777, longitude: -70.93395390311822),
            description: "The Woodside Apartment Complex is nestled in a beautiful forested area, just steps away from the Whittemore Center Arena and the Hamel Rec Center. Each of the two-bedroom (4 person) apartments is fully furnished with living room furniture, major kitchen appliances, bedroom, and study furniture. Each unit has 1 to 1 and 1/2 baths. The complex is professionally staffed, has a community center, a mail center, on-site paerking, and on-site laundry room, and an outdoor volleyball court.",
            assetNames: [],
            link: "https://www.unh.edu/housing/facility/woodside"
        ),
        Location(
            name: "The Gables",
            use: "Residence",
            coordinates: CLLocationCoordinate2D(latitude: 43.14404693249235, longitude: -70.93562539445998),
            description: "The Gables Apartment Complex is a vibrant and active community that is just a short walk or bus ride away from academic buildings, athletic facilities, and UNH sports venues. There are five buildings in total. Students who live here are able to lead independent lives, while still enjoying the resources available to those living on campus. With fully furnished apartments, a professionally staffed mail desk, a state-of-the-art fitness studio, and on-site parking, Gables is the place to live.",
            assetNames: [],
            link: "https://www.unh.edu/housing/facility/gables"
        )
    ]
}
