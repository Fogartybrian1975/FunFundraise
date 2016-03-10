<!DOCTYPE html>
<html>
<head>
  <!-- Site made with Mobirise Website Builder v2.9, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v2.9, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="static/assets/images/logo-227x181-72.jpg" type="image/x-icon">
  <meta name="description" content="Pick 3 Professional Players to represent you for all 4 Major Competitions.
The combined world ranking* of the 3 selected must exceed 50. 
Only 1 player from the World Top 10 can be selected. 
Your 3rd pick (worst ranking player) is your wild card entry!This player will score 50% BONUS POINTS! 
Scores for tied positions in each Major Competition will be shared as per final placing.  Entries will be taken up to 6pm Monday 4th April. The winner selected after PGA Championship. 
*Top 50 Official World Golf Ranking, Week 10, 2015,  www.owgr.com ">
  <title>Leader Board</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:700,400&amp;subset=cyrillic,latin,greek,vietnamese">
  <link rel="stylesheet" href="static/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="static/assets/mobirise/css/style.css">
  <link rel="stylesheet" href="static/assets/mobirise/css/mbr-additional.css" type="text/css">
  <link rel="stylesheet" href="static/formoid_files/formoid1/formoid-flat-red.css" type="text/css">
  
  
</head>
<body>
<section class="engine"><a rel="external" href="https://mobirise.com">Mobirise offline website builder software
</a></section>
<section class="mbr-navbar mbr-navbar--freeze mbr-navbar--absolute mbr-navbar--sticky mbr-navbar--auto-collapse" id="ext_menu-0">
    <div class="mbr-navbar__section mbr-section">
        <div class="mbr-section__container container">
            <div class="mbr-navbar__container">
                <div class="mbr-navbar__column mbr-navbar__column--s mbr-navbar__brand">
                    <span class="mbr-navbar__brand-link mbr-brand mbr-brand--inline">
                        <span class="mbr-brand__logo"><a href="http://localhost:8080/FunFundRaise/"><img class="mbr-navbar__brand-img mbr-brand__img" src="static/assets/images/logo-227x181-72.jpg" alt="FunFundraise.com" title="FunFundraise.com"></a></span>
                        <span class="mbr-brand__name"><a class="mbr-brand__name text-white" href="http://localhost:8080/FunFundRaise/">FunFundraise</a></span>
                    </span>
                </div>
                <div class="mbr-navbar__hamburger mbr-hamburger text-white"><span class="mbr-hamburger__line"></span></div>
                <div class="mbr-navbar__column mbr-navbar__menu">
                    <nav class="mbr-navbar__menu-box mbr-navbar__menu-box--inline-right">
                        <div class="mbr-navbar__column"><ul class="mbr-navbar__items mbr-navbar__items--right mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-decorator mbr-buttons--active"><li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="http://localhost:8080/FunFundRaise/">HOME</a></li><li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="http://localhost:8080/FunFundRaise/about">ABOUT</a></li> <li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="index.html#features1-2">SPORTS</a></li> <li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="http://localhost:8080/FunFundRaise/members">MEMBERS</a></li><li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="index.html#contacts1-4">CONTACT</a></li></ul></div>
                        <div class="mbr-navbar__column"><ul class="mbr-navbar__items mbr-navbar__items--right mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-inverse mbr-buttons--active"><li class="mbr-navbar__item"><a class="mbr-buttons__btn btn btn-danger" href="http://localhost:8080/FunFundRaise/login">SIGN IN/UP</a></li></ul></div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="mbr-section mbr-after-navbar" id="content1-10">
<p> I want to put a leader board like the script below that will scroll though the database and give a list of all the games and whos winning etc.</p>
<p>This can go on all pages if possible at one side of the page but made a little fancier obviously</p>
<div><label class="title">Leaderboard</label>	

<script>
ScrollRate = 100;

function scrollDiv_init() {
	DivElmnt = document.getElementById('MyDivName');
	ReachedMaxScroll = false;
	
	DivElmnt.scrollTop = 0;
	PreviousScrollTop  = 0;
	
	ScrollInterval = setInterval('scrollDiv()', ScrollRate);
}

function scrollDiv() {
	
	if (!ReachedMaxScroll) {
		DivElmnt.scrollTop = PreviousScrollTop;
		PreviousScrollTop++;
		
		ReachedMaxScroll = DivElmnt.scrollTop >= (DivElmnt.scrollHeight - DivElmnt.offsetHeight);
	}
	else {
		ReachedMaxScroll = (DivElmnt.scrollTop == 0)?false:true;
		
		DivElmnt.scrollTop = PreviousScrollTop;
		PreviousScrollTop--;
	}
}

