module hr
    type person
        character(len=20) :: first, last
        integer :: birthyear
        character(len=1) :: sgender
    end type

    type employee
        type(person) :: person
        integer :: hire_date
        character(len=20) :: department
    end type
end module hr


program hr_code
    use hr
    implicit none

    type(person) :: jack
    type(employee) :: jill
    jack = person( "Jack", "Smith", 1984, "M" )
    jill = employee( person( "Jill", "Smith", 1984, "F" ), 2003, "sales" )
    
    print *, jack%first, jack%last
    print *, jill%person%first, jill%person%last, jill%department
end program hr_code
