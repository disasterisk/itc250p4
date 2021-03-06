-- get categories
SELECT * FROM wn18_categories;
-- get subcategories
SELECT * FROM wn18_subcategories;
-- get subcategory by category
SELECT * FROM wn18_subcategories WHERE categoryID = 1;
-- get subcategory's category
SELECT * FROM wn18_categories c
  JOIN wn18_subcategories s ON categoryID = c.ID
  WHERE s.ID = 1;
-- select feed based on category
SELECT f.name, f.description, f.url FROM wn18_feeds f
  JOIN wn18_feed_subcategory fs ON feedID = f.ID
  JOIN wn18_subcategories s ON subcategoryID = s.ID
  JOIN wn18_categories c on categoryID = c.ID
  WHERE categoryID = 1;
SELECT f.name, f.description, f.url FROM wn18_feeds f
  JOIN wn18_feed_category fc ON feedID = f.ID
  JOIN wn18_categories c ON categoryID = c.ID
  WHERE c.ID = 1;
  
-- select feed based on subcategory
SELECT * FROM wn18_feeds f
  JOIN wn18_feed_subcategory fs ON feedID = f.ID
  WHERE subcategoryID = 1;
