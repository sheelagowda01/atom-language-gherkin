Feature: Retrieve  the list of configured request codes

As a client service architecture, i must

Background: 
Given an endpoint of "/props/{propCode}/config/requestcodes"

The request and response for this endpoint should match the requestcodes document with the addition of a "requestCodeDesc" field which will be populated
from/written to the requestcodedescs document.

Scenario Outline:[1] A GET request with a valid propCode is successful with a status code of 200 when a list of configured request code is retrieved.


Give a valid propCode is <propCode> that exists
When a GET request is received
and the respone body contains
"""
"locale":<locale>
