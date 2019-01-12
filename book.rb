

class Book
  # constructor method
  def initialize(title, author, outBy)
    @title, @author, @outBy = title, author, 0
  end

  #define private accessor methods
  def getTitle
    @title
  end
  def getAuthor
    @author
  end
  def getIdCheckedOutBy
    @outBy
  end


  #make them private
  private :getTitle, :getAuthor

  #instance method, by default it is public
  def to_s
    "Book : Title - #{getTitle}"
    #"Author - #{getAuthor},
    #Checked out by - #{getIdCheckedOutBy}"
  end

  def getBookTitle
    @getTitle
  end

  def checkedOutBy(member_id) #this can be used to check out a book or return it
    @outBy = member_id        #if member_id is 0, it has been returned
  end

end

#b1 = Book.new("James Bond", "Peter Fleming", 0)

#puts b1

#puts b1.checkedOutBy(1123)
#puts b1.checkedOutBy(7898)
#puts b1.checkedOutBy(0)
