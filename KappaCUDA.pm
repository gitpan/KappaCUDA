# This file was automatically generated by SWIG (http://www.swig.org).
# Version 1.2.0
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

package KappaCUDA;
use base qw(Exporter);
use base qw(DynaLoader);
package KappaCUDAc;
bootstrap KappaCUDA;
package KappaCUDA;
@EXPORT = qw();

# ---------- BASE METHODS -------------

package KappaCUDA;

sub TIEHASH {
    my ($classname,$obj) = @_;
    return bless $obj, $classname;
}

sub CLEAR { }

sub FIRSTKEY { }

sub NEXTKEY { }

sub FETCH {
    my ($self,$field) = @_;
    my $member_func = "swig_${field}_get";
    $self->$member_func();
}

sub STORE {
    my ($self,$field,$newval) = @_;
    my $member_func = "swig_${field}_set";
    $self->$member_func($newval);
}

sub this {
    my $ptr = shift;
    return tied(%$ptr);
}


# ------- FUNCTION WRAPPERS --------

package KappaCUDA;

*intptr_fromvoidptr = *KappaCUDAc::intptr_fromvoidptr;
*unsignedptr_fromvoidptr = *KappaCUDAc::unsignedptr_fromvoidptr;
*longptr_fromvoidptr = *KappaCUDAc::longptr_fromvoidptr;
*floatptr_fromvoidptr = *KappaCUDAc::floatptr_fromvoidptr;
*doubleptr_fromvoidptr = *KappaCUDAc::doubleptr_fromvoidptr;

############# Class : KappaCUDA::intArray ##############

package KappaCUDA::intArray;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( KappaCUDA );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = KappaCUDAc::new_intArray(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        KappaCUDAc::delete_intArray($self);
        delete $OWNER{$self};
    }
}

*getitem = *KappaCUDAc::intArray_getitem;
*setitem = *KappaCUDAc::intArray_setitem;
*cast = *KappaCUDAc::intArray_cast;
*frompointer = *KappaCUDAc::intArray_frompointer;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : KappaCUDA::longArray ##############

package KappaCUDA::longArray;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( KappaCUDA );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = KappaCUDAc::new_longArray(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        KappaCUDAc::delete_longArray($self);
        delete $OWNER{$self};
    }
}

*getitem = *KappaCUDAc::longArray_getitem;
*setitem = *KappaCUDAc::longArray_setitem;
*cast = *KappaCUDAc::longArray_cast;
*frompointer = *KappaCUDAc::longArray_frompointer;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : KappaCUDA::unsignedArray ##############

package KappaCUDA::unsignedArray;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( KappaCUDA );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = KappaCUDAc::new_unsignedArray(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        KappaCUDAc::delete_unsignedArray($self);
        delete $OWNER{$self};
    }
}

*getitem = *KappaCUDAc::unsignedArray_getitem;
*setitem = *KappaCUDAc::unsignedArray_setitem;
*cast = *KappaCUDAc::unsignedArray_cast;
*frompointer = *KappaCUDAc::unsignedArray_frompointer;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : KappaCUDA::floatArray ##############

package KappaCUDA::floatArray;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( KappaCUDA );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = KappaCUDAc::new_floatArray(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        KappaCUDAc::delete_floatArray($self);
        delete $OWNER{$self};
    }
}

*getitem = *KappaCUDAc::floatArray_getitem;
*setitem = *KappaCUDAc::floatArray_setitem;
*cast = *KappaCUDAc::floatArray_cast;
*frompointer = *KappaCUDAc::floatArray_frompointer;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : KappaCUDA::doubleArray ##############

package KappaCUDA::doubleArray;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( KappaCUDA );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = KappaCUDAc::new_doubleArray(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        KappaCUDAc::delete_doubleArray($self);
        delete $OWNER{$self};
    }
}

*getitem = *KappaCUDAc::doubleArray_getitem;
*setitem = *KappaCUDAc::doubleArray_setitem;
*cast = *KappaCUDAc::doubleArray_cast;
*frompointer = *KappaCUDAc::doubleArray_frompointer;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : KappaCUDA::Kappa ##############

package KappaCUDA::Kappa;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( KappaCUDA );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = KappaCUDAc::new_Kappa(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        KappaCUDAc::delete_Kappa($self);
        delete $OWNER{$self};
    }
}

