sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"returnablepackaging/test/integration/pages/ReturnOrdersList",
	"returnablepackaging/test/integration/pages/ReturnOrdersObjectPage"
], function (JourneyRunner, ReturnOrdersList, ReturnOrdersObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('returnablepackaging') + '/test/flpSandbox.html#returnablepackaging-tile',
        pages: {
			onTheReturnOrdersList: ReturnOrdersList,
			onTheReturnOrdersObjectPage: ReturnOrdersObjectPage
        },
        async: true
    });

    return runner;
});

