<?php

define('EMAIL_FOR_REPORTS', 'fogartybrian1975@eircom.net');
define('RECAPTCHA_PRIVATE_KEY', '@privatekey@');
define('FINISH_URI', 'http://localhost:8080/FunFundRaise/payment');
define('FINISH_ACTION', 'redirect');
define('FINISH_MESSAGE', 'Thanks for filling out my form!');
define('UPLOAD_ALLOWED_FILE_TYPES', 'doc, docx, xls, csv, txt, rtf, html, zip, jpg, jpeg, png, gif');

define('_DIR_', str_replace('\\', '/', dirname(__FILE__)) . '/');
require_once _DIR_ . '/handler.php';

?>

<?php if (frmd_message()): ?>
<link rel="stylesheet" href="<?php echo dirname($form_path); ?>/formoid-flat-red.css" type="text/css" />
<span class="alert alert-success"><?php echo FINISH_MESSAGE; ?></span>
<?php else: ?>
<!-- Start Formoid form-->
<link rel="stylesheet" href="<?php echo dirname($form_path); ?>/formoid-flat-red.css" type="text/css" />
<script type="text/javascript" src="<?php echo dirname($form_path); ?>/jquery.min.js"></script>
<form class="formoid-flat-red" style="background-color:#aa55ff;font-size:14px;font-family:'Lato', sans-serif;color:#000000;max-width:100%;min-width:150px" method="post"><div class="title"><h2>Choose Your Golfers</h2></div>
	<div class="element-checkbox<?php frmd_add_class("checkbox"); ?>"><label class="title">Top 50</label>		<div class="column column5"><label><input type="checkbox" name="checkbox[]" value="option 1 "/ ><span>option 1 </span></label><label><input type="checkbox" name="checkbox[]" value="option 6"/ ><span>option 6</span></label><label><input type="checkbox" name="checkbox[]" value="option 11"/ ><span>option 11</span></label><label><input type="checkbox" name="checkbox[]" value="option 16"/ ><span>option 16</span></label><label><input type="checkbox" name="checkbox[]" value="option 21"/ ><span>option 21</span></label><label><input type="checkbox" name="checkbox[]" value="option 26"/ ><span>option 26</span></label><label><input type="checkbox" name="checkbox[]" value="option 31"/ ><span>option 31</span></label><label><input type="checkbox" name="checkbox[]" value="option 36"/ ><span>option 36</span></label><label><input type="checkbox" name="checkbox[]" value="option 41"/ ><span>option 41</span></label><label><input type="checkbox" name="checkbox[]" value="option 46"/ ><span>option 46</span></label></div><span class="clearfix"></span>
		<div class="column column5"><label><input type="checkbox" name="checkbox[]" value="option 2"/ ><span>option 2</span></label><label><input type="checkbox" name="checkbox[]" value="option 7"/ ><span>option 7</span></label><label><input type="checkbox" name="checkbox[]" value="option 12"/ ><span>option 12</span></label><label><input type="checkbox" name="checkbox[]" value="option 17"/ ><span>option 17</span></label><label><input type="checkbox" name="checkbox[]" value="option 22"/ ><span>option 22</span></label><label><input type="checkbox" name="checkbox[]" value="option 27"/ ><span>option 27</span></label><label><input type="checkbox" name="checkbox[]" value="option 32"/ ><span>option 32</span></label><label><input type="checkbox" name="checkbox[]" value="option 37"/ ><span>option 37</span></label><label><input type="checkbox" name="checkbox[]" value="option 42"/ ><span>option 42</span></label><label><input type="checkbox" name="checkbox[]" value="option 47"/ ><span>option 47</span></label></div><span class="clearfix"></span>
		<div class="column column5"><label><input type="checkbox" name="checkbox[]" value="option 3"/ ><span>option 3</span></label><label><input type="checkbox" name="checkbox[]" value="option 8"/ ><span>option 8</span></label><label><input type="checkbox" name="checkbox[]" value="option 13"/ ><span>option 13</span></label><label><input type="checkbox" name="checkbox[]" value="option 18"/ ><span>option 18</span></label><label><input type="checkbox" name="checkbox[]" value="option 23"/ ><span>option 23</span></label><label><input type="checkbox" name="checkbox[]" value="option 28"/ ><span>option 28</span></label><label><input type="checkbox" name="checkbox[]" value="option 33"/ ><span>option 33</span></label><label><input type="checkbox" name="checkbox[]" value="option 38"/ ><span>option 38</span></label><label><input type="checkbox" name="checkbox[]" value="option 43"/ ><span>option 43</span></label><label><input type="checkbox" name="checkbox[]" value="option 48"/ ><span>option 48</span></label></div><span class="clearfix"></span>
		<div class="column column5"><label><input type="checkbox" name="checkbox[]" value="option 4"/ ><span>option 4</span></label><label><input type="checkbox" name="checkbox[]" value="option 9"/ ><span>option 9</span></label><label><input type="checkbox" name="checkbox[]" value="option 14"/ ><span>option 14</span></label><label><input type="checkbox" name="checkbox[]" value="option 19"/ ><span>option 19</span></label><label><input type="checkbox" name="checkbox[]" value="option 24"/ ><span>option 24</span></label><label><input type="checkbox" name="checkbox[]" value="option 29"/ ><span>option 29</span></label><label><input type="checkbox" name="checkbox[]" value="option 34"/ ><span>option 34</span></label><label><input type="checkbox" name="checkbox[]" value="option 39"/ ><span>option 39</span></label><label><input type="checkbox" name="checkbox[]" value="option 44"/ ><span>option 44</span></label><label><input type="checkbox" name="checkbox[]" value="option 49"/ ><span>option 49</span></label></div><span class="clearfix"></span>
		<div class="column column5"><label><input type="checkbox" name="checkbox[]" value="option 5"/ ><span>option 5</span></label><label><input type="checkbox" name="checkbox[]" value="option 10"/ ><span>option 10</span></label><label><input type="checkbox" name="checkbox[]" value="option 15"/ ><span>option 15</span></label><label><input type="checkbox" name="checkbox[]" value="option 20"/ ><span>option 20</span></label><label><input type="checkbox" name="checkbox[]" value="option 25"/ ><span>option 25</span></label><label><input type="checkbox" name="checkbox[]" value="option 30"/ ><span>option 30</span></label><label><input type="checkbox" name="checkbox[]" value="option 35"/ ><span>option 35</span></label><label><input type="checkbox" name="checkbox[]" value="option 40"/ ><span>option 40</span></label><label><input type="checkbox" name="checkbox[]" value="option 45"/ ><span>option 45</span></label><label><input type="checkbox" name="checkbox[]" value="option 50"/ ><span>option 50</span></label></div><span class="clearfix"></span>
