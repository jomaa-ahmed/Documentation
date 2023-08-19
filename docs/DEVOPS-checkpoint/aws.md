# AWS:

To create an Amazon RDS (Relational Database Service) instance using the AWS Command Line Interface (CLI), you can use the following command:

```bash
aws rds create-db-instance \
  --db-instance-identifier mydbinstance \
  --db-instance-class db.t2.micro \
  --engine mysql \
  --allocated-storage 20 \
  --master-username admin \
  --master-user-password mysecretpassword
```

This command creates an RDS instance with the following parameters:

- **db-instance-identifier**: The unique identifier for the RDS instance, set to "mydbinstance".
- **db-instance-class**: The instance type, set to "db.t2.micro".
- **engine**: The database engine, set to "mysql".
- **allocated-storage**: The amount of allocated storage in gigabytes, set to 20 GB.
- **master-username**: The master username for the database, set to "admin".
- **master-user-password**: The master user password for the database, set to "mysecretpassword".