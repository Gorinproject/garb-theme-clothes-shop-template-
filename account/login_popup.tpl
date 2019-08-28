<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>

<div id="content2" style="padding: 20px;height:150px">
<div><a class="close" href= <? echo $_SERVER['HTTP_REFERER']; ?> ><img src="catalog/view/theme/default/image/close.png" style="float:right;"width="11" height="11"/></a></div>
  <h1 style="text-align:center;"><?php echo $heading_title; ?></h1>
  <div class="login-content" style="margin-bottom:0px;">
	 <form id="formlogin" action="<?php echo $action; ?>_popup" method="post" enctype="multipart/form-data">
        <div class="content">
			<table>
				<tr>
					<td>
						<b><?php echo $entry_email; ?></b><br /> 
						<input type="text" name="email" value="<?php echo $email; ?>" />
					</td>
					<td valign="bottom" style=" text-align: left;">
						<input type="submit" value="<?php echo $button_login; ?>" class="button" />
					</td>
				</tr>
				<tr>
					<td valign="bottom">
						<b><?php echo $entry_password; ?></b><br />
						<input type="password" style="text-align:left" name="password" value="<?php echo $password; ?>" />
					</td>
					<td valign="bottom"><a class="forgot" onclick="dialogLoading();createDialog('<?php echo $forgotten; ?>_popup'); return false;" href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
					</td>
				</tr>
			</table>
			<?php if ($redirect or 1==1) { 
$redirect = 'http://garb.com.ua/'; ?>
			<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
		    <?php } ?>
        </div>
      </form>
  </div>
 </div>
<script type="text/javascript"><!--
jQuery('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
jQuery('#formlogin').submit(function() {
    var url = '<?php echo $action; ?>_popup';
    submitDialogForm(url,'formlogin');      
    return false;
});

//--></script> 
