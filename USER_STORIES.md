User Stories for 'phone'
==============================

As a business owner or team manager <br />
I want my team to have access to contact information quickly <br />
In order to connect my staff to phone I can easily upload a CSV file using the following command.

phone -i <path to csv file>

from that point on all staff can acess the information they need to contact someone quickly.

<hr />

As an employee of a firm using 'phone' <br />
I want to be able to contact my peers and project managers quickly.  
To access my staff contacts I can 

  - Run `phone -fn <firstname or a partial of firstname>`
  - Run `phone -ln <lastname or a partial of lastname>`

<hr />

As an employee I would like to find people who live near me for carpool needs <br />

- Run `phone -ln <town or a partial of town>`

<hr />

As the assistant to the CEO of my company I would like to be able to upadte the 'phone' db easily <br />
I can add or remove users individually or reload an all new csv.

- Run `phone -remove <case sensetive firstname>`
- Run `phone -add <follow promts and enter data>`
- Run `phone -i <staff_info_.csv>     destroys all data then imports data from new csv`
- Run `phone -delete_all_records        deletes all entries into the db.`
 
I am an administrative user and would like to print every staff members contact info.

- Run `phone -list       will list all data`



