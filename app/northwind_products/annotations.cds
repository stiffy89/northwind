using CatalogService as service from '../../srv/catalog-service';

annotate service.Products with @(
    UI.PresentationVariant  : {
        $Type : 'UI.PresentationVariantType',
        Text : 'Default',
        MaxItems : 5,
        /* SortOrder : [
            {
                Property: ReleaseDate,
                Descending: false
            }
        ], */
        Visualizations: ['@UI.LineItem']
    },
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Product Name',
            Value : Name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Product Description',
            Value : Description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Price',
            Value : Price,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Rating',
            Value : Rating,
            Criticality : RatingCriticality,
            CriticalityRepresentation : #WithoutIcon,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Release Date',
            Value : DateDisp
        },
        {
            $Type : 'UI.DataField',
            Label : 'Days since release',
            Value : ReleaseDays
        }
    ]
);
