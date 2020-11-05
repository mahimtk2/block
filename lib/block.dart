//import
//List of Employee]
//Stream Controller
//Stream sink getter
//constructor add data ; listen to change
//core functions 
//dispose
import "dart:async"
import"employee.dart"
class EmployeeBlock{
    List<Employee>_employeeList=[
        Employee(1,"one",1222.0),
        Employee(2,"tow",1222.0),
        Employee(3,"three",1222.0),
        Employee(4,"four",1222.0)
    ];
    //sink to add in pipe
    //stream to  get data from pipe
    // pipe i mean data flow

     final _employeeListSreamController=StreamController<List<Employee>>();
     final _employeeSalaryincrementController=StreamController<Employee>();
     final _employeeSalaryDecrementController=StreamController<Employee>();
     //create getter  for all controller;
     //strm get data from pipe
     Stream<List<Employee>> get employeeListStrem=_employeeListSreamController.stream;
     //sink to add data
     StreamSink<List<Employee>> get employeeListSink=_employeeListSreamController.sink;

     StreamSink<Employee> get employeeSalaryIncrement=_employeeSalaryincrementController.sink;
     StreamSink<Employee> get employeeSalaryDecrement=_employeeSalaryDecrementController.sinnk;
EmployeeBlock(){
    _employeeListSreamController.add(_employeeList);
    _employeeSalaryincrementController.stream.listen(_incrementSalary);
    _employeeSalaryDecrementController.stream.listen(_decrementSalary);
    

}
_incrementSalary(Employee employee){
        double salary=employee.salary;
        double incrementedSalary=salary*20/100;
        _employeeList[employee.id-1].salary=salary+incrementedSalary;
        employeeListSink.add(_employeeList);

    }
    _decrementSalary(Employee employee){
        double salary=employee.salary;
        double decrementedSalary=salary*20/100;
        _employeeList[employee.id-1].salary=salary-decrementedSalary;
        employeeListSink.add(_employeeList);
    }
    void dispose(){
        _employeeListSreamController.close();
        _employeeSalaryincrementController.close();
        _employeeSalaryDecrementController.close();
    }
}