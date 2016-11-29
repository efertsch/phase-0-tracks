# What are some common HTTP status codes?

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

# What is the difference between a GET request and a POST request? 
# When might each be used?

see [w3schools: HTTP Methods](http://www.w3schools.com/TAGs/ref_httpmethods.asp)
see [Tutorials Point](https://www.tutorialspoint.com/http/http_methods.htm)

## GET Requests
GET method requests data from a specified source (given URI)
* Only retrieves data, should have no other effect 
* The query string (key/value pairs) is sent in the URL of the GET Request 
* Example:
````/test/demo_form.asp?name1=value1&name2=value2````
* GET Requests:
	* can be cached
	* remain in browser history
	* can be book marked
	* shouldn't be used for sensitive data 
	* have length restrictions
	* should only be used to retrieve data 
* GET method is used to retrieve data (image files, documents, load page etc.) 


## POST Request 
POST method is used to send data to the server (i.e, file update, form data)
* Script on the server side (process.cgi) processes data and sends a response
* The query string (key/value pairs) is sent in the HTTP message body of the POST Request 
* Example:
````POST /test/demo_form.asp HTTP/1.1
Host: w3schools.com
name1=value1&name2=value2````
* POST Requests:
	* never cached
	* do not remain in browser history
	* cannot be book marked 
	* do not have length restrictions
* POST method is used to send data to the server (file update etc.,) 

## Other Methods
* HEAD 
	* Same as GET but returns only HTTP headers and no body
* PUT 
	* Uploads a representation of the specified URI
* DELETE
	* Deletes specified resource
* OPTIONS
	* Returns HTTP methods supported by the SERVER
* CONNECT 
	* Converts request connect to a transparent TCP/IP tunnel


# What is a cookie and how does it relate to HTTP requests?

see [MDN: HTTP Cookies](https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies)

## HTTP Cookies General
Also referred to as web or browser cookies.

A cookie is a small piece of data that a server sends to a user's web browser.

The browser may store it and send it back together with the next request to the same server.

Used to know if two requests came from the same browser.

It remembers stateful information for the stateless HTTP protocol. 

3 Main Purposes for Cookie Use:
- Session Management (user logins, shopping carts)
- Personalization (user preferences)
- Tracking (analyzing user behavior)

Has also been used for:
	* general client-side storage (no longer used due to storage APIs)

## Creating Cookies 

When an HTTP request is recieved, a server can send a Set-Cookie header with the response 

Thereafter, the cookie value is sent along with every request made to the same server as the content of a Cookie HTTP header.

Expiration delays and domain/path restrictions can be set 

## Types of Cookies
- Session Cookies
- Permanent Cookies 
- Secure and HttpOnly Cookies
- SameSite Cookies 



