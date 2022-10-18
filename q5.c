#include <stdio.h>
#include <string.h>

int transition_table[5][2] = {
	{  1, 0},
	{  3, 2},
	{  1, 0},
	{ -1, 4},
	{ -1,-1}
};

int main() {
	char str[10];
	printf("Enter a binary string (max length is 10): ");
	scanf("%s", str);
	int len = strlen(str);
	int state = 0;	

	for (int i = 0; i < len; i++) {
		if (str[i] == 'a') {
			state = transition_table[state][0];
			if (state == -1) {
				break;
			}
		} else {
			state = transition_table[state][1];
			if (state == -1) {
				break;
			}
		}
	}

	if (state == 4 | state == 0 | state == 2 ) {
		printf("The string is valid\n");
	} else {
		printf("The string is invalid\n");
	}
	return 0;
}
