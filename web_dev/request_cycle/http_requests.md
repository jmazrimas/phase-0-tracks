

* What are some common HTTP status codes?
    - 200: OK
    - 302: Found 
    - 404: Not found
    - 401: Unauthorized
    - 500: Internal server error
* What is the difference between a GET request and a POST request? When might each be used?
    - A GET request is the user (browser) trying to retrieve some resource from the [web]server. So downloading a web page would be an example of a GET. A POST is when the user is attempting to send some resource to the server -- for example, submitting a form that contains a request or providing a username and password. One of the concepts that seems most important to the GET/POST dichotomy is the idea of idempotence. Generally speaking, GETs and normally considered idempotent and POSTs are not. What that means in short hand is that GETs are not expected to change the state of anything whereas POSTs typically do; for example, if you're submitting a form to pay for some good or service, before you "submit" or POST that payment, you haven't paid for it, but after you "submit" or POST that payment you have paid for it. So in addition to the idea of a state changing, there's also some implication that you wouldn't want to repeat these actions; most precisely, you wouldn't want to repeat those actions unless you intended to multiply the effect (i.e., paying more than once).
* Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
    - A cookie is basically a breadcrumb used by your browser and a web server to track various pieces of your browsing activity. When you navigate to a site, the web server can/will send an HTTP header called "Set-Cookie" which will cause your browser to create a store a cookie on your machine with the parameters specified. When you make subsequent requests from the same domain, your browser will re-send that same cookie, thereby letting the server know that you're the same user that made that other request 20 minutes ago. So, for example, if you're not logged in to a given shopping site, but you put something in your cart, the server knows that's [anonymous-ish] YOUR cart and not someone else's (who's also not logged in).