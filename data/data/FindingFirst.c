#include<stdio.h>
#include<ctype.h>
int prods=0;
char productions[20][20];
void addToResult(char arr[],char val)
{
	int i;
	for(i=0;arr[i]!='\0';i++)
	{
		if(arr[i]==val)
			return;
	}
	arr[i]=val;
	arr[i+1]='\0';
}

void FIRST(char* result,char c)
{
	int foundEpsilon=0;
	char subresult[20];
	subresult[0]='\0';
	result[0]='\0';
	//if the character itself is a non-terminal i,e small letter. then it will be the first. So add it to result
	if(!isupper(c)) // A - b. first(b) is b.
	{
		addToResult(result,c);
		return;
	}
	//if it is non-terminal i,e capital letter so find that production and explore it(read). ex first(A).
	int i;
	for(i=0;i<prods;i++)
	{	
		//finding production with given non-terminal
		if(productions[i][0]==c)
		{							   //0 1 2
			if(productions[i][2]=='$') //A - $      here $ is epsilon
			{
				addToResult(result,'$');
			}
			else
			{
				int j=2;// say prod[i][j] is some terminal or non-terminal. So we need to find first of that.
				// A - Ba. Here prod[i][j] = B. need to find first(B). so in finding first(A) finding first of B is subpart
				while(productions[i][j]!='\0')
				{
					foundEpsilon = 0;
					FIRST(subresult,productions[i][j]); // This adds the first of B in subresult
					int k;
					for(k=0;subresult[k]!='\0';k++)
						addToResult(result,subresult[k]); // adding such subresults to main result.
					//checking if subresult leading to epsilon
					for(k=0;subresult[k]!='\0';k++)
					{
						if(subresult[k]=='$')
						{
							foundEpsilon = 1;
							break;
						}
					}
					//that is if A - Ba if B -> epsilon, then A - a. that is we need to check next to B. move forward that is j++.
					if(foundEpsilon)
					{
						j++;	
					}
					else{
						break;//breaking while loop
					}
				}
			}
		}
	}
	return;
}

int main()

{
	char c;
	char choice;
	char result[20];
	printf("Enter No. of Productions\n");
	scanf("%d",&prods);
	//read productions
	int i;
	for(i=0;i<prods;i++)
	{
		//printf("Enter Production %d\n",i+1);
		scanf("%s",productions[i]);
	}
	do{
		printf("Find FIRST of ?\n");
		scanf(" %c", &c);
		FIRST(result,c);
		printf("FIRST(%c)={ ",c);
		for( i=0;result[i]!='\0';i++)
		{
			printf("%c ",result[i]);
		}
		printf("}");
		printf("\nTo continue enter 'y' else ''n'");
		scanf(" %c", &choice);
	}
	while(choice=='y' || choice=='Y');
	return 0;	
}

//Grammar
//S-aABb
//A-c
//A-$
//B-d
//B-$

//output
//Enter No. of Productions
//5
//S-aABb
//A-c
//A-$
//B-d
//B-$
//Find FIRST of ?
//S
//FIRST(S)={a }
//To continue enter 'y' else ''n'Y
//Find FIRST of ?
//A
//FIRST(A)={c $ }
//To continue enter 'y' else ''n'Y
//Find FIRST of ?
//B
//FIRST(B)={d $ }
//To continue enter 'y' else ''n'Y
//Find FIRST of ?
//c
//FIRST(c)={c }
//To continue enter 'y' else ''n'y
//Find FIRST of ?
//d
//FIRST(d)={d }
//To continue enter 'y' else ''n'n
//
//--------------------------------
//Process exited after 29.81 seconds with return value 0
//Press any key to continue . . .
