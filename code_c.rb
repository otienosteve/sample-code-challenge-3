class Notes
attr_accessor :title, :content, :date, :author 
@@all=[]


    def initialize (title,content,date,author)
        @title=title
        @content=content
        @date=date
        @author=author
        @@all <<self
    end


    def author_town
        Author.all.select { |ath| ath.town=="Kisumu" && @author==ath.name }
    end 
    
    def self.all
    @@all
    end
end


class Author

    attr_accessor :name, :town
    @@all =[]

    def initialize (name, town)
@name=name
@town=town
        @@all <<self
    end
    def self.all
        @@all
    end
end


nt1=Notes.new("Programming", "my content","10/28/2022","Steve" )
nt2=Notes.new("Programming 2", "my content 2","10/28/2022","Kevin")
nt3=Notes.new("Programming 3", "my content 3","10/28/2022","Steve")


at1=Author.new("Steve", "Kisumu")
at2=Author.new("Kevin", "Tharaka Nithi")

p Author.all
p nt1.author_town