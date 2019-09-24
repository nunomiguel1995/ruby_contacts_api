module Database
  extend self

  @contacts = [
    {
      :name => "Zé",
      :phones => ["932019234"],
      :emails => ["ze@gmail.com"],
      :company => "Talkdesk"
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

  def store
    # Your code..
  end

  def update
    # Your code..
  end

  def delete
    # Your code..
  end
end
