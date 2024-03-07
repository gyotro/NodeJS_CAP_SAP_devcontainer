namespace my.bookshop;
using { cuid, managed } from '@sap/cds/common'; // importing cuid aspect 


entity Books : cuid, managed {
// if we enable the cuid and, the old ID, in Integer format, won't work anymore 
//  key ID : Int32;
  title  : String;
  stock  : Integer;
}

entity Authors : cuid, managed {
//  key ID : Int32;
  name  : String;
}
