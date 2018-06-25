class  Person:
    name = ""
    age = 0 #Параметр
    
    def __init__(self, name, age): #Конструктор
        self.name = name
        self.age = age

    def set(self, name, age): #Метод
        self.name = name
        self.age = age

class Student (Person): #Наследование
    course = 0

    def set(self, name, age, course): #Переопределение метода (Полиморфизм)
        self.name = name
        self.age = age
        self.course = course

igor = Student()
igor.set("Игорь", 19, 2)
print(igor.name + " " + str(igor.age) + " " + str(igor.course))

vlad = Person("Влад", 25) #Использование конструктора
print(vlad.name + " " + str(vlad.age))
