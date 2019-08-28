    <?php foreach ($products as $product) { ?>
    <div>
      <?php if ($product['thumb']) { ?>
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
	  <span style="width: 15px;height: 15px;position: absolute;opacity: 1;bottom: 10px;right: 15px;border-radius: 10px;background: url('catalog/view/theme/default/image/<?php echo $product['sost3']; ?>.png')"></span>
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
      <div class="description"><?php echo $product['description']; ?></div>
      <?php if ($product['price']) { ?>
      <div class="price">
        <?php if (!$product['special']) { ?>
        <?php echo $product['price']; ?>
        <?php } else { ?>
        <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
        <?php } ?>
        <?php if ($product['tax']) { ?>
        <br />
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
        <?php } ?>
      </div>
      <?php } ?>
	  <div class="cart">
	  <?php if ($product['quantity'] > 0) { ?>    
        <input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" />
	  <?php } else { ?>	
	  <span style="display: block;color:#666;padding-top:6px;">Нет в наличии</span>
	  <?php } ?>
	  </div>
    </div>
    <?php } ?>