## NavigationSolution

Note: for performing the push navigation, run the app and "Drag and Drop" the push notification payloads from the "PushPayloads" folder onto the simulator.

##Push: 	

If last element of the navigation stack supports the Base screen then push, Else add new navigation stack

```swift
{ “wallet/calendar” }
-> go to details
{ “wallet/calendar/details ” }
-> go to discovery
{ “wallet/calendar/details”, “discovery” }
-> go to mission
{ “wallet/calendar/details”, “discovery” , “mission” }
-> go to mission unclaimed
{ “wallet/calendar/details”, “discovery” , “mission/unclaimed” }
```

##Pop: 	

If top element in stack is NOT Base screen, pop to previous stack element 
If top element in stack is Base screen, pop to previous stack
	
```swift
{ “wallet/calendar/details”, “discovery” , “mission/unclaimed” }
{ “wallet/calendar/details”, “discovery” , “mission” }
{ “wallet/calendar/details”, “discovery” }
{ “wallet/calendar/details” }
{ “wallet/calendar” }
```
