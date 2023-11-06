#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_input_stream_V_cap_bc;
static AESL_RUNTIME_BC __xlx_input_stream_V_size_Reader("../tv/stream_size/stream_size_in_input_stream_V.dat");
unsigned int ap_apatb_output_stream_V_cap_bc;
static AESL_RUNTIME_BC __xlx_output_stream_V_size_Reader("../tv/stream_size/stream_size_out_output_stream_V.dat");
struct __cosim_sC__ { char data[12]; };
extern "C" void Filter2DKernel(int*, float, short, short, short, short, __cosim_s4__*, __cosim_sC__*);
extern "C" void apatb_Filter2DKernel_hw(volatile void * __xlx_apatb_param_coeffs, float __xlx_apatb_param_factor, short __xlx_apatb_param_bias, short __xlx_apatb_param_width, short __xlx_apatb_param_height, short __xlx_apatb_param_stride, volatile void * __xlx_apatb_param_input_stream, volatile void * __xlx_apatb_param_output_stream) {
  // Collect __xlx_coeffs__tmp_vec
  vector<sc_bv<32> >__xlx_coeffs__tmp_vec;
  for (int j = 0, e = 121; j != e; ++j) {
    __xlx_coeffs__tmp_vec.push_back(((int*)__xlx_apatb_param_coeffs)[j]);
  }
  int __xlx_size_param_coeffs = 121;
  int __xlx_offset_param_coeffs = 0;
  int __xlx_offset_byte_param_coeffs = 0*4;
  int* __xlx_coeffs__input_buffer= new int[__xlx_coeffs__tmp_vec.size()];
  for (int i = 0; i < __xlx_coeffs__tmp_vec.size(); ++i) {
    __xlx_coeffs__input_buffer[i] = __xlx_coeffs__tmp_vec[i].range(31, 0).to_uint64();
  }
  // collect __xlx_input_stream_tmp_vec
  unsigned __xlx_input_stream_V_tmp_Count = 0;
  unsigned __xlx_input_stream_V_read_Size = __xlx_input_stream_V_size_Reader.read_size();
  vector<__cosim_s4__> __xlx_input_stream_tmp_vec;
  while (!((hls::stream<__cosim_s4__>*)__xlx_apatb_param_input_stream)->empty() && __xlx_input_stream_V_tmp_Count < __xlx_input_stream_V_read_Size) {
    __xlx_input_stream_tmp_vec.push_back(((hls::stream<__cosim_s4__>*)__xlx_apatb_param_input_stream)->read());
    __xlx_input_stream_V_tmp_Count++;
  }
  ap_apatb_input_stream_V_cap_bc = __xlx_input_stream_tmp_vec.size();
  // store input buffer
  __cosim_s4__* __xlx_input_stream_input_buffer= new __cosim_s4__[__xlx_input_stream_tmp_vec.size()];
  for (int i = 0; i < __xlx_input_stream_tmp_vec.size(); ++i) {
    __xlx_input_stream_input_buffer[i] = __xlx_input_stream_tmp_vec[i];
  }
  //Create input buffer for output_stream
  ap_apatb_output_stream_V_cap_bc = __xlx_output_stream_V_size_Reader.read_size();
  __cosim_sC__* __xlx_output_stream_input_buffer= new __cosim_sC__[ap_apatb_output_stream_V_cap_bc];
  // DUT call
  Filter2DKernel(__xlx_coeffs__input_buffer, __xlx_apatb_param_factor, __xlx_apatb_param_bias, __xlx_apatb_param_width, __xlx_apatb_param_height, __xlx_apatb_param_stride, __xlx_input_stream_input_buffer, __xlx_output_stream_input_buffer);
// print __xlx_apatb_param_coeffs
  sc_bv<32>*__xlx_coeffs_output_buffer = new sc_bv<32>[__xlx_size_param_coeffs];
  for (int i = 0; i < __xlx_size_param_coeffs; ++i) {
    __xlx_coeffs_output_buffer[i] = __xlx_coeffs__input_buffer[i+__xlx_offset_param_coeffs];
  }
  for (int i = 0; i < __xlx_size_param_coeffs; ++i) {
    ((int*)__xlx_apatb_param_coeffs)[i] = __xlx_coeffs_output_buffer[i].to_uint64();
  }
  for (unsigned i = 0; i <ap_apatb_output_stream_V_cap_bc; ++i)
    ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_output_stream)->write(__xlx_output_stream_input_buffer[i]);
}
