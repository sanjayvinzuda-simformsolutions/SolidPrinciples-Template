The **Interface Segregation Principle** states that *a client should not be forced to depend on interfaces it doesn't need. If a class provides multiple interfaces and a client only uses a subset of those interfaces, it should not be affected by changes made to the unused interfaces by other clients. This principle ensures that clients are only impacted by changes that are relevant to their specific requirements, promoting a more flexible and modular system design*.

Ruby does not have interfaces, but let us look at the class and subclass concept to build something similar. See files isp_wrong_example1.rb and isp_example2.rb

### #### In Ruby on Rails how we can follow this principle?

By considering a scenario where a controller depends on a service object that provides multiple interfaces.
Let's assume we have a **UserController** that depends on a **UserService** object, which provides interfaces for user management and authentication.

However, the **UserController** only needs to perform user management operations and does not require authentication-related functionality.
The **UserService** class, on the other hand, caters to both user management and authentication interfaces.

To adhere to the Interface Segregation Principle, we can refactor the code to separate the interfaces into distinct classes. We can create a **UserManagementService** class specifically for user management operations and an **AuthenticationService** class for handling authentication.

By doing so, the **UserController** can now depend on the **UserManagementService** interface alone, which contains methods for user management operations. The **AuthenticationService** interface can be utilized by other clients that require authentication functionality.

This segregation of interfaces ensures that the **UserController** is not affected by changes made to the authentication-related methods in the **UserService**.
It allows each client to depend only on the specific interfaces they require, promoting a more modular and decoupled design in the Rails application.
