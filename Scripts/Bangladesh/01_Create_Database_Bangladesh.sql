USE master;  
GO  

CREATE DATABASE  Bangladesh 
CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bangladesh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\Bangladesh.mdf' , 
SIZE = 8192KB , 
MAXSIZE = UNLIMITED, 
FILEGROWTH = 65536KB )

 LOG ON 
( NAME = N'Bangladesh_log', 
FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\Bangladesh_log.ldf' , 
SIZE = 8192KB , 
MAXSIZE = 2048GB , 
FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
 
GO