#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_coeffs "../tv/cdatafile/c.Filter2DKernel.autotvin_coeffs.dat"
#define AUTOTB_TVOUT_coeffs "../tv/cdatafile/c.Filter2DKernel.autotvout_coeffs.dat"
// wrapc file define:
#define AUTOTB_TVIN_factor "../tv/cdatafile/c.Filter2DKernel.autotvin_factor.dat"
#define AUTOTB_TVOUT_factor "../tv/cdatafile/c.Filter2DKernel.autotvout_factor.dat"
// wrapc file define:
#define AUTOTB_TVIN_bias "../tv/cdatafile/c.Filter2DKernel.autotvin_bias.dat"
#define AUTOTB_TVOUT_bias "../tv/cdatafile/c.Filter2DKernel.autotvout_bias.dat"
// wrapc file define:
#define AUTOTB_TVIN_width "../tv/cdatafile/c.Filter2DKernel.autotvin_width.dat"
#define AUTOTB_TVOUT_width "../tv/cdatafile/c.Filter2DKernel.autotvout_width.dat"
// wrapc file define:
#define AUTOTB_TVIN_height "../tv/cdatafile/c.Filter2DKernel.autotvin_height.dat"
#define AUTOTB_TVOUT_height "../tv/cdatafile/c.Filter2DKernel.autotvout_height.dat"
// wrapc file define:
#define AUTOTB_TVIN_stride "../tv/cdatafile/c.Filter2DKernel.autotvin_stride.dat"
#define AUTOTB_TVOUT_stride "../tv/cdatafile/c.Filter2DKernel.autotvout_stride.dat"
// wrapc file define:
#define AUTOTB_TVIN_input_stream_V "../tv/cdatafile/c.Filter2DKernel.autotvin_input_stream_V.dat"
#define AUTOTB_TVOUT_input_stream_V "../tv/cdatafile/c.Filter2DKernel.autotvout_input_stream_V.dat"
#define WRAPC_STREAM_SIZE_IN_input_stream_V "../tv/stream_size/stream_size_in_input_stream_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_input_stream_V "../tv/stream_size/stream_ingress_status_input_stream_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_output_stream_V_data_V "../tv/cdatafile/c.Filter2DKernel.autotvin_output_stream_V_data_V.dat"
#define AUTOTB_TVOUT_output_stream_V_data_V "../tv/cdatafile/c.Filter2DKernel.autotvout_output_stream_V_data_V.dat"
#define AUTOTB_TVIN_output_stream_V_keep_V "../tv/cdatafile/c.Filter2DKernel.autotvin_output_stream_V_keep_V.dat"
#define AUTOTB_TVOUT_output_stream_V_keep_V "../tv/cdatafile/c.Filter2DKernel.autotvout_output_stream_V_keep_V.dat"
#define AUTOTB_TVIN_output_stream_V_strb_V "../tv/cdatafile/c.Filter2DKernel.autotvin_output_stream_V_strb_V.dat"
#define AUTOTB_TVOUT_output_stream_V_strb_V "../tv/cdatafile/c.Filter2DKernel.autotvout_output_stream_V_strb_V.dat"
#define AUTOTB_TVIN_output_stream_V_last_V "../tv/cdatafile/c.Filter2DKernel.autotvin_output_stream_V_last_V.dat"
#define AUTOTB_TVOUT_output_stream_V_last_V "../tv/cdatafile/c.Filter2DKernel.autotvout_output_stream_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_output_stream_V_data_V "../tv/stream_size/stream_size_out_output_stream_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_output_stream_V_data_V "../tv/stream_size/stream_egress_status_output_stream_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_output_stream_V_keep_V "../tv/stream_size/stream_size_out_output_stream_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_output_stream_V_keep_V "../tv/stream_size/stream_egress_status_output_stream_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_output_stream_V_strb_V "../tv/stream_size/stream_size_out_output_stream_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_output_stream_V_strb_V "../tv/stream_size/stream_egress_status_output_stream_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_output_stream_V_last_V "../tv/stream_size/stream_size_out_output_stream_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_output_stream_V_last_V "../tv/stream_size/stream_egress_status_output_stream_V_last_V.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_coeffs "../tv/rtldatafile/rtl.Filter2DKernel.autotvout_coeffs.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_factor "../tv/rtldatafile/rtl.Filter2DKernel.autotvout_factor.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_bias "../tv/rtldatafile/rtl.Filter2DKernel.autotvout_bias.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_width "../tv/rtldatafile/rtl.Filter2DKernel.autotvout_width.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_height "../tv/rtldatafile/rtl.Filter2DKernel.autotvout_height.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_stride "../tv/rtldatafile/rtl.Filter2DKernel.autotvout_stride.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_input_stream_V "../tv/rtldatafile/rtl.Filter2DKernel.autotvout_input_stream_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_output_stream_V_data_V "../tv/rtldatafile/rtl.Filter2DKernel.autotvout_output_stream_V_data_V.dat"
#define AUTOTB_TVOUT_PC_output_stream_V_keep_V "../tv/rtldatafile/rtl.Filter2DKernel.autotvout_output_stream_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_output_stream_V_strb_V "../tv/rtldatafile/rtl.Filter2DKernel.autotvout_output_stream_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_output_stream_V_last_V "../tv/rtldatafile/rtl.Filter2DKernel.autotvout_output_stream_V_last_V.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  coeffs_depth = 0;
  factor_depth = 0;
  bias_depth = 0;
  width_depth = 0;
  height_depth = 0;
  stride_depth = 0;
  input_stream_V_depth = 0;
  output_stream_V_data_V_depth = 0;
  output_stream_V_keep_V_depth = 0;
  output_stream_V_strb_V_depth = 0;
  output_stream_V_last_V_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{coeffs " << coeffs_depth << "}\n";
  total_list << "{factor " << factor_depth << "}\n";
  total_list << "{bias " << bias_depth << "}\n";
  total_list << "{width " << width_depth << "}\n";
  total_list << "{height " << height_depth << "}\n";
  total_list << "{stride " << stride_depth << "}\n";
  total_list << "{input_stream_V " << input_stream_V_depth << "}\n";
  total_list << "{output_stream_V_data_V " << output_stream_V_data_V_depth << "}\n";
  total_list << "{output_stream_V_keep_V " << output_stream_V_keep_V_depth << "}\n";
  total_list << "{output_stream_V_strb_V " << output_stream_V_strb_V_depth << "}\n";
  total_list << "{output_stream_V_last_V " << output_stream_V_last_V_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int coeffs_depth;
    int factor_depth;
    int bias_depth;
    int width_depth;
    int height_depth;
    int stride_depth;
    int input_stream_V_depth;
    int output_stream_V_data_V_depth;
    int output_stream_V_keep_V_depth;
    int output_stream_V_strb_V_depth;
    int output_stream_V_last_V_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
