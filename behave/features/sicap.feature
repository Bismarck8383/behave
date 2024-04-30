@administracion_La_Rioja

#title report
@Sicap_Report


#All test cases
@Get_Sicap

#Environment
@dev

#version
@tcs_0.1

Feature: Verify list endpoint of Sicap

  @tc_ws_19003
  Scenario: Returns ws19003 list 200
    Given I prepare the URI "http://localhost:8503/sicap/" request with path "ws19003"
    When I set the query parameters for "ws19003"
      | key                | value      |
      | codigo             | COECAR     |
      | ejercicio          | int, 2023  |
      | idSistemaOrigen    | null       |
      | pass               | SICAP      |
      | usuario            | LKP_COE    |
      | ejercicio          | int, 2023  |
      | numeroReferencia   | int, 13    |
      | organico           | 05         |
      | tipo               | GG         |
      | sufijoDisposicion  | int, 0     |
      | sufijoObligacion   | int, 0     |
      | ejercicioDocumentos| int, 0     |
      | tipoConsulta       | D          |
    And I prepare the request headers
      | key         | value      |
      | Accept      | */*        |
      | Connection | keep-alive  |
    When I send a "GET" request to the endpoint
    Then I should receive a status code of 200
    And I capture and log the response details
    And The response must match the expected schema for "sicap_ws_19003_schema"

  @tc_ws_19001
  Scenario: Returns ws_19001 list 200
    Given I prepare the URI "http://localhost:8503/sicap/" request with path "ws19001"
    When I set the query parameters for "ws19001"
      | key                | value      |
      | codigo             | COECAR     |
      | ejercicio          | int, 2023  |
      | idSistemaOrigen    | string     |
      | pass               | SICAP      |
      | usuario            | LKP_COE    |
      | ejercicio          | int, 2023  |
      | numeroReferencia   | int, 13    |
      | organico           | 05         |
      | tipo               | GG         |
      | sufijoDisposicion  | int, 0     |
      | sufijoObligacion   | int, 0     |
      | ejercicioDocumentos| int, 0     |
      | tipoConsulta       | R          |
    And I prepare the request headers
      | key         | value      |
      | Accept      | */*        |
      | Connection | keep-alive  |
    When I send a "GET" request to the endpoint
    Then I should receive a status code of 200
    And I capture and log the response details
    And The response must match the expected schema for "sicap_ws_19001_schema"