*Good = *KappaCUDAc::Kappa_Good;
*SetCUDA64Bit = *KappaCUDAc::Kappa_SetCUDA64Bit;
*GetProcess = *KappaCUDAc::Kappa_GetProcess;
*HasProcess = *KappaCUDAc::Kappa_HasProcess;
*RemoveProcess = *KappaCUDAc::Kappa_RemoveProcess;
*Count = *KappaCUDAc::Kappa_Count;
*SetTrace = *KappaCUDAc::Kappa_SetTrace;
*Trace = *KappaCUDAc::Kappa_Trace;
*GetExceptionHandler = *KappaCUDAc::Kappa_GetExceptionHandler;
*SetExceptionHandler = *KappaCUDAc::Kappa_SetExceptionHandler;
*CudaInitFlags = *KappaCUDAc::Kappa_CudaInitFlags;
*Start = *KappaCUDAc::Kappa_Start;
*WaitForAll = *KappaCUDAc::Kappa_WaitForAll;
*ThreadID = *KappaCUDAc::Kappa_ThreadID;
*GetCommandQueue = *KappaCUDAc::Kappa_GetCommandQueue;
*Result = *KappaCUDAc::Kappa_Result;
*BasePath = *KappaCUDAc::Kappa_BasePath;
*GPU = *KappaCUDAc::Kappa_GPU;
*Config = *KappaCUDAc::Kappa_Config;
*CUDAConfig = *KappaCUDAc::Kappa_CUDAConfig;
*GetEvaluator = *KappaCUDAc::Kappa_GetEvaluator;
*Registered = *KappaCUDAc::Kappa_Registered;
*Instance = *KappaCUDAc::Kappa_Instance;
*NewDBDriver = *KappaCUDAc::Kappa_NewDBDriver;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : KappaCUDA::KappaConfig ##############

package KappaCUDA::KappaConfig;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( KappaCUDA );
%OWNER = ();
%ITERATORS = ();
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        KappaCUDAc::delete_KappaConfig($self);
        delete $OWNER{$self};
    }
}

*SetAdditionalConfig = *KappaCUDAc::KappaConfig_SetAdditionalConfig;
*AsString = *KappaCUDAc::KappaConfig_AsString;
*AsBool = *KappaCUDAc::KappaConfig_AsBool;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : KappaCUDA::ExceptionHandler ##############

package KappaCUDA::ExceptionHandler;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( KappaCUDA );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = KappaCUDAc::new_ExceptionHandler(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        KappaCUDAc::delete_ExceptionHandler($self);
        delete $OWNER{$self};
    }
}

*Catch = *KappaCUDAc::ExceptionHandler_Catch;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : KappaCUDA::Process ##############

package KappaCUDA::Process;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( KappaCUDA );
%OWNER = ();
%ITERATORS = ();
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        KappaCUDAc::delete_Process($self);
        delete $OWNER{$self};
    }
}

*ProcessKeywordConfig = *KappaCUDAc::Process_ProcessKeywordConfig;
*InitCUDAConfig = *KappaCUDAc::Process_InitCUDAConfig;
*SetExceptionHandler = *KappaCUDAc::Process_SetExceptionHandler;
*RememberAnonymous = *KappaCUDAc::Process_RememberAnonymous;
*DoNotExecute = *KappaCUDAc::Process_DoNotExecute;
*SetTrace = *KappaCUDAc::Process_SetTrace;
*Trace = *KappaCUDAc::Process_Trace;
*SetCommandTrace = *KappaCUDAc::Process_SetCommandTrace;
*CommandTrace = *KappaCUDAc::Process_CommandTrace;
*SetQueueResults = *KappaCUDAc::Process_SetQueueResults;
*ExecuteFile = *KappaCUDAc::Process_ExecuteFile;
*ExecuteString = *KappaCUDAc::Process_ExecuteString;
*GetNamespace = *KappaCUDAc::Process_GetNamespace;
*RegisterIOCallback = *KappaCUDAc::Process_RegisterIOCallback;
*GetIOUserData = *KappaCUDAc::Process_GetIOUserData;
*AddKeywordKeyword = *KappaCUDAc::Process_AddKeywordKeyword;
*RegisterKeywordCommand = *KappaCUDAc::Process_RegisterKeywordCommand;
*RegisterKeywordCommandData = *KappaCUDAc::Process_RegisterKeywordCommandData;
*NewKeywordCommand = *KappaCUDAc::Process_NewKeywordCommand;
*OutputRoutines = *KappaCUDAc::Process_OutputRoutines;
*OutputRoutine = *KappaCUDAc::Process_OutputRoutine;
*LoadRoutine = *KappaCUDAc::Process_LoadRoutine;
*AccessResource = *KappaCUDAc::Process_AccessResource;
*RelinquishResource = *KappaCUDAc::Process_RelinquishResource;
*SetCurrentContextPath = *KappaCUDAc::Process_SetCurrentContextPath;
*GetCurrentContextPath = *KappaCUDAc::Process_GetCurrentContextPath;
*ExecuteRoutine = *KappaCUDAc::Process_ExecuteRoutine;
*ExecuteFunction = *KappaCUDAc::Process_ExecuteFunction;
*ProperRoutineType = *KappaCUDAc::Process_ProperRoutineType;
*GetResult = *KappaCUDAc::Process_GetResult;
*ExpandRoutine = *KappaCUDAc::Process_ExpandRoutine;
*DBDriver = *KappaCUDAc::Process_DBDriver;
*FreeDBDriver = *KappaCUDAc::Process_FreeDBDriver;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : KappaCUDA::Result ##############

