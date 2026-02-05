using {returnable_packaging.db} from '../db/schema';

service Returnable_Packaging {
    entity ReturnOrders as projection on db.ReturnOrders;
    entity ReturnItems as projection on db.ReturnItems;
    entity OrderStatus as projection on db.OrderStatus;
    entity MaterialList as projection on db.MaterialList;
}

annotate Returnable_Packaging.ReturnOrders with @odata.draft.enabled;
