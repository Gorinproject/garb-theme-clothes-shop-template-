<div class="box_feautered2">
  <div class="box-content">
   <div class="box-header22">Новые поступления</div>
	  <div class="jcarousel-skin-opencart latest"> 
      <div id ="rek" class="jcarousel">
	  <ul>
	  <?php for ($i = 0; $i < count($products) / 2; $i++) {
		$product = $products[$i * 2];
		if (isset($products[$i * 2 + 1])){
		  $product2 = $products[$i * 2 + 1];
		} else {
		  $product2 = false;
		}
	?>
		<li><?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
       	<span style="width: 15px;height: 15px;position: absolute;bottom: 10px;right: 15px;border-radius: 10px;background: url('catalog/view/theme/default/image/<?php echo $product['sost3']; ?>.png')"></span>
		<?php if ($product['special']) { ?>
		<div class="procent">-<?php  
		$num[0]=$product['price'];  //Стоимость без скидки
		$num[1]=$product['special'];  //Стоимость по акции
		$procent=$num[0]/100;  
		 
		$result=100-($num[1]/$procent); //вычисляем процент
		echo round ($result); ?>%<span>Скидка</span> <!-- Выводим процент с округлением используя функцию round-->
		</div>
		<?php } ?>
		</div>
	   <?php } ?>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <?php if ($product['price']) { ?>
		<?php if ($product['quantity']>0) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
		<?php } else { ?>
        <span style="display: block;color:#666;padding-top:5px">Нет в наличии</span>
		<?php } ?>
        <?php } ?>
	<?php if ($product2) { ?>
		<br/><br/><br/><br/><?php if ($product2['thumb']) { ?>
        <div class="image"><a href="<?php echo $product2['href']; ?>"><img src="<?php echo $product2['thumb']; ?>" alt="<?php echo $product2['name']; ?>" /></a>
       	<span style="width: 15px;height: 15px;position: absolute;bottom: 10px;right: 15px;border-radius: 10px;background: url('catalog/view/theme/default/image/<?php echo $product2['sost3']; ?>.png')"></span>
		<?php if ($product2['special']) { ?>
		<div class="procent">-<?php  
		$num[0]=$product2['price'];  //Стоимость без скидки
		$num[1]=$product2['special'];  //Стоимость по акции
		$procent=$num[0]/100;  
		 
		$result=100-($num[1]/$procent); //вычисляем процент
		echo round ($result); ?>%<span>Скидка</span> <!-- Выводим процент с округлением используя функцию round-->
		</div>
		<?php } ?>
		</div>
	   <?php } ?>
        <div class="name"><a href="<?php echo $product2['href']; ?>"><?php echo $product2['name']; ?></a></div>
        <?php if ($product2['price']) { ?>
		<?php if ($product2['quantity']>0) { ?>
        <div class="price">
          <?php if (!$product2['special']) { ?>
          <?php echo $product2['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product2['price']; ?></span> <span class="price-new"><?php echo $product2['special']; ?></span>
          <?php } ?>
        </div>
		<?php } else { ?>
        <span style="display: block;color:#666;padding-top:5px">Нет в наличии</span>
		<?php } ?>
        <?php } ?>
	<?php } ?>
	</li>
	<?php } ?>
      
	  </ul>
	   </div>
	   </div>	

  </div>
</div>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/carousel.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.jcarousel.min.js"></script>
		<script type="text/javascript"><!--
		jQuery(document).ready(function() {
			$('#rek ul').jcarousel({
				vertical: false,
				scroll:1,
				rtl: false,
  			    wrap: 'both',
				auto: 0,
				animation: 300,
				offset:1,
				scroll:5,
				visible:5,
				initCallback: mycarousel_initCallback
			});
		});	
		function mycarousel_initCallback(carousel)
		{
			// Disable autoscrolling if the user clicks the prev or next button.
			carousel.buttonNext.bind('click', function() {
				carousel.startAuto(0);
			});

			carousel.buttonPrev.bind('click', function() {
				carousel.startAuto(0);
			});

			// Pause autoscrolling if the user moves with the cursor over the clip.
			carousel.clip.hover(function() {
				carousel.stopAuto();
			}, function() {
				carousel.startAuto();
			});
		};
		//--></script>