define(["amber/boot", "amber_core/SUnit"], function($boot){"use strict";
if(!("nilAsValue" in $boot))$boot.nilAsValue=$boot.nilAsReceiver;
var $core=$boot.api,nil=$boot.nilAsValue,$nil=$boot.nilAsReceiver,$recv=$boot.asReceiver,$globals=$boot.globals;
$core.addPackage("SagateaMobileApp-Tests");
($core.packageDescriptors||$core.packages)["SagateaMobileApp-Tests"].innerEval = function (expr) { return eval(expr); };
($core.packageDescriptors||$core.packages)["SagateaMobileApp-Tests"].transport = {"type":"amd","amdNamespace":"amber-sagateamobileapp"};

$core.addClass("SagateaMobileAppTest", $globals.TestCase, [], "SagateaMobileApp-Tests");

});