</div>
	<div class="element-input<?php frmd_add_class("input"); ?>" title="Lowest Ranked goes in here"><label class="title">Golfer Number 1<span class="required">*</span></label><input class="large" type="text" name="input" required="required"/></div>
	<div class="element-input<?php frmd_add_class("input3"); ?>" title="Second Ranked goes in here"><label class="title">Golfer Number 2<span class="required">*</span></label><input class="large" type="text" name="input3" required="required"/></div>
	<div class="element-input<?php frmd_add_class("input1"); ?>" title="Highest Ranked goes in here"><label class="title">Golfer Number 3<span class="required">*</span></label><input class="large" type="text" name="input1" required="required"/></div>
	<div class="element-select<?php frmd_add_class("select"); ?>"><label class="title">Choose Charity/Club<span class="required">*</span></label><div class="large"><span><select name="select" required="required">

		<option value="Golden">Golden</option>
		<option value="Doon">Doon</option>
		<option value="Cashel">Cashel</option>
		<option value="Kilfeacle">Kilfeacle</option></select><i></i></span></div></div>
<div class="submit"><input type="submit" value="Submit and Pay"/></div></form><script type="text/javascript" src="<?php echo dirname($form_path); ?>/formoid-flat-red.js"></script>

<!-- Stop Formoid form-->
<?php endif; ?>

<?php frmd_end_form(); ?>