package KappaCUDA::Result;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( KappaCUDA );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = KappaCUDAc::new_Result(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        KappaCUDAc::delete_Result($self);
        delete $OWNER{$self};
    }
}

*Status = *KappaCUDAc::Result_Status;
*Type = *KappaCUDAc::Result_Type;
*Name = *KappaCUDAc::Result_Name;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : KappaCUDA::Namespace ##############

package KappaCUDA::Namespace;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( KappaCUDA );
%OWNER = ();
%ITERATORS = ();
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        KappaCUDAc::delete_Namespace($self);
        delete $OWNER{$self};
    }
}

sub new {
    my $pkg = shift;
    my $self = KappaCUDAc::new_Namespace(@_);
    bless $self, $pkg if defined($self);
}

*Add = *KappaCUDAc::Namespace_Add;
*Get = *KappaCUDAc::Namespace_Get;
*GetKeys = *KappaCUDAc::Namespace_GetKeys;
*Remove = *KappaCUDAc::Namespace_Remove;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : KappaCUDA::Values ##############

package KappaCUDA::Values;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( KappaCUDA );
%OWNER = ();
%ITERATORS = ();
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        KappaCUDAc::delete_Values($self);
        delete $OWNER{$self};
    }
}

sub new {
    my $pkg = shift;
    my $self = KappaCUDAc::new_Values(@_);
    bless $self, $pkg if defined($self);
}

*GetKeys = *KappaCUDAc::Values_GetKeys;
*GetValue = *KappaCUDAc::Values_GetValue;
*Remove = *KappaCUDAc::Values_Remove;
*Size = *KappaCUDAc::Values_Size;
*AddUnidentified = *KappaCUDAc::Values_AddUnidentified;
*AddVariable = *KappaCUDAc::Values_AddVariable;
*AddIndices = *KappaCUDAc::Values_AddIndices;
*Add = *KappaCUDAc::Values_Add;
*GetUint8 = *KappaCUDAc::Values_GetUint8;
*GetUint16 = *KappaCUDAc::Values_GetUint16;
*GetUint32 = *KappaCUDAc::Values_GetUint32;
*GetFloat = *KappaCUDAc::Values_GetFloat;
*GetBool = *KappaCUDAc::Values_GetBool;
*GetUint64 = *KappaCUDAc::Values_GetUint64;
*GetDouble = *KappaCUDAc::Values_GetDouble;
*GetPointer = *KappaCUDAc::Values_GetPointer;
*GetString = *KappaCUDAc::Values_GetString;
*GetVariable = *KappaCUDAc::Values_GetVariable;
*GetNamespace_Value = *KappaCUDAc::Values_GetNamespace_Value;
*GetIndices = *KappaCUDAc::Values_GetIndices;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : KappaCUDA::Value ##############

package KappaCUDA::Value;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( KappaCUDA );
%OWNER = ();
%ITERATORS = ();
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        KappaCUDAc::delete_Value($self);
        delete $OWNER{$self};
    }
}

sub new {
    my $pkg = shift;
    my $self = KappaCUDAc::new_Value(@_);
    bless $self, $pkg if defined($self);
}

