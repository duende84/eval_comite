# encoding: utf-8

class ImageClientUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Include the Sprockets helpers for Rails 3.1+ asset pipeline compatibility:
  # include Sprockets::Helpers::RailsHelper
  # include Sprockets::Helpers::IsolatedHelper

  # Choose what kind of storage to use for this uploader:
  # storage :file
  storage :fog


  # Configure uploads to be stored in a public Cloud Files container
  def fog_directory
    if Rails.env.production?
      'evaluacion_cgc'
    else
      'evaluacion_cgc_dev'
    end
  end

 # Configure uploads to be delivered over Rackspace CDN
  def assets_host
    if Rails.env.production?
      "https://c900c2a8334943355e88-c24337ec090aea8c35b81112e55a5313.ssl.cf1.rackcdn.com"
    else
      "https://c2bd8fd03b1f39aa0c3b-7f6e25434571eac0cf2b9b37de6df8e6.ssl.cf1.rackcdn.com"
    end
  end

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
   version :thumb do
     process :resize_to_limit => [200, 200]
   end

   version :show do
     process :resize_to_limit => [600, 600]
   end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
   def extension_white_list
     %w(jpg jpeg gif png)
   end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
