#!/usr/bin/env ruby

# require 'optparse'
require 'rubygems'
gem 'activerecord'
require 'sqlite3'
require 'active_record'
require 'csv'



	def write_user_info_to_db(filename)
      # unless user_input.nil?
      @file = CSV.open(filename, {:headers => true, :return_headers => true, :header_converters => :symbol})
	  @headers = @file.readline
        @file.each do |line|
          clean_phone = line[:phone].gsub(".","-")
          User.create(firstname: line[:first_name],
          			  lastname: line[:last_name],
          			  phone: clean_phone,
          			  email: line[:email],
          			  github: line[:github],
          			  part_of_town: line[:part_of_town])

        end
    end