*Type = *KappaCUDAc::Value_Type;
*Union = *KappaCUDAc::Value_Union;
*SetStringType = *KappaCUDAc::Value_SetStringType;
*CopyValue = *KappaCUDAc::Value_CopyValue;
*Free = *KappaCUDAc::Value_Free;
*Set = *KappaCUDAc::Value_Set;
*Prepare = *KappaCUDAc::Value_Prepare;
*Resolve = *KappaCUDAc::Value_Resolve;
*Get = *KappaCUDAc::Value_Get;
*Size = *KappaCUDAc::Value_Size;
*GetExpression = *KappaCUDAc::Value_GetExpression;
*Good = *KappaCUDAc::Value_Good;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : KappaCUDA::Resource ##############

package KappaCUDA::Resource;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( KappaCUDA );
%OWNER = ();
%ITERATORS = ();
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        KappaCUDAc::delete_Resource($self);
        delete $OWNER{$self};
    }
}

*SetCurrentByType = *KappaCUDAc::Resource_SetCurrentByType;
*SetCurrentByTypeName = *KappaCUDAc::Resource_SetCurrentByTypeName;
*SetDependencyByTypes = *KappaCUDAc::Resource_SetDependencyByTypes;
*SetDependencyByType = *KappaCUDAc::Resource_SetDependencyByType;
*SetDependencyByTypeName = *KappaCUDAc::Resource_SetDependencyByTypeName;
*SetFinalByType = *KappaCUDAc::Resource_SetFinalByType;
*SetFinalByTypeName = *KappaCUDAc::Resource_SetFinalByTypeName;
*CommandResources = *KappaCUDAc::Resource_CommandResources;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : KappaCUDA::Instruction ##############

package KappaCUDA::Instruction;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( KappaCUDA );
%OWNER = ();
%ITERATORS = ();
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        KappaCUDAc::delete_Instruction($self);
        delete $OWNER{$self};
    }
}

sub new {
    my $pkg = shift;
    my $self = KappaCUDAc::new_Instruction(@_);
    bless $self, $pkg if defined($self);
}

*AddOriginalName = *KappaCUDAc::Instruction_AddOriginalName;
*GetOriginalName = *KappaCUDAc::Instruction_GetOriginalName;
*GetKeyword = *KappaCUDAc::Instruction_GetKeyword;
*GetName = *KappaCUDAc::Instruction_GetName;
*GetAttributes = *KappaCUDAc::Instruction_GetAttributes;
*GetArguments = *KappaCUDAc::Instruction_GetArguments;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : KappaCUDA::Attributes ##############

package KappaCUDA::Attributes;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( KappaCUDA::Values KappaCUDA );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = KappaCUDAc::new_Attributes(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        KappaCUDAc::delete_Attributes($self);
        delete $OWNER{$self};
    }
}

*Prepare = *KappaCUDAc::Attributes_Prepare;
*Resolve = *KappaCUDAc::Attributes_Resolve;
*Get = *KappaCUDAc::Attributes_Get;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : KappaCUDA::Arguments ##############

package KappaCUDA::Arguments;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( KappaCUDA );
%OWNER = ();
%ITERATORS = ();
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        KappaCUDAc::delete_Arguments($self);
        delete $OWNER{$self};
    }
}

sub new {
    my $pkg = shift;
    my $self = KappaCUDAc::new_Arguments(@_);
    bless $self, $pkg if defined($self);
}

*Reset = *KappaCUDAc::Arguments_Reset;
*Size = *KappaCUDAc::Arguments_Size;
*Add = *KappaCUDAc::Arguments_Add;
*TexRef = *KappaCUDAc::Arguments_TexRef;
*Out = *KappaCUDAc::Arguments_Out;
*IO = *KappaCUDAc::Arguments_IO;
*In = *KappaCUDAc::Arguments_In;
*Type = *KappaCUDAc::Arguments_Type;
*Direction = *KappaCUDAc::Arguments_Direction;
*Get = *KappaCUDAc::Arguments_Get;
*GetIndices = *KappaCUDAc::Arguments_GetIndices;
*GetValue = *KappaCUDAc::Arguments_GetValue;
*Prepare = *KappaCUDAc::Arguments_Prepare;
*Resolve = *KappaCUDAc::Arguments_Resolve;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : KappaCUDA::ProcessControlBlock ##############

