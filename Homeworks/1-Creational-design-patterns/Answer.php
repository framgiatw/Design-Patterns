<?php
//Creational design patterns

abstract class DatabaseAbstractFactory
{
    public $connection;
    abstract public function connection();
    abstract public function query();
}

class MysqlFactory extends DatabaseAbstractFactory
{
    public function connection() {}

    public function query() {}
}

class MSsqlFactory extends DatabaseAbstractFactory
{
    public function connection() {}

    public function query() {}
}

class MariaDBFactory extends DatabaseAbstractFactory
{
    public function connection() {}

    public function query() {}
}
