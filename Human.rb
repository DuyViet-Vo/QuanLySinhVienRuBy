class Human
    attr_accessor :name, :hair, :phone, :email, :nation,:height, :weight, :age
    def initialize(name, hair, weight, height, age, phone, email, nation)
        @name = name;
        @hair = hair;
        @weight = weight;
        @height = height;
        @age = age;
        @phone = phone;
        @email = email;
        @nation = nation;
    end
    
end
#class kế thừa từ Human
class Student < Human
    attr_accessor :pointLy, :pointToan ,:pointHoa,:dtb
    def diemTrungBinh(pointToan,pointLy,pointHoa)
        @pointToan = pointToan;
        @pointLy = pointLy;
        @pointHoa = pointHoa;
        @dtb = (pointToan+pointLy+pointHoa)*0.1/3
    end
    
    def show()
        puts ("Tên sinh viên : #{@name}, Hair : #{@hair}Weight: #{@weight}, Height : #{@height}, Tuổi : #{@age}, Phone : #{@phone}, Email : #{@email}, 
        Nation: #{@nation}, Điểm toán : #{@pointToan}, Điểm lý : #{@pointLy}, Điểm hoá : #{@pointHoa}, Điểm trung bình : #{@dtb}")
    end
end
a = Array.new()
student1 = Student.new("Việt", "đen", "60kg", "1m7", "21", "123141414242", "duyviet1810@", "kinh")
student1.diemTrungBinh(7,8,5)
a.push(student1)

student2 = Student.new("Lành", "đen", "48kg", "1m58", "21", "123141414242", "mailanh@", "kinh")
student2.diemTrungBinh(7,9,7)
a.push(student2)

student3 = Student.new("My", "đen", "50kg", "1m60", "18", "123141414242", "hoamy@", "kinh")
student3.diemTrungBinh(5,8,9)
a.push(student3)

a.each_index {
    |index|
    puts "#{a[index].show()}"
}

print "sắp xếp:\n"
for x in a.sort_by{|stu|[stu.dtb]} do
    puts "#{x.show}"
end