#!/usr/bin/env ruby

# require 'optparse'
require 'rubygems'
gem 'activerecord'
require 'sqlite3'
require 'active_record'
require 'bundler/setup'
require 'csv'

class Phone
	attr_accessor :file
	attr_accessor :headers
	attr_accessor :name

	def user_input
	  ARGV[0]
	end

	def initialize
	  open_file
	  # puts "data file initialized..."
	end

	def open_file
	  filename = "/Users/happyDay/Downloads/nss-contact-info.csv"
	  # puts "Trying to open file with FasterCSV"
	  @file = CSV.open(filename, {:headers => true, :return_headers => true, :header_converters => :symbol})
	  @headers = @file.readline
	end

	def write_user_info_to_db(file)
      unless user_input.nil?
        @file.each do |line|
          clean_phone = line[:phone].gsub(".","-")
          result = "\n==================\e[47m\nName:   #{line[:first_name]} #{line[:last_name]}\e[0m\nEmail:  #{line[:email]}\n\e[47mPhone:  #{clean_phone}\e[0m\nGithub: #{line[:github]}\n\e[47mTown:   #{line[:part_of_town]}\e[0m\n\n"

          # [line[:first_name], line[:last_name], line[:part_of_town]].any? { |contact_data| contact_data.downcase.include?(user_input.downcase) }

          # [:first_name, :last_name, :part_of_town].any? { |contact_data| line[contact_data].downcase.include?(user_input.downcase) }

          # if user_input != 'all' && line[:first_name].downcase.include?(user_input.downcase) || line[:last_name].downcase.include?(user_input.downcase) || line[:part_of_town].downcase.include?(user_input.downcase)

          if user_input != 'all' && user_input_matches?(line, :first_name, :last_name, :part_of_town)

            puts "\nPhone Results#{result}"
          # elsif i > 25
          #   puts "\e[31m***   Unable to find #{user_input}, please check spelling.   ***\e[0m"
          elsif user_input.downcase == "all"
            puts result
          end
        end
      end
    end


end