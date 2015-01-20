INSERT INTO [dbo].[Categories]
           ([category_name])
     VALUES
           ('actor')

INSERT INTO [dbo].[Categories]
           ([category_name])
     VALUES
           ('author')

INSERT INTO [dbo].[Categories]
           ([category_name])
     VALUES
           ('director')
		   
INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (3, 'Collective Creation', '')
INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (2, 'Horia', 'Suru')

INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (1, 'Ancuta', 'Petre')

INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (1, 'Florin', 'Călbăjos')


INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (1, 'Emilian', 'Mârnea')

INSERT INTO [dbo].[Plays]
           ([name]
           ,[duration]
           ,[is_active]
           ,[author_id]
           ,[director_id]
		   ,[about])
     VALUES
           ('ActOrchestra', 60, 'True', 1, 2, 'A project carried out under the programme “9G at NTB” (A New Generation of creators)

 

If we were to define the genre we cannot call it as being a concert, a musical play, a musical improvisation or an acting exercise. It is only a play in which you shall laugh…really, 3 actors and other 20 partners… or musical instruments. The tonight orchestra transforms the concert into a theatre performance, as the backstage actions are more spectacular than the stage performance. Instruments are getting crazy and the artists are a dispersion of sounds.

A humourous story, where three characters are fighting for the (constantly) impredictible path of supremacy on stage. A concert in which are stored a cheerful, sonorous and rhythmic story. Are you ready for an hour of musical and theatrical marathon which goes, at the speed of light, from Mozart to rock…and chansonettes? Fasten your seatbelts and prepare for maximum laughter.')

INSERT INTO [dbo].[Actings]
           ([actor_id]
           ,[play_id]
           ,[is_main]
           ,[is_active])
     VALUES
           (3, 1, 'True', 'True')

INSERT INTO [dbo].[Actings]
           ([actor_id]
           ,[play_id]
           ,[is_main]
           ,[is_active])
     VALUES
           (4, 1, 'True', 'True')

INSERT INTO [dbo].[Actings]
           ([actor_id]
           ,[play_id]
           ,[is_main]
           ,[is_active])
     VALUES
           (5, 1, 'True', 'True')
		   
INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (3, 'Ion', 'Minulescu')
INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (2, 'Razvan', 'Popa')

INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (1, 'Gavril', 'Patru')

INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (1, 'Marius', 'Rizea')


INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (1, 'Eugen', 'Cristea')

INSERT INTO [dbo].[Plays]
           ([name]
           ,[duration]
           ,[is_active]
           ,[author_id]
           ,[director_id]
		   ,[about])
     VALUES
           ('Allegro ma non troppo', 95, 'True', 6, 7, 'As a renowned playwright whose plays were so successful in his time, Ion Minulescu is best known as the poet of the Novelettes. His plays deserve to be rediscovered for their lively dialogues, the quick wit, the simplicity of the plot, the intellectual verve and the originality of the writing.

It is an emotional comedy, full of love entanglements and dramatic cliff-hangers. A satire of manners with a millionaire, a wife and a playwright, but also other picturesque characters – a mistress, a bargain maker, a servant – will captivate you, for an hour, with the charm and savour of the inter-war period.

We will witness unexpected appearances and turnabouts, a creative blend of theatre and reality and adultery committed before the husband’s very eyes, disguised as a fictional play. In the end, it is a plea for the naturalness in theatre, which must draw from life.')
INSERT INTO [dbo].[Actings]
           ([actor_id]
           ,[play_id]
           ,[is_main]
           ,[is_active])
     VALUES
           (8, 2, 'True', 'True')

INSERT INTO [dbo].[Actings]
           ([actor_id]
           ,[play_id]
           ,[is_main]
           ,[is_active])
     VALUES
           (9, 2, 'True', 'True')

INSERT INTO [dbo].[Actings]
           ([actor_id]
           ,[play_id]
           ,[is_main]
           ,[is_active])
     VALUES
           (10, 2, 'True', 'True')

INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (3, 'after Anonimo veneziano de Giuseppe Berto', '')
INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (2, 'Ion', 'Caramitru')

INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (1, 'Ilinca', 'Goia')

INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (1, 'Ioan Andrei', 'Ionescu')

INSERT INTO [dbo].[Plays]
           ([name]
           ,[duration]
           ,[is_active]
           ,[author_id]
           ,[director_id]
		   ,[about])
     VALUES
           ('Anonymus Venetian', 60, 'True', 11, 12, 'The Anonymous Venetian is a play about a short, last meeting between two people who experienced a great love from an early age and whom life, with its unforeseen twists and turns, separated. They find each other again for a day. They live it with the intensity of a lifetime. Both of an ardent and unpredictable disposition, they are caught in a movie-like love, a love that in the end goes beyond a....death in Venice; nothing can separate them, no matter the obstacles...')
INSERT INTO [dbo].[Actings]
           ([actor_id]
           ,[play_id]
           ,[is_main]
           ,[is_active])
     VALUES
           (13, 3, 'True', 'True')

INSERT INTO [dbo].[Actings]
           ([actor_id]
           ,[play_id]
           ,[is_main]
           ,[is_active])
     VALUES
           (14, 3, 'True', 'True')
		   
INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (3, 'by Kim Atle Hansen', '')

INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (1, 'Simona', 'Caciurianu')

INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (1, 'Cristina', 'Gravut')

INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (1, 'Rolando', 'Matsangos')

INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (1, 'Emil', 'Mandanac')

INSERT INTO [dbo].[Plays]
           ([name]
           ,[duration]
           ,[is_active]
           ,[author_id]
           ,[director_id]
		   ,[about])
     VALUES
           ('Buy Nothing Day', 70, 'True', 15, 2, 'Assistant Director: Mădălin Hîncu
Live DJ: Andreea Veder
Special Effects: Daniel Radu
Image and Video Editing: Răzvan Mihalachi, Lucian Alexe
Sets: Arh. Bogdan Costea
Assistant Scenography: Ana Ivan
Costumes: Anca Miron
Make-up artist: Diana Ionescu, Tania Presura, Iulia Băjenaru, Cristina Hurduc, Irina Cajvaneanu
Hairstyle: Ioana-Iulia Goicea
Musical training: Monica Ciută
Sound: Mac Gheorghiu, Călin Tzopa, Sorin Brehuescu
Scene director: Viorel Florea

Co-production: A show created by ProDrama in partnership with National Theater of Bucharest "9G" Program, supported by Arcub. 

PG unsuitable for people under 16 years old!

“Buy Nothing Day” is a fresh show which feels the young generation’s pulse in a brave and witting manner. Loaded with vital messages from the present-day social, political and economical spheres, “Buy Nothing Day” tells us about the change that emerges from every individual. The play makes a call to humor (without drifting into sarcasm), activism (with no suggestion of extremism) and to contemporary, scintillating artistic solutions in terms of sound, set and design.

Petra (Ilinca Hărnu) and Andrei (Rolando Matsangos) want to draw attention over consumerism and the exploitation of Third Word workers. Kati (Cristina Găvru?) and Irina (Olivia Alexandra Ni?ă) want to become stars by singing at a “Save the Planet” event. Toma (Andrei Morariu) and Petru (Emil Măndănac) want to protest to improve the living conditions from the nursing home they work at. Ana (Simona Cuciurianu) wants to be more than just a clothes shop assistant. Their paths meet at the mall. This visit will change their lives.

Kim Atle Hansen is a Norwegian play writer, actor and activist, author of several plays about problems of today’s society. He works at Norske Theater, and “Buy Nothing Day” is his most known play, set so far in the UK, Brazil, Italy, The USA and Russia. “This text is destined rather to a performative convention than a type of emotionally motivated game”
')

INSERT INTO [dbo].[Actings]
           ([actor_id]
           ,[play_id]
           ,[is_main]
           ,[is_active])
     VALUES
           (17, 4, 'True', 'True')

INSERT INTO [dbo].[Actings]
           ([actor_id]
           ,[play_id]
           ,[is_main]
           ,[is_active])
     VALUES
           (18, 4, 'True', 'True')
		   
INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (3, 'after William Shakespeare', '')

INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (2, 'Catinca', 'Drăgănescu')

INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (1, 'Cristina', 'Draghici')

INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (1, 'Crina', 'Ene')

INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (1, 'Oana', 'Popescu')
		   
INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (1, 'Vlad', 'Udrescu')

INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (1, 'Vladimir', 'Purdel')

INSERT INTO [dbo].[Plays]
           ([name]
           ,[duration]
           ,[is_active]
           ,[author_id]
           ,[director_id]
		   ,[about])
     VALUES
           ('DISTOPIE Shakespeare REMIX', 90, 'True', 20, 21, 'Assistant Director: Daniel Buglea
Sets:Ioana Drăgănescu
Costumes: Ludmila Corlăteanu, Atelier ATU
Stage Movement: Andreea Belu
Multimedia: Darie Armin Alexandru
Sound & Light Designer: Alexandros Raptis

A production of the "Ion Sava" Center for Theater Research and Creation

 

The DYSTOPIA.shakespeare.REMIX show is about the apocalyptic end of today’s degrading world. Inspired by video games, the show breaks down and mixes together parts from several of Shakespeare’s works, resulting in an original script on power and the various devious ways in which it manifests itself. From a simple, modern, yet 100% Shakespearian, perspective, the show keeps several different forms of manipulation under close scrutiny.

DYSTOPIA.shakespeare.REMIX raises simple questions about mankind, its violent nature that continues to grows trying to keep the pace of ‘society’s evolution’, about the different ways to manipulate and brainwash others, the dehumanization of everyday life that is desperately trying to compete with its virtual world counterparts.')

INSERT INTO [dbo].[Actings]
           ([actor_id]
           ,[play_id]
           ,[is_main]
           ,[is_active])
     VALUES
           (22, 5, 'True', 'True')

INSERT INTO [dbo].[Actings]
           ([actor_id]
           ,[play_id]
           ,[is_main]
           ,[is_active])
     VALUES
           (23, 5, 'True', 'True')

INSERT INTO [dbo].[Actings]
           ([actor_id]
           ,[play_id]
           ,[is_main]
           ,[is_active])
     VALUES
           (24, 5, 'True', 'True')

INSERT INTO [dbo].[Actings]
           ([actor_id]
           ,[play_id]
           ,[is_main]
           ,[is_active])
     VALUES
           (25, 5, 'True', 'True')

INSERT INTO [dbo].[Actings]
           ([actor_id]
           ,[play_id]
           ,[is_main]
           ,[is_active])
     VALUES
           (26, 5, 'True', 'True')

INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (3, 'after Miguel de Cervantes', '')

INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (2, 'Dan', 'Puric')

INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (1, 'Constantin', 'Dinulescu')

INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (1, 'Carmen', 'Ionescu')

INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (1, 'Ileana', 'Olteanu')
		   
INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (1, 'Violeta', 'Totir')

INSERT INTO [dbo].[Actors]
           ([category_id]
           ,[first_name]
           ,[last_name])
     VALUES
           (1, 'Silviu', 'Oltean')

INSERT INTO [dbo].[Plays]
           ([name]
           ,[duration]
           ,[is_active]
           ,[author_id]
           ,[director_id]
		   ,[about])
     VALUES
           ('Don Qiujote', 80, 'True', 27, 28, 'Costumes Doina Levintza
Soundtrack Dan Puric
Choreography Svetlana Zotina
Multimedia Sergiu Negulici  Matei Branea
Adaptation Dan Puric
Literary Secretary Ilinca Theodorescu

„A new universal theatrical language is at the service of Cervantes major work. A theatre performance beyond words, beyond the barriers of language, mentality, culture or the obsessions of political ideology. An easily accessible language, just like Don Quixote s soul. Classic pantomime, the jocular spirit of commedia dell arte, dance under various forms, the comedy of silent films have all been summoned to translate the spirit of the knight errant into a universal language. Dan Puric

Show produced with the support of National Theatre of Bucharest, Passepartout D.P. Company, Art Production Foundation, Embassy of Spain and the Cervantes Institute in Bucharest.')

INSERT INTO [dbo].[Actings]
           ([actor_id]
           ,[play_id]
           ,[is_main]
           ,[is_active])
     VALUES
           (29, 6, 'True', 'True')

INSERT INTO [dbo].[Actings]
           ([actor_id]
           ,[play_id]
           ,[is_main]
           ,[is_active])
     VALUES
           (30, 6, 'True', 'True')

INSERT INTO [dbo].[Actings]
           ([actor_id]
           ,[play_id]
           ,[is_main]
           ,[is_active])
     VALUES
           (31, 6, 'True', 'True')

INSERT INTO [dbo].[Actings]
           ([actor_id]
           ,[play_id]
           ,[is_main]
           ,[is_active])
     VALUES
           (32, 6, 'True', 'True')

INSERT INTO [dbo].[Actings]
           ([actor_id]
           ,[play_id]
           ,[is_main]
           ,[is_active])
     VALUES
           (33, 6, 'True', 'True')


INSERT INTO [OnlineTheatreTickets].[dbo].[Theatres]
           ([theatre_name]
           ,[seats_number]
           ,[about])
     VALUES
           ('Big Hall', 900, 'The Great Hall – with three rows of lodges (baignoire, lodges of the 1st Row, lodges of the 2nd Row and the Official Lodge)
An Italian style Hall.Capacity: 900 seatsThe seats and circulation spaces were placed in the pit of the hall.Lodges are set on the ground floor of the hall (baignoire) designed to populate the side walls, but more importantly, to contribute to increase the reflected sound, by the natural acoustics.There are two overlapped rows of lodges of which the central ones (axial) are placed over the official lodge, bringing it on the appropriate scale.The ceiling of the hall was studied in order to meet the following criteria:a) to contribute to a large extent to the reflection of the sound, hence to the natural acousticb) to ensure, by means of two decks of lights, a better lighting of the stage.c) We believe that the resulting geometry, finished and furnished properly, will create a favourable atmosphere to the contact between the spectator and the show, for all those 900 seats.')

INSERT INTO [OnlineTheatreTickets].[dbo].[Theatres]
           ([theatre_name]
           ,[seats_number]
           ,[about])
     VALUES
		('Small Hall', 130, 'Small Hall
Big HallSmall HallStudio HallWorkshop HallPainting HallOpen Air HallMedia Hall
The Small Hall – transformable, with retractable stairs and lined chairs, eventually located on the steps.
Reduced Italian styleElizabethan styleArenaMaximum capacity: 130 seats
It is placed on the ground floor and has total flexibility: exhibitions, concerts, meetings, conferences, screenings, etc., for more than 300 persons on lined seats eventually located on the steps.')

INSERT INTO [OnlineTheatreTickets].[dbo].[Theatres]
           ([theatre_name]
           ,[seats_number]
           ,[about])
     VALUES ('The Open-air Hall', 300, 'The Open-air Hall - maximum capacity: 300 seats
At the temperature of +24.50, on the terrace above the Great Hall, between the existing diaphragms, there was placed an outdoor play space for about 300 spectators, and a group of cabins for actors, near the stage tower of the Great Hall. The variants of the play spaces will be achieved by the help of the stairs and of the step seats, which were especially made ?? for outdoor plays.')

INSERT INTO [OnlineTheatreTickets].[dbo].[Theatres]
           ([theatre_name]
           ,[seats_number]
           ,[about])
     VALUES ('The Open-air Hall', 541, 'The Workshop Hall – transformable into:
Italian styleElizabethan styleArena styleMaximum capacity: 541 seats
In terms of theater, this is the room with the most bidding from the technical point of view, and in just 20 minutes it can turn from the Italian style hall into one of an Elizabethan style or into an arena, being truly one of a kind in Romania. The variable geometry is possible by reinstalling those three mobile stairs with chairs and the existing removable wall.')

INSERT INTO [OnlineTheatreTickets].[dbo].[Events]
           ([play_id]
           ,[theatre_id]
           ,[date]
           ,[seat_price])
     VALUES
           (1, 1, '01-16-2015 20:00:00', 60)

INSERT INTO [OnlineTheatreTickets].[dbo].[Events]
           ([play_id]
           ,[theatre_id]
           ,[date]
           ,[seat_price])
     VALUES
           (1, 2, '01-16-2015 21:00:00', 55)

INSERT INTO [OnlineTheatreTickets].[dbo].[Events]
           ([play_id]
           ,[theatre_id]
           ,[date]
           ,[seat_price])
     VALUES
           (2, 3, '01-17-2015 20:30:00', 35.5)

INSERT INTO [OnlineTheatreTickets].[dbo].[Events]
           ([play_id]
           ,[theatre_id]
           ,[date]
           ,[seat_price])
     VALUES
           (3, 2, '01-18-2015 19:00:00', 50)

INSERT INTO [OnlineTheatreTickets].[dbo].[Events]
           ([play_id]
           ,[theatre_id]
           ,[date]
           ,[seat_price])
     VALUES
           (3, 1, '01-18-2015 21:00:00', 55)

INSERT INTO [OnlineTheatreTickets].[dbo].[Events]
           ([play_id]
           ,[theatre_id]
           ,[date]
           ,[seat_price])
     VALUES
           (1, 4, '01-19-2015 20:00:00', 25)

INSERT INTO [OnlineTheatreTickets].[dbo].[Events]
           ([play_id]
           ,[theatre_id]
           ,[date]
           ,[seat_price])
     VALUES
           (2, 3, '01-19-2015 18:00:00', 35.5)

INSERT INTO [OnlineTheatreTickets].[dbo].[Events]
           ([play_id]
           ,[theatre_id]
           ,[date]
           ,[seat_price])
     VALUES
           (3, 2, '01-20-2015 21:00:00', 60)

INSERT INTO [OnlineTheatreTickets].[dbo].[Events]
           ([play_id]
           ,[theatre_id]
           ,[date]
           ,[seat_price])
     VALUES
           (6, 1, '01-21-2015 10:00:00', 15)

INSERT INTO [OnlineTheatreTickets].[dbo].[Events]
           ([play_id]
           ,[theatre_id]
           ,[date]
           ,[seat_price])
     VALUES
           (6, 4, '01-22-2015 20:00:00', 20)

INSERT INTO [OnlineTheatreTickets].[dbo].[Events]
           ([play_id]
           ,[theatre_id]
           ,[date]
           ,[seat_price])
     VALUES
           (5, 3, '01-23-2015 20:00:00', 45)

INSERT INTO [OnlineTheatreTickets].[dbo].[Events]
           ([play_id]
           ,[theatre_id]
           ,[date]
           ,[seat_price])
     VALUES
           (5, 3, '01-24-2015 18:30:00', 25.5)
