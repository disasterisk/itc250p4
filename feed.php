<html>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<div class="btn-group dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Pets
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    <li><a href="feed.php?ID=0">Cats</a></li>
    <li><a href="feed.php?ID=1">Dogs</a></li>
    <li><a href="feed.php?ID=2">Pot-bellied Pigs</a></li>
  </ul>
</div>

<div class="btn-group dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Art
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    <li><a href="feed.php?ID=3">Music</a></li>
    <li><a href="feed.php?ID=4">Painting</a></li>
    <li><a href="feed.php?ID=5">Dance</a></li>
  </ul>
</div>

<div class="btn-group dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Video Games
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    <li><a href="feed.php?ID=6">XBox One</a></li>
    <li><a href="feed.php?ID=7">Playstation 4</a></li>
    <li><a href="feed.php?ID=8">PC</a></li>
  </ul>
</div>



</html>


<?php
//read-feed-simpleXML.php
//our simplest example of consuming an RSS feed
//$Chosen = ;
$subtopic=" ";

$database = array("https://news.google.com/news/rss/search/section/q/cats%20-baseball/cats%20-baseball?hl=en&gl=US&ned=us",
"https://news.google.com/news/rss/search/section/q/dogs%20-%22hot%20dogs%22/dogs%20-%22hot%20dogs%22?hl=en&gl=US&ned=us",
"https://news.google.com/news/rss/search/section/q/pot%20bellied%20pig/pot%20bellied%20pig?hl=en&gl=US&ned=us",
"https://news.google.com/news/search/section/q/music/music?hl=en&gl=US&ned=us",
"https://news.google.com/news/rss/search/section/q/painting/painting?hl=en&gl=US&ned=us",
"https://news.google.com/news/rss/search/section/q/dancing/dancing?hl=en&gl=US&ned=us",
"http://feeds.ign.com/IGNXboxOneAll",
"http://feeds.ign.com/IGNPS4All",
"http://feeds.ign.com/ign/pc-all");

if(isset($_GET["ID"])){
  $ID = $_GET["ID"];
  $request = $database[$ID];
  //$request = "http://feeds.foxnews.com/foxnews/politics";
  $response = file_get_contents($request);
  $xml = simplexml_load_string($response);


  print '<h1>' . $xml->channel->title . '</h1>';
  foreach($xml->channel->item as $story){
echo'
    <div class="card" style=" border-style: dotted;">
    <div class="card-body">
      <h4 class="card-title">';
      echo'</h4>
      <a href="' . $story->link ;
      echo'" class="card-link">'. $story->title;
      echo'</a> <p class ="card-text">' . $story->description ;
      echo'</p>
    </div>
  </div>';


  }
}
else{
  echo" Choose a subject to explore!";
}


?>
