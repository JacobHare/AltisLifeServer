disableSerialization;
createDialog "RscDisplayWelcome";

_display = findDisplay 999999;
_text1 = _display displayCtrl 1100;
_buttonSpoiler = _display displayctrl 2400;
_textSpoiler = _display displayctrl 1101;
_text2 = _display displayCtrl 1102;

_message = "";
_message = _message + "<t align='center' size='8' shadow='0'><img image='icons\logo.paa' /></t><br />";
_message = _message + "Welcome to <a href='http://fragout.enjin.com' color='#ff6d10'>Frag</a> community roleplay server!<br /><br />";
_message = _message + "This is a serious roleplay server so before you spawn in please make sure you read our rules <a href='http://fragout.enjin.com/forum/m/28694508/viewthread/18360362-server-community-rules' color='#ff6d10'>here</a> otherwise you will end up banned!<br /><br />";
_message = _message + "<t align='center' color='#FF0000' size='2' underline='true'>RESTART EVERY 4 HOURS!</t><br /><br />";
_message = _message + "<t align='center' color='#FF0000' size='0.7' underline='true'>00:00 - 04:00 - 08:00 - 12:00 - 16:00 - 20:00</t><br /><br />";
_message = _message + "<t align='center' color='#FF0000' size='0.7' underline='true'>Timezone: +00:00 GMT</t><br /><br />";

_message = _message + "<t color='#ff6d10' size='1.1' underline='true'>Changelog</t><br /><br />";
// _message = _message + "		<t underline='true'>Dynamic Market</t>			<br />Every been to lazy to leave your house?Well you're in luck! A new app was just released<br />allowing you to view the markets... live!<br /><br />";
// _message = _message + "		<t underline='true'>Proficiency System</t>			<br />We have now introduced a new Proficiency System allowing Police, Civilians and Medics<br />to get special benefits such as faster gathering, incread impound speed, increased revive speeds and much more!<br /><br />";
// _message = _message + "		<t underline='true'>Bounty Hunter System</t>			<br />If you hold the bounty hunter licence you will have the ability<br />to view the wanted list from the Y menu Bounties option. (New Meta-gaming rules to be added)<br /><br />";
_message = _message + "		<t underline='true'>Bye, Bye Kavala!</t>			<br />Kavala has been removed to reduce size of the map for more interaction with players!<br /><br />";
_message = _message + "		<t underline='true'>Vehicle Skins!</t>			<br />Has your life exeperience been dull?<br />Well, you came to the right place! we've got a new stock of Purple, Blue, Pink, Red, Yellow and Chrome vehicles!<br /><br />";
// _message = _message + "		<t underline='true'>Don't Drink and Drive!</t>			<br />Police can now breathalyze players!<br /><br />";
_message = _message + "Enjoy!<br />The Frag Staff!<br />";

//Fill only the first text
_text1 ctrlSetStructuredText (parseText _message);

//Resize StructuredText component to display the scrollbar if needed
_positionText1 = ctrlPosition _text1;
_yText1 = _positionText1 select 1;
_hText1 = ctrlTextHeight _text1;
_text1 ctrlSetPosition [_positionText1 select 0, _yText1, _positionText1 select 2, _hText1];
_text1 ctrlcommit 0;
//Hide second text, spoiler text and button
_buttonSpoiler ctrlSetFade 1;
_buttonSpoiler ctrlCommit 0;
_buttonSpoiler ctrlEnable false;
_textSpoiler ctrlSetFade 1;
_textSpoiler ctrlCommit 0;
_text2 ctrlSetFade 1;
_text2 ctrlCommit 0;