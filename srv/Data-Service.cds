using {Assn.Test as AT} from '../db/Data-model';

service Test_Arv{

    entity Books as projection on AT.Books;
    entity Authors as projection on AT.Authors;
    entity Orders as projection on AT.orders;
    entity Order_Items as projection on AT.OrderItems;

}
