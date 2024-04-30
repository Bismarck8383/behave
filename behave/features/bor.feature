# features/bor.feature

#project name
@administracion_La_Rioja

#title report
@Bor_Report


#All test cases
@Get_Bor

#Environment
@dev

#version
@tcs_0.1

Feature: Verify list endpoint of Bor

  @tc_dame_cadena_firmar
  Scenario: Returns dame cadena firmar list 200
    Given I prepare the URI "http://localhost:8506/bor/" request with path "dameCadenaFirmar"
    When I set the query parameters for "dameCadenaFirmar"
      | key                    | value                 |
      | apellidosPresentador   |                       |
      | claseAnuncio           |                       |
      | codigoPostalLiquidacion|                       |
      | comiteEmisor           |                       |
      | contenido              |                       |
      | direccionLiquidacion   |                       |
      | emailLiquidacion       |                       |
      | emailPresentador       |                       |
      | faxLiquidacion         |                       |
      | fechaDeseadaPublicacion|                       |
      | fechaFirma             |                       |
      | firma                  |                       |
      | localidadEmision       |                       |
      | localidadFirma         |                       |
      | localidadLiquidacion   |                       |
      | nifPersonaLiquidacion |                       |
      | nifPresentador         |                       |
      | nombrePresentador      |                       |
      | numeroAnuncio          |                       |
      | organismoEmisor        |                       |
      | personaLiquidacion     |                       |
      | provinciaLiquidacion   |                       |
      | publicacionUrgente     |                       |
      | telefonoLiquidacion    |                       |
      | telefonoPresentador    |                       |
      | tituloAnuncio          |                       |
      | version                |                       |
    And I prepare the request headers
      | key         | value      |
      | Accept      | */*        |
      | Connection  | keep-alive |
    When I send a "GET" request to the endpoint
    Then I should receive a status code of 200
    And I capture and log the response details
    And The response must match the expected schema for "<expected_schema>"


  @tc_publicar
  Scenario: Returns publicar list 200 with empty parameters
    Given I prepare the URI "http://localhost:8506/bor/" request with path "publicar"
    When I set the query parameters for "publicar"
      | key                    | value                |
      | apellidosPresentador   |                      |
      | claseAnuncio           |                      |
      | codigoPostalLiquidacion|                      |
      | comiteEmisor           |                      |
      | contenido              |                      |
      | direccionLiquidacion   |                      |
      | emailLiquidacion       |                      |
      | emailPresentador       |                      |
      | faxLiquidacion         |                      |
      | fechaDeseadaPublicacion|                      |
      | fechaFirma             |                      |
      | firma                  |                      |
      | localidadEmision       |                      |
      | localidadFirma         |                      |
      | localidadLiquidacion   |                      |
      | nifPersonaLiquidacion |                      |
      | nifPresentador         |                      |
      | nombrePresentador      |                      |
      | numeroAnuncio          |                      |
      | organismoEmisor        |                      |
      | personaLiquidacion     |                      |
      | provinciaLiquidacion   |                      |
      | publicacionUrgente     |                      |
      | telefonoLiquidacion    |                      |
      | telefonoPresentador    |                      |
      | tituloAnuncio          |                      |
      | version                |                      |
      | cadenafirmada          | jghjghj              |
      | organo                 | gjgjg                |
    And I prepare the request headers
      | key         | value      |
      | Accept      | */*        |
    When I send a "GET" request to the endpoint
    Then I should receive a status code of 200
    And I capture and log the response details
    And The response must match the expected schema for "<expected_schema>"