function pauseDiv() {
	clearInterval(ScrollInterval);
}

function resumeDiv() {
	PreviousScrollTop = DivElmnt.scrollTop;
	ScrollInterval    = setInterval('scrollDiv()', ScrollRate);
}
</script>
</section>
<body onLoad="scrollDiv_init()">
<div id="MyDivName" style="overflow:auto;width:200px;height:100px" onMouseOver="pauseDiv()" onMouseOut="resumeDiv()">
text text text text text text text text text text text text text text text text text text text text text text text text
text text text text text text text text text text text text text text text text text text text text text text text text
text text text text text text text text text text text text text text text text text text text text text text text text
text text text text text text text text text text text text text text text text text text text text text text text text
text text text text text text text text text text text text text text text text text text text text text text text text
text text text text text text text text text text text text text text text text text text text text text text text text
text text text text text text text text text text text text text text text text text text text text text text text text
text text text text text text text text text text text text text text text text text text text text text text text text
text text text text text text text text text text text text text text text text text text text text text text text text
text text text text text text text text text text text text text text text text text text text text text text text text
text text text text text text text text text text text text text text text text text text text text text text text text
text text text text text text text text text text text text text text text text text text text text text text text text
</div>
</div>
</body>
</section>

<section class="mbr-section mbr-after-navbar" id="content1-10">
    <div class="mbr-section__container container mbr-section__container--isolated">
        <div class="row">
            <div class="mbr-article mbr-article--wysiwyg col-sm-8 col-sm-offset-2"><ul><li>This will show the leader board from the database</li><li>See also the search engine Below to find the required leaderboard and the one above that constantly scrolls through all leaderboards. </li><li>Also but a link on each .jsp page to this leaderboard page</li></ul></div>
        </div>
    </div>
</section>

<section class="mbr-section mbr-after-navbar" id="content1-10">
    <div class="mbr-section__container container mbr-section__container--isolated">
      <form action="search.html" method="GET">
<input type="text" name="q" placeholder="Search by Member"/>
<input type="submitMember" value="Search by Member"/>
<input type="text" name="q" placeholder="Search By Game"/>
<input type="submitGame" value="Search By Game"/>
<input type="text" name="q" placeholder="Search By County"/>
<input type="submitCounty" value="Search By County"/>
<div><input type="submit" value="Find"/></div>
</form>

<head>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script tpye="text/javascript">
$(document).ready(function()
{
    var url = document.location.href;
    var search_val_raw = url.split("?q=")[1];
    var search_val_count = search_val_raw.split("+");
    var search_val;

    for(var i = 0; i < search_val_count.length; i++)
    {
        search_val = search_val_count[i];

        $("#search-results p:contains(" + search_val + ")").show();
    }
});
</script>
<style type="text/css">
#search-results p
{
    display: none;
}
</style>
</head>
<body>
<div id="search-results">
<p><a href="#">Lorem Ipsum</a></p>
<p><a href="#">Test</a></p>
<p><a href="#">Brofist</a></p>
</div>
</body>
  
    </div>
</section>


</body>



<section class="mbr-section mbr-section--relative mbr-section--fixed-size" id="contacts1-4" style="background-color: rgb(60, 60, 60);">
    
    <div class="mbr-section__container container">
        <div class="mbr-contacts mbr-contacts--wysiwyg row">
            <div class="col-sm-4">
                <div><a href="http://localhost:8080/FunFundRaise"><img class="mbr-contacts__img mbr-contacts__img--left" src="static/assets/images/logo-227x181-98.jpg" alt="Fun Fundraise" title="FunFundraise.com"></a></div>
            </div>
            <div class="col-sm-8">
                <div class="row">
                    <div class="col-sm-4">
                        <p class="mbr-contacts__text"><strong>ADDRESS</strong><br>Main Street<br>Golden<br>Cashel<br>Co. Tipperary</p>
                    </div>
                    <div class="col-sm-4">
                        <p class="mbr-contacts__text"><strong>CONTACTS</strong><br>
Email: support@funfundraise.com<br>
Phone: 00353-87-8113012<br><br></p>
                    </div>
                    <div class="col-sm-4"></div>
                </div>
            </div>
        </div>
    </div>
</section>


  <script src="static/assets/web/assets/jquery/jquery.min.js"></script>
  <script src="static/assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="static/assets/smooth-scroll/SmoothScroll.js"></script>
  <script src="static/assets/mobirise/js/script.js"></script>
  
  
</body>
</html>