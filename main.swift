//
//  main.swift
//  ToDoList
//
//  Created by Raged Alshehri on 22/05/1443 AH.
//

import Foundation

struct task {
    var taksName : String = ""
    var dueDate  : String = ""
    var taskType : String  = ""
    var priority : String = ""
}



print("ToDo List")

print("")
//------------------------------------------------

let currentDate = Date()
print("Todays Date is: " , currentDate)

print("")
//------------------------------------------------

print("Please Enter Your Name: ")
let UserName : String? = readLine()

print("")
//------------------------------------------------

print("Welcome Back \(UserName!)!")

print("")
//------------------------------------------------

print("What would you like to set?")
print("""
1. Future Goals
2. New task
""")

print("")
//-------------------------------------------------

var userTasks : [task] = []

var userChoice  = ""
var userChice2  = ""

//-------------------------------------------------

func FutureGoals(){
   print("""
Please select the period of your future goals:
weekly
monthly
yearly
""")
  
    print("")
    
       
    let selectPeriod : String? = readLine()
    
    switch selectPeriod {
        
    case "weekly":
        
        repeat {
        print("")
        print("Please enter your goal:")
            let weeklyTasks :  String? = readLine()
        
        print("")
        print("Please enter the Due Date :")
            let dueDate :  String? = readLine()
          
        print("")
        print("Please enter the priority (High, Medium, Low) :")
            let priority :  String? = readLine()

            var task1 = task(taksName:weeklyTasks! , dueDate: dueDate! , taskType: "weekly", priority: priority!)
        
        userTasks.append(task1)
        print("")
        print("Do you want to add a new task ? ")
            userChoice  = readLine()!
        

        }while (userChoice != "NO")
        
        
    case "monthly":
        
        repeat {
        print("")
        print("Please enter your goal:")
            let monthlyTasks :  String? = readLine()
            
        print("")
        print("Please enter the Due Date :")
            let dueDate :  String? = readLine()
            
        print("")
        print("Please enter the priority (High, Medium, Low) :")
                let priority :  String? = readLine()

       var task1 = task(taksName:monthlyTasks! , dueDate: dueDate! , taskType: "weekly", priority: priority!)
        
        userTasks.append(task1)
        
        print("")
        print("Do you want to add a new task ? ")
            userChoice  = readLine()!
        

        }while (userChoice != "NO")
   
    case "yearly":
        
        repeat {
            
        print("")
        print("Please enter your goal:")
            let yearlyTasks :  String? = readLine()

        print("")
        print("Please enter the Due Date :")
            let dueDate :  String? = readLine()
        
        print("")
        print("Please enter the priority (High, Medium, Low) :")
            let priority :  String? = readLine()
            
       var task1 = task(taksName:yearlyTasks! , dueDate: dueDate! , taskType: "weekly", priority: priority!)
        
        userTasks.append(task1)
        
        print("")
        print("Do you want to add a new task ? ")
            userChoice  = readLine()!
        

        }while (userChoice != "NO")
        
    default :
        print("You Enterd the wrong input, please choose either (weekly, monthly, or yearly) ")
    }
  
    }
func newTask(){
    
    
    repeat {
    print("")
    print("Please enter you Task:")
        let userT :  String? = readLine()

    print("")
    print("Please enter the Due Date :")
        let dueDate :  String? = readLine()
      
    print("")
    print("Please enter the priority (High, Medium, Low) :")
        let priority :  String? = readLine()
        
   var task1 = task(taksName:userT! , dueDate: dueDate! , taskType: "weekly", priority: priority!)
    
    userTasks.append(task1)
        
    print("")
    print("Do you want to add a new task ? ")
        userChice2  = readLine()!
    

    }while (userChice2 != "NO")
}

//-----------------------------------------
print("Please Enter Your Choice: ")
let SelectFromMenu : Int? = Int(readLine()!)
  
print("")

switch SelectFromMenu {
    
case 1 :
    FutureGoals()
    
case 2 :
    newTask()
    
default :
    print("Non-valid input")
    print("")

}
