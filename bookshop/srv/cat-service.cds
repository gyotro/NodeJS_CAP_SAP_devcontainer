using my.bookshop as my from '../db/data-model';

// service CatalogService @(path: '/services') it's possible to specify the path, but in this case the framework will use ODATA v2, instead of v4
service CatalogService {
    entity Books as projection on my.Books;
    entity Authors as projection on my.Authors;
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