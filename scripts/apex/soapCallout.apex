String[] parks = SoapCallouts.parksCallout('United States');
System.debug(parks);

String[] parks = SoapCallouts.parksCallout('Germany');
System.debug(parks);

Double result = SoapCallouts.doAddCallout(204.5D , 308.56D);

SoapCallouts.doDivideCallout(345.78D, 34.34D);