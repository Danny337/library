// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract Library {

    struct Book { 
        string title;
        string author;
        bool completed;
    }

    Book[] public books; 

    function add(string memory _title, string memory _author) public {
        books.push( Book(_title, _author, false) ); // добавляем книгу в массив 
    }

    function get(uint _index) public view returns(string memory title, string memory author, bool completed) {
         Book storage book = books[_index];
         return( book.title, book.author, book.completed );
    }

    function complete(uint _index) public {
        Book storage book = books[_index];
        book.completed = true;
    }

}