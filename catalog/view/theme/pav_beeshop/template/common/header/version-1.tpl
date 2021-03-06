<?php
  $this->language( 'module/themecontrol' );
  $objlang = $this->registry->get('language');
  $megamenu = $helper->renderModule('pavmegamenu');
  $autosearch = $helper->renderModule('pavautosearch');
  $verticalmenu = $helper->renderModule('pavverticalmenu');
  if( isset($_COOKIE[$themeName .'_skin']) && $_COOKIE[$themeName .'_skin'] ){
    $skin = trim($_COOKIE[$themeName .'_skin']);
  }
?>

<div id="header-layout" class="header-v1">
 <?php  require( ThemeControlHelper::getLayoutPath( 'common/addon/topbar-v1.tpl' ) );?>    
    

    <div id="header-bot" class="hidden-xs hidden-sm">
      <div class="container">
        <div class="row">
        <div class="logo inner  col-lg-1 col-md-1 col-sm-12 col-xs-12">
            <?php if( $logoType=='logo-theme'){ ?>
            <div id="logo-theme" class="logo-store pull-left">
                <a href="<?php echo $home; ?>">
                    <span><?php echo $name; ?></span>
                </a>
            </div>
            <?php } elseif ($logo) { ?>
            <div id="logo" class="logo-store pull-left"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" height="100px" style="margin: -20px 0px"/></a></div>
            <?php } ?>
        </div>
        <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
        <div id="pav-mainnav" class="hidden-xs hidden-sm">
          
          <?php
          /**
          * Main Menu modules: as default if do not put megamenu, the theme will use categories menu for main menu
          */
          if (count($megamenu) && !empty($megamenu)) { echo $megamenu;?>
          <?php } elseif ($categories) { ?>
          <nav id="menu" class="navbar navbar-default">
            <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
              <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
              <ul class="nav navbar-nav">
                <?php foreach ($categories as $category) { ?>
                <?php if ($category['children']) { ?>
                <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
                <div class="dropdown-menu">
                  <div class="dropdown-inner">
                    <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                    <ul class="list-unstyled">
                      <?php foreach ($children as $child) { ?>
                      <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                      <?php } ?>
                    </ul>
                    <?php } ?>
                  </div>
                  <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
                </li>
                <?php } else { ?>
                <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                <?php } ?>
                <?php } ?>
              </ul>
            </div>
          </nav>
          <?php } ?>
        </div>
        </div>
        <div class=" inner col-lg-3 col-md-3 col-sm-12">
          <div class="bg-over-lay"></div>
          <div id="cart-top" class="pull-right cart-right">
            <div class="cart-top">
                <?php echo $cart; ?>
            </div>
          </div>
        </div>
      </div>
      </div>
    </div>
</div>