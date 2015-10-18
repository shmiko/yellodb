

CREATE TABLE album (
  AlbumID int NOT NULL ,
  AlbumName varchar(100) default NULL,
  ArtistID int NOT NULL default '0',
  AlbumPrice int default '0',
  AlbumNotes text,
  AlbumCatalogNumber int default '0',
  AlbumAvailable int  default NULL,
  AlbumCoverURL varchar(100) default NULL,
  AlbumCoverThumbnailURL varchar(100) default NULL,
  PRIMARY KEY  (AlbumID),
  KEY AlbumID (AlbumID),
  KEY ArtistID (ArtistID)
) ;


CREATE TABLE artist (
  ArtistID int NOT NULL ,
  ArtistGroupName varchar(100) default NULL,
  ArtistStyle varchar(50) default NULL,
  ArtistNames varchar(100) default NULL,
  ArtistPhoto varchar(100) default NULL,
  PRIMARY KEY  (ArtistID),
  KEY ArtistID (ArtistID)
) ;


CREATE TABLE artist_names (
  Artist varchar(255) default NULL,
  ID int default NULL,
  Remixer_Names_ID int default NULL,
  FeaturedArtist_Names_ID int default NULL
) ;


CREATE TABLE bought (
  bought varchar(255) default NULL,
  ID int default NULL
) ;


CREATE TABLE catnos (
  Number_on_Spine_of_records varchar(255) default NULL,
  other_Cat_Numbers varchar(255) default NULL,
  Matrices varchar(255) default NULL,
  IFPI_Disc_Matrices varchar(255) default NULL,
  IFPI_Plastic_Matrices varchar(255) default NULL,
  LC int default NULL,
  PG int default NULL,
  BIEMA_GEMA  varchar(255) default NULL,
  ID int default NULL
) ;


CREATE TABLE countries_names (
  Country varchar(255) default NULL,
  ID int default NULL
) ;


CREATE TABLE featuredartist_names (
  Featured_Artist varchar(255) default NULL,
  ID int default NULL
) ;


CREATE TABLE format_base (
  Format varchar(255) default NULL,
  ID int default NULL
) ;


CREATE TABLE infocopy (
  ID int default NULL,
  for_counting int default NULL,
  Field2 int default NULL,
  Reference varchar(255) default NULL,
  Price_with_reference varchar(255) default NULL,
  Exemplare varchar(255) default NULL,
  Fact varchar(255) default NULL,
  Featured_Songs varchar(255) default NULL,
  Month varchar(255) default NULL,
  Day int default NULL,
  Subtype varchar(255) default NULL,
  IMDB_Ref_for_Movies int default NULL,
  Promo_or_Autographed varchar(50) default NULL,
  Number_on_Spine_of_records varchar(255) default NULL,
  other_Cat_Numbers varchar(255) default NULL,
  Matrices varchar(255) default NULL,
  IFPI_Disc_Matrices varchar(255) default NULL,
  IFPI_Plastic_Matrices varchar(255) default NULL,
  LC int default NULL,
  PG int default NULL,
  BIEMA_GEMA varchar(255) default NULL,
  Pressed_in varchar(255) default NULL,
  Info varchar(255) default NULL,
  rarity varchar(255) default NULL,
  deleted int default NULL,
  color_of_vinyl varchar(255) default NULL,
  Cover_infos varchar(255) default NULL,
  Inner_Sleeve varchar(255) default NULL,
  No_Of_Tracks varchar(255) default NULL,
  extra varchar(255) default NULL,
  Qty varchar(255) default NULL,
  Pic_Slv int default NULL,
  Replaced int default NULL,
  Quality varchar(255) default NULL,
  rating varchar(255) default NULL,
  Artist_Names_ID int default NULL,
  Title_Names_ID int default NULL,
  Year_Base_ID int default NULL,
  Format_Base_ID int default NULL,
  Type_Base_ID int default NULL,
  Countries_Names_ID int default NULL,
  Labels_Names_ID int default NULL,
  Track_List_Base_ID int default NULL,
  Lyrics_Base_ID int default NULL,
  Bought_ID int default NULL,
  Owner varchar(50) default NULL
) ;


