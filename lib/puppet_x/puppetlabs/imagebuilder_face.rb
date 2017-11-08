require 'puppet/face'

module PuppetX
  module Puppetlabs
    class ImageBuilder::Face < Puppet::Face
      option '--maintainer STRING' do
        summary 'Name and email address for the maintainer of the resulting image'
      end

      option '--module-path PATH' do
        summary 'A path to a directory containing a set of modules to be copied into the image'
      end

      option '--expose STRING' do
        summary 'A list of ports to be exposed by the resulting image'
      end

      option '--volume STRING' do
        summary 'A list of volumes to be added to the resulting image'
      end

      option '--cmd STRING' do
        summary 'The default command to be executed by the resulting image'
      end

      option '--entrypoint STRING' do
        summary 'The default entrypoint for the resulting image'
      end

      option '--image-user STRING' do
        summary 'Specify a user to be used to run the container process'
      end

      option '--labels KEY=VALUE' do
        summary 'A set of labels to be applied to the resulting image'
      end

      option '--env KEY=VALUE' do
        summary 'A set of additional environment variables to be set in the resulting image'
      end

      option '--[no-]show-diff' do
        summary 'Enable or disable showing the diff when running Puppet to build the image'
        default_to { true }
      end

      option '--hiera-config STRING' do
        summary 'Hiera config file to use'
        default_to { 'hiera.yaml' }
      end

      option '--hiera-data STRING' do
        summary 'Hieradata directory to use'
        default_to { 'hieradata' }
      end

      option '--factfile STRING' do
        summary 'Enable use of factfile to install modules depending on facts during build'
        default_to { false }
      end

      option '--image-name STRING' do
        summary 'The name of the resulting image'
      end

      option '--config-file STRING' do
        summary 'A configuration file with all the metadata'
        default_to { 'metadata.yaml' }
      end

      option '--config-directory STRING' do
        summary 'A folder where metadata can be loaded from'
        default_to { 'metadata' }
      end

      option '--master STRING' do
        summary 'A Puppet Master to use for building images'
      end

      option '--label-schema' do
        summary 'Add label-schema compatible labels'
        default_to { false }
      end

      option '--puppet-debug' do
        summary 'Pass the debug flag to the Puppet process used to build the container image'
        default_to { false }
      end

      option '--squash' do
        summary 'Automatically squash all layers in the generated image'
        default_to { false }
      end
    end
  end
end
