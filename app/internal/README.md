# About `internal`

1. This folder is where the core of your application, business logic, services, handlers, repositories, storage adapters, etc. are located.

2. The code in this folder should not be used by other packages without going through the dependency injection/bootstrap process.