package KappaCUDA::ProcessControlBlock;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( KappaCUDA );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = KappaCUDAc::new_ProcessControlBlock(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        KappaCUDAc::delete_ProcessControlBlock($self);
        delete $OWNER{$self};
    }
}

*SetCUDA64Bit = *KappaCUDAc::ProcessControlBlock_SetCUDA64Bit;
*PitchWidth = *KappaCUDAc::ProcessControlBlock_PitchWidth;
*Result = *KappaCUDAc::ProcessControlBlock_Result;
*Running = *KappaCUDAc::ProcessControlBlock_Running;
*Stop = *KappaCUDAc::ProcessControlBlock_Stop;
*Done = *KappaCUDAc::ProcessControlBlock_Done;
*GetKappa = *KappaCUDAc::ProcessControlBlock_GetKappa;
*Data = *KappaCUDAc::ProcessControlBlock_Data;
*LocalDevice = *KappaCUDAc::ProcessControlBlock_LocalDevice;
*ThreadID = *KappaCUDAc::ProcessControlBlock_ThreadID;
*GetCommandQueue = *KappaCUDAc::ProcessControlBlock_GetCommandQueue;
*CommandQueueSize = *KappaCUDAc::ProcessControlBlock_CommandQueueSize;
*IsCurrentContext = *KappaCUDAc::ProcessControlBlock_IsCurrentContext;
*PopContexts = *KappaCUDAc::ProcessControlBlock_PopContexts;
*GetContext = *KappaCUDAc::ProcessControlBlock_GetContext;
*NewContext = *KappaCUDAc::ProcessControlBlock_NewContext;
*GPUDevice = *KappaCUDAc::ProcessControlBlock_GPUDevice;
*GPUDeviceName = *KappaCUDAc::ProcessControlBlock_GPUDeviceName;
*GPU = *KappaCUDAc::ProcessControlBlock_GPU;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : KappaCUDA::Context ##############

package KappaCUDA::Context;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( KappaCUDA );
%OWNER = ();
%ITERATORS = ();
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        KappaCUDAc::delete_Context($self);
        delete $OWNER{$self};
    }
}

*PitchWidth = *KappaCUDAc::Context_PitchWidth;
*SetCUDA64Bit = *KappaCUDAc::Context_SetCUDA64Bit;
*SetCUcontext = *KappaCUDAc::Context_SetCUcontext;
*GetCUcontext = *KappaCUDAc::Context_GetCUcontext;
*ContextType = *KappaCUDAc::Context_ContextType;
*GetProcessControlBlock = *KappaCUDAc::Context_GetProcessControlBlock;
*GetStream = *KappaCUDAc::Context_GetStream;
*Copy = *KappaCUDAc::Context_Copy;
*FreeVariable = *KappaCUDAc::Context_FreeVariable;
*New = *KappaCUDAc::Context_New;
*NewLocalAndDevice = *KappaCUDAc::Context_NewLocalAndDevice;
*NewLocalOnly = *KappaCUDAc::Context_NewLocalOnly;
*NewDevice = *KappaCUDAc::Context_NewDevice;
*NewDevicePitch = *KappaCUDAc::Context_NewDevicePitch;
*NewDeviceOnly = *KappaCUDAc::Context_NewDeviceOnly;
*ModuleTexture = *KappaCUDAc::Context_ModuleTexture;
*ModuleVariable = *KappaCUDAc::Context_ModuleVariable;
*GetVariable = *KappaCUDAc::Context_GetVariable;
*CreateModule = *KappaCUDAc::Context_CreateModule;
*CreateCModule = *KappaCUDAc::Context_CreateCModule;
*CreateArray = *KappaCUDAc::Context_CreateArray;
*GetModule = *KappaCUDAc::Context_GetModule;
*GetCModule = *KappaCUDAc::Context_GetCModule;
*GetArray = *KappaCUDAc::Context_GetArray;
*UnloadModule = *KappaCUDAc::Context_UnloadModule;
*Synchronize = *KappaCUDAc::Context_Synchronize;
*Free = *KappaCUDAc::Context_Free;
*UnloadModules = *KappaCUDAc::Context_UnloadModules;
*Reset = *KappaCUDAc::Context_Reset;
*Push = *KappaCUDAc::Context_Push;
*Pop = *KappaCUDAc::Context_Pop;
*Result = *KappaCUDAc::Context_Result;
*MemoryFree = *KappaCUDAc::Context_MemoryFree;
*MemoryTotal = *KappaCUDAc::Context_MemoryTotal;
*MemoryUsed = *KappaCUDAc::Context_MemoryUsed;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : KappaCUDA::Command ##############

