<?php echo $header; ?>
<div class="uk-container">
  <?php include_once("catalog/view/theme/upenkit/template/parts/breadcrumb.tpl"); ?>
  <div uk-grid>
      <?php include_once("catalog/view/theme/upenkit/template/parts/main_content_div.php"); ?>
      <?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <?php if ($recurrings) { ?>
      <div class="table-responsive">
        <table class="table table-bordered table-hover">
          <thead>
            <tr>
              <td class="text-right"><?php echo $column_order_recurring_id; ?></td>
              <td class="text-left"><?php echo $column_product; ?></td>
              <td class="text-left"><?php echo $column_status; ?></td>
              <td class="text-left"><?php echo $column_date_added; ?></td>
              <td class="text-right"></td>
            </tr>
          </thead>
          <tbody>
            <?php foreach ($recurrings as $recurring) { ?>
            <tr>
              <td class="text-right">#<?php echo $recurring['order_recurring_id']; ?></td>
              <td class="text-left"><?php echo $recurring['product']; ?></td>
              <td class="text-left"><?php echo $recurring['status']; ?></td>
              <td class="text-left"><?php echo $recurring['date_added']; ?></td>
              <td class="text-right"><a href="<?php echo $recurring['view']; ?>" data-toggle="tooltip" title="<?php echo $button_view; ?>" class="btn btn-info"><i class="fa fa-eye"></i></a></td>
            </tr>
            <?php } ?>
          </tbody>
        </table>
      </div>
      <div class="text-right"><?php echo $pagination; ?></div>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <?php } ?>
      <div class="buttons clearfix">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
