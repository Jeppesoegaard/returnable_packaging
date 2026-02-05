using {
    cuid,
    managed,
} from '@sap/cds/common';

namespace returnable_packaging.db;


entity ReturnOrders : cuid, managed {
    customer    : String;
    orderRef    : String;
    carrier     : String;
    delivery    : String;
    shipment    : String;
    status      : Association to OrderStatus;
    ReturnItems : Composition of many ReturnItems
                      on ReturnItems.header = $self;
}

entity OrderStatus {
    key code        : String(1) enum {
            Created = 'A';
            Planned = 'B';
            Completed = 'C';
        }
        criticality : Integer;
        displayText : String;
}

entity ReturnItems : cuid, managed {
    key header        : Association to ReturnOrders;
        material      : Association to MaterialList;
        description   : String;
        orderQuantity : Integer;

}

entity MaterialList {
    key code        : String;
        description : String;
}

