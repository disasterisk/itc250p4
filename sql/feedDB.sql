/*added drop table so you don't have to manually delete*/
DROP TABLE IF EXISTS wn18_feeds;
DROP TABLE IF EXISTS wn18_subcategories;
DROP TABLE IF EXISTS wn18_categories;

/* 3/16/18 created corrosponding ID's for tables(categories has categoryID), changed primary key to corrosponding ID, deleted feed_category and feed_subcategory */
CREATE TABLE wn18_categories(
  categoryID INT(11) NOT NULL AUTO_INCREMENT,    
  name VARCHAR(60) NOT NULL,
  description varchar(255),
  PRIMARY KEY(categoryID)
);

-- added foreign key 
CREATE TABLE wn18_subcategories(
  subcategoryID INT NOT NULL AUTO_INCREMENT,
  categoryID INT NOT NULL,    
  name VARCHAR(60) NOT NULL,
  description varchar(255),
  PRIMARY KEY(subcategoryID),
  INDEX categoryID_index(categoryID),
  FOREIGN KEY (categoryID) REFERENCES wn18_categories(categoryID) ON DELETE CASCADE       
);

-- added foriegn keys
CREATE TABLE wn18_feeds(
  feedID INT(11) NOT NULL AUTO_INCREMENT,
  subcategoryID INT(11) NOT NULL, 
  categoryID INT (11) NOT NULL,    
  name VARCHAR (60) NOT NULL,
  description VARCHAR(255),
  url VARCHAR(255) NOT NULL,
  PRIMARY KEY(feedID),
  INDEX subcategoryID_index(subcategoryID),
  INDEX categoryID_index(categoryID),    
  FOREIGN KEY (subcategoryID) REFERENCES wn18_subcategories(subcategoryID) ON DELETE CASCADE,
  FOREIGN KEY (categoryID) REFERENCES wn18_categories(categoryID) ON DELETE CASCADE    
);

/*Added category ID number 1,2,3*/
INSERT INTO wn18_categories (categoryID, name, description) VALUES (1,"Art", "The latest art news");
INSERT INTO wn18_categories (categoryID, name, description) VALUES (2,"Pets", "The latest news on pets");
INSERT INTO wn18_categories (categoryID, name, description) VALUES (3,"Video Games", "The latest video game news");

/*Inserted subcategoryID, categoryID(feedsID needed?)*/
INSERT INTO wn18_subcategories (subcategoryID, categoryID, name, description) VALUES (1,1,"Music","Art - Music");
INSERT INTO wn18_subcategories (subcategoryID, categoryID, name, description) VALUES (2,1,"Painting","Art - Painting");
INSERT INTO wn18_subcategories (subcategoryID, categoryID, name, description) VALUES (3,1,"Dance","Art - Dance");
INSERT INTO wn18_subcategories (subcategoryID, categoryID, name, description) VALUES (4,2,"Cats","Pets - Cats");
INSERT INTO wn18_subcategories (subcategoryID, categoryID, name, description) VALUES (5,2,"Dogs","Pets - Dogs");
INSERT INTO wn18_subcategories (subcategoryID, categoryID, name, description) VALUES (6,2,"Pot-Bellied Pigs","Pets - Pot-Bellied Pigs");
INSERT INTO wn18_subcategories (subcategoryID, categoryID, name, description) VALUES (7,3,"XBox","Video Games - XBox");
INSERT INTO wn18_subcategories (subcategoryID, categoryID, name, description) VALUES (8,3,"Playstation","Video Games - Playstation");
INSERT INTO wn18_subcategories (subcategoryID, categoryID, name, description) VALUES (9,3,"PC","Video Games - PC");

/*Inserted feedID, subcategoryID, categoryID(categoryID may not be needed as well?)*/
INSERT INTO wn18_feeds (feedID, subcategoryID, categoryID, name, description, url) VALUES (1,1,1,"Google Music Feed", "Music news from Google", "https://news.google.com/news/search/rss/section/q/music/music?hl=en&gl=US&ned=us");
INSERT INTO wn18_feeds (feedID, subcategoryID, categoryID, name, description, url) VALUES (2,2,1,"Google Painting Feed", "Painting news from Google", "https://news.google.com/news/search/rss/section/q/painting/painting?hl=en&gl=US&ned=us");
INSERT INTO wn18_feeds (feedID, subcategoryID, categoryID, name, description, url) VALUES (3,3,1,"Google Dance Feed", "Dancing news from Google", "https://news.google.com/news/rss/search/section/q/dancing/dancing?hl=en&gl=US&ned=us");
INSERT INTO wn18_feeds (feedID, subcategoryID, categoryID, name, description, url) VALUES (4,4,2,"Google Cats Feed", "Cat news from Google", "https://news.google.com/news/rss/search/section/q/cats%20-baseball/cats%20-baseball?hl=en&gl=US&ned=us");
INSERT INTO wn18_feeds (feedID, subcategoryID, categoryID, name, description, url) VALUES (5,5,2,"Google Dogs Feed", "Dog news from Google", "https://news.google.com/news/rss/search/section/q/dogs%20-%22hot%20dogs%22/dogs%20-%22hot%20dogs%22?hl=en&gl=US&ned=us");
INSERT INTO wn18_feeds (feedID, subcategoryID, categoryID, name, description, url) VALUES (6,6,2,"Google Pot-Bellied Pigs Feed", "Pot-bellied pig news from Google", "https://news.google.com/news/rss/search/section/q/pot%20bellied%20pig/pot%20bellied%20pig?hl=en&gl=US&ned=us");
INSERT INTO wn18_feeds (feedID, subcategoryID, categoryID, name, description, url) VALUES (7,7,3,"Google XBox Feed", "XBox news from Google", "https://news.google.com/news/rss/search/section/q/Xbox%20one/Xbox%20one?hl=en&gl=US&ned=us");
INSERT INTO wn18_feeds (feedID, subcategoryID, categoryID, name, description, url) VALUES (8,8,3,"Google Playstation Feed", "Playstation news from Google", "https://news.google.com/news/rss/search/section/q/Playstation%204/Playstation%204?hl=en&gl=US&ned=us");
INSERT INTO wn18_feeds (feedID, subcategoryID, categoryID, name, description, url) VALUES (9,9,3,"Google PC Feed", "PC news from Google", "https://news.google.com/news/rss/search/section/q/PC%20gaming/PC%20gaming?hl=en&gl=US&ned=us");

-- deleted feed_subcategory so commented out and values are already inserted into table for all other tables. 

/*INSERT INTO wn18_feed_subcategory (feedID, subcategoryID) VALUES (1,1);
INSERT INTO wn18_feed_subcategory (feedID, subcategoryID) VALUES (2,2);
INSERT INTO wn18_feed_subcategory (feedID, subcategoryID) VALUES (3,3);
INSERT INTO wn18_feed_subcategory (feedID, subcategoryID) VALUES (4,4);
INSERT INTO wn18_feed_subcategory (feedID, subcategoryID) VALUES (5,5);
INSERT INTO wn18_feed_subcategory (feedID, subcategoryID) VALUES (6,6);
INSERT INTO wn18_feed_subcategory (feedID, subcategoryID) VALUES (7,7);
INSERT INTO wn18_feed_subcategory (feedID, subcategoryID) VALUES (8,8);
INSERT INTO wn18_feed_subcategory (feedID, subcategoryID) VALUES (9,9);*/
