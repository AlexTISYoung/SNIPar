from libcpp.map cimport map as cmap
from libcpp.string cimport string as cstring
from libcpp.pair cimport pair as cpair
cimport numpy as cnp
from libcpp.vector cimport vector
from libc.stdlib cimport malloc, free

cdef int get_IBD_type(cstring id1,
                      cstring id2,
                      int loc,
                      cmap[cpair[cstring, cstring], vector[int]]& ibd_dict) nogil

cdef float impute_snp_from_offsprings(int snp, 
                      int[:] sib_indexes,
                      int[:, :] snp_ibd0,
                      int[:, :] snp_ibd1,
                      int[:, :] snp_ibd2,
                      float f,
                      int[:, :, :] phased_gts,
                      int[:, :] unphased_gts,
                      int[:, :, :] sib_hap_IBDs,                      
                      int len_snp_ibd0,
                      int len_snp_ibd1,
                      int len_snp_ibd2)


cdef float impute_snp_from_parent_offsprings(int snp,
                      int parent,
                      int[:] sib_indexes,
                      int[:, :] snp_ibd0,
                      int[:, :] snp_ibd1,
                      int[:, :] snp_ibd2,
                      float f,
                      int[:, :, :] phased_gts,
                      int[:, :] unphased_gts,
                      int[:, :, :] sib_hap_IBDs,
                      int[:, :, :] parent_offspring_hap_IBDs,
                      int len_snp_ibd0,
                      int len_snp_ibd1,
                      int len_snp_ibd2,
                      )

cdef cmap[cpair[cstring, cstring], vector[int]] dict_to_cmap(dict the_dict)

cdef char is_possible_child(int child, int parent) nogil

cdef void get_IBD(int[:] hap1,
                  int[:] hap2,
                  int length,
                  int half_window,
                  double threshold,
                  int[:] agreement_count,
                  double[:] agreement_percentage,
                  int[:] agreement)