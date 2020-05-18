# SNIPar

SNIPar is a python library for imputing missing parental genotypes from observed sibling and parental genotypes,
and for performing robust GWAS using the resulting imputed parental genotypes

# Main features:

Impute the expected sum of maternal and paternal genotypes given genotype data on the sibling
    offspring of the parents and IBD sharing between the sibling offspring

Imputes the expected genotype of the missing parent given one parent and a number of sibling offspring (1 or more)
    of the parent and the missing parent (and their shared IBD segments for 2 or more siblings). 

Performs robust GWAS using observed and imputed parental genotypes along with observed proband genotypes (fGWAS.py script).

Computes PGS values for probands and parents using observed/imputed parental genotypes and analyse the direct and parental effects
of the PGS on traits (fPGS.py). 

# Documentation

Documentation for the modules and scripts is at: https://sibreg.readthedocs.io/en/master/

It is recommended to read the guide: https://sibreg.readthedocs.io/en/master/guide.html

And to work through the tutorial: https://sibreg.readthedocs.io/en/master/tutorial.html

# Package Install Instructions

SNIPar has the following dependencies:

python 3.7

Packages:

- numpy
- scipy
- pysnptools
- pandas
- networkx
- Cython

We highly recommend using a python distribution such as Anaconda 3 (https://store.continuum.io/cshop/anaconda/).
This will come with both numpy and scipy installed and can include an MKL-compiled distribution
for optimal speed.

To install from source, clone the git repository, and in the directory
containing the SNIPar source code, at the shell type

    'python setupy.py install'

# Running tests

To check that the code is working properly and that the C modules have compiled, you should
run tests. To run the tests, in the main SNIPar directory enter the command:

    ``python setup.py pytest``