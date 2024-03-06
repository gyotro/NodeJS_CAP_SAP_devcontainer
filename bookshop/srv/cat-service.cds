using my.bookshop as my from '../db/data-model';

service CatalogService @(path: '/services') {
    @readonly entity Books as projection on my.Books;
}

// adding @rest to pubblish rest service
/* @rest service say {
    function hello(to:String) returns String;
} */

 service say @(path: '/ciao') {
    function hello(to:String) returns String;
}

 service goodbye {
    function bye(to:String) returns String;
}