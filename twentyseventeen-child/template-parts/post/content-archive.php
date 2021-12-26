<?php
/**
 * Template part for displaying video posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since Twenty Seventeen 1.0
 * @version 1.2
 */
?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
    <div class="vehicle_detail">
        <div class="vehicle_image">
            <?php the_post_thumbnail('thumbnail'); ?>
        </div>
        <div class="vehicle_detail_content">
            <div class="vehicle_title"><?php the_title('<h3>', '</h3>'); ?></div>
            <div class="vehicle_number"><?php echo get_post_meta(get_the_ID(), '_vehicle_number', true) ?></div>
            <div class="driver_name"><?php echo get_post_meta(get_the_ID(), '_driver_name', true) ?></div>
            <div class="content"><?php
            the_excerpt();
            ?>
            </div>
            <button class="more-details button">  <a class="more-details-link" href="<?php echo esc_url(get_permalink()); ?> "> View Details </a> </button>


        </div>
    </div>

</article><!-- #post-<?php the_ID(); ?> -->
