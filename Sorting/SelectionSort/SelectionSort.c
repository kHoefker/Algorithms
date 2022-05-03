#include <stdio.h>
#include <stdlib.h>

int PopulateArray(int a[], char *input) {
    FILE *in = fopen(input, "r");
    int x;
    int i = 0;
    
    while (!feof(in)) {
        fscanf(in, "%i", &x);
        i++;
    }
    
    fclose(in);
    
    return i;
}

void Swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

void SelectionSort(int a[], int n) {
    int i;
    
    if (n <= 1) return;
    
    for (i = 0; i < n - 2; i++) {
        if (a[i] > a[n - 1]) Swap(a + i, a + n - 1);
    }
    SelectionSort(a, n - 1);
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
    
    SelectionSort(a, n);
    
    WriteToDisk(a, n, output);
    
    return 0;
}
