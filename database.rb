module Database
  extend self
  require 'json'

  @contacts = [
    {
      "name" => "Zé",
      "phones" => ["932019234"],
      "phones" => ["ze@gmail.com"],
      "company" => "Talkdesk"
    }
  ]

  def all
    # Your code..
  end

  def find
    # Your code..
  end

  # Create contact
  def storeContact(contact)
    new_contact = JSON.parse(contact)
    @contacts.push(new_contact)
    contact + " was added."
  end

  def update
    # Your code..
  end

  def delete
    # Your code..
  end
end
