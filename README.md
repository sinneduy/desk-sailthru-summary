desksum
=======

Use it to send a summary from desk.com (formerly assistly) with sailthru and twurl

Be sure to make the following updates:

1) update sail.rb with your api key/secret

2) install twurl (gem install twurl), sailthru (gem install sailthru) and json (gem install json)

3) update example.desk.com in getdesk.rb (there are 2 instances of this)

4) update summary.rb to the appropriate vars, email, and template

5) utilize presponse as a check for testing, but you should remove in production (and/or change to logging)

6) consider using the sailthrutemplate provided in Sailthru - averages time to open for each user as well as removes closed cases from the summary
