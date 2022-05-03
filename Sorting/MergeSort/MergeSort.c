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

void Copy(int a[], int i, int j, int b[]) {
    int p = 0, k;
    for (k = i; k <= j; k++) {
        b[p++] = a[k];
    }
}

void MergeSort(int a[], int i, int j) {
    int m = (i + j) / 2;
    int l[m - i + 1], r[j - m];
    int x, y, k;
    
    MergeSort(a, i, m);
    MergeSort(a, m + 1, j);
    
    Copy(a, i, m, l);
    Copy(a, m + 1, j, r);
    
    x = 1, y = 1;
    
    for (k = i; k <= j; k++) {
        if (l[x] < r[y]) {
            a[k] = l[x++];
        } else {
            a[k] = r[y++];
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
    
    MergeSort(a, 0, n - 1);
    
    WriteToDisk(a, n, output);
    
    return 0;
}

