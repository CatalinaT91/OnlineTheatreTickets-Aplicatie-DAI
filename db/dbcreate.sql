CREATE TABLE [dbo].[Images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [image] NOT NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE TABLE [dbo].[Categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Actors](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[birthdate] [datetime] NULL,
	[about] [nvarchar](max) NULL,
	[image_id] [int] NULL,
 CONSTRAINT [PK_Actors] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Actors]  WITH CHECK ADD  CONSTRAINT [FK_Actors_Categories] FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([id])

ALTER TABLE [dbo].[Actors]  WITH CHECK ADD  CONSTRAINT [FK_Actors_Images] FOREIGN KEY([image_id])
REFERENCES [dbo].[Images] ([id])

CREATE TABLE [dbo].[Plays](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[duration] [decimal](18, 2) NOT NULL,
	[is_active] [bit] NOT NULL,
	[author_id] [int] NOT NULL,
	[director_id] [int] NOT NULL,
	[image_id] [int] NULL,
	[about] [nvarchar](max) NULL,
 CONSTRAINT [PK_Plays] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[Plays]  WITH CHECK ADD  CONSTRAINT [FK_Plays_Authors] FOREIGN KEY([author_id])
REFERENCES [dbo].[Actors] ([id])
GO

ALTER TABLE [dbo].[Plays] CHECK CONSTRAINT [FK_Plays_Authors]
GO

ALTER TABLE [dbo].[Plays]  WITH CHECK ADD  CONSTRAINT [FK_Plays_Directors] FOREIGN KEY([director_id])
REFERENCES [dbo].[Actors] ([id])
GO

ALTER TABLE [dbo].[Plays] CHECK CONSTRAINT [FK_Plays_Directors]
GO

ALTER TABLE [dbo].[Plays]  WITH CHECK ADD  CONSTRAINT [FK_Plays_Images] FOREIGN KEY([image_id])
REFERENCES [dbo].[Images] ([id])
GO

ALTER TABLE [dbo].[Plays] CHECK CONSTRAINT [FK_Plays_Images]
GO



CREATE TABLE [dbo].[Customers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[address] [nvarchar](250) NULL,
	[phone_number] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Actings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[actor_id] [int] NOT NULL,
	[play_id] [int] NOT NULL,
	[is_main] [bit] NOT NULL,
	[is_active] [bit] NOT NULL CONSTRAINT [DF_ActorsPlays_status]  DEFAULT ((1)),
 CONSTRAINT [PK_ActorsPlays] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Actings]  WITH CHECK ADD  CONSTRAINT [FK_ActorsPlays_Actors] FOREIGN KEY([actor_id])
REFERENCES [dbo].[Actors] ([id])

ALTER TABLE [dbo].[Actings]  WITH CHECK ADD  CONSTRAINT [FK_ActorsPlays_Plays] FOREIGN KEY([play_id])
REFERENCES [dbo].[Plays] ([id])


CREATE TABLE [dbo].[Reviews](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[play_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[review_mark] [int] NULL,
	[review_text] [nvarchar](max) NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customers] ([id])

ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Plays] FOREIGN KEY([play_id])
REFERENCES [dbo].[Plays] ([id])

CREATE TABLE [dbo].[Theatres](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[theatre_name] [nvarchar](50) NOT NULL,
	[seats_number] [int] NOT NULL,
	[image_id] [int] NULL,
	[about] [nvarchar](max) NULL,
 CONSTRAINT [PK_Theatres] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]



ALTER TABLE [dbo].[Theatres]  WITH CHECK ADD  CONSTRAINT [FK_Theatres_Images] FOREIGN KEY([image_id])
REFERENCES [dbo].[Images] ([id])


ALTER TABLE [dbo].[Theatres] CHECK CONSTRAINT [FK_Theatres_Images]

CREATE TABLE [dbo].[Events](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[play_id] [int] NOT NULL,
	[theatre_id] [int] NOT NULL,
	[date] [datetime] NOT NULL,
	[seat_price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Plays] FOREIGN KEY([play_id])
REFERENCES [dbo].[Plays] ([id])

ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Plays]

ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Theatres] FOREIGN KEY([theatre_id])
REFERENCES [dbo].[Theatres] ([id])

ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Theatres]

CREATE TABLE [dbo].[Tickets](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[event_id] [int] NOT NULL,
	[tickets_number] [int] NOT NULL
 CONSTRAINT [PK_Ticktes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Ticktes_Customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customers] ([id])


ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Ticktes_Customers]


ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Ticktes_Events] FOREIGN KEY([event_id])
REFERENCES [dbo].[Events] ([id])


ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Ticktes_Events]
GO



