%module KappaCUDA
%include "std_string.i"
#ifndef SWIGPHP
%include "carrays.i"
%array_class(int, intArray);
%array_class(long, longArray);
%array_class(unsigned, unsignedArray);
%array_class(float, floatArray);
%array_class(double, doubleArray);
#endif

#ifdef SWIGPERL
%perlcode %{
$KappaCUDA::VERSION = '1.2.0';
%}
#endif

#ifdef SWIGPYTHON
%ignore None;
#endif

#ifdef SWIGRUBY
// These give compile errors
%ignore kappa::Arguments::Type;
%ignore kappa::Value::Type;
#endif

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
%ignore kappa::Recipient;
%ignore kappa::Variable::Variable;
%ignore kappa::Array::Array;
%ignore kappa::DeviceMemory;
%ignore kappa::DeviceTexture;
%ignore kappa::LocalMemory;
#pragma SWIG nowarn=319,401,402

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
#undef IsSet
#include "kappa/Context.h"
#include "kappa/Command.h"
#include "kappa/Variable.h"
#include "kappa/Array.h"

KAPPA_DLL_EXPORT int *intptr_fromvoidptr(void *voidptr);
KAPPA_DLL_EXPORT unsigned *unsignedptr_fromvoidptr(void *voidptr);
KAPPA_DLL_EXPORT long *longptr_fromvoidptr(void *voidptr);
KAPPA_DLL_EXPORT float *floatptr_fromvoidptr(void *voidptr);
KAPPA_DLL_EXPORT double *doubleptr_fromvoidptr(void *voidptr);

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
%include "kappa/Command.h"
%include "kappa/Variable.h"
%include "kappa/Array.h"

KAPPA_DLL_EXPORT int *intptr_fromvoidptr(void *voidptr);
KAPPA_DLL_EXPORT unsigned *unsignedptr_fromvoidptr(void *voidptr);
KAPPA_DLL_EXPORT long *longptr_fromvoidptr(void *voidptr);
KAPPA_DLL_EXPORT float *floatptr_fromvoidptr(void *voidptr);
KAPPA_DLL_EXPORT double *doubleptr_fromvoidptr(void *voidptr);

%{
KAPPA_DLL_EXPORT int *intptr_fromvoidptr(void *voidptr) {
    return (int *)voidptr;
}

KAPPA_DLL_EXPORT unsigned *unsignedptr_fromvoidptr(void *voidptr) {
    return (unsigned *)voidptr;
}

KAPPA_DLL_EXPORT long *longptr_fromvoidptr(void *voidptr) {
    return (long *)voidptr;
}

KAPPA_DLL_EXPORT float *floatptr_fromvoidptr(void *voidptr) {
    return (float *)voidptr;
}

KAPPA_DLL_EXPORT double *doubleptr_fromvoidptr(void *voidptr) {
    return (double *)voidptr;
}
%}

#ifdef SWIGPYTHON
KAPPA_DLL_EXPORT kappa::Command *kappaCommand_frompycobject(PyObject *voidptr);
KAPPA_DLL_EXPORT kappa::Kappa *kappaKappa_frompycobject(PyObject *voidptr);
KAPPA_DLL_EXPORT kappa::Process *kappaProcess_frompycobject(PyObject *voidptr);
KAPPA_DLL_EXPORT kappa::Attributes *kappaAttributes_frompycobject(PyObject *voidptr);
KAPPA_DLL_EXPORT kappa::Arguments *kappaArguments_frompycobject(PyObject *voidptr);
KAPPA_DLL_EXPORT kappa::Resource *kappaResource_frompycobject(PyObject *voidptr);
KAPPA_DLL_EXPORT kappa::ProcessControlBlock *kappaPCB_frompycobject(PyObject *voidptr);

%{
KAPPA_DLL_EXPORT kappa::Command *kappaCommand_frompycobject(PyObject *pycptr) {
  return (kappa::Command *)PyCObject_AsVoidPtr (pycptr);
}
KAPPA_DLL_EXPORT kappa::Kappa *kappaKappa_frompycobject(PyObject *pycptr) {
  return (kappa::Kappa *)PyCObject_AsVoidPtr (pycptr);
}
KAPPA_DLL_EXPORT kappa::Process *kappaProcess_frompycobject(PyObject *pycptr) {
  return (kappa::Process *)PyCObject_AsVoidPtr (pycptr);
}
KAPPA_DLL_EXPORT kappa::Attributes *kappaAttributes_frompycobject(PyObject *pycptr) {
  return (kappa::Attributes *)PyCObject_AsVoidPtr (pycptr);
}
KAPPA_DLL_EXPORT kappa::Arguments *kappaArguments_frompycobject(PyObject *pycptr) {
  return (kappa::Arguments *)PyCObject_AsVoidPtr (pycptr);
}
KAPPA_DLL_EXPORT kappa::Resource *kappaResource_frompycobject(PyObject *pycptr) {
  return (kappa::Resource *)PyCObject_AsVoidPtr (pycptr);
}
KAPPA_DLL_EXPORT kappa::ProcessControlBlock *kappaPCB_frompycobject(PyObject *pycptr) {
  return (kappa::ProcessControlBlock *)PyCObject_AsVoidPtr (pycptr);
}
%}
#endif
