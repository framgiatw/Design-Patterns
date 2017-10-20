<?php
// Structural design patterns

interface XMLInterface
{
    public function getXML();
}

class XML implements XMLInterface
{
    protected $xml;

    public function getXML()
    {
        // return XML Format
    }
}


interface JsonInterface
{
    public function getJson();
}

class Json implements JsonInterface
{
    protected $json;

    public function getJson()
    {
        // return Json Format
    }
}


class XMLAdapter implements JsonInterface
{
    protected $xml;

    public function __construct(XMLInterface $xml)
    {
        $this->xml = $xml;
    }

    public function getJson()
    {
        $xml = simplexml_load_string($this->xml->getXML());
        return json_encode($xml);
    }
}
