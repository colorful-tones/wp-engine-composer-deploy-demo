# WP Engine Composer Deploy Demo

A demonstration repository to show one way to manage dependencies with [Composer](https://getcomposer.org/) and continuously deploy (CD) to WP Engine.

Tutorial: ~~Using Composer to manage plugins and deploy to WP Engine~~ - Coming soon!

## Background

Each WordPress hosting provider organizes their WordPress installs a bit differently, and WP Engine is no exception. With this in mind - we hope to provide a clear setup for folks looking to use Composer for managing their WordPress plugins with the help of [WPackagist](https://wpackagist.org/).

Some information about the recommended setup:

- Use the [WP Engine GitHub Action for Site Deployment](https://github.com/marketplace/actions/deploy-wordpress-to-wp-engine). We highly recommend reading through the full documentation.
- __Do not version control the entire WordPress core installation.__ The more files in your repository the longer your deployments will take. Instead, only version control critical plugins and themes.
  - Consider using WP Engine's [automatic WordPress core updates](https://wpengine.com/support/wordpress-updates/#Automatic_WordPress_Core_Updates), or use [a staging environment](https://wpengine.com/support/environments/#About_Environments) to test your core updates and manually update WordPress.
  - Let Composer / WPackagist handle standard and stable plugin and/or theme updates.
    - You can even use [Composer to install ACF PRO](https://www.advancedcustomfields.com/resources/installing-acf-pro-with-composer/).

![PRD deployment status](https://github.com/colorful-tones/wp-engine-composer-deploy-demo/actions/workflows/production.yml/badge.svg) ![STG deployment status](https://github.com/colorful-tones/wp-engine-composer-deploy-demo/actions/workflows/staging.yml/badge.svg) ![DEV deployment status](https://github.com/colorful-tones/wp-engine-composer-deploy-demo/actions/workflows/development.yml/badge.svg)

(Create your own: [Adding a workflow status badge](https://docs.github.com/en/actions/monitoring-and-troubleshooting-workflows/adding-a-workflow-status-badge))