CREATE TABLE information (
  ID int default NULL,
  for_counting int default NULL,
  Field2 int default NULL,
  Reference varchar(255) default NULL,
  Price_with_reference varchar(255) default NULL,
  Exemplare varchar(255) default NULL,
  Fact varchar(255) default NULL,
  Featured_Songs varchar(255) default NULL,
  Month varchar(255) default NULL,
  Day int default NULL,
  Subtype varchar(255) default NULL,
  IMDB_Ref_for_Movies int default NULL,
  Promo_or_Autographed varchar(50) default NULL,
  Number_on_Spine_of_records varchar(255) default NULL,
  other_Cat_Numbers varchar(255) default NULL,
  Matrices varchar(255) default NULL,
  IFPI_Disc_Matrices varchar(255) default NULL,
  IFPI_Plastic_Matrices varchar(255) default NULL,
  LC int default NULL,
  PG int default NULL,
  BIEMA_GEMA varchar(255) default NULL,
  Pressed_in varchar(255) default NULL,
  Info varchar(255) default NULL,
  rarity varchar(255) default NULL,
  deleted int default NULL,
  color_of_vinyl varchar(255) default NULL,
  Cover_infos varchar(255) default NULL,
  Inner_Sleeve varchar(255) default NULL,
  No_Of_Tracks varchar(255) default NULL,
  extra varchar(255) default NULL,
  Qty varchar(255) default NULL,
  Pic_Slv int default NULL,
  Replaced int default NULL,
  Quality varchar(255) default NULL,
  rating varchar(255) default NULL,
  Artist_Names_ID int default NULL,
  Title_Names_ID int default NULL,
  Year_Base_ID int default NULL,
  Format_Base_ID int default NULL,
  Type_Base_ID int default NULL,
  Countries_Names_ID int default NULL,
  Labels_Names_ID int default NULL,
  Track_List_Base_ID int default NULL,
  Lyrics_Base_ID int default NULL,
  Bought_ID int default NULL,
  Owner varchar(50) default NULL
) ;


CREATE TABLE labels_names (
  Label varchar(255) default NULL,
  ID int default NULL
) ;


CREATE TABLE lyrics_base (
  lyrics varchar(255) default NULL,
  ID int default NULL
) ;


CREATE TABLE news (
  NewsID int NOT NULL ,
  NewsDate varchar(19) default NULL,
  NewsItem text,
  PRIMARY KEY  (NewsID)
) ;


CREATE TABLE persondetails_base (
  PersonDetailsID int default NULL,
  NickName varchar(50) default NULL,
  StreetNumber varchar(50) default NULL,
  StreetName varchar(50) default NULL,
  City varchar(50) default NULL,
  CountryID varchar(50) default NULL,
  Other varchar(50) default NULL
) ;


CREATE TABLE persons_base (
  PersonNameID int default NULL,
  Name varchar(50) default NULL
) ;


CREATE TABLE r_addresses (
  address_id int  NOT NULL ,
  address_street varchar(80) default NULL,
  address_city varchar(50) default NULL,
  address_state varchar(40) default NULL,
  address_zip varchar(10) default NULL,
  address_country varchar(50) default NULL,
  PRIMARY KEY  (address_id)
) ;


CREATE TABLE r_album_bands (
  album_band_id int  NOT NULL ,
  album_id int  NOT NULL default '0',
  band_id int  default NULL,
  PRIMARY KEY  (album_band_id)
)  ;

CREATE TABLE r_album_tracks (
  album_track_id int  NOT NULL ,
  album_id int  NOT NULL default '0',
  track_id int  default NULL,
  PRIMARY KEY  (album_track_id)
)  ;

CREATE TABLE r_albums (
  album_id int  NOT NULL ,
  album_base_name_id int  NOT NULL default '0',
  album_real_name varchar(80) default NULL,
  album_country_of_relase varchar(80) default NULL,
  album_country_of_pressing varchar(80) default NULL,
  album_release_date date default NULL,
  album_lc varchar(10) default NULL,
  album_pg varchar(10) default NULL,
  album_biem_stemra varchar(20) default NULL,
  album_record_number_spine varchar(30) default NULL,
  album_record_number_other varchar(30) default NULL,
  album_record_company varchar(30) default NULL,
  album_promo varchar(30) default NULL,
  album_format_id int  default NULL,
  album_rarity varchar(30) default NULL,
  album_number_of_pressings varchar(30) default NULL,
  album_nr_of_tracks int  default NULL,
  album_liner_notes text,
  PRIMARY KEY  (album_id)
) ;


