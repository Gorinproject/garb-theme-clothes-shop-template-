<div class="box33">
  <div class="box-heading">Популярные товары</div>
  <div class="box-content">
    <div class="box-product">
      <?php foreach ($products as $product) { ?>
      <div>
        <?php if ($product['thumb']) { ?>
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
      </div>
      <?php } ?>
    </div>
  </div>
</div>
<div id="afterrr3k"></div>
