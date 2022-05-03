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

void Copy(int a[], int i, int j, int b[]) {
    int k = 0;
    for (k = 0; k <= j - i; k++) {
        b[k] = a[i + k];
    }
}

void MergeSort(int a[], int i, int j) {
    int m = (i + j) / 2;
    int ap = 0, bp = 0;
    int l[(i + j) / 2], r[(i + j + 1) / 2];
    int k = 0;
    
    MergeSort(a, i, m);
    MergeSort(a, m + 1, j);
    
    Copy(a, i, m, l);
    Copy(a, m + 1, j, r);
    
    while (k <= j - i) {
        if (ap < m && l[ap] < r[bp]) {
            a[k++] = l[ap++];
        } else {
            a[k++] = r[bp++];
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

