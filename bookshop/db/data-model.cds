namespace my.bookshop;
using from '@sap/cds-common-content';
using { cuid, managed, Country } from '@sap/cds/common'; // importing cuid aspect 



entity Books : cuid, managed {
// if we enable the cuid and, the old ID, in Integer format, won't work anymore 
//  key ID : Int32;
  title  : String;
  stock  : Integer;
  author : Association to Authors // one to one association
}

entity Authors : cuid, managed {
//  key ID : Int32;
  name  : String;
  countryOfBirth: Country
}
