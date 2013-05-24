#!/usr/bin/env ruby

class User < ActiveRecord::Base


  # def print_result
  #   all_users = User.all
  #   all_users.each_with_index do |user|
  #     clean_phone = user.phone.gsub(".","-")
  #     result = "\n==================\e[47m\nName:   #{user.firstname} #{user.lastname}\e[0m\nEmail:  #{user.email}\n\e[47mPhone:  #{clean_phone}\e[0m\nGithub: #{user.github}\n\e[47mTown:   #{user.part_of_town}\e[0m\n\n"
  #     puts "\nPhone Results#{result}"
  #   end
  # end


  # # def user_input_matches?(users)
  # #   field_types.any? { |contact_data| line[contact_data].downcase.include?(user_input.downcase) }
  # # end

  # def list_all_users
  #   # field_types.any? { |contact_data| line[contact_data].downcase.include?(user_input.downcase) }
  #   print_result
  # end

end
