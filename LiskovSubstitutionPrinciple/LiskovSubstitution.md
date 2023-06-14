Liskov Substitution states that "*if we substitute a superclass object reference with an object of any of its subclasses, the program should not break*".

In simple words the objects of a superclass should be replaceable with objects of its subclasses without breaking the application.

Some points to be remembered to follow this principle

1. **Subtypes must conform to the behavior of their supertypes:** Subclasses should provide the same set of methods as the superclass and adhere to the same expectations and guarantees.
Clients of the superclass should be able to use subclass instances interchangeably without any issues.

2. **The return types should match or be covariant**: The return types of methods in a subclass should either match the return types of the corresponding methods in the superclass or be more specific.
This ensures that the return type guarantees made by the superclass are still valid when using subclass instances.

3. **Preconditions cannot be strengthened in a subclass**: Preconditions are conditions that must be true before a method can be executed. Subclasses should not impose stricter preconditions on their methods compared to the superclass. The same method in a subclass should accept the same inputs and conditions as the superclass without causing errors.

4. **Postconditions cannot be weakened in a subclass**: A postcondition is a condition that must be true after a method has executed. Similarly to preconditions, postconditions should not be weakened in a subclass.
If a method in the superclass guarantees certain results or behavior, the same guarantees should hold for the method in any subclass.

5. **Exceptions must be compatible**: In Ruby, if a method in the superclass specifies a list of exceptions that it may raise, the same exceptions (or subclasses thereof) should be allowed to be raised by the corresponding method in any subclass.
This ensures that clients relying on the superclass can handle exceptions in a consistent manner

Reference:
  1. http://rubyblog.pro/2017/06/solid-liskov-substitution-principle
  