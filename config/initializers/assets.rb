# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( welcome.js )
Rails.application.config.assets.precompile += %w( jquery.ui.chatbox.js )
Rails.application.config.assets.precompile += %w( gamelobbies.js )
Rails.application.config.assets.precompile += %w( jquery-ui.js )
Rails.application.config.assets.precompile += %w( jquery.ui.chatbox.js )
Rails.application.config.assets.precompile += %w( login.js )
Rails.application.config.assets.precompile += %w( npm.js )
Rails.application.config.assets.precompile += %w( pusher.js )
Rails.application.config.assets.precompile += %w( chat.css )
Rails.application.config.assets.precompile += %w( gamechats.js )
# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( gamelobbies.css )
Rails.application.config.assets.precompile += %w( bootstrap-theme.min.css )
Rails.application.config.assets.precompile += %w( boostrap.min.css )
Rails.application.config.assets.precompile += %w( jquery-ui.css )
Rails.application.config.assets.precompile += %w( site.css )