<?php
/*
Template Name: My custom layout
Template Post Type: vehicle_details, post, page, product
*/
/**
 * The template for displaying archive pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since Twenty Seventeen 1.0
 * @version 1.0
 */
get_header();
?>
<div class="wrap">

    <?php if (have_posts()) : ?>
        <header class="page-header">
            <?php
            the_archive_title('<h1 class="page-title">', '</h1>');
            the_archive_description('<div class="taxonomy-description">', '</div>');
            ?>
        </header><!-- .page-header -->
    <?php endif; ?>

    <div id="primary" class="content-area">
        <main id="main" class="site-main" role="main">
            <?php echo do_shortcode('[vehicle_filteration_from]') ?>
            <div class="vehicle_details">
                <?php
                if (have_posts()) :
                    ?>
                    <?php
                    // Start the Loop.
                    while (have_posts()) :
                        the_post();
                        get_template_part( 'template-parts/post/content', 'archive' );                        
                    endwhile;

                    the_posts_pagination(
                            array(
                                'prev_text' => twentyseventeen_get_svg(array('icon' => 'arrow-left')) . '<span class="screen-reader-text">' . __('Previous page', 'twentyseventeen') . '</span>',
                                'next_text' => '<span class="screen-reader-text">' . __('Next page', 'twentyseventeen') . '</span>' . twentyseventeen_get_svg(array('icon' => 'arrow-right')),
                                'before_page_number' => '<span class="meta-nav screen-reader-text">' . __('Page', 'twentyseventeen') . ' </span>',
                            )
                    );

                else :

                    get_template_part('template-parts/post/content', 'none');

                endif;
                ?>
            </div>

        </main><!-- #main -->
    </div><!-- #primary -->
<?php get_sidebar(); ?>
</div><!-- .wrap -->

<?php
get_footer();
