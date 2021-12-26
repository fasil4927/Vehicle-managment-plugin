<?php

class Transporter {

    public function __construct() {
        // admin side hooks
        add_action('init', array($this, 'setup_custom_post_type'));
        add_action('init', array($this, 'setup_custom_taxonomy_vehicle_type'), 0);
        add_action("add_meta_boxes", array($this, 'add_meta_boxes_custom_fields'));
        add_action('save_post', array($this, 'save_post_custom_meta'), 10, 1);

        // public side hooks
        add_action('pre_get_posts', array($this, 'filter_archive_content'));
        
        // shortcode for adding filteration form
        add_shortcode( 'vehicle_filteration_from', array($this, 'vehicle_filteration'));

    }

    /**
     * Register the "vehicle_details" custom post type
     * @since 1.0.0
     */
    public function setup_custom_post_type() {
        register_post_type('vehicle_details',
                array(
                    'labels' => array(
                        'name' => __('Vehicle details'),
                        'singular_name' => __('Vehicle Detail'),
                        'add_new' => _x('Add New', 'Vehicle'),
                        'add_new_item' => __('Add New Vehicle'),
                        'edit_item' => __('Edit Vehicle'),
                        'new_item' => __('New Vehicle'),
                        'all_items' => __('All Vehicles'),
                        'view_item' => __('View Vehicle'),
                        'search_items' => __('Search Vehicle'),
                        'not_found' => __('No Vehicles found'),
                        'not_found_in_trash' => __('No Vehicles found in the Trash'),
                        'parent_item_colon' => '',
                        'menu_name' => 'Vehicles'
                    ),
                    'public' => true,
                    'menu_icon' => 'dashicons-car',
                    'has_archive' => true,
                    'supports' => array('title', 'editor')
                )
        );
        add_post_type_support('vehicle_details', 'thumbnail');
    }

    /**
     * Taxonomy for categorize vehicle type.
     * 
     * @since 1.0.0
     */
    function setup_custom_taxonomy_vehicle_type() {
        $labels = array(
            'name' => _x('Vehicle Type', 'taxonomy general name'),
            'singular_name' => _x('Car Type', 'taxonomy singular name'),
            'search_items' => __('Search Vehicle type'),
            'all_items' => __('All Vehicle types'),
            'parent_item' => __('Parent Vehicle type'),
            'parent_item_colon' => __('Parent Vehicle type:'),
            'edit_item' => __('Edit Vehicle type'),
            'update_item' => __('Update Vehicle type'),
            'add_new_item' => __('Add New Vehicle type'),
            'new_item_name' => __('New Vehicle type Name'),
            'menu_name' => __('Vehicle types'),
        );

        // Now register the taxonomy
        register_taxonomy('vehicle_types', array('vehicle_details'), array(
            'hierarchical' => true,
            'labels' => $labels,
            'show_ui' => true,
            'show_in_nav_menus' => true,
            'show_in_rest' => true,
            'show_admin_column' => true,
            'query_var' => true,
            'rewrite' => array('slug' => 'vehicle_type'),
        ));
    }

    public function add_meta_boxes_custom_fields($post_type) {
        // see https://developer.wordpress.org/reference/functions/add_meta_box for a full explanation of each property   
        // Limit meta box to certain post types.
        $post_types = array('vehicle_details');

        if (in_array($post_type, $post_types)) {
            add_meta_box(
                    'vehicle_details',
                    __('Vehicle Details Addtional Data'),
                    array($this,'add_post_meta_custom_fields'),
                    $post_type,
                    'advanced',
                    'high'
            );
        }
    }

    public function add_post_meta_custom_fields($post) {
        // Adding nonce.
        wp_nonce_field('meta_custom_field_nonce', 'meta_custom_field_nonce');

        //retrieve an existing value from the database.
        $vehicle_number = get_post_meta($post->ID, '_vehicle_number', 1);
        $driver_name = get_post_meta($post->ID, '_driver_name', 1);

        // rendering additional meta fileld (with value if editing the post)
        ?>
        <fieldset>
            <table class="form-table" role="presentation">
                <tbody>
                    <tr>
                        <td class="first"><label for="vehicle_number"><?php _e('Vehicle number'); ?></label></td>
                        <td><input type="text" id="vehicle_number" name="vehicle_number" value="<?php echo esc_attr($vehicle_number); ?>" size="25" /></td>
                    </tr>                
                    <tr>
                        <td class="first"><label for="driver_name"><?php _e('Driver Name'); ?></label></td>
                        <td>
                            <input type="text" id="driver_name" name="driver_name" value="<?php echo esc_attr($driver_name); ?>" size="25" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </fieldset>		
        <?php
    }

    /**
     * Save the meta when the post is saved.
     *
     * @param int $post_id The ID of the post being saved.
     */
    public function save_post_custom_meta($post_id) {
        //    echo '<pre>';
        //    print_r($_POST);die();

        /*
         * If this is an autosave, our form has not been submitted,
         * so we don't want to do anything.
         */
        if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {
            return $post_id;
        }

        if (get_post_status($post_id) === 'auto-draft') {
            return;
        }

        // Check the user's permissions.
        if (!current_user_can('edit_post', $post_id)) {
            return $post_id;
        }

        // Verifying the nonce is valid.
        if (!wp_verify_nonce($_POST['meta_custom_field_nonce'], 'meta_custom_field_nonce')) {
            _e('nonce verify failed.');
            return $post_id;
        }

        // Sanitizing input and update the meta field.
        update_post_meta($post_id, '_vehicle_number', sanitize_text_field($_POST['vehicle_number']));
        update_post_meta($post_id, '_driver_name', sanitize_text_field($_POST['driver_name']));
    }

