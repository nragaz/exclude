Exclude
=======

The inverse of `select` on an ActiveRecord::Relation. Use to avoid loading large columns (e.g. texts or blobs).

See [exclude.rb](https://github.com/nragaz/exclude/blob/master/lib/exclude.rb) for a full example.

Usage
-----

    create_table "users" do |t|
      t.string "name"
      t.text   "notes"
    end
    
    class User < ActiveRecord::Base
      include Exclude
    end
    
    # User.exclude('notes') => "SELECT users.name FROM users"
