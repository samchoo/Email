require 'mail'

options = { :address              => "smtp.gmail.com",
            :port                 => 587,
            :domain               => 'gmail.com',
            :user_name            => 'NeubusNinja@gmail.com',
            :password             => 'hi my name is sam',
            :authentication       => 'plain',
            :enable_starttls_auto => true  }

#########################################################################################

require 'sqlite3'

# Open a SQLite 3 database file
db = SQLite3::Database.new '../../Calendar/db/development.sqlite3'

# Select command with SQL
result = db.execute <<-SQL
  SELECT * FROM events
SQL


result = db.execute <<-SQL
  SELECT * FROM events WHERE email == "bob@bob.com" 
SQL
print "#{result}"


#########################################################################################


=begin

Mail.defaults do
  delivery_method :smtp, options
end

Mail.deliver do
       to 'NeubusNinja@gmail.com'
     from 'NeubusNinja@gmail.com'
  subject 'testing sendmail'
     body 'testing sendmail'
end

=end