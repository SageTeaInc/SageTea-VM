Smalltalk createPackage: 'SagateaMobileApp'!
(Smalltalk packageAt: 'SagateaMobileApp' ifAbsent: [ self error: 'Package not created: SagateaMobileApp' ]) imports: {'amber/jquery/Wrappers-JQuery'. 'amber/web/Web'. 'silk/Silk'}!
Widget subclass: #NewForm
	instanceVariableNames: 'formValues formInputs'
	package: 'SagateaMobileApp'!

!NewForm methodsFor: 'as yet unclassified'!

initialize
	formValues := Dictionary new.
	formInputs := Array new
!

renderOn: html
	formInputs removeAll.
	html form id: 'myForm2'; with: [
		html table with: [
			#{'Username'->{'Username:'.'email'}.
			'Password'->{'Password:'.'password'}}
			keysAndValuesDo: [:key :value | 
				self renderInput: key
					label: value first
					type: value second
					on: html]].
	html p: [
		html input
			type: 'submit';
			value: 'Okay';
			onClick: [self collectValues]]]
! !

Object subclass: #SagateaMobileApp
	instanceVariableNames: ''
	package: 'SagateaMobileApp'!

!SagateaMobileApp methodsFor: 'action'!

doAmberWith
	| tag |
	tag := (HTMLCanvas onJQuery: '#output-list' asJQuery) root.
	tag with: [ :html | html li with: 'Amber Web #with: added me!!' ]
!

doJQueryAppend
	'#output-list' asJQuery append: '<li>jQuery append added me!!</li>'
!

doSilkTAG
	'#output-list' asSilk LI: 'Silk TAG: added me!!'
! !

!SagateaMobileApp methodsFor: 'starting'!

augmentPage
	'#amber-with' asJQuery click: [ self doAmberWith ].
	'#silk-tag' asSilk on: #click bind: [ self doSilkTAG ].
	'#jquery-append' asJQuery click: [ self doJQueryAppend ]
! !

!SagateaMobileApp class methodsFor: 'starting'!

start
	self new augmentPage
! !

