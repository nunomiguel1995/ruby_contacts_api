module Database
  extend self
  require 'json'

  @contacts = [
    {
      "name" => "Ze",
      "phones" => ["932019234"],
      "phones" => ["ze@gmail.com"],
      "company" => "Talkdesk"
    }
  ]

  def all
    #
  end

  def getContact(name)
    @contacts.find { |contact| contact["name"] == name }
  end

  def find
    #
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
