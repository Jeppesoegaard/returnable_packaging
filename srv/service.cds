using {returnable_packaging.db} from '../db/schema';

service Returnable_Packaging {
    entity ReturnOrders as projection on db.ReturnOrders;
}
