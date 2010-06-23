CREATE TABLE `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `state_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addresses_on_firstname` (`firstname`),
  KEY `index_addresses_on_lastname` (`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=1072978401 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `adjustments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `adjustment_source_id` int(11) DEFAULT NULL,
  `adjustment_source_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_adjustments_on_order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1073043777 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `viewable_id` int(11) DEFAULT NULL,
  `viewable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_size` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `type` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_updated_at` datetime DEFAULT NULL,
  `attachment_width` int(11) DEFAULT NULL,
  `attachment_height` int(11) DEFAULT NULL,
  `alt` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_assets_on_viewable_id` (`viewable_id`),
  KEY `index_assets_on_viewable_type_and_type` (`viewable_type`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=1027 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `tagline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `blog_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `blog_entries_products` (
  `blog_entry_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `calculators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calculable_id` int(11) NOT NULL,
  `calculable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=574015645 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `checkouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `special_instructions` text COLLATE utf8_unicode_ci,
  `bill_address_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `shipping_method_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_checkouts_on_order_id` (`order_id`),
  KEY `index_checkouts_on_bill_address_id` (`bill_address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1071479361 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `blog_entry_id` int(11) DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `approved` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_configurations_on_name_and_type` (`name`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numcode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `combine` tinyint(1) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `starts_at` datetime DEFAULT NULL,
  `promoted_id` int(11) DEFAULT NULL,
  `promoted_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=713097209 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `creditcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` text COLLATE utf8_unicode_ci,
  `month` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verification_value` text COLLATE utf8_unicode_ci,
  `cc_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_digits` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `start_month` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `gateway_customer_profile_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gateway_payment_profile_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) DEFAULT '1',
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'development',
  `server` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'test',
  `test_mode` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `inquiries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inquiry_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `inventory_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lock_version` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `return_authorization_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_inventory_units_on_variant_id` (`variant_id`),
  KEY `index_inventory_units_on_order_id` (`order_id`),
  KEY `index_inventory_units_on_shipment_id` (`shipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=473 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_line_items_on_order_id` (`order_id`),
  KEY `index_line_items_on_variant_id` (`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1070870202 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `mailing_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `open_id_authentication_associations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issued` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assoc_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `server_url` blob,
  `secret` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `open_id_authentication_nonces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) NOT NULL,
  `server_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=935339118 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `option_types_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `option_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_type_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `presentation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=979459987 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `option_values_variants` (
  `variant_id` int(11) DEFAULT NULL,
  `option_value_id` int(11) DEFAULT NULL,
  KEY `index_option_values_variants_on_variant_id` (`variant_id`),
  KEY `index_option_values_variants_on_variant_id_and_option_value_id` (`variant_id`,`option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `number` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adjustment_total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `credit_total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `completed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_orders_on_number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=1069267033 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `show_in_header` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_footer` tinyint(1) NOT NULL DEFAULT '0',
  `foreign_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `visible` tinyint(1) DEFAULT '1',
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_pages_on_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) DEFAULT '1',
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'development',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `display` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=842616224 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payable_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `payable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `owner_id` int(11) NOT NULL,
  `owner_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `group_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_preferences_on_owner_and_attribute_and_preference` (`owner_id`,`owner_type`,`attribute`,`group_id`,`group_type`)
) ENGINE=InnoDB AUTO_INCREMENT=243735692 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `product_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_product_groups_on_name` (`name`),
  KEY `index_product_groups_on_permalink` (`permalink`)
) ENGINE=InnoDB AUTO_INCREMENT=1071416406 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `product_groups_products` (
  `product_id` int(11) DEFAULT NULL,
  `product_group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `product_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=856797680 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `product_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_product_properties_on_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1067875250 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `product_scopes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_group_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `arguments` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_product_scopes_on_name` (`name`),
  KEY `index_product_scopes_on_product_group_id` (`product_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1020499699 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `available_on` datetime DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count_on_hand` int(11) NOT NULL DEFAULT '0',
  `show_on_homepage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_products_on_available_on` (`available_on`),
  KEY `index_products_on_deleted_at` (`deleted_at`),
  KEY `index_products_on_name` (`name`),
  KEY `index_products_on_permalink` (`permalink`)
) ENGINE=InnoDB AUTO_INCREMENT=1060500593 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `products_taxons` (
  `product_id` int(11) DEFAULT NULL,
  `taxon_id` int(11) DEFAULT NULL,
  KEY `index_products_taxons_on_product_id` (`product_id`),
  KEY `index_products_taxons_on_taxon_id` (`taxon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `promotions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `promoted_id` int(11) DEFAULT NULL,
  `promoted_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `combine` tinyint(1) DEFAULT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_promotions_on_promoted_id_and_promoted_type` (`promoted_id`,`promoted_type`),
  KEY `index_promotions_on_promoted_type_and_promoted_id` (`promoted_type`,`promoted_id`),
  KEY `index_promotions_on_name` (`name`),
  KEY `index_promotions_on_zone_id` (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `promotions_users` (
  `user_id` int(11) DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  KEY `index_promotions_users_on_user_id` (`user_id`),
  KEY `index_promotions_users_on_promotion_id` (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=905834903 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `properties_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `prototypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=571598465 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `queued_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object` text COLLATE utf8_unicode_ci,
  `mailer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `relation_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `applies_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relation_type_id` int(11) DEFAULT NULL,
  `relatable_id` int(11) DEFAULT NULL,
  `relatable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `related_to_id` int(11) DEFAULT NULL,
  `related_to_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `discount_amount` decimal(8,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `return_authorizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `order_id` int(11) DEFAULT NULL,
  `reason` text COLLATE utf8_unicode_ci,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `roles_users` (
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `index_roles_users_on_role_id` (`role_id`),
  KEY `index_roles_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `shipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `shipping_method_id` int(11) DEFAULT NULL,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` decimal(8,2) DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shipments_on_number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=1053930496 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `shipping_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=727197547 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `shipping_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=574015645 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `shipping_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_category_id` int(11) DEFAULT NULL,
  `shipping_method_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `similarities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `similar_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `snippets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `state_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stateful_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `previous_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stateful_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1061493668 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `mailing_list_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_subscriptions_on_user_id` (`user_id`),
  KEY `index_subscriptions_on_mailing_list_id` (`mailing_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `taggable_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taggings_on_tag_id` (`tag_id`),
  KEY `index_taggings_on_taggable_id_and_taggable_type` (`taggable_id`,`taggable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `kind` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `index_tags_on_name_and_kind` (`name`,`kind`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `tax_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=698318841 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `tax_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_id` int(11) DEFAULT NULL,
  `amount` decimal(8,4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `taxonomies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=854451431 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `taxons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxonomy_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `icon_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_file_size` int(11) DEFAULT NULL,
  `icon_updated_at` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_taxons_on_permalink` (`permalink`),
  KEY `index_taxons_on_parent_id` (`parent_id`),
  KEY `index_taxons_on_taxonomy_id` (`taxonomy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3031 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `analytics_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `txn_type` int(11) DEFAULT NULL,
  `response_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avs_response` text COLLATE utf8_unicode_ci,
  `cvv_response` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `original_creditcard_txn_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crypted_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token_expires_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `persistence_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `single_access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `perishable_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_count` int(11) NOT NULL DEFAULT '0',
  `failed_login_count` int(11) NOT NULL DEFAULT '0',
  `last_request_at` datetime DEFAULT NULL,
  `current_login_at` datetime DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `current_login_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `openid_identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_key` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_openid_identifier` (`openid_identifier`),
  KEY `index_users_on_persistence_token` (`persistence_token`)
) ENGINE=InnoDB AUTO_INCREMENT=1068482858 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `variants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `price` decimal(8,2) NOT NULL,
  `weight` decimal(8,2) DEFAULT NULL,
  `height` decimal(8,2) DEFAULT NULL,
  `width` decimal(8,2) DEFAULT NULL,
  `depth` decimal(8,2) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_master` tinyint(1) DEFAULT '0',
  `count_on_hand` int(11) NOT NULL DEFAULT '0',
  `cost_price` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_variants_on_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1025786065 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `zone_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_id` int(11) DEFAULT NULL,
  `zoneable_id` int(11) DEFAULT NULL,
  `zoneable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1017582645 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO schema_migrations (version) VALUES ('20080707170156');

INSERT INTO schema_migrations (version) VALUES ('20080707170333');

INSERT INTO schema_migrations (version) VALUES ('20081004123517');

INSERT INTO schema_migrations (version) VALUES ('20081216193152');

INSERT INTO schema_migrations (version) VALUES ('20090115133136');

INSERT INTO schema_migrations (version) VALUES ('20090115133647');

INSERT INTO schema_migrations (version) VALUES ('20090120110819');

INSERT INTO schema_migrations (version) VALUES ('20090610074613');

INSERT INTO schema_migrations (version) VALUES ('20090615031927');

INSERT INTO schema_migrations (version) VALUES ('20090623182411');

INSERT INTO schema_migrations (version) VALUES ('20090625125735');

INSERT INTO schema_migrations (version) VALUES ('20090814113100');

INSERT INTO schema_migrations (version) VALUES ('20090814142845');

INSERT INTO schema_migrations (version) VALUES ('20090823005402');

INSERT INTO schema_migrations (version) VALUES ('20090829000527');

INSERT INTO schema_migrations (version) VALUES ('20090904192342');

INSERT INTO schema_migrations (version) VALUES ('20090923100315');

INSERT INTO schema_migrations (version) VALUES ('20091007134354');

INSERT INTO schema_migrations (version) VALUES ('20091008091614');

INSERT INTO schema_migrations (version) VALUES ('20091012120519');

INSERT INTO schema_migrations (version) VALUES ('20091015110842');

INSERT INTO schema_migrations (version) VALUES ('20091015153048');

INSERT INTO schema_migrations (version) VALUES ('20091016174634');

INSERT INTO schema_migrations (version) VALUES ('20091017175558');

INSERT INTO schema_migrations (version) VALUES ('20091020191630');

INSERT INTO schema_migrations (version) VALUES ('20091021133257');

INSERT INTO schema_migrations (version) VALUES ('20091023123328');

INSERT INTO schema_migrations (version) VALUES ('20091104151730');

INSERT INTO schema_migrations (version) VALUES ('20091126190904');

INSERT INTO schema_migrations (version) VALUES ('20091203141611');

INSERT INTO schema_migrations (version) VALUES ('20091209153045');

INSERT INTO schema_migrations (version) VALUES ('20091209202200');

INSERT INTO schema_migrations (version) VALUES ('20091211203813');

INSERT INTO schema_migrations (version) VALUES ('20091212161118');

INSERT INTO schema_migrations (version) VALUES ('20091213222815');

INSERT INTO schema_migrations (version) VALUES ('20091214183826');

INSERT INTO schema_migrations (version) VALUES ('20091215000156');

INSERT INTO schema_migrations (version) VALUES ('20091219021134');

INSERT INTO schema_migrations (version) VALUES ('20100104023302');

INSERT INTO schema_migrations (version) VALUES ('20100105090147');

INSERT INTO schema_migrations (version) VALUES ('20100105132138');

INSERT INTO schema_migrations (version) VALUES ('20100107141738');

INSERT INTO schema_migrations (version) VALUES ('20100111205525');

INSERT INTO schema_migrations (version) VALUES ('20100112151511');

INSERT INTO schema_migrations (version) VALUES ('20100113090919');

INSERT INTO schema_migrations (version) VALUES ('20100113203104');

INSERT INTO schema_migrations (version) VALUES ('20100121160010');

INSERT INTO schema_migrations (version) VALUES ('20100121183934');

INSERT INTO schema_migrations (version) VALUES ('20100125145351');

INSERT INTO schema_migrations (version) VALUES ('20100126103714');

INSERT INTO schema_migrations (version) VALUES ('20100204105222');

INSERT INTO schema_migrations (version) VALUES ('20100209025806');

INSERT INTO schema_migrations (version) VALUES ('20100209144531');

INSERT INTO schema_migrations (version) VALUES ('20100213103131');

INSERT INTO schema_migrations (version) VALUES ('20100214212536');

INSERT INTO schema_migrations (version) VALUES ('20100223170312');

INSERT INTO schema_migrations (version) VALUES ('20100223183812');

INSERT INTO schema_migrations (version) VALUES ('20100224153127');

INSERT INTO schema_migrations (version) VALUES ('20100301163454');

INSERT INTO schema_migrations (version) VALUES ('20100306153445');

INSERT INTO schema_migrations (version) VALUES ('20100308090631');

INSERT INTO schema_migrations (version) VALUES ('20100308092101');

INSERT INTO schema_migrations (version) VALUES ('20100317120946');

INSERT INTO schema_migrations (version) VALUES ('20100324123835');

INSERT INTO schema_migrations (version) VALUES ('20100416144427');

INSERT INTO schema_migrations (version) VALUES ('20100427121301');

INSERT INTO schema_migrations (version) VALUES ('20100430103442');

INSERT INTO schema_migrations (version) VALUES ('20100504142133');

INSERT INTO schema_migrations (version) VALUES ('20100506180619');

INSERT INTO schema_migrations (version) VALUES ('20100506185838');

INSERT INTO schema_migrations (version) VALUES ('20100528000000');

INSERT INTO schema_migrations (version) VALUES ('20100528155333');

INSERT INTO schema_migrations (version) VALUES ('20100528185820');

INSERT INTO schema_migrations (version) VALUES ('20100605152042');