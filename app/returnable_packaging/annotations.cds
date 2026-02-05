using Returnable_Packaging as service from '../../srv/service';
annotate service.ReturnOrders with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : customer,
                Label : 'Customer',
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedBy,
            },
            {
                $Type : 'UI.DataField',
                Value : createdAt,
            },
            {
                $Type : 'UI.DataField',
                Value : createdBy,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Header',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Items',
            ID : 'Items',
            Target : 'ReturnItems/@UI.LineItem#Items',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Customer Number',
            Value : customer,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Order Number',
            Value : orderRef,
        },
        {
            $Type : 'UI.DataField',
            Value : shipment,
            Label : 'Shipment',
        },
        {
            $Type : 'UI.DataField',
            Label : 'Carrier',
            Value : carrier,
        },
        {
            $Type : 'UI.DataField',
            Value : status_code,
            Label : 'Status',
            Criticality : status.criticality,
        },
        {
            $Type : 'UI.DataField',
            Value : ReturnItems.material_code,
            Label : 'Material',
        },
    ],
    UI.FieldGroup #ItemData : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ReturnItems.material,
                Label : 'Material_code',
            },
            {
                $Type : 'UI.DataField',
                Value : ReturnItems.orderQuantity,
                Label : 'Quantity',
            },
        ],
    },
    UI.HeaderInfo : {
        TypeName : 'Return order',
        TypeNamePlural : 'Return ordersres;;',
        TypeImageUrl : 'sap-icon://customer-order-entry',
        Title : {
            $Type : 'UI.DataField',
            Value : orderRef,
        },
    },
    UI.SelectionFields : [
        customer,
        orderRef,
    ],
    UI.HeaderFacets : [
        
    ],
    UI.FieldGroup #Header : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : status_code,
                Label : 'Status',
                Criticality : status.criticality,
            },
        ],
    },
    UI.FieldGroup #EntryInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedBy,
            },
            {
                $Type : 'UI.DataField',
                Value : createdAt,
            },
            {
                $Type : 'UI.DataField',
                Value : createdBy,
            },
        ],
    },
);

annotate service.ReturnOrders with {
    status @(
        Common.Text : status.displayText,
        Common.Text.@UI.TextArrangement : #TextOnly,
    )
};

annotate service.ReturnOrders with {
    customer @Common.Label : 'Customer'
};

annotate service.ReturnOrders with {
    orderRef @Common.Label : 'Return Order'
};

annotate service.ReturnItems with @(
    UI.LineItem #Items : [
        {
            $Type : 'UI.DataField',
            Value : material_code,
            Label : 'Material',
        },
        {
            $Type : 'UI.DataField',
            Value : orderQuantity,
            Label : 'Quantity',
        },
    ]
);

annotate service.ReturnItems with {
    material @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'MaterialList',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : material_code,
                    ValueListProperty : 'code',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
        Common.Text : material.description,
        Common.Text.@UI.TextArrangement : #TextLast,
)};

annotate service.MaterialList with {
    code @(
        Common.Text : description,
        Common.Text.@UI.TextArrangement : #TextLast,
    )
};

