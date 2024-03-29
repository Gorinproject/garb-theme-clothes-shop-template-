﻿<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/javascript/login_popup.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/login_popup.css">
<script type="text/javascript" src="catalog/view/javascript/blog/colorbox/jquery.colorbox.js"></script>
<script type="text/javascript" src="catalog/view/javascript/blog/colorbox/lang/jquery.colorbox-ru.js"></script>
<script type="text/javascript" src="catalog/view/javascript/blog/blog.color.js"></script>

<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen">
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body>


<div id="container">
<div id="verh">

<div id="header">
  <?php if ($logo) { ?>
  <div id="logo">
  <?php if ($home == $og_url) { ?>
  <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" />
  <?php } else { ?>
  <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a>
  <?php } ?>
  </div>
  <?php } ?>
	<div class="tel">
        <span class="s11">По будням с 9.00 до 20.00</span>
        <span class="s22"><b>(066)</b> 273-54-54</span>
		<span class="s22"><b>(067)</b> 883-54-54</span>
		<span class="s22"><b>(063)</b> 893-54-54</span>
<span class="s11">В выходные с 10.00 до 18.00</span>
</div> 
   <div class="contacts">
		<span class="s112">Принимаем заказы по E-mail и Skype</span>
		<span class="name email">E-mail:<span class="cont">zakaz@garb.com.ua</span></span>
		<span class="name skype">Skype:<span class="cont">garb.com.ua</span></span>
		<span class="name location">Адрес:<span class="cont">г.Киев</span></span>
   </div>
  <?php echo $cart; ?> 
   <div class="links">
   <a href="<?php echo $compare; ?>" id="compare-total"><span class="srav"></span><span class="nnna"><?php echo $text_compare; ?></span></a>
   <span class="border"></span>
   <a href="<?php echo $wishlist; ?>" id="wishlist-total"><span class="wish"></span><span class="nnna"><?php echo $text_wishlist; ?></span></a>
   </div>
</div>

</div>



<div id="verh2">
<div id="verh3">

	<div id="llinks">
		<a href="index.php?route=information/information&information_id=4">Доставка и оплата</a>
                <a href="index.php?route=information/information&information_id=8">Таблицы размеров </a>
		<a href="index.php?route=information/information&information_id=6">О магазине</a>
		
	</div>
	
	<div id="search">
    <div class="button-search"></div>
    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
    </div>
	<div id="welcome" <?php if (!$logged) { echo "class='login_popup'";}?>>
    <?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
  </div>

</div>
<?php if ($categories) { ?>
<div id="menu">
  <ul>
    <?php foreach ($categories as $category) { ?>
    <li><?php if ($category['active']) { ?>
	<a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a>
	<?php } else { ?>
	<a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
	<?php } ?>
	
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
  </ul>
</div>
<?php } ?>
</div>
<div id="afterrr2" style="margin-bottom: 10px;"></div>
<div id="afterrr22"></div>
<div id="notification"></div>
