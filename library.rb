load 'book.rb'
load 'member.rb'

class Library
  # constructor method
  def initialize(location)
    @location = location
    @booksAvailable = []
    @memberList = []
  end

  #define private accessor methods
  def getLocation
    @location
  end

  #make them private
  private :getLocation

  def to_s
    "Location : Name - #{getLocation}"
  end

  def addBookToLibrary(aBook)
    @booksAvailable.push(aBook)
  end

  def enrollNewMember(member)
    @memberList.push(member)
  end

  def checkoutBook(aBook, aMember)
    cout = aBook.getIdCheckedOutBy
    if cout == 0
      aBook.checkedOutBy(aMember.getMemberId)
      puts "Book #{aBook} assigned to #{aMember}"
    else
      puts "Book has been checked out"
    end
  end

  def printBooksAvailable
    puts @booksAvailable
  end

  def printMemberList
    puts @memberList
  end
end

# create library
libHumble = Library.new("Humble")

#create 2 book objects, added another to test additional functions
book1 = Book.new("oval shape","triangle man",0)
book2 = Book.new("moby dick","dan smith",0)
book3 = Book.new("new book","helen keller",0)

#create 2 members
memb1 = Member.new("derek",2001)
memb2 = Member.new("june",1165)

#add books to library
libHumble.addBookToLibrary(book1)
libHumble.addBookToLibrary(book2)
libHumble.addBookToLibrary(book3)

#add members to list
libHumble.enrollNewMember(memb1)
libHumble.enrollNewMember(memb2)

#libHumble.printMemberList
libHumble.printBooksAvailable
puts ""

#book1.checkedOutBy(memb2.getMemberId)
#puts ""
#book2.checkedOutBy(memb1.getMemberId)
#puts ""

libHumble.printBooksAvailable
puts ""

libHumble.checkoutBook(book1, memb1)
puts ""
libHumble.checkoutBook(book2, memb2)
puts ""
libHumble.checkoutBook(book3, memb1)
puts ""

libHumble.printBooksAvailable
