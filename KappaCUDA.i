%module KappaCUDA
%include "std_string.i"

%perlcode %{
$KappaCUDA::VERSION = '1.1.0';
%}

// Ignore non-exported (hidden) methods and variables
%ignore kappa::Kappa::Cancel;
%ignore kappa::Kappa::End;
%ignore kappa::Kappa::Done;
%ignore kappa::Kappa::CPUProcess;
%ignore kappa::Kappa::GPUProcess;
%ignore cuDevice;
%ignore kappa_version;
%ignore kappa::Process::Process;
%ignore kappa::Process::GetIOCallbackFunction;
%ignore kappa::Resource::Resource;
%ignore kappa::Resource::CommandDone;
%ignore kappa::Resource::CheckCommandReady;
%ignore kappa::Context::Context;
#pragma SWIG nowarn=319,401

%{
// Undefine Perl's NORMAL--it just causes problems
#undef NORMAL
#include "Kappa.h"
#include "KappaConfig.h"
#include "kappa/ArgumentsDirection.h"
#include "kappa/ExceptionHandler.h"
#include "kappa/Process.h"
#include "kappa/Result.h"
#include "kappa/Namespace.h"
#include "kappa/Values.h"
#include "kappa/Value.h"
#include "kappa/Resource.h"
#include "kappa/Instruction.h"
#include "kappa/Attributes.h"
#include "kappa/Arguments.h"
#include "kappa/ProcessControlBlock.h"
// Undefine Perl's Copy and New macros--they just causes problems
#undef Copy
#undef New
#include "kappa/Context.h"
using namespace kappa;
%}

#define __attribute__(A)
%include "kappa/Common.h"
%include "Kappa.h"
%include "KappaConfig.h"
%include "kappa/ArgumentsDirection.h"
%include "kappa/ExceptionHandler.h"
%include "kappa/Process.h"
%include "kappa/Result.h"
%include "kappa/Namespace.h"
%include "kappa/Values.h"
%include "kappa/Value.h"
%include "kappa/Resource.h"
%include "kappa/Instruction.h"
%include "kappa/Attributes.h"
%include "kappa/Arguments.h"
%include "kappa/ProcessControlBlock.h"
%include "kappa/Context.h"
