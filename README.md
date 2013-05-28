phone
=====================

Purpose
-------

Allow users to load data into the phone data base and find users contact info quickly 
by searching for firstname, lastname or town.

Features
--------
The main features of `phone` is to store and display the contact information of users 
based on the search results of firstname, lastname and town.

Usage Instructions
------------------
Planned usage is as follows:

load csv file:

    > phone -i <staff_info.csv>

Search for user by firstname, lastname and town:

    > phone -fn <firstname search string>
    > phone -ln <lastname search string>
    > phone -town <town search string>
    
Add/Remove user:

    > phone -add       follow prompts
    > phone -remove <case sensetive firstname>


Demo
----
Download and try for yourself.

Known Bugs
----------
Needs to have validation added.

Author
------

Paul Campbell

Changelog
---------

5/9/2013 - Created initial repository with README and user stories, as per students' assignment for 5/10

License
-------
Copyright (c) 2013 Paul Campbell

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
