using {Assn.Test as AT} from '../db/Data-model';

extend AT.Books with {
    author : Association to AT.Authors;
}

extend AT.Authors with {
    Books_Ascn : Association to many AT.Books
                     on Books_Ascn.author = $self;
}

extend AT.OrderItems {
    key order : Association to AT.orders;
}

extend AT.orders {
    items : Composition of many AT.OrderItems
                on items.order = $self;
}
