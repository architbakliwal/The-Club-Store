<?php
  $this->language( 'module/themecontrol' );
  $objlang = $this->registry->get('language');
?>
<div id="topbar" class="topbar-v1">
  <div class="container">
    <div class="container-inner">
    <div class="row">
  <div class="login pull-right hidden-xs hidden-sm">
    <ol class="breadcrumb">
      <li><a class="" href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a class="wishlist" href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
      <?php if ($logged) { ?>
        <li>  <a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
        <?php } else { ?>
        <li>  <a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
        <li>  <a href="<?php echo $login; ?>"><?php echo $text_login; ?></a>  </li>
        <?php } ?>
    </ol>
  </div>
  <!-- Show Mobile -->          
      <div class="show-mobile hidden-lg hidden-md pull-right">     
        <div class="quick-user pull-left">
          <div class="quickaccess-toggle">
            <i class="fa fa-user"></i>                              
          </div>  
          <div class="inner-toggle">
            <div class="login links">
              <?php if ($logged) { ?>
                <a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
                <?php } else { ?>
                  <a href="<?php echo $register; ?>"><?php echo $text_register; ?></a>
                  <a href="<?php echo $login; ?>"><?php echo $text_login; ?></a>  
                <?php } ?> 
            </div>
          </div>            
        </div>
        <div class="quick-access pull-left">
          <div class="quickaccess-toggle">
            <i class="fa fa-list"></i>                              
          </div>  
          <div class="inner-toggle">
            <ul class="links pull-left">              
              <li><a class="wishlist" href="<?php echo $wishlist; ?>" id="mobile-wishlist-total"><i class="fa fa-list-alt"></i><?php echo $text_wishlist; ?></a></li>
              <li><a class="account" href="<?php echo $account; ?>"><i class="fa fa-user"></i><?php echo $text_account; ?></a></li>               
            </ul>
          </div>            
        </div> 
      </div>
    <!-- End -->
  <div class="current-lang pull-right" style="margin-right: 20px">
    <!-- search -->
    <?php
      if (count($autosearch) && !empty($autosearch)) {
        echo $autosearch;
      } else {
        echo $search;
      }
    ?>
    <div class="btn-group box-language">
        <?php echo $language; ?>
    </div>
    <!-- currency -->
    <div class="btn-group box-currency">
        <?php echo $currency; ?>
    </div>
  </div>
</div>
</div>
</div>
</div>