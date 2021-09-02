import os

class Contact:
    contact_list = []

    def __init__(self, name, phone_number, email, addr):
        self.name=name
        self.phone_name=phone_number
        self.email=email
        self.addr=addr

    def print_info(self):
        print("이름:", self.name)
        print("전화번호:", self.phone_name)
        print("이메일:", self.email)
        print("주소;", self.addr)
        print("----------------------------------------------")

    @classmethod
    def save_contacts(cls,name,phone_number,email,addr):
        cls.contact_list.append([name,phone_number,email,addr])
        print("----------------------------------------------")

    @classmethod
    def print_contacts(cls):
        if not cls.contact_list:
            print("리스트가 비어있습니다.")
        else:
            print("이름\t\t\t전화번호\t\t\t이메일\t\t\t주소")
            for con in cls.contact_list:
                print("{:<12}{:<16}{:<16}{:<12}".format(list(con)[0], list(con)[1], list(con)[2], list(con)[3]))
            print("----------------------------------------------")

    @classmethod
    def delete_contact(cls,name):
        cnt = 0
        itemlist =[]
        for item in cls.contact_list:
            if item[0] == name:
                itemlist.append(item)
                cnt += 1

        if cnt == 0:
            print("삭제할 대상을 찾지 못했습니다.")
        elif cnt == 1:
            cls.contact_list.remove(itemlist[0])
            print(itemlist[0],"을 삭제하였습니다.")
        else:
            print("다음과 같은 중복된 이름이 있습니다. 무엇을 삭제하시겠습니까?")
            i = 0
            print("번호\t\t\t이름\t\t\t전화번호\t\t\t이메일\t\t\t주소")
            for con in itemlist:
                print("{:<12}{:<12}{:<16}{:<16}{:<12}".format(i,list(con)[0], list(con)[1], list(con)[2], list(con)[3]))
                i += 1
            no= input("번호를 입력하세요 : ")
            cls.contact_list.remove(itemlist[int(no)])
            print(itemlist[int(no)], "을 삭제하였습니다.")

def print_menu():
    print('1. 연락처 입력')
    print('2. 연락처 출력')
    print('3. 연락처 삭제')
    print('4. 종료')
    menu=input('메뉴선택:')
    if not menu.isdigit():
        print("\n\n\n\n\n\n\n\n\n")
        print("----------------------------------------------")
        print("숫자만 입력해주세요!")
        print("----------------------------------------------")
    else :
         print("----------------------------------------------")
         return int(menu)

def set_contact():

    name = input("이름을 입력하세요 : ")
    phone = input("전화번호를 입력하세요 : ")
    email = input("이메일을 입력하세요 :")
    addr = input("주소를 입력하세요 : ")

    Contacts = Contact(name,phone,email,addr)
    Contacts.save_contacts(name,phone,email,addr)
    print("\n\n\n\n\n\n\n\n\n")
    print("----------------------------------------------")
    print("정상적으로 입력되었습니다.")
    print("----------------------------------------------")
def print_contact(contact_list):

    Contacts = Contact(0, 0, 0, 0)
    Contacts.print_contacts()
    print("----------------------------------------------")

def delete_contact(contact_list, name):

    Contacts = Contact(0,0,0,0)
    Contacts.delete_contact(name)
    print("----------------------------------------------")

def run():
    # Contact 인스턴스를 저장할 리스트 자료구조 생성
    contact_list = []
    while True:
        menu=print_menu()
        if menu==4:  # 종료를 선택하면
            break
        elif menu==1: # 입력을 선택하면
            print("\n\n\n\n\n\n\n\n\n")
            contact = set_contact()
            contact_list.append(contact)
        elif menu==2: # 출력을 선택하면
            print("\n\n\n\n\n\n\n\n\n")
            print_contact(contact_list)
        elif menu==3: # 삭제를 선택하면
            print("\n\n\n\n\n\n\n\n\n")
            name = input('삭제할 이름은? ')
            delete_contact(contact_list,name)


if __name__ == "__main__":
    run()