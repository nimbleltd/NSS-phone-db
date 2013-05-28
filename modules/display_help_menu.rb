#!/usr/bin/env ruby

def display_help_menu
puts <<EOF
      _
 ___ | |_  ___ ._ _  ___
| . \| . |/ . \| ' / ._>
|  _/|_|_|\___/|_|_|\___.
|_|
EOF
	puts "\nPhone Help Menu"
	puts "==============="
	puts "-h, -help                  Returns this menu."
	puts "-i, in <file.csv>          Destroys current data and loads new data file into SQLite3 DB."
	puts "-delete_all_records        Clears the DB of all data."
	puts "\nSearch"
	puts "======"
	# puts "Tip, if you search with 1 letter\nit will only search the first\nletter of the field.\n\n"
	# puts "If you search with more than 1\nletter it will match with any\ncharacter in the field.\n\n"
	puts "-fn <search term>          Searches in the fristname field."
	puts "-ln <search term>          Searches in the lastname field."
	puts "-town <search term>        Searches in the town field."
	puts "-list                      Lists every entry in the database\n\n"
end
