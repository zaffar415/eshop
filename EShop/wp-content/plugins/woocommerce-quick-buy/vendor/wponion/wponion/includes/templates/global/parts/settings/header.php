<?php
defined( 'ABSPATH' ) || exit;

/* @var \WPOnion\Theme\WP_Lite|\WPOnion\Theme\WP $this */
$module      = $this->module_instance();
$title       = $module->option( 'framework_title' );
$desc        = $module->option( 'framework_desc' );
$single_page = $module->is_single_page();
$search      = $module->option( 'search', true );
$search      = ( true === $search ) ? __( 'Search Option(s)', 'wponion' ) : $search;
$is_sticky   = $module->option( 'sticky_header', true );
$is_sticky   = ( true === $is_sticky ) ? 'header-sticky' : '';
?>
<header class="<?php echo $is_sticky; ?>">

	<div class="inner-container wpo-row wpo-middle-xs">

		<div class="left wpo-col-xs-12 wpo-col-sm-12 wpo-col-md-6">
			<?php
			echo ( ! empty( $title ) ) ? '<h1>' . $title . '</h1>' : '';
			echo ( ! empty( $desc ) ) ? '<p>' . $desc . '</p>' : '';
			?>
		</div>

		<div class="right wpo-col-xs-12 wpo-col-sm-12 wpo-col-md-6">
			<?php if ( false !== $single_page && false !== $search ) : ?>
				<div class="action-search">
					<div class="search-input-wrap">
						<input type="text" placeholder="<?php echo $search; ?>">
					</div>
				</div>
			<?php endif; ?>
			<div class="action-buttons">
				<?php echo $module->settings_button(); ?>
			</div>
		</div>
	</div>

</header>
