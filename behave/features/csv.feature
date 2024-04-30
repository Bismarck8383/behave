# features/csv.feature

#project name
@administracion_La_Rioja

#title report
@CSV_Report

#All test cases
@Method_CSV

#Environment
@dev

#version
@tcs_0.1

Feature: Verify list endpoint of CSV

  @tc_generate_csv
  Scenario: Returns generate csv 200
    Given I prepare the URI "http://localhost:8500/csv/" request with path "generarCSV"
    When I set the query parameters for "generarCSV"
      | key            | value   |
      | ticket         | ticket  |
      | aplicacion     | GRIAR   |
    And I prepare the request headers
      | key        | value |
      | Accept     | */*   |
      | Connection | keep-alive |
    When I send a "GET" request to the endpoint
    Then I should receive a status code of 200
    And I capture and log the response details
    And The response must match the expected schema for "repositorio_generate_csv"