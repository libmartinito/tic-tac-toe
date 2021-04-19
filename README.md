# Tic Tac Toe

This is an implementation of tic-tac-toe on the command line.

## Overview

### The challenge

A tic-tac-toe game should be built on the command line where two human players can play against each other and the board is displayed in between turns.

## My Process

### Built with

- Ruby
- rspec

### What I Learned
It was hard to start coding immediately as it was difficult articulating the problem in the context of OOP. I had taken a look at [this](https://rosettacode.org/wiki/Tic-tac-toe#Ruby) implementation of the game in order to have a starting point at which classes should I have. This, however was not enough to easily code the solution. I then started reading [99 bottles of OOP](https://sandimetz.com/99bottles) in an attempt at refining my understanding of the object-oriented approach. I finished the first implementation of the game by the second chapter. Some key takeaways of the first chapter is:

1. Code can be judged through SLOC (Source Lines of Code), Cyclomatic Complexity, and ABC (Assignments, Branches, and Conditions)

- SLOC has been used to predict the effort needed to write code, the productivity of those who write it, and the cost of maintaining it. It reflects code volume, however it is not enough to predict code quality.

- Cyclomatic Complexity is an algorithm that counts the number of unique execution paths through a body of source code. It attempts to identify code that is difficult to test or maintain. It can be used to limit the overall complexity of the code you would write.

- ABC counts A - the variable assignments, B - the branches of control such as function calls or message sends, and C - conditional logic. It is described as a more sophisticated version of SLOC.

2. A desired solution to a given problem is that which quickly reaches green on the tests while prioritizing understandability over changeability. It uses tests to drive comprehension, and collects concrete examples while awaiting insight into underlying abstractions.

Although the code written was not checked against the avenues available in takeaway number 1, takeaway number 2 helped with my mindset. I was trying to take into account everything I had learned about ruby so that it would be already *perfect* by the time that it would be written. The second chapter helped much more with the introduction to TDD (Test-Driven Development). In its simplest form, TDD works like this:

1. *Write a test.*

  Because the code does not exist, this test fails. Failing tests are usually displayed in red.

2. *Make it run*

  Write the code to make the test pass. Passing tests are usually displayed in green.

3. *Make it right*

  Each time you return to green, you can refactor any code into a better shape, confident that it remains correct if the tests continue to pass.

Reading more about TDD led to searching ways on how to write tests in Ruby. This then led to reading about rspec.

Another impactful piece of advice from chapter two was about writing the first test. It was acknowledged that this is often the most difficult to write. This is because at this point, you know the least about what it is that you wanted to do. It was put forth that *despite the apparent importance, the choice you make here hardly matters.* This made it easier to start writing and avoid overthinking it.

### Continued development

The following items are primary considerations for continued development.

1. Adding an option for the player to be the computer.
2. Improving the testing suite.
3. Refactoring the code to DRY (Don't Repeat Yourself) it out while maintaining understandability.

### Useful resources
