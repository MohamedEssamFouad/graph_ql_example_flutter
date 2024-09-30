# graph_ql_example_flutter

REST vs. GraphQL in Simple:
1-Endpoints:

REST: Multiple URLs (e.g., /users, /posts).
GraphQL: One URL (/graphql), and you specify what you need.
2-Data Fetching:

REST: You get everything from a resource, even if you don’t need it.
GraphQL: You ask for exactly what you need (e.g., just the user’s name).
3-Multiple Resources:

REST: You make multiple requests to get related data (e.g., user info, then their posts).
GraphQL: You get all related data in a single request.
4-Versioning:

REST: Often needs new versions (e.g., /v1/users).
GraphQL: No need for versioning. You just add or remove fields.
5-Performance:

REST: Can cause over-fetching (too much data) or under-fetching (not enough, need more requests).
GraphQL: More efficient, reduces unnecessary data fetching, and fewer requests.


Summary:
REST: You get predefined data from multiple endpoints.
GraphQL: You ask for specific data in one request from one endpoint.

when to use each??
Use REST for simple, resource-based APIs, and GraphQL when you need flexibility in data retrieval or complex querying across multiple resources.

When to Use REST:
Simple APIs: If your API follows standard CRUD operations (Create, Read, Update, Delete).
Known Data Structure: When the data structure is straightforward and doesn't change often.
Caching: REST APIs leverage HTTP methods like GET, which are easier to cache with built-in HTTP mechanisms.


When to Use GraphQL:
Client Needs Specific Data: When you want more control over exactly which fields are returned, preventing over-fetching or under-fetching.
Multiple Resources: When you need to fetch data from multiple related resources in one request.
Real-Time Updates: If your app needs real-time data, GraphQL supports subscriptions for live updates.
