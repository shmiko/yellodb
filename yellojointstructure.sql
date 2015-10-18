# phpMyAdmin MySQL-Dump
# version 2.3.2
# http://www.phpmyadmin.net/ (download page)
#
# Host: localhost
# Generation Time: Feb 22, 2004 at 12:27 PM
# Server version: 4.00.00
# PHP Version: 4.2.3
# Database : `yellojoint`
# --------------------------------------------------------

#
# Table structure for table `album`
#

CREATE TABLE album (
  AlbumID int(11) NOT NULL auto_increment,
  AlbumName varchar(100) default NULL,
  ArtistID int(11) NOT NULL default '0',
  AlbumPrice int(11) default '0',
  AlbumNotes text,
  AlbumCatalogNumber int(11) default '0',
  AlbumAvailable tinyint(3) unsigned default NULL,
  AlbumCoverURL varchar(100) default NULL,
  AlbumCoverThumbnailURL varchar(100) default NULL,
  PRIMARY KEY  (AlbumID),
  KEY AlbumID (AlbumID),
  KEY ArtistID (ArtistID)
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `artist`
#

CREATE TABLE artist (
  ArtistID int(11) NOT NULL auto_increment,
  ArtistGroupName varchar(100) default NULL,
  ArtistStyle varchar(50) default NULL,
  ArtistNames varchar(100) default NULL,
  ArtistPhoto varchar(100) default NULL,
  PRIMARY KEY  (ArtistID),
  KEY ArtistID (ArtistID)
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `artist_names`
#

CREATE TABLE artist_names (
  Artist varchar(255) default NULL,
  ID int(11) default NULL,
  Remixer_Names_ID int(11) default NULL,
  FeaturedArtist_Names_ID int(11) default NULL
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `bought`
#

CREATE TABLE bought (
  bought varchar(255) default NULL,
  ID int(11) default NULL
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `catnos`
#

CREATE TABLE catnos (
  Number_on_Spine_of_records varchar(255) default NULL,
  other_Cat_Numbers varchar(255) default NULL,
  Matrices varchar(255) default NULL,
  IFPI_Disc_Matrices varchar(255) default NULL,
  IFPI_Plastic_Matrices varchar(255) default NULL,
  LC tinyint(1) default NULL,
  PG tinyint(1) default NULL,
  BIEMA_GEMA  varchar(255) default NULL,
  ID int(11) default NULL
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `countries_names`
#

CREATE TABLE countries_names (
  Country varchar(255) default NULL,
  ID int(11) default NULL
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `featuredartist_names`
#

CREATE TABLE featuredartist_names (
  Featured_Artist varchar(255) default NULL,
  ID int(11) default NULL
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `format_base`
#

CREATE TABLE format_base (
  Format varchar(255) default NULL,
  ID int(11) default NULL
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `infocopy`
#

CREATE TABLE infocopy (
  ID int(11) default NULL,
  for_counting double default NULL,
  Field2 double default NULL,
  Reference varchar(255) default NULL,
  Price_with_reference varchar(255) default NULL,
  Exemplare varchar(255) default NULL,
  Fact varchar(255) default NULL,
  Featured_Songs varchar(255) default NULL,
  Month varchar(255) default NULL,
  Day double default NULL,
  Subtype varchar(255) default NULL,
  IMDB_Ref_for_Movies tinyint(1) default NULL,
  Promo_or_Autographed varchar(50) default NULL,
  Number_on_Spine_of_records varchar(255) default NULL,
  other_Cat_Numbers varchar(255) default NULL,
  Matrices varchar(255) default NULL,
  IFPI_Disc_Matrices varchar(255) default NULL,
  IFPI_Plastic_Matrices varchar(255) default NULL,
  LC tinyint(1) default NULL,
  PG tinyint(1) default NULL,
  BIEMA_GEMA varchar(255) default NULL,
  Pressed_in varchar(255) default NULL,
  Info varchar(255) default NULL,
  rarity varchar(255) default NULL,
  deleted tinyint(1) default NULL,
  color_of_vinyl varchar(255) default NULL,
  Cover_infos varchar(255) default NULL,
  Inner_Sleeve varchar(255) default NULL,
  No_Of_Tracks varchar(255) default NULL,
  extra varchar(255) default NULL,
  Qty varchar(255) default NULL,
  Pic_Slv tinyint(1) default NULL,
  Replaced tinyint(1) default NULL,
  Quality varchar(255) default NULL,
  rating varchar(255) default NULL,
  Artist_Names_ID int(11) default NULL,
  Title_Names_ID int(11) default NULL,
  Year_Base_ID int(11) default NULL,
  Format_Base_ID int(11) default NULL,
  Type_Base_ID int(11) default NULL,
  Countries_Names_ID int(11) default NULL,
  Labels_Names_ID int(11) default NULL,
  Track_List_Base_ID int(11) default NULL,
  Lyrics_Base_ID int(11) default NULL,
  Bought_ID int(11) default NULL,
  Owner varchar(50) default NULL
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `information`
#

CREATE TABLE information (
  ID int(11) default NULL,
  for_counting double default NULL,
  Field2 double default NULL,
  Reference varchar(255) default NULL,
  Price_with_reference varchar(255) default NULL,
  Exemplare varchar(255) default NULL,
  Fact varchar(255) default NULL,
  Featured_Songs varchar(255) default NULL,
  Month varchar(255) default NULL,
  Day double default NULL,
  Subtype varchar(255) default NULL,
  IMDB_Ref_for_Movies tinyint(1) default NULL,
  Promo_or_Autographed varchar(50) default NULL,
  Number_on_Spine_of_records varchar(255) default NULL,
  other_Cat_Numbers varchar(255) default NULL,
  Matrices varchar(255) default NULL,
  IFPI_Disc_Matrices varchar(255) default NULL,
  IFPI_Plastic_Matrices varchar(255) default NULL,
  LC tinyint(1) default NULL,
  PG tinyint(1) default NULL,
  BIEMA_GEMA varchar(255) default NULL,
  Pressed_in varchar(255) default NULL,
  Info varchar(255) default NULL,
  rarity varchar(255) default NULL,
  deleted tinyint(1) default NULL,
  color_of_vinyl varchar(255) default NULL,
  Cover_infos varchar(255) default NULL,
  Inner_Sleeve varchar(255) default NULL,
  No_Of_Tracks varchar(255) default NULL,
  extra varchar(255) default NULL,
  Qty varchar(255) default NULL,
  Pic_Slv tinyint(1) default NULL,
  Replaced tinyint(1) default NULL,
  Quality varchar(255) default NULL,
  rating varchar(255) default NULL,
  Artist_Names_ID int(11) default NULL,
  Title_Names_ID int(11) default NULL,
  Year_Base_ID int(11) default NULL,
  Format_Base_ID int(11) default NULL,
  Type_Base_ID int(11) default NULL,
  Countries_Names_ID int(11) default NULL,
  Labels_Names_ID int(11) default NULL,
  Track_List_Base_ID int(11) default NULL,
  Lyrics_Base_ID int(11) default NULL,
  Bought_ID int(11) default NULL,
  Owner varchar(50) default NULL
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `labels_names`
#

CREATE TABLE labels_names (
  Label varchar(255) default NULL,
  ID int(11) default NULL
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `lyrics_base`
#

CREATE TABLE lyrics_base (
  lyrics varchar(255) default NULL,
  ID int(11) default NULL
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `news`
#

CREATE TABLE news (
  NewsID int(11) NOT NULL auto_increment,
  NewsDate varchar(19) default NULL,
  NewsItem text,
  PRIMARY KEY  (NewsID),
  KEY NewsID (NewsID)
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `persondetails_base`
#

CREATE TABLE persondetails_base (
  PersonDetailsID int(11) default NULL,
  NickName varchar(50) default NULL,
  StreetNumber varchar(50) default NULL,
  StreetName varchar(50) default NULL,
  City varchar(50) default NULL,
  CountryID varchar(50) default NULL,
  Other varchar(50) default NULL
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `persons_base`
#

CREATE TABLE persons_base (
  PersonNameID int(11) default NULL,
  Name varchar(50) default NULL
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `r_addresses`
#

CREATE TABLE r_addresses (
  address_id tinyint(3) unsigned NOT NULL auto_increment,
  address_street varchar(80) default NULL,
  address_city varchar(50) default NULL,
  address_state varchar(40) default NULL,
  address_zip varchar(10) default NULL,
  address_country varchar(50) default NULL,
  PRIMARY KEY  (address_id)
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `r_album_bands`
#

CREATE TABLE r_album_bands (
  album_band_id tinyint(3) unsigned NOT NULL auto_increment,
  album_id tinyint(3) unsigned NOT NULL default '0',
  band_id tinyint(3) unsigned default NULL,
  PRIMARY KEY  (album_band_id)
) ENGINE=MyISAM COMMENT='which band plays on which album or so ;-)';
# --------------------------------------------------------

#
# Table structure for table `r_album_tracks`
#

CREATE TABLE r_album_tracks (
  album_track_id tinyint(3) unsigned NOT NULL auto_increment,
  album_id tinyint(3) unsigned NOT NULL default '0',
  track_id tinyint(3) unsigned default NULL,
  PRIMARY KEY  (album_track_id)
) ENGINE=MyISAM COMMENT='connect tracks to albums';
# --------------------------------------------------------

#
# Table structure for table `r_albums`
#

CREATE TABLE r_albums (
  album_id tinyint(3) unsigned NOT NULL auto_increment,
  album_base_name_id tinyint(3) unsigned NOT NULL default '0',
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
  album_format_id tinyint(3) unsigned default NULL,
  album_rarity varchar(30) default NULL,
  album_number_of_pressings varchar(30) default NULL,
  album_nr_of_tracks tinyint(3) unsigned default NULL,
  album_liner_notes text,
  PRIMARY KEY  (album_id),
  KEY album_real_name (album_real_name)
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `r_band_members`
#

CREATE TABLE r_band_members (
  band_member_id tinyint(3) unsigned NOT NULL auto_increment,
  band_id tinyint(3) unsigned NOT NULL default '0',
  person_id tinyint(3) unsigned NOT NULL default '0',
  enter_band date default NULL,
  leave_band date default NULL,
  PRIMARY KEY  (band_member_id)
) ENGINE=MyISAM COMMENT='connection between persons and bands, who is a member in whi';
# --------------------------------------------------------

#
# Table structure for table `r_bands`
#

CREATE TABLE r_bands (
  band_id int(11) NOT NULL auto_increment,
  band_name varchar(100) NOT NULL default '',
  band_created date default NULL,
  band_split date default NULL,
  band_style varchar(50) default NULL,
  band_photo varchar(100) default NULL,
  band_website varchar(100) default NULL,
  PRIMARY KEY  (band_id),
  KEY ArtistID (band_id)
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `r_lyrics`
#

CREATE TABLE r_lyrics (
  lyrics_id tinyint(3) unsigned NOT NULL auto_increment,
  track_base_name_id tinyint(3) NOT NULL default '0',
  lyrics mediumtext,
  PRIMARY KEY  (lyrics_id)
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `r_persons`
#

CREATE TABLE r_persons (
  person_id tinyint(3) unsigned NOT NULL auto_increment,
  person_surname varchar(50) NOT NULL default '',
  person_first_name varchar(50) default NULL,
  person_birthdate date default NULL,
  person_nationality varchar(40) default NULL,
  person_address_id tinyint(3) default NULL,
  person_email varchar(100) default NULL,
  person_website varchar(100) default NULL,
  PRIMARY KEY  (person_id),
  KEY person_surname (person_surname)
) ENGINE=MyISAM COMMENT='all persons, be it band members, remixers, musicians, or col';
# --------------------------------------------------------

#
# Table structure for table `r_track_base_names`
#

CREATE TABLE r_track_base_names (
  track_base_name_id tinyint(3) unsigned NOT NULL auto_increment,
  base_name varchar(100) NOT NULL default '',
  PRIMARY KEY  (track_base_name_id),
  KEY base_name (base_name)
) ENGINE=MyISAM COMMENT='for the base track names as in jonas'' list';
# --------------------------------------------------------

#
# Table structure for table `r_track_remixers`
#

CREATE TABLE r_track_remixers (
  track_remixer_id tinyint(3) unsigned NOT NULL auto_increment,
  person_id tinyint(3) unsigned default NULL,
  track_id tinyint(3) unsigned default NULL,
  PRIMARY KEY  (track_remixer_id)
) ENGINE=MyISAM COMMENT='which person has done a remix on which track';
# --------------------------------------------------------

#
# Table structure for table `r_tracks`
#

CREATE TABLE r_tracks (
  track_id tinyint(3) unsigned NOT NULL auto_increment,
  band_id tinyint(3) unsigned NOT NULL default '0',
  track_base_name_id tinyint(3) unsigned NOT NULL default '0',
  track_real_name varchar(100) NOT NULL default '',
  track_length tinytext,
  track_version varchar(80) default NULL,
  track_work_done varchar(100) default NULL,
  PRIMARY KEY  (track_id),
  KEY track_real_name (track_real_name)
) ENGINE=MyISAM COMMENT='for each individual track, remixed etc';
# --------------------------------------------------------

#
# Table structure for table `recordings`
#

CREATE TABLE recordings (
  Artist text,
  Title text NOT NULL,
  Label text,
  CatNo text,
  Country text,
  Year int(11) default NULL,
  Format text,
  Type text,
  SubType text,
  Info longtext,
  id int(11) NOT NULL auto_increment,
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
  Lyrics longtext,
  MiscInfo longtext NOT NULL,
  MiscInfo2 longtext NOT NULL,
  Rating text NOT NULL,
  PRIMARY KEY  (id),
  FULLTEXT KEY Artist (Artist)
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `reference`
#

CREATE TABLE reference (
  Reference varchar(255) default NULL,
  ID int(11) default NULL
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `remixer_names`
#

CREATE TABLE remixer_names (
  Remixer varchar(255) default NULL,
  ID int(11) default NULL
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `title_names`
#

CREATE TABLE title_names (
  Name varchar(255) default NULL,
  ID int(11) default NULL
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `track_list_base`
#

CREATE TABLE track_list_base (
  Tracklist_short varchar(255) default NULL,
  ID int(11) default NULL
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `type_base`
#

CREATE TABLE type_base (
  Type varchar(255) default NULL,
  ID int(11) default NULL
) ENGINE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table `year_base`
#

CREATE TABLE year_base (
  Year varchar(255) default NULL,
  ID int(11) default NULL
) ENGINE=MyISAM;

