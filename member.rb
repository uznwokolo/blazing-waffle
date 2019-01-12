

class Member
  # constructor method
  def initialize(name, id)
    @memberName, @memberId = name, id
  end

  #define private accessor methods
  def getName
    @memberName
  end
  def getId
    @memberId
  end
  #make them private
  private :getName, :getId

  def to_s
    "Member : ID - #{getId}" #", Name - #{getName}"
  end

  def getMemberId
    getId
  end
  def getMemberName
    getName
  end

end
