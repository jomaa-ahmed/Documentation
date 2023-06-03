---
sidebar_position: 1
---
# Networking

### 1. OSI Layer Role

The role of OSI layers when we open a webpage is to facilitate the communication and transfer of data between the client and the server hosting the webpage.

### 2. Difference between OSI Model and TCP/IP Model

The OSI model defines seven layers:

1. Physical
2. Data Link
3. Network
4. Transport
5. Session
6. Presentation
7. Application

The TCP/IP model consists of four layers:

1. Network Interface
2. Internet
3. Transport
4. Application

### 3. Application Service Layers and the Process of Opening a URL

When you write a URL (e.g., www.example.com) and click enter, the following steps occur:

1. Enter a URL in the browser's address bar.
2. The browser parses the URL to extract the protocol, domain name, and resource.
3. The browser checks its cache for a cached copy of the webpage.
4. If a cached copy is found and valid, the browser retrieves and displays it.
5. If no cached copy is found or it has expired, the browser initiates a connection with the server.
6. The browser sends an HTTP request to the server for the specified resource.
7. The request travels through the network to reach the server.
8. The server processes the request and generates an appropriate HTTP response.
9. The response travels back through the network to reach the browser.
10. The browser receives the response and interprets it.
11. The browser renders the webpage and displays it in the browser window.

These steps involve the application service layers, including the Application layer (HTTP request), Presentation layer (data interpretation), and Application layer (webpage rendering), as well as the underlying network layers responsible for data transmission.


### 4. Explain what is a domain name and the relation between the DNS and the @IP address.

A domain name is a human-readable address used to identify a specific website on the internet. It provides a memorable and recognizable name, such as www.example.com, instead of relying solely on numerical IP addresses.

The relation between DNS and IP address is that DNS maps a domain name to its corresponding IP address. 



### 5.Explain the TCP interconnection between your local host and the server.


TCP interconnection between your computer (local host) and the server ensures reliable communication. It involves a handshake to establish a connection, data transfer between the two, and a termination process when finished. It guarantees that messages are delivered accurately and in order.


### 6.How data transfer over internet (TCP Packet)

Data transfer over the internet using TCP involves breaking the data into small packets, adding headers with necessary information, such as source and destination IP addresses and sequence numbers, sending the packets over the network, and then reassembling them at the destination. TCP ensures reliable delivery by acknowledging received packets, retransmitting lost packets, and managing flow control and congestion control to optimize the transfer process.