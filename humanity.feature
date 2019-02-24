  # Inside of humanity.com testing the functionality of ShiftPlanning and TimeClock

Feature: humanity.com>ShiftPlanning and TimeClock
  As a Manager
  I want to be able to add an employee and
  and add a plan to TimeClock


  Background:
    Given I open login page of humanity
    When I enter username "vukmileusnic@gmail.com"
    And I enter password "vule1982!!!"
    And I press Login
    Then I should be on Home page

  Scenario Outline: ShiftPlanning page add employees

    When I click on ShiftPlanning in main menu
    Then I should be on ShiftPlanning page
    And I click on Add Employees
    Then I should see new window Add Employees
    When I enter "<First Name>" as First Name
    And I enter "<Last Name>" as Last Name
    And I chose from the list "<Position>" as Position of Employee
    Then I should be able to click on button Continue

  Examples:
  |  First Name   | Last Name       | Position   |
  |  Nenad        |  Petrovic       | Intern     |
  |  Jovan        |  Jovanovic      | Supervisor |
  |  Petar        |  Petronijevic   | Nurse      |


  Scenario: TimeClock page click on Clock In/Clock Out

    When I click on TimeClock in main menu
    Then I should be on TimeClock page
     And I should see Clock In link
    When I click on Clock In link
    Then I should see Clock Out link
    When I click on Clock Out link
    Then I should see Clock In link
