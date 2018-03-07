CREATE TABLE wn18_categories(
  ID INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(60) NOT NULL,
  description VARCHAR(255),
  PRIMARY KEY(ID)
);
CREATE TABLE wn18_subcategories(
  ID INT NOT NULL AUTO_INCREMENT,
  categoryID INT NOT NULL,
  name VARCHAR(60) NOT NULL,
  description varchar(255),
  PRIMARY KEY(ID)
);
CREATE TABLE wn18_feeds(
  ID INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(60) NOT NULL,
  description VARCHAR(255),
  url VARCHAR(255) NOT NULL,
  PRIMARY KEY(ID)
);
CREATE TABLE wn18_feed_category(
  ID INT NOT NULL AUTO_INCREMENT,
  feedID INT NOT NULL,
  categoryID INT NOT NULL,
  PRIMARY KEY(ID),
  FOREIGN KEY (feedID) REFERENCES wn18_feeds (ID),
  FOREIGN KEY (categoryID) REFERENCES wn18_categories (ID)
);
CREATE TABLE wn18_feed_subcategory(
  ID INT NOT NULL AUTO_INCREMENT,
  feedID INT NOT NULL,
  subcategoryID INT NOT NULL,
  PRIMARY KEY(ID),
  FOREIGN KEY (feedID) REFERENCES wn18_feeds (ID),
  FOREIGN KEY (subcategoryID) REFERENCES wn18_subcategories (ID)
);
INSERT INTO wn18_categories (name, description) VALUES ("Art", "The latest art news");
INSERT INTO wn18_categories (name, description) VALUES ("Pets", "The latest news on pets");
INSERT INTO wn18_categories (name, description) VALUES ("Video Games", "The latest video game news");

INSERT INTO wn18_subcategories (categoryID, name, description) VALUES (1,"Music","Art - Music");
INSERT INTO wn18_subcategories (categoryID, name, description) VALUES (1,"Painting","Art - Painting");
INSERT INTO wn18_subcategories (categoryID, name, description) VALUES (1,"Dance","Art - Dance");
INSERT INTO wn18_subcategories (categoryID, name, description) VALUES (2,"Cats","Pets - Cats");
INSERT INTO wn18_subcategories (categoryID, name, description) VALUES (2,"Dogs","Pets - Dogs");
INSERT INTO wn18_subcategories (categoryID, name, description) VALUES (2,"Pot-Bellied Pigs","Pets - Pot-Bellied Pigs");
INSERT INTO wn18_subcategories (categoryID, name, description) VALUES (3,"XBox","Video Games - XBox");
INSERT INTO wn18_subcategories (categoryID, name, description) VALUES (3,"Playstation","Video Games - Playstation");
INSERT INTO wn18_subcategories (categoryID, name, description) VALUES (3,"PC","Video Games - PC");

INSERT INTO wn18_feeds (name, description, url) VALUES ("Google Music Feed", "Music news from Google", "https://news.google.com/news/search/rss/section/q/music/music?hl=en&gl=US&ned=us");
INSERT INTO wn18_feeds (name, description, url) VALUES ("Google Painting Feed", "Painting news from Google", "https://news.google.com/news/search/rss/section/q/painting/painting?hl=en&gl=US&ned=us");
INSERT INTO wn18_feeds (name, description, url) VALUES ("Google Dance Feed", "Dancing news from Google", "https://news.google.com/news/rss/search/section/q/dancing/dancing?hl=en&gl=US&ned=us");
INSERT INTO wn18_feeds (name, description, url) VALUES ("Google Cats Feed", "Cat news from Google", "https://news.google.com/news/rss/search/section/q/cats%20-baseball/cats%20-baseball?hl=en&gl=US&ned=us");
INSERT INTO wn18_feeds (name, description, url) VALUES ("Google Dogs Feed", "Dog news from Google", "https://news.google.com/news/rss/search/section/q/dogs%20-%22hot%20dogs%22/dogs%20-%22hot%20dogs%22?hl=en&gl=US&ned=us");
INSERT INTO wn18_feeds (name, description, url) VALUES ("Google Pot-Bellied Pigs Feed", "Pot-bellied pig news from Google", "https://news.google.com/news/rss/search/section/q/pot%20bellied%20pig/pot%20bellied%20pig?hl=en&gl=US&ned=us");
INSERT INTO wn18_feeds (name, description, url) VALUES ("Google XBox Feed", "XBox news from Google", "https://news.google.com/news/rss/search/section/q/Xbox%20one/Xbox%20one?hl=en&gl=US&ned=us");
INSERT INTO wn18_feeds (name, description, url) VALUES ("Google Playstation Feed", "Playstation news from Google", "https://news.google.com/news/rss/search/section/q/Playstation%204/Playstation%204?hl=en&gl=US&ned=us");
INSERT INTO wn18_feeds (name, description, url) VALUES ("Google PC Feed", "PC news from Google", "https://news.google.com/news/rss/search/section/q/PC%20gaming/PC%20gaming?hl=en&gl=US&ned=us");

INSERT INTO wn18_feed_subcategory (feedID, subcategoryID) VALUES (1,1);
INSERT INTO wn18_feed_subcategory (feedID, subcategoryID) VALUES (2,2);
INSERT INTO wn18_feed_subcategory (feedID, subcategoryID) VALUES (3,3);
INSERT INTO wn18_feed_subcategory (feedID, subcategoryID) VALUES (4,4);
INSERT INTO wn18_feed_subcategory (feedID, subcategoryID) VALUES (5,5);
INSERT INTO wn18_feed_subcategory (feedID, subcategoryID) VALUES (6,6);
INSERT INTO wn18_feed_subcategory (feedID, subcategoryID) VALUES (7,7);
INSERT INTO wn18_feed_subcategory (feedID, subcategoryID) VALUES (8,8);
INSERT INTO wn18_feed_subcategory (feedID, subcategoryID) VALUES (9,9);
