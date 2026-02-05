using {
    cuid,
    managed
} from '@sap/cds/common';

namespace returnable_packaging.db;


entity ReturnOrders : cuid, managed {
    customer    : String;
    status      : String;
    returnItems : String;
    orderRef    : String;
    carrier     : String;
    delivery    : String;


}
