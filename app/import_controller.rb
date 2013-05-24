#!/usr/bin/env ruby

# require 'optparse'
require 'rubygems'
gem 'activerecord'
require 'sqlite3'
require 'active_record'
require 'bundler/setup'
require 'csv'

class Phone
	# attr_accessor :file
	# attr_accessor :headers
	# attr_accessor :name

	# def open_file
	#   filename = "/Users/happyDay/Downloads/nss-contact-info.csv"
	#   # puts "Trying to open file with FasterCSV"
	#   @file = CSV.open(filename, {:headers => true, :return_headers => true, :header_converters => :symbol})
	#   @headers = @file.readline
	# end

	# def write_user_info_to_db(filename)
 #      # unless user_input.nil?
 #      @file = CSV.open(filename, {:headers => true, :return_headers => true, :header_converters => :symbol})
	#   @headers = @file.readline
 #        @file.each do |line|
 #          clean_phone = line[:phone].gsub(".","-")
 #          User.create(firstname: line[:first_name],
 #          			  lastname: line[:last_name],
 #          			  phone: clean_phone,
 #          			  email: line[:email],
 #          			  github: line[:github],
 #          			  part_of_town: line[:part_of_town])

 #        end
 #    end
end
