# Common HTTP status codes 

see [SmartLab Software](https://www.smartlabsoftware.com/ref/http-status-codes.htm)

## 200 OK
*Request has succeeded

## 300 Multiple Choices
*There are multiple choices for the requested resource.
*They cannot be resolved into one. 


## 301 Moved Permanently 
*The requested resource has been assigned a new permanent URI.
*Future referenced should use one of the returned URIs.


## 302 Found
*The requested resource temporarily lives under a different URI
*The redirection may be altered occassionally, client should continue to use Request-URI 

## 304 Not Modified
* Response from server if the client has issued a conditional GET request, access is allowed, and the document has not been modified

## 307 Temporary Redirect
*The requested resource temporarily lives under a different URI
*The redirection may be altered occassionally, client should continue to use Request-URI 

## 400 Bad Request 
* Request is not understood by the server 
* Usually due to bad syntax


## 401 Unauthorized 
* Request requires authentication

## 403 Forbidden
* Request is understood but not fulfilled by the server 
* Authorization will not allow access

## 404 Not Found 
* The server has not located anything matching the Request-URI
* Could be temporary or permanent 

## 410 Gone 
* Requested resource is no longer available 
* No forwarding address is known, likely permanent 

## 500 Internal Server Error 
* The server was prevented from fulfilling the request due to an unexpected condition

## 501 Not Implemented 
* The server does not support the functionality required to fulfill the request 


## 503 Service Unavailable
* Server cannot fulfill request at this time 
* Typically temporary 
* Common Reasons:
	* server crash
	* server maintenance 
	* server overload
	* attack on server
	* alloted bandwidth used by site 
	* server is forbidden to return requested doc 


## 550 Permission Denied 
* Your current (logged in) account does not have permission to perform the attempted action