package KappaCUDA::Command;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( KappaCUDA );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = KappaCUDAc::new_Command(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        KappaCUDAc::delete_Command($self);
        delete $OWNER{$self};
    }
}

*SetType = *KappaCUDAc::Command_SetType;
*GetType = *KappaCUDAc::Command_GetType;
*GetName = *KappaCUDAc::Command_GetName;
*SetTrace = *KappaCUDAc::Command_SetTrace;
*AnyOrder = *KappaCUDAc::Command_AnyOrder;
*IsStop = *KappaCUDAc::Command_IsStop;
*IsAsync = *KappaCUDAc::Command_IsAsync;
*SetRecipient = *KappaCUDAc::Command_SetRecipient;
*Notification = *KappaCUDAc::Command_Notification;
*SetAsync = *KappaCUDAc::Command_SetAsync;
*ClearAsync = *KappaCUDAc::Command_ClearAsync;
*SetReady = *KappaCUDAc::Command_SetReady;
*SetRunning = *KappaCUDAc::Command_SetRunning;
*SetPaused = *KappaCUDAc::Command_SetPaused;
*SetCanceled = *KappaCUDAc::Command_SetCanceled;
*SetFailed = *KappaCUDAc::Command_SetFailed;
*SetFinished = *KappaCUDAc::Command_SetFinished;
*UpdateStatus = *KappaCUDAc::Command_UpdateStatus;
*IsReady = *KappaCUDAc::Command_IsReady;
*IsRunning = *KappaCUDAc::Command_IsRunning;
*IsPaused = *KappaCUDAc::Command_IsPaused;
*IsCanceled = *KappaCUDAc::Command_IsCanceled;
*IsFailed = *KappaCUDAc::Command_IsFailed;
*IsFinished = *KappaCUDAc::Command_IsFinished;
*SetName = *KappaCUDAc::Command_SetName;
*Execute = *KappaCUDAc::Command_Execute;
*SetStream = *KappaCUDAc::Command_SetStream;
*GetStream = *KappaCUDAc::Command_GetStream;
*NeedStream = *KappaCUDAc::Command_NeedStream;
*StatusCode = *KappaCUDAc::Command_StatusCode;
*Good = *KappaCUDAc::Command_Good;
*SetIfFinish = *KappaCUDAc::Command_SetIfFinish;
*SetIfCancel = *KappaCUDAc::Command_SetIfCancel;
*SetIfFail = *KappaCUDAc::Command_SetIfFail;
*IfFinish = *KappaCUDAc::Command_IfFinish;
*IfCancel = *KappaCUDAc::Command_IfCancel;
*IfFail = *KappaCUDAc::Command_IfFail;
*SetPriorStatus = *KappaCUDAc::Command_SetPriorStatus;
*PriorStatus = *KappaCUDAc::Command_PriorStatus;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : KappaCUDA::Variable ##############

package KappaCUDA::Variable;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( KappaCUDA );
%OWNER = ();
%ITERATORS = ();
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        KappaCUDAc::delete_Variable($self);
        delete $OWNER{$self};
    }
}