struct __cosim_sC__ { char data[12]; };
extern "C" void Filter2DKernel_hw_stub_wrapper(volatile void *, float, short, short, short, short, volatile void *, volatile void *);

extern "C" void apatb_Filter2DKernel_hw(volatile void * __xlx_apatb_param_coeffs, float __xlx_apatb_param_factor, short __xlx_apatb_param_bias, short __xlx_apatb_param_width, short __xlx_apatb_param_height, short __xlx_apatb_param_stride, volatile void * __xlx_apatb_param_input_stream, volatile void * __xlx_apatb_param_output_stream) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;long __xlx_apatb_param_input_stream_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_input_stream_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_input_stream_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_input_stream_V_stream_buf_final_size; ++i)((hls::stream<__cosim_s4__>*)__xlx_apatb_param_input_stream)->read();
{sc_bv<96> xlx_stream_output_stream_pc_buffer;
unsigned xlx_stream_output_stream_size = 0;

          std::vector<sc_bv<32> > output_stream_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_output_stream_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > output_stream_V_data_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "output_stream");
  
            // push token into output port buffer
            if (AESL_token != "") {
              output_stream_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_output_stream_size=output_stream_V_data_V_pc_buffer.size();
output_stream_V_data_V_pc_buffer_Copy=output_stream_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > output_stream_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_output_stream_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > output_stream_V_keep_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "output_stream");
  
            // push token into output port buffer
            if (AESL_token != "") {
              output_stream_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_output_stream_size=output_stream_V_keep_V_pc_buffer.size();
output_stream_V_keep_V_pc_buffer_Copy=output_stream_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > output_stream_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_output_stream_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > output_stream_V_strb_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "output_stream");
  
            // push token into output port buffer
            if (AESL_token != "") {
              output_stream_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_output_stream_size=output_stream_V_strb_V_pc_buffer.size();
output_stream_V_strb_V_pc_buffer_Copy=output_stream_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > output_stream_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_output_stream_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > output_stream_V_last_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "output_stream");
  
            // push token into output port buffer
            if (AESL_token != "") {
              output_stream_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_output_stream_size=output_stream_V_last_V_pc_buffer.size();
output_stream_V_last_V_pc_buffer_Copy=output_stream_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_output_stream_size; j != e; ++j) {
xlx_stream_output_stream_pc_buffer.range(31, 0) = output_stream_V_data_V_pc_buffer_Copy[j];
xlx_stream_output_stream_pc_buffer.range(39, 32) = output_stream_V_keep_V_pc_buffer_Copy[j];
xlx_stream_output_stream_pc_buffer.range(47, 40) = output_stream_V_strb_V_pc_buffer_Copy[j];
xlx_stream_output_stream_pc_buffer.range(63, 56) = output_stream_V_last_V_pc_buffer_Copy[j];
__cosim_sC__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*1+0] = xlx_stream_output_stream_pc_buffer.range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*1+1] = xlx_stream_output_stream_pc_buffer.range(95,64).to_int64();
((hls::stream<__cosim_sC__>*)__xlx_apatb_param_output_stream)->write(xlx_stream_elt);
}}
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//coeffs
aesl_fh.touch(AUTOTB_TVIN_coeffs);
aesl_fh.touch(AUTOTB_TVOUT_coeffs);
//factor
aesl_fh.touch(AUTOTB_TVIN_factor);
aesl_fh.touch(AUTOTB_TVOUT_factor);
//bias
aesl_fh.touch(AUTOTB_TVIN_bias);
aesl_fh.touch(AUTOTB_TVOUT_bias);
//width
aesl_fh.touch(AUTOTB_TVIN_width);
aesl_fh.touch(AUTOTB_TVOUT_width);
//height
aesl_fh.touch(AUTOTB_TVIN_height);
aesl_fh.touch(AUTOTB_TVOUT_height);
//stride
aesl_fh.touch(AUTOTB_TVIN_stride);
aesl_fh.touch(AUTOTB_TVOUT_stride);
//input_stream_V
aesl_fh.touch(AUTOTB_TVIN_input_stream_V);
aesl_fh.touch(AUTOTB_TVOUT_input_stream_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_input_stream_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_input_stream_V);
//output_stream
aesl_fh.touch(AUTOTB_TVIN_output_stream_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_output_stream_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_output_stream_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_output_stream_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_output_stream_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_output_stream_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_output_stream_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_output_stream_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_output_stream_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_output_stream_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_output_stream_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_output_stream_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_output_stream_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_output_stream_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_output_stream_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_output_stream_V_last_V);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_coeffs = 0;
// print coeffs Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_coeffs, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_coeffs = 0*4;
  if (__xlx_apatb_param_coeffs) {
    for (int j = 0  - 0, e = 121 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_coeffs)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_coeffs, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(121, &tcl_file.coeffs_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_coeffs, __xlx_sprintf_buffer.data());
}
// print factor Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_factor, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_factor);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_factor, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.factor_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_factor, __xlx_sprintf_buffer.data());
}
// print bias Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_bias, __xlx_sprintf_buffer.data());
  {
    sc_bv<16> __xlx_tmp_lv = *((short*)&__xlx_apatb_param_bias);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_bias, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.bias_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_bias, __xlx_sprintf_buffer.data());
}
// print width Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_width, __xlx_sprintf_buffer.data());
  {
    sc_bv<16> __xlx_tmp_lv = *((short*)&__xlx_apatb_param_width);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_width, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.width_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_width, __xlx_sprintf_buffer.data());
}
// print height Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_height, __xlx_sprintf_buffer.data());
  {
    sc_bv<16> __xlx_tmp_lv = *((short*)&__xlx_apatb_param_height);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_height, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.height_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_height, __xlx_sprintf_buffer.data());
}
// print stride Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_stride, __xlx_sprintf_buffer.data());
  {
    sc_bv<16> __xlx_tmp_lv = *((short*)&__xlx_apatb_param_stride);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_stride, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.stride_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_stride, __xlx_sprintf_buffer.data());
}
std::vector<__cosim_s4__> __xlx_apatb_param_input_stream_stream_buf;
{
  while (!((hls::stream<__cosim_s4__>*)__xlx_apatb_param_input_stream)->empty())
    __xlx_apatb_param_input_stream_stream_buf.push_back(((hls::stream<__cosim_s4__>*)__xlx_apatb_param_input_stream)->read());
  for (int i = 0; i < __xlx_apatb_param_input_stream_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_input_stream)->write(__xlx_apatb_param_input_stream_stream_buf[i]);
  }
