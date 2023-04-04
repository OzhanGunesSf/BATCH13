Map<String,Object> inputs = new Map<String,Object>();
inputs.put('AccountId', '0018d00000Vq9pxAAB');
inputs.put('AccountName', 'Soft Innovas');
inputs.put('AccountOwnerId','0058d000006g0MyAAI');
inputs.put('CreatedByName', 'Ozhan Gunes');

Flow.Interview invokeFlow = new Flow.Interview.X17_Account_Auto_Launch_Flow(inputs);
invokeFlow.start();