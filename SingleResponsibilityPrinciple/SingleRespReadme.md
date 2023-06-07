It states that a class or module should have only one reason to change or one responsibility.

In simple words, the SRP suggests that a class should focus on doing one thing and doing it well. 

It should have a clear and specific purpose or responsibility within the system. By adhering to the SRP, we aim to create classes that are more maintainable, reusable, and easier to understand.

### Robert C. Martin describes it as:
"A class should have only one reason to change."

See examples:- 

1. file_manager.rb here we have a FileManager class that handles reading from and writing to a file
   and counts content. Each method within the class has a single responsibility 
  
2. Another example report_mailer.rb, report_generator.rb where different classes have there own responsibility.