    public function filter_archive_content($query) {

        if (is_admin()) {
            return;
        }

        // setting custom post type vehicle_details as home page content 
        if ($query->get('page_id') == get_option('page_on_front')):
            $query->set('post_type', 'vehicle_details');
            $query->set('page_id', ''); //Empty
            //Set properties that describe the page to reflect that
            //we aren't really displaying a static page
            $query->is_page = 0;
            $query->is_singular = 0;
            $query->is_post_type_archive = 1;
            $query->is_archive = 1;

        endif;

        // filter the content if post type vehicle_details page and in home page
        if ('vehicle_details' == $query->query_vars['post_type'] || 'home' == get_post_field('post_name', $query->query_vars['page_id'])) {
            if (is_archive()) {
                if ('Search' === sanitize_text_field($_GET['filtering'])) {
                    // Verifying the nonce is valid.
                    if (!wp_verify_nonce($_GET['vehicle_search_form_nonce'], 'vehicle_search_form_nonce')) {
                        _e('nonce verify failed.');
                        return;
                    }
                    $vehicle_title = sanitize_text_field($_GET['vehicle_title']);
                    $vehicle_type = sanitize_text_field($_GET['vehicle_type']);
                    $vehicle_number = sanitize_text_field($_GET['vehicle_number']);
                    $driver_name = sanitize_text_field($_GET['driver_name']);

                    if (!empty($vehicle_title)) {
                        global $wpdb;
                        $mypostids = $wpdb->get_col("select ID from $wpdb->posts where post_title like '%$vehicle_title%' ");
                        $query->set('post__in', $mypostids);
                    }

                    if (!empty($vehicle_type)) {
                        $taxquery = array(
                            array(
                                'taxonomy' => 'vehicle_types',
                                'field' => 'slug',
                                'terms' => $vehicle_type,
                            ),
                        );
                        $query->set('tax_query', $taxquery);
                    }

                    if (!empty($vehicle_number)) {
                        $metaquery = array(
                            array(
                                'key' => '_vehicle_number',
                                'value' => $vehicle_number,
                                'compare' => 'LIKE',
                            ),
                        );
                        $query->set('meta_query', $metaquery);
                    }


                    if (!empty($driver_name)) {
                        $metaquery = array(
                            array(
                                'key' => '_driver_name',
                                'value' => $driver_name,
                                'compare' => 'LIKE',
                            ),
                        );
                        $query->set('meta_query', $metaquery);
                    }
                }
            }
        }
        //     echo '<pre>$query 2';
        //    print_r($query);                        

        return $query;
    }

    public function vehicle_filteration() {
        ?>
        <div class="vehicle_filtering">
            <fieldset>
                <form action="" method="GET">
        <?php
        wp_nonce_field('vehicle_search_form_nonce', 'vehicle_search_form_nonce');
        $vehicle_title = ($_GET['vehicle_title'] ? sanitize_text_field($_GET['vehicle_title']) : '');
        $vehicle_type = ($_GET['vehicle_type'] ? sanitize_text_field($_GET['vehicle_type']) : '');
        $vehicle_number = ($_GET['vehicle_number'] ? sanitize_text_field($_GET['vehicle_number']) : '');
        $driver_name = ($_GET['driver_name'] ? sanitize_text_field($_GET['driver_name']) : '');
        ?>
                    <div class="filter_form_row">
                        <table class="form-table" role="presentation">
                            <tbody>
                                <tr>
                                    <td class="first"><input type="text" id="vehicle_title" name="vehicle_title" value="<?php echo esc_attr($vehicle_title); ?>" size="25" placeholder="Vehicle Title" /></td>
                                    <td class="first" colspan="2"><?php
            $terms = get_terms(array('taxonomy' => 'vehicle_types', 'orderby' => 'name'));
            if (!empty($terms)) {
                ?>
                                            <select id="vehicle_type" class="vehicle_type" name="vehicle_type">
                                                <option value="">Select Type</option> 
                                            <?php
                                            foreach ($terms as $term) :
                                                echo '<option ' . ($vehicle_type == $term->slug ? ' selected' : '') . '  value="' . $term->slug . '">' . $term->name . '</option>';
                                            endforeach;
                                            ?>
                                            </select>
                                                <?php
                                            }
                                            ?>
                                    </td>
                                </tr>                
                                <tr>
                                    <td class="first"><input type="text" id="vehicle_number" name="vehicle_number" value="<?php echo esc_attr($vehicle_number); ?>" size="25" placeholder="Vehicle Number" /></td>
                                    <td class="first"><input type="text" id="driver_name" name="driver_name" value="<?php echo esc_attr($driver_name); ?>" size="25" placeholder="Driver Name" /></td>
                                    <td class="first"><button type="submit" name="filtering" value="Search" class="wp-block-search__button ">Filter Vehicle >></button></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </form>
            </fieldset>
        </div>

        <?php
    }

}

new Transporter();
