#!/usr/bin/env ruby

# require 'optparse'
require 'rubygems'
gem 'activerecord'
require 'sqlite3'
require 'active_record'
require 'csv'

# Called to print the results of the search
def print_resuslts(user)
    clean_phone = user.phone.gsub(".","-")
    result = "\n==================\e[47m\nName:   #{user.firstname} #{user.lastname}\e[0m\nEmail:  #{user.email}\n\e[47mPhone:  #{clean_phone}\e[0m\nGithub: #{user.github}\n\e[47mTown:   #{user.part_of_town}\e[0m\n\n"
    puts "\nPhone Results#{result}"
end

#Called to print all users in DB
def list_all_users
  all_users = User.all
  all_users.each_with_index do |user|
    print_resuslts(user)
  end
end

# Print to the screen search results for -fn, -ln, and -town
def search_results(flag, search_string)
  # field_types.any? { |contact_data| line[contact_data].downcase.include?(user_input.downcase) }
  unless search_string.nil?
    field_from_user = search_string
    all_users = User.all
    how_many_users_did_i_find = 0
    all_users.each do |user|
      if flag == "-fn"
        fieldname = user.firstname.downcase
      elsif flag == "-ln"
        fieldname = user.lastname.downcase
      elsif flag == "-town"
        fieldname = user.part_of_town.downcase
      end
      if field_from_user.length > 1
        if fieldname.include?(field_from_user.downcase)
          print_resuslts(user)
          how_many_users_did_i_find += 1
        end
      elsif fieldname.chars.first.include?(field_from_user.chars.first.downcase)
          print_resuslts(user)
          how_many_users_did_i_find += 1
      end
    end
    if how_many_users_did_i_find == 0
      puts "\nUnable to find the search string \"#{field_from_user}\" in the database.\nPlease check your spelling and try again.\n\n"
    end
    puts "results total: #{how_many_users_did_i_find}\n\n"
  end
  if field_from_user == nil
    puts "#{empty_string_error}"
  end
end

# def search_result_take_two(flag, user_input)
#   unless user_input.nil?
#     all_users = User.all
#     all_users.each_with_index do |user|
#       clean_phone = user.phone.gsub(".","-")
#       result = "\n==================\e[47m\nName:   #{user.firstname} #{user.lastname}\e[0m\nEmail:  #{user.email}\n\e[47mPhone:  #{clean_phone}\e[0m\nGithub: #{user.github}\n\e[47mTown:   #{user.part_of_town}\e[0m\n\n"
#       puts "\nPhone Results#{result}"

#       if flag?("-fn", "-ln", "-town")

#         puts "\nPhone Results#{result}"
#       end
#     end
#   end
# end
