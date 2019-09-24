module Database
  extend self

  @contacts = [
    {
      "id" => "1",
      "name" => "Ze",
      "phones" => ["932019234"],
      "emails" => ["ze@gmail.com"],
      "company" => "Talkdesk"
    }
  ]

  def all
    @contacts
  end

  def getContact(id)
    @contacts.find { |contact| contact["id"] == id }
  end

  # Create contact
  def addContact(id, name, phones, emails, company)
    new_contact = {
      "id" => id,
      "name" => name,
      "phones" => phones,
      "emails" => emails,
      "company" => company
    }

    if new_contact["name"] == ""
      new_contact["name"] = new_contact["phones"][0]
    end

    @contacts.push(new_contact)

    new_contact.to_s() + " added."
  end

  def updateContact(id, name, phones, emails, company)
    contact = @contacts.find { |contact| contact["id"] == id }

    contact["name"] = name unless name.nil?
    contact["phones"] = phones unless phones.nil?
    contact["emails"] = emails unless emails.nil?
    contact["company"] = company unless company.nil?

    contact
  end

  def deleteContact(id)
    for contact in @contacts do
      if id == contact["id"]
        @contacts.delete(contact)
      end
    end
  end

  def replaceContact(id, name, phones, emails, company)
    deleteContact(id)
    addContact(id, name, phones, emails, company)
  end
end
