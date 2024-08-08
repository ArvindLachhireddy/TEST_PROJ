namespace Assn.Test;

entity Books {
    key Book_ID        : UUID;
        title          : String(60);
        //author_ID: Association to Authors;
        genre          : String(60);
        publCountry    : String(60);
        stock          : Integer;
        price_amount   : Decimal(15, 8);
        price_currency : String(6);
        isHardcover    : String(6);
}

entity Authors {
    key Author_ID   : UUID;
        Author_name : String(30);
        dateOfBirth : Date;
        dateOfDeath : Date;
//books: Association to many Books on books.author_ID=$self;
}

entity orders {
    key Order_ID   : UUID;
        Order_Date : Date;
// items : Composition of many OrderItems on items.order=$self;
}

entity OrderItems {
    key POS            : Integer;
        // key order:Association to orders  ;
        Order_Category : String(20);
}
