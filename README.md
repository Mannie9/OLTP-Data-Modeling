# Retail OLTP Data Modeling Project

## 📌 Project Overview

This project demonstrates the complete process of designing an OLTP (Online Transaction Processing) database for a retail/e-commerce business.

The project was built by following a real-world database design approach:

1. Requirement Gathering
2. Business Understanding
3. Conceptual Data Modeling
4. Logical Data Modeling
5. Physical Data Modeling
6. Normalization
7. OLTP Database Design

The objective was to transform business requirements into a structured, scalable, and normalized transactional database.

---

# 🎯 Business Scenario

A retail company needs a database system to manage:

* Customers
* Orders
* Products
* Payments
* Shipments
* Store Branches

The database should support daily business operations while maintaining data consistency and reducing redundancy.

---

# 🏗️ Data Modeling Process

## 1️⃣ Requirement Gathering

Business requirements were identified and translated into data requirements.

Key questions included:

* Who are the customers?
* What products are being sold?
* How are orders tracked?
* How are shipments managed?
* How are payments recorded?

---

## 2️⃣ Conceptual Data Model

The conceptual model focused on:

* Business entities
* High-level relationships
* Business rules

Entities identified:

* Customer
* Order
* Product
* Payment
* Shipment
* Store Branch

---

## 3️⃣ Logical Data Model

The logical model defined:

* Attributes
* Relationships
* Cardinality
* Primary Keys
* Foreign Keys

Without considering database-specific implementation details.

---

## 4️⃣ Physical Data Model

The physical model included:

* Table structures
* Data types
* Constraints
* Primary Keys
* Foreign Keys

Ready for implementation in a relational database.

---

# 🔑 Database Design Concepts Used

## Keys

### Primary Key (PK)

Uniquely identifies each record.

Examples:

* customer_id
* order_id
* product_id

### Foreign Key (FK)

Creates relationships between tables.

Examples:

* customer_id in Orders
* product_id in Order_Items
* order_id in Payments

---

# 🔗 Relationships

Implemented relationships include:

### Customer → Orders

One customer can place multiple orders.

### Order → Order Items

One order can contain multiple products.

### Product → Order Items

One product can appear in multiple orders.

### Order → Payments

Each order can have associated payment information.

### Order → Shipments

Each order can have shipment tracking information.

---

# 🧹 Normalization

The database was normalized to reduce redundancy and improve consistency.

### First Normal Form (1NF)

* Atomic values
* No repeating groups

### Second Normal Form (2NF)

* Removed partial dependencies

### Third Normal Form (3NF)

* Removed transitive dependencies

### Boyce-Codd Normal Form (BCNF)

* Ensured every determinant is a candidate key

---

# 📊 OLTP Characteristics

This database was designed as an OLTP system.

Features:

* High transaction volume
* Fast inserts and updates
* Highly normalized structure
* Data consistency
* Transaction integrity

Examples:

* Customer places order
* Payment recorded
* Shipment updated

---

# 🖼️ Entity Relationship Diagram

The following ERD represents the final OLTP data model.

![OLTP Data Model](./diagrams/OLTP%20Data%20Modeling.drawio.png)

---

# 📂 Project Structure

```text
Retail_OLTP_Data_Modeling_Project/
│
├── README.md
│
├── OLTP Data Model/
│   └── OLTP Data Modeling.drawio.png
│
└── Schema/
    └── python_db.sql
```

---

# 🚀 Skills Demonstrated

## Database Design

* Requirement Gathering
* Business Analysis
* Entity Identification
* Relationship Design

## Data Modeling

* Conceptual Modeling
* Logical Modeling
* Physical Modeling

## Database Concepts

* Primary Keys
* Foreign Keys
* Cardinality
* Constraints
* Data Types

## Database Optimization

* 1NF
* 2NF
* 3NF
* BCNF

## Architecture

* OLTP Design
* Transactional Systems
* Relational Database Modeling

---

# 🎓 Learning Outcomes

Through this project, I learned:

* How real-world databases are designed
* Requirement gathering techniques
* End-to-end data modeling process
* Database normalization
* Relationship design
* OLTP architecture principles

---

# 🔮 Next Step

The next phase of this project will focus on OLAP (Online Analytical Processing) modeling, where the OLTP design will be transformed into a dimensional model using:

* Fact Tables
* Dimension Tables
* Star Schema
* Snowflake Schema
* Data Warehouse Design

to support reporting, analytics, and business intelligence workloads.