CREATE TABLE r_band_members (
  band_member_id int  NOT NULL ,
  band_id int  NOT NULL default '0',
  person_id int  NOT NULL default '0',
  enter_band date default NULL,
  leave_band date default NULL,
  PRIMARY KEY  (band_member_id)
)  ;

CREATE TABLE r_bands (
  band_id int NOT NULL ,
  band_name varchar(100) NOT NULL default '',
  band_created date default NULL,
  band_split date default NULL,
  band_style varchar(50) default NULL,
  band_photo varchar(100) default NULL,
  band_website varchar(100) default NULL,
  PRIMARY KEY  (band_id)
) ;


CREATE TABLE r_lyrics (
  lyrics_id int  NOT NULL ,
  track_base_name_id int NOT NULL default '0',
  lyrics text,
  PRIMARY KEY  (lyrics_id)
) ;


CREATE TABLE r_persons (
  person_id int  NOT NULL ,
  person_surname varchar(50) NOT NULL default '',
  person_first_name varchar(50) default NULL,
  person_birthdate date default NULL,
  person_nationality varchar(40) default NULL,
  person_address_id int default NULL,
  person_email varchar(100) default NULL,
  person_website varchar(100) default NULL,
  PRIMARY KEY  (person_id)
)  ;

CREATE TABLE r_track_base_names (
  track_base_name_id int  NOT NULL ,
  base_name varchar(100) NOT NULL default '',
  PRIMARY KEY  (track_base_name_id)
)  ;

CREATE TABLE r_track_remixers (
  track_remixer_id int  NOT NULL ,
  person_id int  default NULL,
  track_id int  default NULL,
  PRIMARY KEY  (track_remixer_id)
)  ;

CREATE TABLE r_tracks (
  track_id int  NOT NULL ,
  band_id int  NOT NULL default '0',
  track_base_name_id int  NOT NULL default '0',
  track_real_name varchar(100) NOT NULL default '',
  track_length text,
  track_version varchar(80) default NULL,
  track_work_done varchar(100) default NULL,
  PRIMARY KEY  (track_id)
)  ;


CREATE TABLE recordings (
  Artist text,
  Title text NOT NULL,
  Label text,
  CatNo text,
  Country text,
  Year int default NULL,
  Format text,
  Type text,
  SubType text,
  Info text,
  id int NOT NULL ,
  CoverPicA varchar(255) default NULL,
  CoverPicB varchar(255) default NULL,
  CoverPicC varchar(255) default NULL,
  CoverPicD varchar(255) default NULL,
  LabelPicA varchar(255) NOT NULL default '',
  LabelPicB varchar(255) NOT NULL default '',
  LabelPicC varchar(255) NOT NULL default '',
  LabelPicD varchar(255) NOT NULL default '',
  MiscPic1 varchar(255) NOT NULL default '',
  MiscPic2 varchar(255) NOT NULL default '',
  MiscPic3 varchar(255) NOT NULL default '',
  MiscPic4 varchar(255) NOT NULL default '',
  MiscPic5 varchar(255) NOT NULL default '',
  MiscPic6 varchar(255) NOT NULL default '',
  Lyrics text,
  MiscInfo text NOT NULL,
  MiscInfo2 text NOT NULL,
  Rating text NOT NULL,
  PRIMARY KEY  (id)
  
) ;

CREATE TABLE reference (
  Reference varchar(255) default NULL,
  ID int default NULL
) ;


CREATE TABLE remixer_names (
  Remixer varchar(255) default NULL,
  ID int default NULL
) ;


CREATE TABLE title_names (
  Name varchar(255) default NULL,
  ID int default NULL
) ;


CREATE TABLE track_list_base (
  Tracklist_short varchar(255) default NULL,
  ID int default NULL
) ;


CREATE TABLE type_base (
  Type varchar(255) default NULL,
  ID int default NULL
) ;


CREATE TABLE year_base (
  Year varchar(255) default NULL,
  ID int default NULL
) ;


queries

SELECT * From
r_tracks,r_track_base_names--,r_lyrics--,r_bands,r_band_members,r_albums,r_album_tracks,r_album_bands,r_addresses,r_persons
Where
 r_track_base_names.track_base_name_id = r_tracks.track_base_name_id
--AND r_lyrics.track_base_name_id = r_track_base_names.track_base_name_id

