<?php
// Behavioral design patterns

class Book {
    private $id, $content;
    public function __construct($id, $content)
    {
        $this->id = $id;
        $this->content  = $content;
    }
    public function getId()
    {
        return $this->id;
    }
    public function getContent()
    {
        return $this->content;
    }
}

class BookList {
    private $books = [];
    private $bookCount = 0;

    public function getBookCount()
    {
        return $this->bookCount;
    }
    public function getBook($bookNumber) {
        return isset($this->books[$bookNumber]) ? $this->books[$bookNumber] : null;
    }
    public function addBook(Book $book)
    {
        $this->bookCount += 1;
        $this->books[$this->bookCount] = $book;
        return $this->bookCount;
    }
    public function removeBook(Book $book) {
        $counter = 0;
        while (++$counter <= $this->getBookCount()) {
            if ($book->getId() == $this->books[$counter]->getId()) {
                for ($i = $counter; $i < $this->getBookCount(); $i++) {
                    $this->books[$i] = $this->books[$i + 1];
                }
                $this->bookCount -= 1;
            }
        }
        return $this->getBookCount();
    }
}

class BookListIterator {
    protected $bookList;
    protected $currentBook = 0;

    public function __construct(BookList $bookList)
    {
        $this->bookList = $bookList;
    }
    public function getCurrentBook()
    {
        return isset($this->bookList[$this->currentBook]) ? $this->bookList[$this->currentBook] : null;
    }
    public function hasNextBook()
    {
        return $this->bookList->getBookCount() > $this->currentBook;
    }
    public function getNextBook() {
        return $this->hasNextBook() ? $this->bookList->getBook(++$this->currentBook) : null;
    }
}

class BookListReverseIterator extends BookListIterator {
    public function __construct(BookList $bookList)
    {
        $this->bookList = $bookList;
        $this->currentBook = $this->bookList->getBookCount() + 1;
    }
    public function hasNextBook() {
        return 1 < $this->currentBook;
    }
    public function getNextBook() {
        return $this->hasNextBook() ? $this->bookList->getBook(--$this->currentBook) : null;
    }
}
