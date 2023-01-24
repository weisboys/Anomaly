function DialogResponses(){
	switch(argument0)
	{
		case 0: break;
		case 1: NewTextBox("Ah, glad to see you're on the same side as me...", 2); break;
		case 2: NewTextBox("Wow, what's it like being wrong?", 2, ["3:Fight me it's totally wet!","0:Have a good day sir"]); break; //the numbers are what case we go to
		case 3: NewTextBox("I am going to hunt you down",2); break;
		default: break;
	}
}