long __xlx_apatb_param_input_stream_stream_buf_size = ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_input_stream)->size();
std::vector<__cosim_sC__> __xlx_apatb_param_output_stream_stream_buf;
long __xlx_apatb_param_output_stream_stream_buf_size = ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_output_stream)->size();
CodeState = CALL_C_DUT;
Filter2DKernel_hw_stub_wrapper(__xlx_apatb_param_coeffs, __xlx_apatb_param_factor, __xlx_apatb_param_bias, __xlx_apatb_param_width, __xlx_apatb_param_height, __xlx_apatb_param_stride, __xlx_apatb_param_input_stream, __xlx_apatb_param_output_stream);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_input_stream_stream_buf_final_size = __xlx_apatb_param_input_stream_stream_buf_size - ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_input_stream)->size();
// print input_stream_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_input_stream_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_input_stream_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv_hw;
sc_bv<32> __xlx_tmp_lv;
__xlx_tmp_lv = ((int*)&__xlx_apatb_param_input_stream_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_input_stream_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_input_stream_stream_buf_final_size, &tcl_file.input_stream_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_input_stream_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_input_stream_stream_buf_final_size > 0) {
  long input_stream_V_stream_ingress_size = __xlx_apatb_param_input_stream_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", input_stream_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_input_stream_stream_buf_final_size; j != e; j++) {
    input_stream_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", input_stream_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V, __xlx_sprintf_buffer.data());
  }
} else {
  long input_stream_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", input_stream_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_stream_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_stream_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_input_stream_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_stream_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_stream_V, __xlx_sprintf_buffer.data());
}
//********************** dump C output stream *******************
long __xlx_apatb_param_output_stream_stream_buf_final_size = ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_output_stream)->size() - __xlx_apatb_param_output_stream_stream_buf_size;
{
  while (!((hls::stream<__cosim_sC__>*)__xlx_apatb_param_output_stream)->empty())
    __xlx_apatb_param_output_stream_stream_buf.push_back(((hls::stream<__cosim_sC__>*)__xlx_apatb_param_output_stream)->read());
  for (int i = 0; i < __xlx_apatb_param_output_stream_stream_buf.size(); ++i)
    ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_output_stream)->write(__xlx_apatb_param_output_stream_stream_buf[i]);
  }

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_output_stream_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_output_stream_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_output_stream_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_output_stream_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_output_stream_stream_buf_final_size; j != e; ++j) {
sc_bv<96> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_output_stream_stream_buf[__xlx_apatb_param_output_stream_stream_buf_size+j])[0*1+0];
__xlx_tmp_lv.range(95,64) = ((long long*)&__xlx_apatb_param_output_stream_stream_buf[__xlx_apatb_param_output_stream_stream_buf_size+j])[0*1+1];
sc_bv<32> __xlx_tmp_0_lv = __xlx_tmp_lv.range(31, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_output_stream_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_1_lv = __xlx_tmp_lv.range(39, 32);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_output_stream_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_2_lv = __xlx_tmp_lv.range(47, 40);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_output_stream_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(63, 56);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_output_stream_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_output_stream_stream_buf_final_size, &tcl_file.output_stream_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_output_stream_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_output_stream_stream_buf_final_size, &tcl_file.output_stream_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_output_stream_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_output_stream_stream_buf_final_size, &tcl_file.output_stream_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_output_stream_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_output_stream_stream_buf_final_size, &tcl_file.output_stream_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_output_stream_V_last_V, __xlx_sprintf_buffer.data());
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_output_stream_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_output_stream_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_output_stream_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_output_stream_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_output_stream_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_output_stream_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_output_stream_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_output_stream_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_output_stream_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_output_stream_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_output_stream_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_output_stream_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_output_stream_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_output_stream_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_output_stream_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_output_stream_V_last_V, __xlx_sprintf_buffer.data());
}CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
