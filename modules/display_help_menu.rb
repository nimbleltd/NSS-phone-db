#!/usr/bin/env ruby

def display_help_menu
puts <<EOF
      _
 ___ | |_  ___ _ _ ___
| . \\| . |/ . \| ' / ._>
|  _/|_|_|\___/|_|_|\___.
|_|
EOF
  puts "\nHelp Menu"
  puts "============"
  puts "\e[47m-h, -help                  Returns this menu.\e[0m"
  puts "-i, in <file.csv>          Loads new data file into DB."
  puts "\e[47m-delete_all_records        Clears the DB of all data.\e[0m"
  # puts "\nSearch"
  # puts "========"
  # puts "Tip, if you search with 1 letter\nit will only search the first\nletter of the field.\n\n"
  # puts "If you search with more than 1\nletter it will match with any\ncharacter in the field.\n\n"
  puts "-fn <search term>          Searches in the fristname field."
  puts "\e[47m-ln <search term>          Searches in the lastname field.\e[0m"
  puts "-town <search term>        Searches in the town field."
  puts "\e[47m-list                      Lists every entry in the database.\e[0m"
  puts "-add                       Follow promts to enter user data."
  puts "\e[47m-remove <firstname>        Deletes user with confirmation.\e[0m\n\n"
end
