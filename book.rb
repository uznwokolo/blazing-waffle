

class Book
  # constructor method
  def initialize(id, title, author, outBy)     #adding book id and associated methods
    @bookId, @title, @author, @outBy = id, title, author, 0
  end

  #define private accessor methods
  def getTitle
    @title
  end
  def getAuthor
    @author
  end
  def getId
    @bookId
  end
  def getIdCheckedOutBy
    @outBy
  end


  #make them private
  private :getTitle, :getAuthor, :getId

  #instance method, by default it is public
  def to_s
    "Book : #{getId} - #{getTitle}"
  end

  def getBookTitle
    @getTitle
  end

  def getBookId
    @getId
  end

  def checkedOutBy(member_id) #this can be used to check out a book or return it
    @outBy = member_id        #if member_id is 0, it has been returned
  end

end

#b1 = Book.new("AS3394","James Bond", "Peter Fleming", 0) #added sample id

#puts b1

#puts b1.checkedOutBy(1123)
#puts b1.checkedOutBy(7898)
#puts b1.checkedOutBy(0)
