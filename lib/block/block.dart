//import
//List of Employee]
//Stream Controller
//Stream sink getter
//constructor add data listen to change
//core functions 
//dispose
import "dart:async"
import"employee.dart"
class EmployeeBlock{
    List<Employee>_employee=[
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

}