module Database
  extend self
  require 'json'

  @contacts = [
    {
      "name" => "Zé",
      "phones" => ["932019234"],
      "emails" => ["ze@gmail.com"],
      "company" => "Talkdesk"
    }
  ]

  def all
    #
  end

  def getContact(name)
    for contact in @contacts do
      arr.select {|e| e%3 == 0}
    end
  end

  def find
    #
  end

  # Create contact
  def addContact(contact)
    new_contact = JSON.parse(contact)

    if new_contact["name"]= ""
      new_contact["name"] = new_contact["phones"][0]
    end

    @contacts.push(new_contact)
    contact + " was added."
  end

  def update
    # Your code..
  end

  def deleteContact(id)
    for contact in @contacts do
      if id == contact["id"]
        @contacts.delete_at(id)
      end
    end
  end
end
