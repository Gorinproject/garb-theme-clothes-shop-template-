<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>

<div id="content3" style="padding:20px">
<div><a class="close" href=""><img src="catalog/view/theme/default/image/close.png" style="float:right;"width="11" height="11"/></a></div>
  <h1><?php echo $heading_title; ?></h1>
  <form id="formlogin" action="<?php echo $action; ?>_popup" method="post" enctype="multipart/form-data">
    <p style="margin-bottom:0px;"><?php echo $text_email; ?></p>
    <div class="content">
      <table class="form" style="margin-bottom:10px">
        <tr>
          <td><?php echo $entry_email; ?></td>
          <td><input type="text" name="email" value="" /></td>
        </tr>
      </table>
    </div>
    <div class="buttons" style="margin-bottom:0px;">
      <div class="left"><a onclick="dialogLoading();createDialog('<?php echo $back; ?>_popup'); return false;" href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
      <div class="right">
        <input type="submit" value="Отправить" class="button" />
      </div>
    </div>
  </form>
</div>

<script type="text/javascript"><!--
	jQuery('#formlogin').submit(function() {
    	var url = '<?php echo $action; ?>_popup';
    	submitDialogForm(url,'formlogin');      
    	return false;
	});
//--></script> 