*Copy = *KappaCUDAc::Variable_Copy;
*Free = *KappaCUDAc::Variable_Free;
*SetAuthority = *KappaCUDAc::Variable_SetAuthority;
*ForceAuthority = *KappaCUDAc::Variable_ForceAuthority;
*Dimensions = *KappaCUDAc::Variable_Dimensions;
*DimSize = *KappaCUDAc::Variable_DimSize;
*Size = *KappaCUDAc::Variable_Size;
*ElementSize = *KappaCUDAc::Variable_ElementSize;
*GetName = *KappaCUDAc::Variable_GetName;
*Result = *KappaCUDAc::Variable_Result;
*IsLocked = *KappaCUDAc::Variable_IsLocked;
*Access = *KappaCUDAc::Variable_Access;
*DeviceAccess = *KappaCUDAc::Variable_DeviceAccess;
*TextureAccess = *KappaCUDAc::Variable_TextureAccess;
*HasTexture = *KappaCUDAc::Variable_HasTexture;
*TexUnit = *KappaCUDAc::Variable_TexUnit;
*Relinquish = *KappaCUDAc::Variable_Relinquish;
*SetAddressMode = *KappaCUDAc::Variable_SetAddressMode;
*SetFilterMode = *KappaCUDAc::Variable_SetFilterMode;
*SetTextureFlags = *KappaCUDAc::Variable_SetTextureFlags;
*SetStream = *KappaCUDAc::Variable_SetStream;
*GetStream = *KappaCUDAc::Variable_GetStream;
*VariableDimensions = *KappaCUDAc::Variable_VariableDimensions;
*IsTextureWritable = *KappaCUDAc::Variable_IsTextureWritable;
*FromVariable = *KappaCUDAc::Variable_FromVariable;
*FromLocal = *KappaCUDAc::Variable_FromLocal;
*FromDevice = *KappaCUDAc::Variable_FromDevice;
*FromArray = *KappaCUDAc::Variable_FromArray;
*DeviceMemSet = *KappaCUDAc::Variable_DeviceMemSet;
*IsReady = *KappaCUDAc::Variable_IsReady;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : KappaCUDA::Array ##############

package KappaCUDA::Array;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( KappaCUDA );
%OWNER = ();
%ITERATORS = ();
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        KappaCUDAc::delete_Array($self);
        delete $OWNER{$self};
    }
}

*Result = *KappaCUDAc::Array_Result;
*IsSet = *KappaCUDAc::Array_IsSet;
*Is3D = *KappaCUDAc::Array_Is3D;
*CUArray = *KappaCUDAc::Array_CUArray;
*Width = *KappaCUDAc::Array_Width;
*Height = *KappaCUDAc::Array_Height;
*Depth = *KappaCUDAc::Array_Depth;
*Format = *KappaCUDAc::Array_Format;
*NumChannels = *KappaCUDAc::Array_NumChannels;
*Malloc = *KappaCUDAc::Array_Malloc;
*Free = *KappaCUDAc::Array_Free;
*Memcpy2D = *KappaCUDAc::Array_Memcpy2D;
*Memcpy3D = *KappaCUDAc::Array_Memcpy3D;
*Memcpy2DAsync = *KappaCUDAc::Array_Memcpy2DAsync;
*Memcpy3DAsync = *KappaCUDAc::Array_Memcpy3DAsync;
*FromLocal = *KappaCUDAc::Array_FromLocal;
*FromLocalAsync = *KappaCUDAc::Array_FromLocalAsync;
*FromDevice = *KappaCUDAc::Array_FromDevice;
*FromArray = *KappaCUDAc::Array_FromArray;
*ArrayAccess = *KappaCUDAc::Array_ArrayAccess;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


# ------- VARIABLE STUBS --------

package KappaCUDA;

*KAPPA_DLL = *KappaCUDAc::KAPPA_DLL;
*MAX_GPUS = *KappaCUDAc::MAX_GPUS;
*PROCESSES_INC = *KappaCUDAc::PROCESSES_INC;
*Direction_In = *KappaCUDAc::Direction_In;
*Direction_Out = *KappaCUDAc::Direction_Out;
*Direction_IO = *KappaCUDAc::Direction_IO;
*Direction_TexRef = *KappaCUDAc::Direction_TexRef;
*Direction_None = *KappaCUDAc::Direction_None;
*Direction_Cancel = *KappaCUDAc::Direction_Cancel;
*Direction_Fail = *KappaCUDAc::Direction_Fail;
*ROUTINE_LOOP_NAMESPACE = *KappaCUDAc::ROUTINE_LOOP_NAMESPACE;
*ROUTINE_LOOP_NAME = *KappaCUDAc::ROUTINE_LOOP_NAME;
*READY = *KappaCUDAc::READY;
*RUNNING = *KappaCUDAc::RUNNING;
*PAUSED = *KappaCUDAc::PAUSED;
*CANCELED = *KappaCUDAc::CANCELED;
*FINISHED = *KappaCUDAc::FINISHED;
*FAILED = *KappaCUDAc::FAILED;
*None = *KappaCUDAc::None;
*Host = *KappaCUDAc::Host;
*Device = *KappaCUDAc::Device;
*Texture = *KappaCUDAc::Texture;

$KappaCUDA::VERSION = '1.2.0';
1;
