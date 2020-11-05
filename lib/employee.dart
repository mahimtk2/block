class Employee{
    int _id;
    double _salary;
    String _name;
    Employee(this._id,this._name,this._salary);


    set id(int id){
        this._id=id;
    }
    set name=(String name){
        this._name=name;
    }
    set salary(double salary){
        this._salary=salary;
    }
     int get id=>_id;
     double get salary=_salary;
     String get name=_name;

}