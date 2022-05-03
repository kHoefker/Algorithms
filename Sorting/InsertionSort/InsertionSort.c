#include <stdio.h>
#include <stdlib.h>

int PopulateArray(int a[], char *input) {
    FILE *in = fopen(input, "r");
    int i = 0;
    
    while (!feof(in)) {
        fscanf(in, "%i", &(a[i++]));
    }
    
    fclose(in);
    
    return i;
}

void Swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

void InsertionSort(int a[], int n) {
    int i, j;
    
    for (i = 0; i < n - 1; i++) {
        j = i;
        while (j >= 0 && a[j] > a[j + 1]) {
            Swap(a + j, a + j + 1);
            j--;
        }
    }
}

void WriteToDisk(int a[], int n, char *output) {
    FILE *out = fopen(output, "w");
    int i = 0;
    
    while (i < n) {
        fprintf(out, "%i\n", a[i]);
        i++;
    }
}

int main (int argc, char *argv[]) {
    char *input = argv[1];
    char *output = argv[2];
    int a[10000];
    int n;
    
    n = PopulateArray(a, input);
    
    InsertionSort(a, n);
    
    WriteToDisk(a, n, output);
    
    return 0;
}

