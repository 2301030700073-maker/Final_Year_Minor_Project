.class Lorg/mozilla/javascript/optimizer/BodyCodegen;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;,
        Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ECMAERROR_EXCEPTION:I = 0x2

.field private static final EVALUATOR_EXCEPTION:I = 0x1

.field private static final EXCEPTION_MAX:I = 0x5

.field private static final FINALLY_EXCEPTION:I = 0x4

.field static final GENERATOR_START:I = 0x0

.field static final GENERATOR_TERMINATE:I = -0x1

.field static final GENERATOR_YIELD_START:I = 0x1

.field private static final JAVASCRIPT_EXCEPTION:I = 0x0

.field private static final MAX_LOCALS:I = 0x400

.field private static final SIGNATURE_CALL0:Ljava/lang/String; = "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

.field private static final SIGNATURE_CALL1:Ljava/lang/String; = "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

.field private static final SIGNATURE_CALL2:Ljava/lang/String; = "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

.field private static final SIGNATURE_CALLN:Ljava/lang/String; = "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

.field private static final THROWABLE_EXCEPTION:I = 0x3


# instance fields
.field private argsLocal:I

.field cfw:Lorg/mozilla/classfile/ClassFileWriter;

.field codegen:Lorg/mozilla/javascript/optimizer/Codegen;

.field compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

.field private contextLocal:I

.field private enterAreaStartLabel:I

.field private epilogueLabel:I

.field private exceptionManager:Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;

.field private finallys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/mozilla/javascript/Node;",
            "Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;",
            ">;"
        }
    .end annotation
.end field

.field private firstFreeLocal:I

.field private fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

.field private funObjLocal:I

.field private generatorStateLocal:I

.field private generatorSwitch:I

.field private hasVarsInRegs:Z

.field private inDirectCallFunction:Z

.field private inLocalBlock:Z

.field private isGenerator:Z

.field private itsForcedObjectParameters:Z

.field private itsLineNumber:I

.field private itsOneArgArray:I

.field private itsZeroArgArray:I

.field private literals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mozilla/javascript/Node;",
            ">;"
        }
    .end annotation
.end field

.field private locals:[I

.field private localsMax:I

.field private maxLocals:I

.field private maxStack:I

.field private operationLocal:I

.field private popvLocal:I

.field private savedCodeOffset:I

.field private savedHomeObjectLocal:I

.field scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

.field public scriptOrFnIndex:I

.field private thisObjLocal:I

.field private unnestedYieldCount:I

.field private unnestedYields:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lorg/mozilla/javascript/Node;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private varRegisters:[I

.field private variableObjectLocal:I


# direct methods
.method public static bridge synthetic -$$Nest$smexceptionTypeToName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->exceptionTypeToName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smgetFinallyAtTarget(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getFinallyAtTarget(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;-><init>(Lorg/mozilla/javascript/optimizer/BodyCodegen;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->exceptionManager:Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->maxLocals:I

    .line 13
    .line 14
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->maxStack:I

    .line 15
    .line 16
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->unnestedYieldCount:I

    .line 17
    .line 18
    new-instance v0, Ljava/util/IdentityHashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->unnestedYields:Ljava/util/IdentityHashMap;

    .line 24
    .line 25
    return-void
.end method

.method private addDoubleWrap()V
    .locals 2

    .line 1
    const-string/jumbo v0, "wrapDouble"

    .line 2
    .line 3
    .line 4
    const-string v1, "(D)Ljava/lang/Double;"

    .line 5
    .line 6
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    sget-object v0, Lorg/mozilla/javascript/optimizer/Bootstrapper;->BOOTSTRAP_HANDLE:Lorg/mozilla/classfile/ClassFileWriter$MHandle;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget v3, Lorg/mozilla/classfile/ClassFileWriter;->MajorVersion:I

    .line 12
    .line 13
    const/16 v4, 0x33

    .line 14
    .line 15
    if-lt v3, v4, :cond_4

    .line 16
    .line 17
    invoke-static {p2}, Lorg/mozilla/classfile/ClassFileWriter;->sizeOfParameters(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    int-to-short v3, v3

    .line 22
    iget v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 23
    .line 24
    add-int/2addr v4, v3

    .line 25
    if-ltz v4, :cond_3

    .line 26
    .line 27
    const/16 v3, 0x7fff

    .line 28
    .line 29
    if-lt v3, v4, :cond_3

    .line 30
    .line 31
    new-instance v3, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;

    .line 32
    .line 33
    invoke-direct {v3, p0, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;-><init>(Lorg/mozilla/classfile/ClassFileWriter;Lorg/mozilla/classfile/ClassFileWriter$MHandle;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Ljava/util/ArrayList;

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Ljava/util/ArrayList;

    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v2, -0x1

    .line 54
    if-ne v0, v2, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethods:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethodsLength:I

    .line 68
    .line 69
    iget-object v3, v3, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;->code:[B

    .line 70
    .line 71
    array-length v3, v3

    .line 72
    add-int/2addr v2, v3

    .line 73
    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsBootstrapMethodsLength:I

    .line 74
    .line 75
    :cond_1
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 76
    .line 77
    invoke-virtual {v2, p1, v0, p2}, Lorg/mozilla/classfile/ConstantPool;->addInvokeDynamic(Ljava/lang/String;ILjava/lang/String;)S

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const/16 p2, 0xba

    .line 82
    .line 83
    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    .line 90
    .line 91
    .line 92
    int-to-short p1, v4

    .line 93
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 94
    .line 95
    iget p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    .line 96
    .line 97
    if-le v4, p2, :cond_2

    .line 98
    .line 99
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:I

    .line 100
    .line 101
    :cond_2
    return-void

    .line 102
    :cond_3
    invoke-static {v4}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    .line 103
    .line 104
    .line 105
    const/4 p0, 0x0

    .line 106
    throw p0

    .line 107
    :cond_4
    const-string p0, "Please build and run with JDK 1.7 for invokedynamic support"

    .line 108
    .line 109
    invoke-static {p0}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method private addGoto(Lorg/mozilla/javascript/Node;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 6
    .line 7
    invoke-virtual {p0, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private addGotoWithReturn(Lorg/mozilla/javascript/Node;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finallys:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;

    .line 8
    .line 9
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 10
    .line 11
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;->jsrPoints:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 18
    .line 19
    .line 20
    const/16 v1, 0xa7

    .line 21
    .line 22
    invoke-direct {p0, p1, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addGoto(Lorg/mozilla/javascript/Node;I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 26
    .line 27
    const/16 v1, 0x57

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 33
    .line 34
    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 41
    .line 42
    .line 43
    iget-object p0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;->jsrPoints:Ljava/util/List;

    .line 44
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private addInstructionCount()V
    .locals 2

    .line 21
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 22
    iget v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 23
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->savedCodeOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addInstructionCount(I)V

    return-void
.end method

.method private addInstructionCount(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 11
    .line 12
    .line 13
    const-string p1, "addInstructionCount"

    .line 14
    .line 15
    const-string v0, "(Lorg/mozilla/javascript/Context;I)V"

    .line 16
    .line 17
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private addJumpedBooleanWrap(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 7
    .line 8
    invoke-virtual {p2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 13
    .line 14
    const-string v1, "java/lang/Boolean"

    .line 15
    .line 16
    const-string v2, "FALSE"

    .line 17
    .line 18
    const/16 v3, 0xb2

    .line 19
    .line 20
    const-string v4, "Ljava/lang/Boolean;"

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 26
    .line 27
    const/16 v2, 0xa7

    .line 28
    .line 29
    invoke-virtual {v0, v2, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 38
    .line 39
    const-string v0, "TRUE"

    .line 40
    .line 41
    invoke-virtual {p1, v1, v0, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 50
    .line 51
    invoke-virtual {p0}, Lorg/mozilla/classfile/ClassFileWriter;->adjustStackTop()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private addLoadProperty(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;[Ljava/lang/Object;I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p4, :cond_0

    .line 3
    .line 4
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addNewObjectArray(I)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addNewObjectArray(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-boolean v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 12
    .line 13
    const/16 v2, 0x53

    .line 14
    .line 15
    const/16 v3, 0x5f

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    :goto_0
    if-ge v0, p4, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, p1, p3, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addLoadPropertyId(Lorg/mozilla/javascript/Node;[Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addLoadPropertyValue(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 35
    .line 36
    add-int/lit8 p2, p1, 0x1

    .line 37
    .line 38
    iget p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:I

    .line 39
    .line 40
    add-int/lit8 v0, p1, 0x2

    .line 41
    .line 42
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 43
    .line 44
    add-int/lit8 p3, p3, 0x2

    .line 45
    .line 46
    iput p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:I

    .line 47
    .line 48
    invoke-direct {p0, p4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addNewObjectArray(I)V

    .line 49
    .line 50
    .line 51
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 52
    .line 53
    invoke-virtual {p3, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, p4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addNewObjectArray(I)V

    .line 57
    .line 58
    .line 59
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 60
    .line 61
    invoke-virtual {p3, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 p4, p4, -0x1

    .line 65
    .line 66
    :goto_1
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 67
    .line 68
    if-ltz p4, :cond_2

    .line 69
    .line 70
    invoke-virtual {p3, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 71
    .line 72
    .line 73
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 74
    .line 75
    invoke-virtual {p3, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 76
    .line 77
    .line 78
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 79
    .line 80
    invoke-virtual {p3, p4}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 81
    .line 82
    .line 83
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 84
    .line 85
    invoke-virtual {p3, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 86
    .line 87
    .line 88
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 89
    .line 90
    invoke-virtual {p3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 91
    .line 92
    .line 93
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 94
    .line 95
    invoke-virtual {p3, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 96
    .line 97
    .line 98
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 99
    .line 100
    invoke-virtual {p3, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 101
    .line 102
    .line 103
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 104
    .line 105
    invoke-virtual {p3, p4}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 106
    .line 107
    .line 108
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 109
    .line 110
    invoke-virtual {p3, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 111
    .line 112
    .line 113
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 114
    .line 115
    invoke-virtual {p3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 116
    .line 117
    .line 118
    add-int/lit8 p4, p4, -0x1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {p3, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 122
    .line 123
    .line 124
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 125
    .line 126
    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_3
    invoke-direct {p0, p4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addNewObjectArray(I)V

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, p4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addNewObjectArray(I)V

    .line 134
    .line 135
    .line 136
    :goto_2
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 137
    .line 138
    if-ge v0, p4, :cond_4

    .line 139
    .line 140
    const/16 v4, 0x5c

    .line 141
    .line 142
    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 143
    .line 144
    .line 145
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 146
    .line 147
    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 148
    .line 149
    .line 150
    invoke-direct {p0, p1, p3, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addLoadPropertyId(Lorg/mozilla/javascript/Node;[Ljava/lang/Object;I)V

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 159
    .line 160
    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 161
    .line 162
    .line 163
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addLoadPropertyValue(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 164
    .line 165
    .line 166
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 167
    .line 168
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_4
    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method private addLoadPropertyId(Lorg/mozilla/javascript/Node;[Ljava/lang/Object;I)V
    .locals 0

    .line 1
    aget-object p2, p2, p3

    .line 2
    .line 3
    instance-of p3, p2, Lorg/mozilla/javascript/Node;

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    check-cast p2, Lorg/mozilla/javascript/Node;

    .line 8
    .line 9
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    instance-of p1, p2, Ljava/lang/String;

    .line 18
    .line 19
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    check-cast p2, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p3, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {p3, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo p1, "wrapInt"

    .line 39
    .line 40
    .line 41
    const-string p2, "(I)Ljava/lang/Integer;"

    .line 42
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private addLoadPropertyValue(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa5

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/16 v1, 0xa6

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/16 v1, 0xb1

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private addNewObjectArray(I)V
    .locals 3

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsZeroArgArray:I

    .line 4
    .line 5
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 6
    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string p1, "emptyArgs"

    .line 14
    .line 15
    const-string v0, "[Ljava/lang/Object;"

    .line 16
    .line 17
    const-string v1, "org/mozilla/javascript/ScriptRuntime"

    .line 18
    .line 19
    const/16 v2, 0xb2

    .line 20
    .line 21
    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 31
    .line 32
    const/16 p1, 0xbd

    .line 33
    .line 34
    const-string v0, "java/lang/Object"

    .line 35
    .line 36
    invoke-virtual {p0, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private addObjectToDouble()V
    .locals 2

    .line 1
    const-string v0, "MATH:TONUMBER"

    .line 2
    .line 3
    const-string v1, "(Ljava/lang/Object;)D"

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private addObjectToNumeric()V
    .locals 2

    .line 1
    const-string v0, "MATH:TONUMERIC"

    .line 2
    .line 3
    const-string v1, "(Ljava/lang/Object;)Ljava/lang/Number;"

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    const/16 v0, 0xb8

    .line 4
    .line 5
    const-string v1, "org/mozilla/javascript/optimizer/OptRuntime"

    .line 6
    .line 7
    invoke-virtual {p0, v1, p1, v0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    const/16 v0, 0xb8

    .line 4
    .line 5
    const-string v1, "org.mozilla.javascript.ScriptRuntime"

    .line 6
    .line 7
    invoke-virtual {p0, v1, p1, v0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static countArguments(Lorg/mozilla/javascript/Node;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-eqz p0, :cond_0

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    return v0
.end method

.method private dcpLoadAsNumber(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 7
    .line 8
    const-string v1, "TYPE"

    .line 9
    .line 10
    const-string v2, "Ljava/lang/Class;"

    .line 11
    .line 12
    const-string v3, "java/lang/Void"

    .line 13
    .line 14
    const/16 v4, 0xb2

    .line 15
    .line 16
    invoke-virtual {v0, v3, v1, v4, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 26
    .line 27
    const/16 v2, 0xa5

    .line 28
    .line 29
    invoke-virtual {v1, v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 33
    .line 34
    iget v2, v1, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToDouble()V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 43
    .line 44
    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 49
    .line 50
    const/16 v4, 0xa7

    .line 51
    .line 52
    invoke-virtual {v3, v4, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 56
    .line 57
    invoke-virtual {v3, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(II)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 61
    .line 62
    add-int/lit8 p1, p1, 0x1

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 68
    .line 69
    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method private dcpLoadAsObject(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 7
    .line 8
    const-string v1, "TYPE"

    .line 9
    .line 10
    const-string v2, "Ljava/lang/Class;"

    .line 11
    .line 12
    const-string v3, "java/lang/Void"

    .line 13
    .line 14
    const/16 v4, 0xb2

    .line 15
    .line 16
    invoke-virtual {v0, v3, v1, v4, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 26
    .line 27
    const/16 v2, 0xa5

    .line 28
    .line 29
    invoke-virtual {v1, v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 33
    .line 34
    iget v2, v1, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 40
    .line 41
    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 46
    .line 47
    const/16 v4, 0xa7

    .line 48
    .line 49
    invoke-virtual {v3, v4, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 53
    .line 54
    invoke-virtual {v3, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(II)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 58
    .line 59
    add-int/lit8 p1, p1, 0x1

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 68
    .line 69
    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method private decReferenceWordLocal(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    .line 2
    .line 3
    aget v0, p0, p1

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    aput v0, p0, p1

    .line 8
    .line 9
    return-void
.end method

.method private static exceptionTypeToName(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "org/mozilla/javascript/JavaScriptException"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    .line 9
    const-string p0, "org/mozilla/javascript/EvaluatorException"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    .line 15
    const-string p0, "org/mozilla/javascript/EcmaError"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne p0, v0, :cond_3

    .line 20
    .line 21
    const-string p0, "java/lang/Throwable"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_3
    const/4 v0, 0x4

    .line 25
    if-ne p0, v0, :cond_4

    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0

    .line 29
    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    throw p0
.end method

.method private findNestedYield(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    if-eqz p1, :cond_3

    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x4e

    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0xb3

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->findNestedYield(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    :goto_1
    return-object p1

    .line 37
    :cond_3
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method

.method private finishGetElemGeneration(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 9
    .line 10
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 16
    .line 17
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 20
    .line 21
    .line 22
    const/16 p2, 0x1f

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    const/4 v0, 0x1

    .line 30
    if-ne p2, v0, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 33
    .line 34
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:I

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 37
    .line 38
    .line 39
    const-string p1, "PROP:GETELEMENTSUPER"

    .line 40
    .line 41
    const-string p2, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;"

    .line 42
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    const/16 p2, 0x8

    .line 48
    .line 49
    const/4 v0, -0x1

    .line 50
    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eq p1, v0, :cond_1

    .line 55
    .line 56
    const-string p1, "PROP:GETINDEX"

    .line 57
    .line 58
    const-string p2, "(Ljava/lang/Object;DLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 59
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    const-string p1, "PROP:GETELEMENT"

    .line 65
    .line 66
    const-string p2, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 67
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private finishGetPropGeneration(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 9
    .line 10
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 13
    .line 14
    .line 15
    const/16 v0, 0x1f

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/16 v2, 0x22

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    if-ne v0, v3, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 28
    .line 29
    iget v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:I

    .line 30
    .line 31
    invoke-virtual {v0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 35
    .line 36
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-ne p1, v2, :cond_0

    .line 41
    .line 42
    move v1, v3

    .line 43
    :cond_0
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string p2, "PROP:GETSUPER:"

    .line 51
    .line 52
    invoke-static {p2, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string p2, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Z)Ljava/lang/Object;"

    .line 57
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const-string v0, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 67
    .line 68
    if-ne p1, v2, :cond_2

    .line 69
    .line 70
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string p2, "PROP:GETNOWARN:"

    .line 75
    .line 76
    invoke-static {p2, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string p2, "PROP:GET:"

    .line 89
    .line 90
    invoke-static {p2, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method private finishGetRefGeneration()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 6
    .line 7
    .line 8
    const-string v0, "refGet"

    .line 9
    .line 10
    const-string v1, "(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    .line 11
    .line 12
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private finishRefSpecialGeneration(Lorg/mozilla/javascript/Node;)V
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 15
    .line 16
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 22
    .line 23
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 26
    .line 27
    .line 28
    const-string/jumbo p1, "specialRef"

    .line 29
    .line 30
    .line 31
    const-string v0, "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Ref;"

    .line 32
    .line 33
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private genSimpleCompare(III)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p2, v0, :cond_1

    .line 3
    .line 4
    const/16 v1, 0x98

    .line 5
    .line 6
    const/16 v2, 0x97

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    throw p0

    .line 16
    :pswitch_0
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 22
    .line 23
    const/16 v1, 0x9c

    .line 24
    .line 25
    invoke-virtual {p1, v1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_1
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 35
    .line 36
    const/16 v1, 0x9d

    .line 37
    .line 38
    invoke-virtual {p1, v1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_2
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 48
    .line 49
    const/16 v1, 0x9e

    .line 50
    .line 51
    invoke-virtual {p1, v1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_3
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 61
    .line 62
    const/16 v1, 0x9b

    .line 63
    .line 64
    invoke-virtual {p1, v1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 65
    .line 66
    .line 67
    :goto_0
    if-eq p3, v0, :cond_0

    .line 68
    .line 69
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 70
    .line 71
    const/16 p1, 0xa7

    .line 72
    .line 73
    invoke-virtual {p0, p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 74
    .line 75
    .line 76
    :cond_0
    return-void

    .line 77
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    throw p0

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private generateActivationExit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 10
    .line 11
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "exitActivationFunction"

    .line 17
    .line 18
    const-string v1, "(Lorg/mozilla/javascript/Context;)V"

    .line 19
    .line 20
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    throw p0
.end method

.method private generateArrayLiteralFactory(Lorg/mozilla/javascript/Node;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, "_literal"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->initBodyGeneration()V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 33
    .line 34
    add-int/lit8 v1, v0, 0x1

    .line 35
    .line 36
    iput v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 37
    .line 38
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:I

    .line 39
    .line 40
    iput v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:I

    .line 41
    .line 42
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 43
    .line 44
    const-string v1, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    invoke-virtual {v0, p2, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitArrayLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 59
    .line 60
    const/16 p2, 0xb0

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 66
    .line 67
    iget p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:I

    .line 68
    .line 69
    add-int/2addr p0, v0

    .line 70
    int-to-short p0, p0

    .line 71
    invoke-virtual {p1, p0}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(I)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method private generateCallArgArray(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V
    .locals 7

    .line 1
    invoke-static {p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->countArguments(Lorg/mozilla/javascript/Node;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsOneArgArray:I

    .line 9
    .line 10
    if-ltz v1, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addNewObjectArray(I)V

    .line 19
    .line 20
    .line 21
    :goto_0
    const/4 v1, 0x0

    .line 22
    :goto_1
    if-eq v1, v0, :cond_6

    .line 23
    .line 24
    iget-boolean v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 25
    .line 26
    const/16 v3, 0x59

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    if-nez p3, :cond_2

    .line 41
    .line 42
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->nodeIsDirectCallParameter(Lorg/mozilla/javascript/Node;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-ltz v2, :cond_3

    .line 51
    .line 52
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->dcpLoadAsObject(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 57
    .line 58
    .line 59
    const/16 v2, 0x8

    .line 60
    .line 61
    const/4 v4, -0x1

    .line 62
    invoke-virtual {p2, v2, v4}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_4

    .line 67
    .line 68
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    .line 69
    .line 70
    .line 71
    :cond_4
    :goto_2
    iget-boolean v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 72
    .line 73
    if-eqz v2, :cond_5

    .line 74
    .line 75
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 80
    .line 81
    invoke-virtual {v4, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 82
    .line 83
    .line 84
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 85
    .line 86
    const/16 v5, 0xc0

    .line 87
    .line 88
    const-string v6, "[Ljava/lang/Object;"

    .line 89
    .line 90
    invoke-virtual {v4, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 94
    .line 95
    invoke-virtual {v4, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 96
    .line 97
    .line 98
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 99
    .line 100
    invoke-virtual {v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 101
    .line 102
    .line 103
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 104
    .line 105
    invoke-virtual {v3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->releaseWordLocal(I)V

    .line 109
    .line 110
    .line 111
    :cond_5
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 112
    .line 113
    const/16 v3, 0x53

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    add-int/lit8 v1, v1, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_6
    return-void
.end method

.method private generateCatchBlock(ISIII)V
    .locals 1

    .line 1
    if-nez p5, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 6
    .line 7
    .line 8
    move-result p5

    .line 9
    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p1, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 13
    .line 14
    invoke-virtual {p1, p5}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 18
    .line 19
    invoke-virtual {p1, p4}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 28
    .line 29
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 35
    .line 36
    const/16 p1, 0xa7

    .line 37
    .line 38
    invoke-virtual {p0, p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private generateCheckForThrowOrClose(IZI)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 8
    .line 9
    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 19
    .line 20
    iget v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:I

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateThrowJavaScriptException()V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 34
    .line 35
    iget v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:I

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 41
    .line 42
    const/16 v3, 0xc0

    .line 43
    .line 44
    const-string v4, "java/lang/Throwable"

    .line 45
    .line 46
    invoke-virtual {v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 50
    .line 51
    const/16 v3, 0xbf

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 54
    .line 55
    .line 56
    const/4 v2, -0x1

    .line 57
    if-eq p1, v2, :cond_0

    .line 58
    .line 59
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 60
    .line 61
    invoke-virtual {v2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 62
    .line 63
    .line 64
    :cond_0
    if-nez p2, :cond_1

    .line 65
    .line 66
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 67
    .line 68
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorSwitch:I

    .line 69
    .line 70
    invoke-virtual {p1, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(II)V

    .line 71
    .line 72
    .line 73
    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 74
    .line 75
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->operationLocal:I

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 81
    .line 82
    const/4 p2, 0x2

    .line 83
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 87
    .line 88
    const/16 p2, 0x9f

    .line 89
    .line 90
    invoke-virtual {p1, p2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 94
    .line 95
    iget p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->operationLocal:I

    .line 96
    .line 97
    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 101
    .line 102
    const/4 p3, 0x1

    .line 103
    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 104
    .line 105
    .line 106
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 107
    .line 108
    invoke-virtual {p0, p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method private generateEpilogue()V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addInstructionCount()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz v0, :cond_5

    .line 16
    .line 17
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 18
    .line 19
    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getLiveLocals()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/16 v2, 0xa7

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 31
    .line 32
    check-cast v4, Lorg/mozilla/javascript/ast/FunctionNode;

    .line 33
    .line 34
    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/FunctionNode;->getResumptionPoints()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Lorg/mozilla/javascript/Node;

    .line 53
    .line 54
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, [I

    .line 59
    .line 60
    if-eqz v6, :cond_1

    .line 61
    .line 62
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 63
    .line 64
    iget v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorSwitch:I

    .line 65
    .line 66
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNextGeneratorState(Lorg/mozilla/javascript/Node;)I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    invoke-virtual {v7, v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(II)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateGetGeneratorLocalsState()V

    .line 74
    .line 75
    .line 76
    move v7, v3

    .line 77
    :goto_1
    array-length v8, v6

    .line 78
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 79
    .line 80
    if-ge v7, v8, :cond_2

    .line 81
    .line 82
    const/16 v8, 0x59

    .line 83
    .line 84
    invoke-virtual {v9, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 85
    .line 86
    .line 87
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 88
    .line 89
    invoke-virtual {v8, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 90
    .line 91
    .line 92
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 93
    .line 94
    const/16 v9, 0x32

    .line 95
    .line 96
    invoke-virtual {v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 97
    .line 98
    .line 99
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 100
    .line 101
    aget v9, v6, v7

    .line 102
    .line 103
    invoke-virtual {v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v7, v7, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    const/16 v6, 0x57

    .line 110
    .line 111
    invoke-virtual {v9, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 112
    .line 113
    .line 114
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 115
    .line 116
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    invoke-virtual {v6, v2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_3
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finallys:Ljava/util/Map;

    .line 125
    .line 126
    if-eqz v0, :cond_5

    .line 127
    .line 128
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-eqz v4, :cond_5

    .line 141
    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    check-cast v4, Ljava/util/Map$Entry;

    .line 147
    .line 148
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    check-cast v5, Lorg/mozilla/javascript/Node;

    .line 153
    .line 154
    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    const/16 v6, 0x8a

    .line 159
    .line 160
    if-ne v5, v6, :cond_4

    .line 161
    .line 162
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    check-cast v4, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;

    .line 167
    .line 168
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 169
    .line 170
    iget v6, v4, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;->tableLabel:I

    .line 171
    .line 172
    invoke-virtual {v5, v6, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(II)V

    .line 173
    .line 174
    .line 175
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 176
    .line 177
    iget-object v6, v4, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;->jsrPoints:Ljava/util/List;

    .line 178
    .line 179
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    sub-int/2addr v6, v1

    .line 184
    invoke-virtual {v5, v3, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 189
    .line 190
    invoke-virtual {v6, v5}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    .line 191
    .line 192
    .line 193
    move v6, v3

    .line 194
    move v7, v6

    .line 195
    :goto_2
    iget-object v8, v4, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;->jsrPoints:Ljava/util/List;

    .line 196
    .line 197
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 198
    .line 199
    .line 200
    move-result v8

    .line 201
    if-ge v6, v8, :cond_4

    .line 202
    .line 203
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 204
    .line 205
    invoke-virtual {v8, v5, v7}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(II)V

    .line 206
    .line 207
    .line 208
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 209
    .line 210
    iget-object v9, v4, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;->jsrPoints:Ljava/util/List;

    .line 211
    .line 212
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    check-cast v9, Ljava/lang/Integer;

    .line 217
    .line 218
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 219
    .line 220
    .line 221
    move-result v9

    .line 222
    invoke-virtual {v8, v2, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 223
    .line 224
    .line 225
    add-int/2addr v7, v1

    .line 226
    add-int/lit8 v6, v6, 0x1

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_5
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->epilogueLabel:I

    .line 230
    .line 231
    const/4 v2, -0x1

    .line 232
    if-eq v0, v2, :cond_6

    .line 233
    .line 234
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 235
    .line 236
    invoke-virtual {v3, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 237
    .line 238
    .line 239
    :cond_6
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 240
    .line 241
    const/16 v3, 0xb0

    .line 242
    .line 243
    if-eqz v0, :cond_8

    .line 244
    .line 245
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 246
    .line 247
    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    .line 248
    .line 249
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getResumptionPoints()Ljava/util/List;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    if-eqz v0, :cond_7

    .line 254
    .line 255
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 256
    .line 257
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorSwitch:I

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    .line 260
    .line 261
    .line 262
    :cond_7
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateSetGeneratorResumptionPoint(I)V

    .line 263
    .line 264
    .line 265
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 266
    .line 267
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 273
    .line 274
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorStateLocal:I

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 277
    .line 278
    .line 279
    const-string/jumbo v0, "throwStopIteration"

    .line 280
    .line 281
    .line 282
    const-string v1, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    .line 283
    .line 284
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 288
    .line 289
    invoke-static {v0}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 290
    .line 291
    .line 292
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 293
    .line 294
    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :cond_8
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    .line 299
    .line 300
    if-eqz v0, :cond_9

    .line 301
    .line 302
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 303
    .line 304
    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 305
    .line 306
    .line 307
    return-void

    .line 308
    :cond_9
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 309
    .line 310
    if-nez v0, :cond_a

    .line 311
    .line 312
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 313
    .line 314
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->popvLocal:I

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 317
    .line 318
    .line 319
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 320
    .line 321
    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 322
    .line 323
    .line 324
    return-void

    .line 325
    :cond_a
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateActivationExit()V

    .line 326
    .line 327
    .line 328
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 329
    .line 330
    invoke-virtual {v0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 331
    .line 332
    .line 333
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 334
    .line 335
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 340
    .line 341
    iput v1, v2, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 342
    .line 343
    invoke-virtual {v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 344
    .line 345
    .line 346
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 351
    .line 352
    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 353
    .line 354
    .line 355
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateActivationExit()V

    .line 356
    .line 357
    .line 358
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 359
    .line 360
    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 361
    .line 362
    .line 363
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->releaseWordLocal(I)V

    .line 364
    .line 365
    .line 366
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 367
    .line 368
    const/16 v2, 0xbf

    .line 369
    .line 370
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 371
    .line 372
    .line 373
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 374
    .line 375
    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->enterAreaStartLabel:I

    .line 376
    .line 377
    iget p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->epilogueLabel:I

    .line 378
    .line 379
    const/4 v3, 0x0

    .line 380
    invoke-virtual {v1, v2, v3, p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addExceptionHandler(ILjava/lang/String;II)V

    .line 381
    .line 382
    .line 383
    return-void
.end method

.method private generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const/16 v5, 0xa3

    .line 16
    .line 17
    if-eq v3, v5, :cond_1b

    .line 18
    .line 19
    const/16 v5, 0xa4

    .line 20
    .line 21
    if-eq v3, v5, :cond_1a

    .line 22
    .line 23
    const/16 v5, 0xb3

    .line 24
    .line 25
    if-eq v3, v5, :cond_3

    .line 26
    .line 27
    const/16 v5, 0xb4

    .line 28
    .line 29
    if-eq v3, v5, :cond_19

    .line 30
    .line 31
    const-string v5, "FALSE"

    .line 32
    .line 33
    const-string v9, "TRUE"

    .line 34
    .line 35
    const-string v11, "Ljava/lang/Boolean;"

    .line 36
    .line 37
    const-string v12, "java/lang/Boolean"

    .line 38
    .line 39
    packed-switch v3, :pswitch_data_0

    .line 40
    .line 41
    .line 42
    const-string v10, "(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    .line 43
    .line 44
    const-string v7, "MATH:TOBOOLEAN"

    .line 45
    .line 46
    const-string v13, "instance"

    .line 47
    .line 48
    const-string v14, "org/mozilla/javascript/Undefined"

    .line 49
    .line 50
    const-string v15, "Ljava/lang/Object;"

    .line 51
    .line 52
    const-string v6, "isNullOrUndefined"

    .line 53
    .line 54
    const-string v8, "(Ljava/lang/Object;)Z"

    .line 55
    .line 56
    move-object/from16 v16, v5

    .line 57
    .line 58
    const/16 v5, 0x59

    .line 59
    .line 60
    sparse-switch v3, :sswitch_data_0

    .line 61
    .line 62
    .line 63
    packed-switch v3, :pswitch_data_1

    .line 64
    .line 65
    .line 66
    packed-switch v3, :pswitch_data_2

    .line 67
    .line 68
    .line 69
    const-string v9, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    .line 70
    .line 71
    packed-switch v3, :pswitch_data_3

    .line 72
    .line 73
    .line 74
    const-string v12, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;"

    .line 75
    .line 76
    const/16 v11, 0x10

    .line 77
    .line 78
    packed-switch v3, :pswitch_data_4

    .line 79
    .line 80
    .line 81
    packed-switch v3, :pswitch_data_5

    .line 82
    .line 83
    .line 84
    packed-switch v3, :pswitch_data_6

    .line 85
    .line 86
    .line 87
    packed-switch v3, :pswitch_data_7

    .line 88
    .line 89
    .line 90
    const-string v0, "Unexpected node type "

    .line 91
    .line 92
    invoke-static {v3, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :pswitch_0
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateStatement(Lorg/mozilla/javascript/Node;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :pswitch_1
    const/4 v2, 0x1

    .line 112
    invoke-direct {v0, v1, v4, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitSetConstVar(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_2
    invoke-direct {v0, v1, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitSetConst(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitTypeofname(Lorg/mozilla/javascript/Node;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitIncDec(Lorg/mozilla/javascript/Node;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :pswitch_5
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 129
    .line 130
    .line 131
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 132
    .line 133
    invoke-virtual {v2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 134
    .line 135
    .line 136
    invoke-direct {v0, v7, v8}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 140
    .line 141
    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 146
    .line 147
    const/16 v6, 0x76

    .line 148
    .line 149
    if-ne v3, v6, :cond_0

    .line 150
    .line 151
    const/16 v3, 0x99

    .line 152
    .line 153
    invoke-virtual {v5, v3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_0
    const/16 v3, 0x9a

    .line 158
    .line 159
    invoke-virtual {v5, v3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 160
    .line 161
    .line 162
    :goto_0
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 163
    .line 164
    const/16 v5, 0x57

    .line 165
    .line 166
    invoke-virtual {v3, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-direct {v0, v3, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 174
    .line 175
    .line 176
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 177
    .line 178
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :pswitch_6
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getBigInt()Ljava/math/BigInteger;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 191
    .line 192
    const/16 v3, 0xbb

    .line 193
    .line 194
    const-string v4, "java/math/BigInteger"

    .line 195
    .line 196
    invoke-virtual {v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 200
    .line 201
    invoke-virtual {v2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 202
    .line 203
    .line 204
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 205
    .line 206
    array-length v3, v1

    .line 207
    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 208
    .line 209
    .line 210
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 211
    .line 212
    const/16 v3, 0xbc

    .line 213
    .line 214
    const/16 v6, 0x8

    .line 215
    .line 216
    invoke-virtual {v2, v3, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 217
    .line 218
    .line 219
    const/4 v15, 0x0

    .line 220
    :goto_1
    array-length v2, v1

    .line 221
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 222
    .line 223
    if-ge v15, v2, :cond_1

    .line 224
    .line 225
    invoke-virtual {v3, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 226
    .line 227
    .line 228
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 229
    .line 230
    invoke-virtual {v2, v15}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 231
    .line 232
    .line 233
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 234
    .line 235
    aget-byte v3, v1, v15

    .line 236
    .line 237
    invoke-virtual {v2, v11, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 238
    .line 239
    .line 240
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 241
    .line 242
    const/16 v3, 0x54

    .line 243
    .line 244
    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 245
    .line 246
    .line 247
    add-int/lit8 v15, v15, 0x1

    .line 248
    .line 249
    goto :goto_1

    .line 250
    :cond_1
    const-string v0, "<init>"

    .line 251
    .line 252
    const-string v1, "([B)V"

    .line 253
    .line 254
    const/16 v2, 0xb7

    .line 255
    .line 256
    invoke-virtual {v3, v4, v0, v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :pswitch_7
    const/4 v2, 0x0

    .line 261
    invoke-virtual {v1, v11, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    :cond_2
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    if-nez v4, :cond_2

    .line 273
    .line 274
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 275
    .line 276
    iget v4, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 277
    .line 278
    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 279
    .line 280
    .line 281
    const-string v1, "memberRef"

    .line 282
    .line 283
    const-string v4, "nameRef"

    .line 284
    .line 285
    packed-switch v3, :pswitch_data_8

    .line 286
    .line 287
    .line 288
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    throw v0

    .line 293
    :pswitch_8
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 294
    .line 295
    iget v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 296
    .line 297
    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 298
    .line 299
    .line 300
    const-string v1, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;"

    .line 301
    .line 302
    :goto_2
    move-object v3, v1

    .line 303
    move-object v1, v4

    .line 304
    goto :goto_3

    .line 305
    :pswitch_9
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 306
    .line 307
    iget v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 308
    .line 309
    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 310
    .line 311
    .line 312
    const-string v1, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;"

    .line 313
    .line 314
    goto :goto_2

    .line 315
    :pswitch_a
    const-string v3, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;"

    .line 316
    .line 317
    goto :goto_3

    .line 318
    :pswitch_b
    const-string v3, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;"

    .line 319
    .line 320
    :goto_3
    iget-object v4, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 321
    .line 322
    invoke-virtual {v4, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 323
    .line 324
    .line 325
    invoke-direct {v0, v1, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :pswitch_c
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 330
    .line 331
    .line 332
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 333
    .line 334
    iget v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 335
    .line 336
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 337
    .line 338
    .line 339
    const-string v1, "escapeTextValue"

    .line 340
    .line 341
    invoke-direct {v0, v1, v12}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    return-void

    .line 345
    :pswitch_d
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 346
    .line 347
    .line 348
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 349
    .line 350
    iget v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 351
    .line 352
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 353
    .line 354
    .line 355
    const-string v1, "escapeAttributeValue"

    .line 356
    .line 357
    invoke-direct {v0, v1, v12}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    return-void

    .line 361
    :pswitch_e
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 362
    .line 363
    .line 364
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 365
    .line 366
    iget v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 367
    .line 368
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 369
    .line 370
    .line 371
    const-string v1, "setDefaultNamespace"

    .line 372
    .line 373
    invoke-direct {v0, v1, v9}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    return-void

    .line 377
    :pswitch_f
    invoke-direct {v0, v1, v4, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitExponentiation(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 378
    .line 379
    .line 380
    return-void

    .line 381
    :pswitch_10
    invoke-direct {v0, v1, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitStrictSetName(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 382
    .line 383
    .line 384
    return-void

    .line 385
    :pswitch_11
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 386
    .line 387
    iget v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 388
    .line 389
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 390
    .line 391
    .line 392
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 393
    .line 394
    const-string v2, "org/mozilla/javascript/NativeCall"

    .line 395
    .line 396
    const/16 v3, 0xc0

    .line 397
    .line 398
    invoke-virtual {v1, v3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 399
    .line 400
    .line 401
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 402
    .line 403
    const/16 v3, 0xb6

    .line 404
    .line 405
    const-string v4, "getHomeObject"

    .line 406
    .line 407
    const-string v6, "()Lorg/mozilla/javascript/Scriptable;"

    .line 408
    .line 409
    invoke-virtual {v1, v2, v4, v3, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 410
    .line 411
    .line 412
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 413
    .line 414
    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 419
    .line 420
    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 425
    .line 426
    invoke-virtual {v3, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 427
    .line 428
    .line 429
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 430
    .line 431
    const/16 v4, 0xc7

    .line 432
    .line 433
    invoke-virtual {v3, v4, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 434
    .line 435
    .line 436
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 437
    .line 438
    const/16 v5, 0x57

    .line 439
    .line 440
    invoke-virtual {v3, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 441
    .line 442
    .line 443
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 444
    .line 445
    const/16 v4, 0xb2

    .line 446
    .line 447
    invoke-virtual {v3, v14, v13, v4, v15}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 448
    .line 449
    .line 450
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 451
    .line 452
    const/16 v4, 0xa7

    .line 453
    .line 454
    invoke-virtual {v3, v4, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 455
    .line 456
    .line 457
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 458
    .line 459
    invoke-virtual {v3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 460
    .line 461
    .line 462
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 463
    .line 464
    const-string v3, "org/mozilla/javascript/Scriptable"

    .line 465
    .line 466
    const-string v4, "getPrototype"

    .line 467
    .line 468
    const/16 v5, 0xb9

    .line 469
    .line 470
    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 471
    .line 472
    .line 473
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 474
    .line 475
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 476
    .line 477
    .line 478
    return-void

    .line 479
    :cond_3
    :pswitch_12
    const/4 v2, 0x1

    .line 480
    goto/16 :goto_8

    .line 481
    .line 482
    :pswitch_13
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 483
    .line 484
    .line 485
    const/16 v2, 0x1e

    .line 486
    .line 487
    const/4 v3, 0x0

    .line 488
    invoke-virtual {v1, v2, v3}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 489
    .line 490
    .line 491
    move-result v2

    .line 492
    const/4 v3, 0x1

    .line 493
    if-ne v2, v3, :cond_4

    .line 494
    .line 495
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 496
    .line 497
    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 498
    .line 499
    .line 500
    move-result v2

    .line 501
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 502
    .line 503
    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 504
    .line 505
    .line 506
    move-result v3

    .line 507
    iget-object v4, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 508
    .line 509
    invoke-virtual {v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 510
    .line 511
    .line 512
    invoke-direct {v0, v6, v8}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    iget-object v4, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 516
    .line 517
    const/16 v5, 0x99

    .line 518
    .line 519
    invoke-virtual {v4, v5, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 520
    .line 521
    .line 522
    iget-object v4, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 523
    .line 524
    const/16 v5, 0x57

    .line 525
    .line 526
    invoke-virtual {v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 527
    .line 528
    .line 529
    iget-object v4, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 530
    .line 531
    const/16 v5, 0xb2

    .line 532
    .line 533
    invoke-virtual {v4, v14, v13, v5, v15}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 534
    .line 535
    .line 536
    iget-object v4, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 537
    .line 538
    const/16 v5, 0xa7

    .line 539
    .line 540
    invoke-virtual {v4, v5, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 541
    .line 542
    .line 543
    iget-object v4, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 544
    .line 545
    invoke-virtual {v4, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 546
    .line 547
    .line 548
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finishRefSpecialGeneration(Lorg/mozilla/javascript/Node;)V

    .line 549
    .line 550
    .line 551
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 552
    .line 553
    invoke-virtual {v0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 554
    .line 555
    .line 556
    return-void

    .line 557
    :cond_4
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finishRefSpecialGeneration(Lorg/mozilla/javascript/Node;)V

    .line 558
    .line 559
    .line 560
    return-void

    .line 561
    :pswitch_14
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateFunctionAndThisObj(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 562
    .line 563
    .line 564
    invoke-direct {v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->pushThisFromLastScriptable()V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 568
    .line 569
    .line 570
    move-result-object v2

    .line 571
    const/4 v3, 0x0

    .line 572
    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCallArgArray(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    .line 573
    .line 574
    .line 575
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 576
    .line 577
    iget v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 578
    .line 579
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 580
    .line 581
    .line 582
    const-string v1, "callRef"

    .line 583
    .line 584
    const-string v2, "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Ref;"

    .line 585
    .line 586
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    return-void

    .line 590
    :pswitch_15
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 591
    .line 592
    .line 593
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 594
    .line 595
    iget v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 596
    .line 597
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 598
    .line 599
    .line 600
    const-string v1, "refDel"

    .line 601
    .line 602
    invoke-direct {v0, v1, v10}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    return-void

    .line 606
    :pswitch_16
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 607
    .line 608
    .line 609
    const/16 v2, 0x1e

    .line 610
    .line 611
    const/4 v3, 0x0

    .line 612
    invoke-virtual {v1, v2, v3}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 613
    .line 614
    .line 615
    move-result v1

    .line 616
    const/4 v2, 0x1

    .line 617
    if-ne v1, v2, :cond_5

    .line 618
    .line 619
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 620
    .line 621
    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 622
    .line 623
    .line 624
    move-result v1

    .line 625
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 626
    .line 627
    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 628
    .line 629
    .line 630
    move-result v2

    .line 631
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 632
    .line 633
    invoke-virtual {v3, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 634
    .line 635
    .line 636
    invoke-direct {v0, v6, v8}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 640
    .line 641
    const/16 v5, 0x99

    .line 642
    .line 643
    invoke-virtual {v3, v5, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 644
    .line 645
    .line 646
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 647
    .line 648
    const/16 v4, 0xa7

    .line 649
    .line 650
    invoke-virtual {v3, v4, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 651
    .line 652
    .line 653
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 654
    .line 655
    invoke-virtual {v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 656
    .line 657
    .line 658
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 659
    .line 660
    const-string v3, "org/mozilla/javascript/Ref"

    .line 661
    .line 662
    const/16 v4, 0xc0

    .line 663
    .line 664
    invoke-virtual {v1, v4, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 665
    .line 666
    .line 667
    invoke-direct {v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finishGetRefGeneration()V

    .line 668
    .line 669
    .line 670
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 671
    .line 672
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 673
    .line 674
    .line 675
    return-void

    .line 676
    :cond_5
    invoke-direct {v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finishGetRefGeneration()V

    .line 677
    .line 678
    .line 679
    return-void

    .line 680
    :pswitch_17
    const/4 v3, 0x0

    .line 681
    invoke-direct {v0, v1, v4, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitObjectLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    .line 682
    .line 683
    .line 684
    return-void

    .line 685
    :pswitch_18
    const/4 v3, 0x0

    .line 686
    invoke-direct {v0, v1, v4, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitArrayLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    .line 687
    .line 688
    .line 689
    return-void

    .line 690
    :pswitch_19
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 691
    .line 692
    const/16 v1, 0x2a

    .line 693
    .line 694
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 695
    .line 696
    .line 697
    return-void

    .line 698
    :pswitch_1a
    invoke-static {v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getLocalBlockRegister(Lorg/mozilla/javascript/Node;)I

    .line 699
    .line 700
    .line 701
    move-result v1

    .line 702
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 703
    .line 704
    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 705
    .line 706
    .line 707
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 708
    .line 709
    iget v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 710
    .line 711
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 712
    .line 713
    .line 714
    const/16 v1, 0x43

    .line 715
    .line 716
    if-ne v3, v1, :cond_6

    .line 717
    .line 718
    const-string v1, "enumNext"

    .line 719
    .line 720
    const-string v2, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Boolean;"

    .line 721
    .line 722
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    return-void

    .line 726
    :cond_6
    const-string v1, "enumId"

    .line 727
    .line 728
    invoke-direct {v0, v1, v9}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    return-void

    .line 732
    :pswitch_1b
    const/4 v2, 0x1

    .line 733
    invoke-direct {v0, v1, v4, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitSetVar(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    .line 734
    .line 735
    .line 736
    return-void

    .line 737
    :pswitch_1c
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitGetVar(Lorg/mozilla/javascript/Node;)V

    .line 738
    .line 739
    .line 740
    return-void

    .line 741
    :pswitch_1d
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 742
    .line 743
    invoke-static {v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getLocalBlockRegister(Lorg/mozilla/javascript/Node;)I

    .line 744
    .line 745
    .line 746
    move-result v1

    .line 747
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 748
    .line 749
    .line 750
    return-void

    .line 751
    :goto_4
    :pswitch_1e
    if-eqz v4, :cond_7

    .line 752
    .line 753
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 757
    .line 758
    .line 759
    move-result-object v4

    .line 760
    goto :goto_4

    .line 761
    :cond_7
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 762
    .line 763
    iget v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 764
    .line 765
    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 766
    .line 767
    .line 768
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 769
    .line 770
    iget v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 771
    .line 772
    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    const-string v2, "NAME:BIND:"

    .line 780
    .line 781
    invoke-static {v2, v1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v1

    .line 785
    const-string v2, "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;"

    .line 786
    .line 787
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    return-void

    .line 791
    :pswitch_1f
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 792
    .line 793
    iget v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 794
    .line 795
    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 796
    .line 797
    .line 798
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 799
    .line 800
    iget v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 801
    .line 802
    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 803
    .line 804
    .line 805
    const/4 v2, 0x4

    .line 806
    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    .line 807
    .line 808
    .line 809
    move-result v1

    .line 810
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 811
    .line 812
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 813
    .line 814
    iget-object v4, v3, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    .line 815
    .line 816
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 817
    .line 818
    invoke-virtual {v3, v5, v1}, Lorg/mozilla/javascript/optimizer/Codegen;->getCompiledRegexpName(Lorg/mozilla/javascript/ast/ScriptNode;I)Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v1

    .line 822
    const/16 v5, 0xb2

    .line 823
    .line 824
    invoke-virtual {v2, v4, v1, v5, v15}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 825
    .line 826
    .line 827
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 828
    .line 829
    const-string/jumbo v1, "wrapRegExp"

    .line 830
    .line 831
    .line 832
    const-string v2, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    .line 833
    .line 834
    const-string v3, "org/mozilla/javascript/ScriptRuntime"

    .line 835
    .line 836
    const/16 v4, 0xb8

    .line 837
    .line 838
    invoke-virtual {v0, v3, v1, v4, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 839
    .line 840
    .line 841
    return-void

    .line 842
    :pswitch_20
    const/16 v5, 0xb2

    .line 843
    .line 844
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 845
    .line 846
    invoke-virtual {v0, v12, v9, v5, v11}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 847
    .line 848
    .line 849
    return-void

    .line 850
    :pswitch_21
    const/16 v5, 0xb2

    .line 851
    .line 852
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 853
    .line 854
    move-object/from16 v2, v16

    .line 855
    .line 856
    invoke-virtual {v0, v12, v2, v5, v11}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 857
    .line 858
    .line 859
    return-void

    .line 860
    :pswitch_22
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 861
    .line 862
    iget v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:I

    .line 863
    .line 864
    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 865
    .line 866
    .line 867
    return-void

    .line 868
    :pswitch_23
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 869
    .line 870
    const/4 v2, 0x1

    .line 871
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 872
    .line 873
    .line 874
    return-void

    .line 875
    :pswitch_24
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 876
    .line 877
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    .line 878
    .line 879
    .line 880
    move-result-object v1

    .line 881
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 882
    .line 883
    .line 884
    return-void

    .line 885
    :pswitch_25
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getDouble()D

    .line 886
    .line 887
    .line 888
    move-result-wide v2

    .line 889
    const/4 v4, -0x1

    .line 890
    const/16 v6, 0x8

    .line 891
    .line 892
    invoke-virtual {v1, v6, v4}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 893
    .line 894
    .line 895
    move-result v1

    .line 896
    if-eq v1, v4, :cond_8

    .line 897
    .line 898
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 899
    .line 900
    invoke-virtual {v0, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    .line 901
    .line 902
    .line 903
    return-void

    .line 904
    :cond_8
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 905
    .line 906
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 907
    .line 908
    invoke-virtual {v1, v0, v2, v3}, Lorg/mozilla/javascript/optimizer/Codegen;->pushNumberAsObject(Lorg/mozilla/classfile/ClassFileWriter;D)V

    .line 909
    .line 910
    .line 911
    return-void

    .line 912
    :pswitch_26
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 913
    .line 914
    iget v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 915
    .line 916
    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 917
    .line 918
    .line 919
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 920
    .line 921
    iget v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 922
    .line 923
    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 924
    .line 925
    .line 926
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v1

    .line 930
    const-string v2, "NAME:GET:"

    .line 931
    .line 932
    invoke-static {v2, v1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v1

    .line 936
    const-string v2, "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    .line 937
    .line 938
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    .line 940
    .line 941
    return-void

    .line 942
    :sswitch_0
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 943
    .line 944
    .line 945
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 946
    .line 947
    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 948
    .line 949
    .line 950
    move-result v2

    .line 951
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 952
    .line 953
    invoke-virtual {v3, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 954
    .line 955
    .line 956
    invoke-direct {v0, v6, v8}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 960
    .line 961
    const/16 v5, 0x99

    .line 962
    .line 963
    invoke-virtual {v3, v5, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 964
    .line 965
    .line 966
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 967
    .line 968
    const/16 v5, 0x57

    .line 969
    .line 970
    invoke-virtual {v3, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 971
    .line 972
    .line 973
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 974
    .line 975
    .line 976
    move-result-object v3

    .line 977
    invoke-direct {v0, v3, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 978
    .line 979
    .line 980
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 981
    .line 982
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 983
    .line 984
    .line 985
    return-void

    .line 986
    :sswitch_1
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 987
    .line 988
    .line 989
    move-result-object v1

    .line 990
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 991
    .line 992
    .line 993
    move-result-object v2

    .line 994
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateStatement(Lorg/mozilla/javascript/Node;)V

    .line 995
    .line 996
    .line 997
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 998
    .line 999
    .line 1000
    move-result-object v3

    .line 1001
    invoke-direct {v0, v3, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1002
    .line 1003
    .line 1004
    invoke-direct {v0, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateStatement(Lorg/mozilla/javascript/Node;)V

    .line 1005
    .line 1006
    .line 1007
    return-void

    .line 1008
    :sswitch_2
    invoke-direct {v0, v1, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitDotQuery(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1009
    .line 1010
    .line 1011
    return-void

    .line 1012
    :pswitch_27
    :sswitch_3
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v2

    .line 1019
    const/16 v4, 0x9c

    .line 1020
    .line 1021
    if-ne v3, v4, :cond_9

    .line 1022
    .line 1023
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1024
    .line 1025
    invoke-virtual {v3, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1026
    .line 1027
    .line 1028
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1029
    .line 1030
    iget v4, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 1031
    .line 1032
    invoke-virtual {v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1033
    .line 1034
    .line 1035
    const-string v3, "refGet"

    .line 1036
    .line 1037
    invoke-direct {v0, v3, v10}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    :cond_9
    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1041
    .line 1042
    .line 1043
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1044
    .line 1045
    iget v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 1046
    .line 1047
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1048
    .line 1049
    .line 1050
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1051
    .line 1052
    iget v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 1053
    .line 1054
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1055
    .line 1056
    .line 1057
    const-string v1, "refSet"

    .line 1058
    .line 1059
    const-string v2, "(Lorg/mozilla/javascript/Ref;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 1060
    .line 1061
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    .line 1063
    .line 1064
    return-void

    .line 1065
    :sswitch_4
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1066
    .line 1067
    .line 1068
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1069
    .line 1070
    const/16 v5, 0x57

    .line 1071
    .line 1072
    invoke-virtual {v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1073
    .line 1074
    .line 1075
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1076
    .line 1077
    invoke-static {v0}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 1078
    .line 1079
    .line 1080
    return-void

    .line 1081
    :sswitch_5
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 1082
    .line 1083
    if-nez v3, :cond_a

    .line 1084
    .line 1085
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    .line 1086
    .line 1087
    .line 1088
    move-result v2

    .line 1089
    const/16 v3, 0x96

    .line 1090
    .line 1091
    if-eq v2, v3, :cond_15

    .line 1092
    .line 1093
    :cond_a
    const/4 v2, 0x1

    .line 1094
    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    .line 1095
    .line 1096
    .line 1097
    move-result v1

    .line 1098
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 1099
    .line 1100
    invoke-static {v2, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;I)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v1

    .line 1104
    iget-object v2, v1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    .line 1105
    .line 1106
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    .line 1107
    .line 1108
    .line 1109
    move-result v2

    .line 1110
    const/4 v3, 0x2

    .line 1111
    if-eq v2, v3, :cond_c

    .line 1112
    .line 1113
    const/4 v3, 0x4

    .line 1114
    if-ne v2, v3, :cond_b

    .line 1115
    .line 1116
    goto :goto_5

    .line 1117
    :cond_b
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v0

    .line 1121
    throw v0

    .line 1122
    :cond_c
    :goto_5
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitFunction(Lorg/mozilla/javascript/optimizer/OptFunctionNode;I)V

    .line 1123
    .line 1124
    .line 1125
    return-void

    .line 1126
    :sswitch_6
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v2

    .line 1130
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v3

    .line 1134
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1135
    .line 1136
    .line 1137
    invoke-direct {v0, v7, v8}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    .line 1139
    .line 1140
    iget-object v4, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1141
    .line 1142
    invoke-virtual {v4}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 1143
    .line 1144
    .line 1145
    move-result v4

    .line 1146
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1147
    .line 1148
    const/16 v6, 0x99

    .line 1149
    .line 1150
    invoke-virtual {v5, v6, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 1151
    .line 1152
    .line 1153
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1154
    .line 1155
    iget v5, v5, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 1156
    .line 1157
    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1158
    .line 1159
    .line 1160
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1161
    .line 1162
    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 1163
    .line 1164
    .line 1165
    move-result v2

    .line 1166
    iget-object v6, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1167
    .line 1168
    const/16 v7, 0xa7

    .line 1169
    .line 1170
    invoke-virtual {v6, v7, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 1171
    .line 1172
    .line 1173
    iget-object v6, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1174
    .line 1175
    invoke-virtual {v6, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(II)V

    .line 1176
    .line 1177
    .line 1178
    invoke-direct {v0, v3, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1179
    .line 1180
    .line 1181
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1182
    .line 1183
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 1184
    .line 1185
    .line 1186
    return-void

    .line 1187
    :sswitch_7
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v2

    .line 1191
    :goto_6
    move-object/from16 v17, v4

    .line 1192
    .line 1193
    move-object v4, v2

    .line 1194
    move-object/from16 v2, v17

    .line 1195
    .line 1196
    if-eqz v4, :cond_d

    .line 1197
    .line 1198
    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1199
    .line 1200
    .line 1201
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1202
    .line 1203
    const/16 v5, 0x57

    .line 1204
    .line 1205
    invoke-virtual {v2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1206
    .line 1207
    .line 1208
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v2

    .line 1212
    goto :goto_6

    .line 1213
    :cond_d
    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1214
    .line 1215
    .line 1216
    return-void

    .line 1217
    :pswitch_28
    :sswitch_8
    invoke-direct {v0, v3, v1, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitSetElem(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1218
    .line 1219
    .line 1220
    return-void

    .line 1221
    :sswitch_9
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1222
    .line 1223
    .line 1224
    const/16 v2, 0x1e

    .line 1225
    .line 1226
    const/4 v3, 0x0

    .line 1227
    invoke-virtual {v1, v2, v3}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 1228
    .line 1229
    .line 1230
    move-result v2

    .line 1231
    const/4 v3, 0x1

    .line 1232
    if-ne v2, v3, :cond_e

    .line 1233
    .line 1234
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1235
    .line 1236
    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 1237
    .line 1238
    .line 1239
    move-result v2

    .line 1240
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1241
    .line 1242
    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 1243
    .line 1244
    .line 1245
    move-result v3

    .line 1246
    iget-object v7, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1247
    .line 1248
    invoke-virtual {v7, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1249
    .line 1250
    .line 1251
    invoke-direct {v0, v6, v8}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    .line 1253
    .line 1254
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1255
    .line 1256
    const/16 v6, 0x99

    .line 1257
    .line 1258
    invoke-virtual {v5, v6, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 1259
    .line 1260
    .line 1261
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1262
    .line 1263
    const/16 v6, 0x57

    .line 1264
    .line 1265
    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1266
    .line 1267
    .line 1268
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1269
    .line 1270
    const/16 v6, 0xb2

    .line 1271
    .line 1272
    invoke-virtual {v5, v14, v13, v6, v15}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1273
    .line 1274
    .line 1275
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1276
    .line 1277
    const/16 v7, 0xa7

    .line 1278
    .line 1279
    invoke-virtual {v5, v7, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 1280
    .line 1281
    .line 1282
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1283
    .line 1284
    invoke-virtual {v5, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 1285
    .line 1286
    .line 1287
    invoke-direct {v0, v1, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finishGetElemGeneration(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1288
    .line 1289
    .line 1290
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1291
    .line 1292
    invoke-virtual {v0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 1293
    .line 1294
    .line 1295
    return-void

    .line 1296
    :cond_e
    invoke-direct {v0, v1, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finishGetElemGeneration(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1297
    .line 1298
    .line 1299
    return-void

    .line 1300
    :pswitch_29
    :sswitch_a
    invoke-direct {v0, v3, v1, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitSetProp(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1301
    .line 1302
    .line 1303
    return-void

    .line 1304
    :pswitch_2a
    invoke-direct {v0, v1, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitGetProp(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1305
    .line 1306
    .line 1307
    return-void

    .line 1308
    :pswitch_2b
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1309
    .line 1310
    .line 1311
    const-string/jumbo v1, "typeof"

    .line 1312
    .line 1313
    .line 1314
    const-string v2, "(Ljava/lang/Object;)Ljava/lang/String;"

    .line 1315
    .line 1316
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    .line 1318
    .line 1319
    return-void

    .line 1320
    :pswitch_2c
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    .line 1321
    .line 1322
    .line 1323
    move-result v2

    .line 1324
    const/16 v3, 0x36

    .line 1325
    .line 1326
    if-ne v2, v3, :cond_f

    .line 1327
    .line 1328
    const/4 v2, 0x1

    .line 1329
    goto :goto_7

    .line 1330
    :cond_f
    const/4 v2, 0x0

    .line 1331
    :goto_7
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v3

    .line 1338
    invoke-direct {v0, v3, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1339
    .line 1340
    .line 1341
    const/16 v3, 0x1f

    .line 1342
    .line 1343
    const/4 v4, 0x0

    .line 1344
    invoke-virtual {v1, v3, v4}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 1345
    .line 1346
    .line 1347
    move-result v1

    .line 1348
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1349
    .line 1350
    const/4 v5, 0x1

    .line 1351
    if-ne v1, v5, :cond_10

    .line 1352
    .line 1353
    const/16 v1, 0x58

    .line 1354
    .line 1355
    invoke-virtual {v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1356
    .line 1357
    .line 1358
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1359
    .line 1360
    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 1361
    .line 1362
    .line 1363
    const-string/jumbo v1, "throwDeleteOnSuperPropertyNotAllowed"

    .line 1364
    .line 1365
    .line 1366
    const-string v2, "()V"

    .line 1367
    .line 1368
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    .line 1370
    .line 1371
    return-void

    .line 1372
    :cond_10
    iget v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 1373
    .line 1374
    invoke-virtual {v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1375
    .line 1376
    .line 1377
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1378
    .line 1379
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Z)V

    .line 1380
    .line 1381
    .line 1382
    const-string v1, "delete"

    .line 1383
    .line 1384
    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Z)Ljava/lang/Object;"

    .line 1385
    .line 1386
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    .line 1388
    .line 1389
    return-void

    .line 1390
    :pswitch_2d
    const/16 v2, 0xa

    .line 1391
    .line 1392
    const/4 v5, 0x0

    .line 1393
    invoke-virtual {v1, v2, v5}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 1394
    .line 1395
    .line 1396
    move-result v2

    .line 1397
    if-nez v2, :cond_13

    .line 1398
    .line 1399
    const/16 v2, 0x9

    .line 1400
    .line 1401
    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v2

    .line 1405
    check-cast v2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 1406
    .line 1407
    if-eqz v2, :cond_11

    .line 1408
    .line 1409
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitOptimizedCall(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/optimizer/OptFunctionNode;ILorg/mozilla/javascript/Node;)V

    .line 1410
    .line 1411
    .line 1412
    return-void

    .line 1413
    :cond_11
    const/16 v2, 0x2b

    .line 1414
    .line 1415
    if-ne v3, v2, :cond_12

    .line 1416
    .line 1417
    invoke-direct {v0, v1, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitStandardCall(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1418
    .line 1419
    .line 1420
    return-void

    .line 1421
    :cond_12
    invoke-direct {v0, v1, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitStandardNew(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1422
    .line 1423
    .line 1424
    return-void

    .line 1425
    :cond_13
    invoke-direct {v0, v1, v3, v2, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitSpecialCall(Lorg/mozilla/javascript/Node;IILorg/mozilla/javascript/Node;)V

    .line 1426
    .line 1427
    .line 1428
    return-void

    .line 1429
    :pswitch_2e
    const/4 v2, -0x1

    .line 1430
    const/16 v6, 0x8

    .line 1431
    .line 1432
    invoke-virtual {v1, v6, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 1433
    .line 1434
    .line 1435
    move-result v3

    .line 1436
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1437
    .line 1438
    .line 1439
    if-ne v3, v2, :cond_14

    .line 1440
    .line 1441
    invoke-direct {v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToNumeric()V

    .line 1442
    .line 1443
    .line 1444
    const-string v1, "negate"

    .line 1445
    .line 1446
    const-string v2, "(Ljava/lang/Number;)Ljava/lang/Number;"

    .line 1447
    .line 1448
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    .line 1450
    .line 1451
    return-void

    .line 1452
    :cond_14
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1453
    .line 1454
    const/16 v1, 0x77

    .line 1455
    .line 1456
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1457
    .line 1458
    .line 1459
    return-void

    .line 1460
    :pswitch_2f
    const/4 v2, -0x1

    .line 1461
    const/16 v6, 0x8

    .line 1462
    .line 1463
    invoke-virtual {v1, v6, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 1464
    .line 1465
    .line 1466
    move-result v3

    .line 1467
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1468
    .line 1469
    .line 1470
    if-ne v3, v2, :cond_15

    .line 1471
    .line 1472
    invoke-direct {v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToDouble()V

    .line 1473
    .line 1474
    .line 1475
    invoke-direct {v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    .line 1476
    .line 1477
    .line 1478
    :cond_15
    :pswitch_30
    return-void

    .line 1479
    :pswitch_31
    invoke-direct {v0, v1, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitBitNot(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1480
    .line 1481
    .line 1482
    return-void

    .line 1483
    :pswitch_32
    move-object v2, v5

    .line 1484
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1485
    .line 1486
    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 1487
    .line 1488
    .line 1489
    move-result v3

    .line 1490
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1491
    .line 1492
    invoke-virtual {v5}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 1493
    .line 1494
    .line 1495
    move-result v5

    .line 1496
    iget-object v6, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1497
    .line 1498
    invoke-virtual {v6}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 1499
    .line 1500
    .line 1501
    move-result v6

    .line 1502
    invoke-direct {v0, v4, v1, v3, v5}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateIfJump(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    .line 1503
    .line 1504
    .line 1505
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1506
    .line 1507
    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 1508
    .line 1509
    .line 1510
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1511
    .line 1512
    const/16 v4, 0xb2

    .line 1513
    .line 1514
    invoke-virtual {v1, v12, v2, v4, v11}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1515
    .line 1516
    .line 1517
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1518
    .line 1519
    const/16 v7, 0xa7

    .line 1520
    .line 1521
    invoke-virtual {v1, v7, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 1522
    .line 1523
    .line 1524
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1525
    .line 1526
    invoke-virtual {v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 1527
    .line 1528
    .line 1529
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1530
    .line 1531
    invoke-virtual {v1, v12, v9, v4, v11}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1532
    .line 1533
    .line 1534
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1535
    .line 1536
    invoke-virtual {v1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 1537
    .line 1538
    .line 1539
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1540
    .line 1541
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->adjustStackTop()V

    .line 1542
    .line 1543
    .line 1544
    return-void

    .line 1545
    :pswitch_33
    invoke-direct {v0, v1, v3, v4, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitArithmetic(Lorg/mozilla/javascript/Node;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1546
    .line 1547
    .line 1548
    return-void

    .line 1549
    :pswitch_34
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1550
    .line 1551
    .line 1552
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v2

    .line 1556
    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1557
    .line 1558
    .line 1559
    const/4 v2, -0x1

    .line 1560
    const/16 v6, 0x8

    .line 1561
    .line 1562
    invoke-virtual {v1, v6, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 1563
    .line 1564
    .line 1565
    move-result v1

    .line 1566
    if-eqz v1, :cond_18

    .line 1567
    .line 1568
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1569
    .line 1570
    const-string v3, "add"

    .line 1571
    .line 1572
    const/4 v5, 0x1

    .line 1573
    if-eq v1, v5, :cond_17

    .line 1574
    .line 1575
    iget v4, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 1576
    .line 1577
    const/4 v5, 0x2

    .line 1578
    if-eq v1, v5, :cond_16

    .line 1579
    .line 1580
    invoke-virtual {v2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1581
    .line 1582
    .line 1583
    const-string v1, "MATH:ADD"

    .line 1584
    .line 1585
    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    .line 1586
    .line 1587
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    .line 1589
    .line 1590
    return-void

    .line 1591
    :cond_16
    invoke-virtual {v2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1592
    .line 1593
    .line 1594
    const-string v1, "(Ljava/lang/Object;DLorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    .line 1595
    .line 1596
    invoke-direct {v0, v3, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    .line 1598
    .line 1599
    return-void

    .line 1600
    :cond_17
    iget v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 1601
    .line 1602
    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1603
    .line 1604
    .line 1605
    const-string v1, "(DLjava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    .line 1606
    .line 1607
    invoke-direct {v0, v3, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    .line 1609
    .line 1610
    return-void

    .line 1611
    :cond_18
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1612
    .line 1613
    const/16 v1, 0x63

    .line 1614
    .line 1615
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1616
    .line 1617
    .line 1618
    return-void

    .line 1619
    :pswitch_35
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1620
    .line 1621
    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 1622
    .line 1623
    .line 1624
    move-result v2

    .line 1625
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1626
    .line 1627
    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 1628
    .line 1629
    .line 1630
    move-result v3

    .line 1631
    invoke-direct {v0, v1, v4, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitIfJumpRelOp(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    .line 1632
    .line 1633
    .line 1634
    invoke-direct {v0, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addJumpedBooleanWrap(II)V

    .line 1635
    .line 1636
    .line 1637
    return-void

    .line 1638
    :pswitch_36
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1639
    .line 1640
    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 1641
    .line 1642
    .line 1643
    move-result v2

    .line 1644
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1645
    .line 1646
    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 1647
    .line 1648
    .line 1649
    move-result v3

    .line 1650
    invoke-direct {v0, v1, v4, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitIfJumpEqOp(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    .line 1651
    .line 1652
    .line 1653
    invoke-direct {v0, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addJumpedBooleanWrap(II)V

    .line 1654
    .line 1655
    .line 1656
    return-void

    .line 1657
    :pswitch_37
    invoke-direct {v0, v1, v3, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitBitOp(Lorg/mozilla/javascript/Node;ILorg/mozilla/javascript/Node;)V

    .line 1658
    .line 1659
    .line 1660
    return-void

    .line 1661
    :pswitch_38
    invoke-direct {v0, v1, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitSetName(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1662
    .line 1663
    .line 1664
    return-void

    .line 1665
    :cond_19
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitTemplateLiteral(Lorg/mozilla/javascript/Node;)V

    .line 1666
    .line 1667
    .line 1668
    return-void

    .line 1669
    :goto_8
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateYieldPoint(Lorg/mozilla/javascript/Node;Z)V

    .line 1670
    .line 1671
    .line 1672
    return-void

    .line 1673
    :cond_1a
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1674
    .line 1675
    .line 1676
    invoke-direct {v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToDouble()V

    .line 1677
    .line 1678
    .line 1679
    return-void

    .line 1680
    :cond_1b
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    .line 1681
    .line 1682
    .line 1683
    move-result v2

    .line 1684
    const/16 v3, 0x2d

    .line 1685
    .line 1686
    if-ne v2, v3, :cond_1c

    .line 1687
    .line 1688
    const/4 v2, -0x1

    .line 1689
    const/16 v6, 0x8

    .line 1690
    .line 1691
    invoke-virtual {v4, v6, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 1692
    .line 1693
    .line 1694
    move-result v3

    .line 1695
    goto :goto_9

    .line 1696
    :cond_1c
    const/4 v2, -0x1

    .line 1697
    const/16 v6, 0x8

    .line 1698
    .line 1699
    move v3, v2

    .line 1700
    :goto_9
    if-eq v3, v2, :cond_1d

    .line 1701
    .line 1702
    invoke-virtual {v4, v6}, Lorg/mozilla/javascript/Node;->removeProp(I)V

    .line 1703
    .line 1704
    .line 1705
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1706
    .line 1707
    .line 1708
    invoke-virtual {v4, v6, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 1709
    .line 1710
    .line 1711
    return-void

    .line 1712
    :cond_1d
    :try_start_0
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1713
    .line 1714
    .line 1715
    invoke-direct {v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    .line 1716
    .line 1717
    .line 1718
    return-void

    .line 1719
    :catchall_0
    move-exception v0

    .line 1720
    throw v0

    .line 1721
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_38
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_36
        :pswitch_36
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_34
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
    .end packed-switch

    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_a
        0x27 -> :sswitch_9
        0x29 -> :sswitch_8
        0x62 -> :sswitch_7
        0x73 -> :sswitch_6
        0x7a -> :sswitch_5
        0x8b -> :sswitch_4
        0x9c -> :sswitch_3
        0xa0 -> :sswitch_2
        0xad -> :sswitch_1
        0xb9 -> :sswitch_0
    .end sparse-switch

    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_2d
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_36
        :pswitch_36
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    :pswitch_data_2
    .packed-switch 0x39
        :pswitch_35
        :pswitch_35
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    .line 1854
    .line 1855
    .line 1856
    .line 1857
    .line 1858
    .line 1859
    .line 1860
    .line 1861
    .line 1862
    .line 1863
    .line 1864
    .line 1865
    .line 1866
    .line 1867
    :pswitch_data_3
    .packed-switch 0x43
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    .line 1868
    .line 1869
    .line 1870
    .line 1871
    .line 1872
    .line 1873
    .line 1874
    .line 1875
    .line 1876
    .line 1877
    :pswitch_data_4
    .packed-switch 0x47
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_27
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 1878
    .line 1879
    .line 1880
    .line 1881
    .line 1882
    .line 1883
    .line 1884
    .line 1885
    .line 1886
    .line 1887
    .line 1888
    .line 1889
    .line 1890
    .line 1891
    .line 1892
    .line 1893
    .line 1894
    .line 1895
    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    .line 1904
    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    .line 1919
    :pswitch_data_5
    .packed-switch 0x75
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 1920
    .line 1921
    .line 1922
    .line 1923
    .line 1924
    .line 1925
    .line 1926
    .line 1927
    .line 1928
    .line 1929
    .line 1930
    .line 1931
    :pswitch_data_6
    .packed-switch 0x97
        :pswitch_3
        :pswitch_30
        :pswitch_29
        :pswitch_28
    .end packed-switch

    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    .line 1943
    :pswitch_data_7
    .packed-switch 0xa9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1944
    .line 1945
    .line 1946
    .line 1947
    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    .line 1953
    :pswitch_data_8
    .packed-switch 0x55
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method private generateFunctionAndThisObj(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1e

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p2, v1, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    move v2, v3

    .line 16
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const-string v3, ":"

    .line 21
    .line 22
    const-string v4, "GETWITHTHIS"

    .line 23
    .line 24
    const-string v5, "GETWITHTHISOPTIONAL"

    .line 25
    .line 26
    const/16 v6, 0x21

    .line 27
    .line 28
    if-eq v1, v6, :cond_5

    .line 29
    .line 30
    const/16 v7, 0x22

    .line 31
    .line 32
    if-eq v1, v7, :cond_4

    .line 33
    .line 34
    const/16 v7, 0x27

    .line 35
    .line 36
    if-eq v1, v7, :cond_5

    .line 37
    .line 38
    const/16 v0, 0x2c

    .line 39
    .line 40
    if-eq v1, v0, :cond_2

    .line 41
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 46
    .line 47
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 50
    .line 51
    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    const-string p1, "getValueFunctionAndThisOptional"

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string p1, "getValueFunctionAndThis"

    .line 58
    .line 59
    :goto_0
    const-string p2, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;"

    .line 60
    .line 61
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 70
    .line 71
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 72
    .line 73
    invoke-virtual {p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 77
    .line 78
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 79
    .line 80
    invoke-virtual {p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 81
    .line 82
    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    move-object v4, v5

    .line 86
    :cond_3
    const-string p2, "NAME:"

    .line 87
    .line 88
    invoke-static {p2, v4, v3, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string p2, "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;"

    .line 93
    .line 94
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    throw p0

    .line 103
    :cond_5
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    if-ne v0, v6, :cond_7

    .line 115
    .line 116
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 121
    .line 122
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 123
    .line 124
    invoke-virtual {p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 125
    .line 126
    .line 127
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 128
    .line 129
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 130
    .line 131
    invoke-virtual {p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 132
    .line 133
    .line 134
    if-eqz v2, :cond_6

    .line 135
    .line 136
    move-object v4, v5

    .line 137
    :cond_6
    const-string p2, "PROP:"

    .line 138
    .line 139
    invoke-static {p2, v4, v3, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const-string p2, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;"

    .line 144
    .line 145
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_7
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 150
    .line 151
    .line 152
    const/16 p2, 0x8

    .line 153
    .line 154
    const/4 v0, -0x1

    .line 155
    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eq p1, v0, :cond_8

    .line 160
    .line 161
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    .line 162
    .line 163
    .line 164
    :cond_8
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 165
    .line 166
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 167
    .line 168
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 172
    .line 173
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 174
    .line 175
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 176
    .line 177
    .line 178
    if-eqz v2, :cond_9

    .line 179
    .line 180
    const-string p1, "getElemFunctionAndThisOptional"

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_9
    const-string p1, "getElemFunctionAndThis"

    .line 184
    .line 185
    :goto_1
    const-string p2, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;"

    .line 186
    .line 187
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-void
.end method

.method private generateGenerator()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 12
    .line 13
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodSignature(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/16 v3, 0xa

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->initBodyGeneration()V

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 28
    .line 29
    add-int/lit8 v1, v0, 0x1

    .line 30
    .line 31
    iput v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 32
    .line 33
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:I

    .line 34
    .line 35
    iput v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:I

    .line 36
    .line 37
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 38
    .line 39
    const-string v1, "()Lorg/mozilla/javascript/Scriptable;"

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 44
    .line 45
    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->funObjLocal:I

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 51
    .line 52
    const-string v2, "org/mozilla/javascript/Scriptable"

    .line 53
    .line 54
    const-string v3, "getParentScope"

    .line 55
    .line 56
    const/16 v4, 0xb9

    .line 57
    .line 58
    invoke-virtual {v0, v2, v3, v4, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 62
    .line 63
    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 66
    .line 67
    .line 68
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 69
    .line 70
    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->funObjLocal:I

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 76
    .line 77
    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 83
    .line 84
    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 90
    .line 91
    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:I

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 97
    .line 98
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 99
    .line 100
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ScriptNode;->isInStrictMode()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Z)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 108
    .line 109
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 110
    .line 111
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ScriptNode;->hasRestParameter()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Z)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 119
    .line 120
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 124
    .line 125
    const-string v2, "org/mozilla/javascript/BaseFunction"

    .line 126
    .line 127
    const-string v3, "getHomeObject"

    .line 128
    .line 129
    const/16 v4, 0xb6

    .line 130
    .line 131
    invoke-virtual {v0, v2, v3, v4, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v0, "createFunctionActivation"

    .line 135
    .line 136
    const-string v1, "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;ZZLorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    .line 137
    .line 138
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 142
    .line 143
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 149
    .line 150
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 151
    .line 152
    iget-object v1, v1, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    .line 153
    .line 154
    const/16 v2, 0xbb

    .line 155
    .line 156
    invoke-virtual {v0, v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 160
    .line 161
    const/16 v1, 0x59

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 167
    .line 168
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 174
    .line 175
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 181
    .line 182
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFnIndex:I

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 188
    .line 189
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 190
    .line 191
    iget-object v1, v1, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    .line 192
    .line 193
    const-string v2, "<init>"

    .line 194
    .line 195
    const-string v3, "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V"

    .line 196
    .line 197
    const/16 v4, 0xb7

    .line 198
    .line 199
    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateNestedFunctionInits()V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 206
    .line 207
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 213
    .line 214
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:I

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 220
    .line 221
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->maxLocals:I

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 227
    .line 228
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->maxStack:I

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 231
    .line 232
    .line 233
    const-string v0, "createNativeGenerator"

    .line 234
    .line 235
    const-string v1, "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;II)Lorg/mozilla/javascript/Scriptable;"

    .line 236
    .line 237
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 241
    .line 242
    const/16 v1, 0xb0

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 245
    .line 246
    .line 247
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 248
    .line 249
    iget p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:I

    .line 250
    .line 251
    add-int/lit8 p0, p0, 0x1

    .line 252
    .line 253
    int-to-short p0, p0

    .line 254
    invoke-virtual {v0, p0}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(I)V

    .line 255
    .line 256
    .line 257
    return-void
.end method

.method private generateGetGeneratorLocalsState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorStateLocal:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 6
    .line 7
    .line 8
    const-string v0, "getGeneratorLocalsState"

    .line 9
    .line 10
    const-string v1, "(Ljava/lang/Object;)[Ljava/lang/Object;"

    .line 11
    .line 12
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private generateGetGeneratorResumptionPoint()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorStateLocal:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 9
    .line 10
    const-string v0, "resumptionPoint"

    .line 11
    .line 12
    const-string v1, "I"

    .line 13
    .line 14
    const-string v2, "org/mozilla/javascript/optimizer/OptRuntime$GeneratorState"

    .line 15
    .line 16
    const/16 v3, 0xb4

    .line 17
    .line 18
    invoke-virtual {p0, v2, v0, v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private generateGetGeneratorStackState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorStateLocal:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 6
    .line 7
    .line 8
    const-string v0, "getGeneratorStackState"

    .line 9
    .line 10
    const-string v1, "(Ljava/lang/Object;)[Ljava/lang/Object;"

    .line 11
    .line 12
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private generateIfJump(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0x1a

    .line 10
    .line 11
    if-eq v0, v2, :cond_4

    .line 12
    .line 13
    const/16 v2, 0x33

    .line 14
    .line 15
    if-eq v0, v2, :cond_3

    .line 16
    .line 17
    const/16 v2, 0x34

    .line 18
    .line 19
    if-eq v0, v2, :cond_3

    .line 20
    .line 21
    const/16 v2, 0x39

    .line 22
    .line 23
    if-eq v0, v2, :cond_2

    .line 24
    .line 25
    const/16 v2, 0x3a

    .line 26
    .line 27
    if-eq v0, v2, :cond_2

    .line 28
    .line 29
    const/16 v2, 0x75

    .line 30
    .line 31
    const/16 v3, 0x76

    .line 32
    .line 33
    if-eq v0, v2, :cond_0

    .line 34
    .line 35
    if-eq v0, v3, :cond_0

    .line 36
    .line 37
    packed-switch v0, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 41
    .line 42
    .line 43
    const-string p1, "MATH:TOBOOLEAN"

    .line 44
    .line 45
    const-string p2, "(Ljava/lang/Object;)Z"

    .line 46
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 51
    .line 52
    const/16 p2, 0x9a

    .line 53
    .line 54
    invoke-virtual {p1, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 58
    .line 59
    const/16 p1, 0xa7

    .line 60
    .line 61
    invoke-virtual {p0, p1, p4}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 66
    .line 67
    invoke-virtual {p2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-ne v0, v3, :cond_1

    .line 72
    .line 73
    invoke-direct {p0, v1, p1, p2, p4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateIfJump(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-direct {p0, v1, p1, p3, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateIfJump(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    .line 78
    .line 79
    .line 80
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 81
    .line 82
    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-direct {p0, p2, p1, p3, p4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateIfJump(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_2
    :pswitch_0
    invoke-direct {p0, p1, v1, p3, p4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitIfJumpRelOp(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    :pswitch_1
    invoke-direct {p0, p1, v1, p3, p4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitIfJumpEqOp(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_4
    invoke-direct {p0, v1, p1, p4, p3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateIfJump(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private generateIntegerUnwrap()V
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    const-string v0, "intValue"

    .line 4
    .line 5
    const-string v1, "()I"

    .line 6
    .line 7
    const-string v2, "java/lang/Integer"

    .line 8
    .line 9
    const/16 v3, 0xb6

    .line 10
    .line 11
    invoke-virtual {p0, v2, v0, v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private generateIntegerWrap()V
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    const-string/jumbo v0, "valueOf"

    .line 4
    .line 5
    .line 6
    const-string v1, "(I)Ljava/lang/Integer;"

    .line 7
    .line 8
    const-string v2, "java/lang/Integer"

    .line 9
    .line 10
    const/16 v3, 0xb8

    .line 11
    .line 12
    invoke-virtual {p0, v2, v0, v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private generateLocalYieldPoint(Lorg/mozilla/javascript/Node;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    iget v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 4
    .line 5
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->maxStack:I

    .line 6
    .line 7
    if-le v1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v0

    .line 11
    :goto_0
    iput v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->maxStack:I

    .line 12
    .line 13
    const/16 v1, 0x57

    .line 14
    .line 15
    const/16 v2, 0x5a

    .line 16
    .line 17
    const/16 v3, 0x5f

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateGetGeneratorStackState()V

    .line 22
    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    :goto_1
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 26
    .line 27
    if-ge v4, v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v5, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 30
    .line 31
    .line 32
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 33
    .line 34
    invoke-virtual {v5, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 35
    .line 36
    .line 37
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 38
    .line 39
    invoke-virtual {v5, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 40
    .line 41
    .line 42
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 43
    .line 44
    invoke-virtual {v5, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 45
    .line 46
    .line 47
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 48
    .line 49
    const/16 v6, 0x53

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v5, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    if-eqz v4, :cond_3

    .line 65
    .line 66
    invoke-direct {p0, v4, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 71
    .line 72
    invoke-static {v4}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 73
    .line 74
    .line 75
    :goto_2
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    const/16 v5, 0xb3

    .line 80
    .line 81
    if-ne v4, v5, :cond_4

    .line 82
    .line 83
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 84
    .line 85
    const/16 v5, 0xbb

    .line 86
    .line 87
    const-string v6, "org/mozilla/javascript/ES6Generator$YieldStarResult"

    .line 88
    .line 89
    invoke-virtual {v4, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 93
    .line 94
    invoke-virtual {v4, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 103
    .line 104
    const-string v4, "<init>"

    .line 105
    .line 106
    const-string v5, "(Ljava/lang/Object;)V"

    .line 107
    .line 108
    const/16 v7, 0xb7

    .line 109
    .line 110
    invoke-virtual {v2, v6, v4, v7, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNextGeneratorState(Lorg/mozilla/javascript/Node;)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateSetGeneratorResumptionPoint(I)V

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateSaveLocals(Lorg/mozilla/javascript/Node;)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 125
    .line 126
    const/16 v6, 0xb0

    .line 127
    .line 128
    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 129
    .line 130
    .line 131
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    invoke-direct {p0, p1, v4, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCheckForThrowOrClose(IZI)V

    .line 136
    .line 137
    .line 138
    if-eqz v0, :cond_6

    .line 139
    .line 140
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateGetGeneratorStackState()V

    .line 141
    .line 142
    .line 143
    add-int/lit8 v0, v0, -0x1

    .line 144
    .line 145
    :goto_3
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 146
    .line 147
    if-ltz v0, :cond_5

    .line 148
    .line 149
    const/16 v2, 0x59

    .line 150
    .line 151
    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 160
    .line 161
    const/16 v2, 0x32

    .line 162
    .line 163
    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 167
    .line 168
    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 169
    .line 170
    .line 171
    add-int/lit8 v0, v0, -0x1

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_5
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 175
    .line 176
    .line 177
    :cond_6
    if-eqz p2, :cond_7

    .line 178
    .line 179
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 180
    .line 181
    iget p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:I

    .line 182
    .line 183
    invoke-virtual {p1, p0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 184
    .line 185
    .line 186
    :cond_7
    return-void
.end method

.method private generateNestedFunctionInits()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-eq v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 11
    .line 12
    invoke-static {v2, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;I)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, v2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    .line 17
    .line 18
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x1

    .line 23
    if-ne v3, v4, :cond_0

    .line 24
    .line 25
    invoke-direct {p0, v2, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitFunction(Lorg/mozilla/javascript/optimizer/OptFunctionNode;I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method private generateObjectLiteralFactory(Lorg/mozilla/javascript/Node;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, "_literal"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->initBodyGeneration()V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 33
    .line 34
    add-int/lit8 v1, v0, 0x1

    .line 35
    .line 36
    iput v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 37
    .line 38
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:I

    .line 39
    .line 40
    iput v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:I

    .line 41
    .line 42
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 43
    .line 44
    const-string v1, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    invoke-virtual {v0, p2, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitObjectLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 59
    .line 60
    const/16 p2, 0xb0

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 66
    .line 67
    iget p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:I

    .line 68
    .line 69
    add-int/2addr p0, v0

    .line 70
    int-to-short p0, p0

    .line 71
    invoke-virtual {p1, p0}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(I)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method private generatePrologue()V
    .locals 15

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inDirectCallFunction:Z

    .line 2
    .line 3
    const/16 v1, 0xb2

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 17
    .line 18
    if-eq v5, v2, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 21
    .line 22
    .line 23
    :cond_0
    move v5, v3

    .line 24
    :goto_0
    if-eq v5, v0, :cond_1

    .line 25
    .line 26
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[I

    .line 27
    .line 28
    iget v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 29
    .line 30
    aput v7, v6, v5

    .line 31
    .line 32
    add-int/lit8 v7, v7, 0x3

    .line 33
    .line 34
    iput v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 35
    .line 36
    add-int/lit8 v5, v5, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 40
    .line 41
    invoke-virtual {v5}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getParameterNumberContext()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_2

    .line 46
    .line 47
    iput-boolean v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsForcedObjectParameters:Z

    .line 48
    .line 49
    move v5, v3

    .line 50
    :goto_1
    if-eq v5, v0, :cond_2

    .line 51
    .line 52
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[I

    .line 53
    .line 54
    aget v6, v6, v5

    .line 55
    .line 56
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 57
    .line 58
    invoke-virtual {v7, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 59
    .line 60
    .line 61
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 62
    .line 63
    const-string v8, "TYPE"

    .line 64
    .line 65
    const-string v9, "Ljava/lang/Class;"

    .line 66
    .line 67
    const-string v10, "java/lang/Void"

    .line 68
    .line 69
    invoke-virtual {v7, v10, v8, v1, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 73
    .line 74
    invoke-virtual {v7}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 79
    .line 80
    const/16 v9, 0xa6

    .line 81
    .line 82
    invoke-virtual {v8, v9, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 83
    .line 84
    .line 85
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 86
    .line 87
    add-int/lit8 v9, v6, 0x1

    .line 88
    .line 89
    invoke-virtual {v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    .line 93
    .line 94
    .line 95
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 96
    .line 97
    invoke-virtual {v8, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 98
    .line 99
    .line 100
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 101
    .line 102
    invoke-virtual {v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 103
    .line 104
    .line 105
    add-int/lit8 v5, v5, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 109
    .line 110
    const-string v5, "()Lorg/mozilla/javascript/Scriptable;"

    .line 111
    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 115
    .line 116
    iget v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->funObjLocal:I

    .line 117
    .line 118
    invoke-virtual {v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 122
    .line 123
    const-string v6, "org/mozilla/javascript/Scriptable"

    .line 124
    .line 125
    const-string v7, "getParentScope"

    .line 126
    .line 127
    const/16 v8, 0xb9

    .line 128
    .line 129
    invoke-virtual {v0, v6, v7, v8, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 133
    .line 134
    iget v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 135
    .line 136
    invoke-virtual {v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 137
    .line 138
    .line 139
    :cond_3
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 140
    .line 141
    add-int/lit8 v6, v0, 0x1

    .line 142
    .line 143
    iput v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 144
    .line 145
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:I

    .line 146
    .line 147
    iput v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:I

    .line 148
    .line 149
    iget-boolean v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 150
    .line 151
    const-string v8, "Lorg/mozilla/javascript/Scriptable;"

    .line 152
    .line 153
    const/16 v9, 0xc0

    .line 154
    .line 155
    const/4 v10, 0x2

    .line 156
    const/4 v11, -0x1

    .line 157
    if-eqz v7, :cond_5

    .line 158
    .line 159
    add-int/2addr v0, v10

    .line 160
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 161
    .line 162
    iput v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->operationLocal:I

    .line 163
    .line 164
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:I

    .line 165
    .line 166
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 167
    .line 168
    iget v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:I

    .line 169
    .line 170
    invoke-virtual {v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 171
    .line 172
    .line 173
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 174
    .line 175
    add-int/lit8 v6, v0, 0x1

    .line 176
    .line 177
    iput v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 178
    .line 179
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorStateLocal:I

    .line 180
    .line 181
    iput v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:I

    .line 182
    .line 183
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 184
    .line 185
    const-string v6, "org/mozilla/javascript/optimizer/OptRuntime$GeneratorState"

    .line 186
    .line 187
    invoke-virtual {v0, v9, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 191
    .line 192
    const/16 v7, 0x59

    .line 193
    .line 194
    invoke-virtual {v0, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 198
    .line 199
    iget v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorStateLocal:I

    .line 200
    .line 201
    invoke-virtual {v0, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 205
    .line 206
    const/16 v7, 0xb4

    .line 207
    .line 208
    const-string/jumbo v12, "thisObj"

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v6, v12, v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 215
    .line 216
    iget v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:I

    .line 217
    .line 218
    invoke-virtual {v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 219
    .line 220
    .line 221
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->epilogueLabel:I

    .line 222
    .line 223
    if-ne v0, v11, :cond_4

    .line 224
    .line 225
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 226
    .line 227
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->epilogueLabel:I

    .line 232
    .line 233
    :cond_4
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 234
    .line 235
    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    .line 236
    .line 237
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getResumptionPoints()Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    if-eqz v0, :cond_5

    .line 242
    .line 243
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateGetGeneratorResumptionPoint()V

    .line 244
    .line 245
    .line 246
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 247
    .line 248
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    invoke-virtual {v6, v3, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorSwitch:I

    .line 257
    .line 258
    invoke-direct {p0, v11, v3, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCheckForThrowOrClose(IZI)V

    .line 259
    .line 260
    .line 261
    :cond_5
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 262
    .line 263
    if-nez v0, :cond_7

    .line 264
    .line 265
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 266
    .line 267
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpCount()I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    const/16 v6, 0xb8

    .line 272
    .line 273
    if-eqz v0, :cond_6

    .line 274
    .line 275
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 276
    .line 277
    iget v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 278
    .line 279
    invoke-virtual {v0, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 283
    .line 284
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 285
    .line 286
    iget-object v7, v7, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    .line 287
    .line 288
    const-string v12, "_reInit"

    .line 289
    .line 290
    const-string v13, "(Lorg/mozilla/javascript/Context;)V"

    .line 291
    .line 292
    invoke-virtual {v0, v7, v12, v6, v13}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 293
    .line 294
    .line 295
    :cond_6
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 296
    .line 297
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getTemplateLiteralCount()I

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-eqz v0, :cond_7

    .line 302
    .line 303
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 304
    .line 305
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 306
    .line 307
    iget-object v7, v7, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    .line 308
    .line 309
    const-string v12, "_qInit"

    .line 310
    .line 311
    const-string v13, "()V"

    .line 312
    .line 313
    invoke-virtual {v0, v7, v12, v6, v13}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 314
    .line 315
    .line 316
    :cond_7
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 317
    .line 318
    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-eqz v0, :cond_8

    .line 323
    .line 324
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->saveCurrentCodeOffset()V

    .line 325
    .line 326
    .line 327
    :cond_8
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 328
    .line 329
    if-eqz v0, :cond_9

    .line 330
    .line 331
    goto/16 :goto_c

    .line 332
    .line 333
    :cond_9
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    .line 334
    .line 335
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 336
    .line 337
    if-eqz v0, :cond_17

    .line 338
    .line 339
    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-lez v0, :cond_b

    .line 344
    .line 345
    iget-boolean v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inDirectCallFunction:Z

    .line 346
    .line 347
    if-nez v1, :cond_b

    .line 348
    .line 349
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 350
    .line 351
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->hasRestParameter()Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 356
    .line 357
    if-eqz v1, :cond_a

    .line 358
    .line 359
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 360
    .line 361
    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 362
    .line 363
    .line 364
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 365
    .line 366
    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 367
    .line 368
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 369
    .line 370
    .line 371
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 372
    .line 373
    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:I

    .line 374
    .line 375
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 376
    .line 377
    .line 378
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 379
    .line 380
    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 381
    .line 382
    .line 383
    const-string v0, "padAndRestArguments"

    .line 384
    .line 385
    const-string v1, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)[Ljava/lang/Object;"

    .line 386
    .line 387
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 391
    .line 392
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:I

    .line 393
    .line 394
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 395
    .line 396
    .line 397
    goto :goto_2

    .line 398
    :cond_a
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:I

    .line 399
    .line 400
    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 401
    .line 402
    .line 403
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 404
    .line 405
    const/16 v2, 0xbe

    .line 406
    .line 407
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 408
    .line 409
    .line 410
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 411
    .line 412
    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 413
    .line 414
    .line 415
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 416
    .line 417
    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 422
    .line 423
    const/16 v5, 0xa2

    .line 424
    .line 425
    invoke-virtual {v2, v5, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 426
    .line 427
    .line 428
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 429
    .line 430
    iget v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:I

    .line 431
    .line 432
    invoke-virtual {v2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 433
    .line 434
    .line 435
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 436
    .line 437
    invoke-virtual {v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 438
    .line 439
    .line 440
    const-string v0, "padArguments"

    .line 441
    .line 442
    const-string v2, "([Ljava/lang/Object;I)[Ljava/lang/Object;"

    .line 443
    .line 444
    invoke-direct {p0, v0, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 448
    .line 449
    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:I

    .line 450
    .line 451
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 452
    .line 453
    .line 454
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 455
    .line 456
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 457
    .line 458
    .line 459
    :cond_b
    :goto_2
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 460
    .line 461
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    .line 462
    .line 463
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 468
    .line 469
    iget-object v1, v1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    .line 470
    .line 471
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 476
    .line 477
    iget-object v2, v2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    .line 478
    .line 479
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarConst()[Z

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    move v5, v3

    .line 484
    move v6, v11

    .line 485
    :goto_3
    if-eq v5, v1, :cond_20

    .line 486
    .line 487
    if-ge v5, v0, :cond_d

    .line 488
    .line 489
    iget-boolean v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inDirectCallFunction:Z

    .line 490
    .line 491
    if-nez v7, :cond_c

    .line 492
    .line 493
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    .line 494
    .line 495
    .line 496
    move-result v7

    .line 497
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 498
    .line 499
    iget v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:I

    .line 500
    .line 501
    invoke-virtual {v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 502
    .line 503
    .line 504
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 505
    .line 506
    invoke-virtual {v8, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 507
    .line 508
    .line 509
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 510
    .line 511
    const/16 v9, 0x32

    .line 512
    .line 513
    invoke-virtual {v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 514
    .line 515
    .line 516
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 517
    .line 518
    invoke-virtual {v8, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 519
    .line 520
    .line 521
    goto :goto_5

    .line 522
    :cond_c
    move v7, v11

    .line 523
    goto :goto_5

    .line 524
    :cond_d
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 525
    .line 526
    invoke-virtual {v7, v5}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    .line 527
    .line 528
    .line 529
    move-result v7

    .line 530
    if-eqz v7, :cond_e

    .line 531
    .line 532
    aget-boolean v7, v2, v5

    .line 533
    .line 534
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordPairLocal(Z)S

    .line 535
    .line 536
    .line 537
    move-result v7

    .line 538
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 539
    .line 540
    const-wide/16 v12, 0x0

    .line 541
    .line 542
    invoke-virtual {v8, v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    .line 543
    .line 544
    .line 545
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 546
    .line 547
    const/16 v9, 0x47

    .line 548
    .line 549
    const/16 v12, 0x39

    .line 550
    .line 551
    invoke-virtual {v8, v9, v12, v7}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    .line 552
    .line 553
    .line 554
    goto :goto_5

    .line 555
    :cond_e
    aget-boolean v7, v2, v5

    .line 556
    .line 557
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal(Z)S

    .line 558
    .line 559
    .line 560
    move-result v7

    .line 561
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 562
    .line 563
    if-ne v6, v11, :cond_f

    .line 564
    .line 565
    invoke-static {v8}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 566
    .line 567
    .line 568
    move v6, v7

    .line 569
    goto :goto_4

    .line 570
    :cond_f
    invoke-virtual {v8, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 571
    .line 572
    .line 573
    :goto_4
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 574
    .line 575
    invoke-virtual {v8, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 576
    .line 577
    .line 578
    :goto_5
    if-ltz v7, :cond_12

    .line 579
    .line 580
    aget-boolean v8, v2, v5

    .line 581
    .line 582
    if-eqz v8, :cond_11

    .line 583
    .line 584
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 585
    .line 586
    invoke-virtual {v8, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 587
    .line 588
    .line 589
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 590
    .line 591
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 592
    .line 593
    invoke-virtual {v9, v5}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    .line 594
    .line 595
    .line 596
    move-result v9

    .line 597
    if-eqz v9, :cond_10

    .line 598
    .line 599
    move v9, v10

    .line 600
    goto :goto_6

    .line 601
    :cond_10
    move v9, v4

    .line 602
    :goto_6
    add-int/2addr v9, v7

    .line 603
    const/16 v12, 0x3b

    .line 604
    .line 605
    const/16 v13, 0x36

    .line 606
    .line 607
    invoke-virtual {v8, v12, v13, v9}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    .line 608
    .line 609
    .line 610
    :cond_11
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[I

    .line 611
    .line 612
    aput v7, v8, v5

    .line 613
    .line 614
    :cond_12
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 615
    .line 616
    invoke-virtual {v8}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateDebugInfo()Z

    .line 617
    .line 618
    .line 619
    move-result v8

    .line 620
    if-eqz v8, :cond_16

    .line 621
    .line 622
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 623
    .line 624
    iget-object v8, v8, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    .line 625
    .line 626
    invoke-virtual {v8, v5}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamOrVarName(I)Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v8

    .line 630
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 631
    .line 632
    invoke-virtual {v9, v5}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    .line 633
    .line 634
    .line 635
    move-result v9

    .line 636
    if-eqz v9, :cond_13

    .line 637
    .line 638
    const-string v9, "D"

    .line 639
    .line 640
    goto :goto_7

    .line 641
    :cond_13
    const-string v9, "Ljava/lang/Object;"

    .line 642
    .line 643
    :goto_7
    iget-object v12, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 644
    .line 645
    iget v13, v12, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 646
    .line 647
    if-gez v7, :cond_14

    .line 648
    .line 649
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[I

    .line 650
    .line 651
    aget v7, v7, v5

    .line 652
    .line 653
    :cond_14
    iget-object v14, v12, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 654
    .line 655
    invoke-virtual {v14, v8}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    .line 656
    .line 657
    .line 658
    move-result v8

    .line 659
    invoke-virtual {v14, v9}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    .line 660
    .line 661
    .line 662
    move-result v9

    .line 663
    filled-new-array {v8, v9, v13, v7}, [I

    .line 664
    .line 665
    .line 666
    move-result-object v7

    .line 667
    iget-object v8, v12, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Ljava/util/ArrayList;

    .line 668
    .line 669
    if-nez v8, :cond_15

    .line 670
    .line 671
    new-instance v8, Ljava/util/ArrayList;

    .line 672
    .line 673
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .line 675
    .line 676
    iput-object v8, v12, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Ljava/util/ArrayList;

    .line 677
    .line 678
    :cond_15
    iget-object v8, v12, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Ljava/util/ArrayList;

    .line 679
    .line 680
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    :cond_16
    add-int/lit8 v5, v5, 0x1

    .line 684
    .line 685
    goto/16 :goto_3

    .line 686
    .line 687
    :cond_17
    instance-of v0, v6, Lorg/mozilla/javascript/ast/FunctionNode;

    .line 688
    .line 689
    if-eqz v0, :cond_18

    .line 690
    .line 691
    check-cast v6, Lorg/mozilla/javascript/ast/FunctionNode;

    .line 692
    .line 693
    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    .line 694
    .line 695
    .line 696
    move-result v0

    .line 697
    if-ne v0, v2, :cond_18

    .line 698
    .line 699
    move v0, v4

    .line 700
    goto :goto_8

    .line 701
    :cond_18
    move v0, v3

    .line 702
    :goto_8
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 703
    .line 704
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 705
    .line 706
    iget v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->funObjLocal:I

    .line 707
    .line 708
    if-eqz v2, :cond_1b

    .line 709
    .line 710
    invoke-virtual {v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 711
    .line 712
    .line 713
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 714
    .line 715
    iget v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 716
    .line 717
    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 718
    .line 719
    .line 720
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 721
    .line 722
    iget v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 723
    .line 724
    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 725
    .line 726
    .line 727
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 728
    .line 729
    iget v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:I

    .line 730
    .line 731
    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 732
    .line 733
    .line 734
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 735
    .line 736
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 737
    .line 738
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ScriptNode;->isInStrictMode()Z

    .line 739
    .line 740
    .line 741
    move-result v3

    .line 742
    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Z)V

    .line 743
    .line 744
    .line 745
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 746
    .line 747
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 748
    .line 749
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ScriptNode;->hasRestParameter()Z

    .line 750
    .line 751
    .line 752
    move-result v3

    .line 753
    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Z)V

    .line 754
    .line 755
    .line 756
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 757
    .line 758
    const-string v3, "getHomeObject"

    .line 759
    .line 760
    const/16 v6, 0xb6

    .line 761
    .line 762
    if-nez v0, :cond_19

    .line 763
    .line 764
    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    .line 765
    .line 766
    .line 767
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 768
    .line 769
    const-string v7, "org/mozilla/javascript/BaseFunction"

    .line 770
    .line 771
    invoke-virtual {v2, v7, v3, v6, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 772
    .line 773
    .line 774
    goto :goto_9

    .line 775
    :cond_19
    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 776
    .line 777
    .line 778
    move-result v2

    .line 779
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 780
    .line 781
    invoke-virtual {v7}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 782
    .line 783
    .line 784
    move-result v7

    .line 785
    iget-object v10, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 786
    .line 787
    iget v12, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 788
    .line 789
    invoke-virtual {v10, v12}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 790
    .line 791
    .line 792
    iget-object v10, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 793
    .line 794
    const/16 v12, 0xc1

    .line 795
    .line 796
    const-string v13, "org/mozilla/javascript/NativeCall"

    .line 797
    .line 798
    invoke-virtual {v10, v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 799
    .line 800
    .line 801
    iget-object v10, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 802
    .line 803
    const/16 v12, 0x99

    .line 804
    .line 805
    invoke-virtual {v10, v12, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 806
    .line 807
    .line 808
    iget-object v10, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 809
    .line 810
    iget v12, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 811
    .line 812
    invoke-virtual {v10, v12}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 813
    .line 814
    .line 815
    iget-object v10, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 816
    .line 817
    invoke-virtual {v10, v9, v13}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 818
    .line 819
    .line 820
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 821
    .line 822
    invoke-virtual {v9, v13, v3, v6, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 823
    .line 824
    .line 825
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 826
    .line 827
    const/16 v5, 0xa7

    .line 828
    .line 829
    invoke-virtual {v3, v5, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 830
    .line 831
    .line 832
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 833
    .line 834
    invoke-virtual {v3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 835
    .line 836
    .line 837
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 838
    .line 839
    invoke-virtual {v2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 840
    .line 841
    .line 842
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 843
    .line 844
    invoke-virtual {v2, v7}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 845
    .line 846
    .line 847
    :goto_9
    if-eqz v0, :cond_1a

    .line 848
    .line 849
    const-string v0, "createArrowFunctionActivation"

    .line 850
    .line 851
    goto :goto_a

    .line 852
    :cond_1a
    const-string v0, "createFunctionActivation"

    .line 853
    .line 854
    :goto_a
    const-string v2, "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;ZZLorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    .line 855
    .line 856
    invoke-direct {p0, v0, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 860
    .line 861
    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 862
    .line 863
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 864
    .line 865
    .line 866
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 867
    .line 868
    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 869
    .line 870
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 871
    .line 872
    .line 873
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 874
    .line 875
    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 876
    .line 877
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 878
    .line 879
    .line 880
    const-string v0, "enterActivationFunction"

    .line 881
    .line 882
    const-string v2, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V"

    .line 883
    .line 884
    invoke-direct {p0, v0, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    const-string v0, "activation"

    .line 888
    .line 889
    goto :goto_b

    .line 890
    :cond_1b
    invoke-virtual {v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 891
    .line 892
    .line 893
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 894
    .line 895
    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:I

    .line 896
    .line 897
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 898
    .line 899
    .line 900
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 901
    .line 902
    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 903
    .line 904
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 905
    .line 906
    .line 907
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 908
    .line 909
    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 910
    .line 911
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 912
    .line 913
    .line 914
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 915
    .line 916
    invoke-virtual {v0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 917
    .line 918
    .line 919
    const-string v0, "initScript"

    .line 920
    .line 921
    const-string v2, "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V"

    .line 922
    .line 923
    invoke-direct {p0, v0, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    const-string v0, "global"

    .line 927
    .line 928
    :goto_b
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 929
    .line 930
    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 931
    .line 932
    .line 933
    move-result v2

    .line 934
    iput v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->enterAreaStartLabel:I

    .line 935
    .line 936
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 937
    .line 938
    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 939
    .line 940
    .line 941
    move-result v2

    .line 942
    iput v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->epilogueLabel:I

    .line 943
    .line 944
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 945
    .line 946
    iget v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->enterAreaStartLabel:I

    .line 947
    .line 948
    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 949
    .line 950
    .line 951
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateNestedFunctionInits()V

    .line 952
    .line 953
    .line 954
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 955
    .line 956
    invoke-virtual {v2}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateDebugInfo()Z

    .line 957
    .line 958
    .line 959
    move-result v2

    .line 960
    if-eqz v2, :cond_1d

    .line 961
    .line 962
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 963
    .line 964
    iget v3, v2, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 965
    .line 966
    iget v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 967
    .line 968
    iget-object v6, v2, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 969
    .line 970
    invoke-virtual {v6, v0}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    .line 971
    .line 972
    .line 973
    move-result v0

    .line 974
    invoke-virtual {v6, v8}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    .line 975
    .line 976
    .line 977
    move-result v6

    .line 978
    filled-new-array {v0, v6, v3, v5}, [I

    .line 979
    .line 980
    .line 981
    move-result-object v0

    .line 982
    iget-object v3, v2, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Ljava/util/ArrayList;

    .line 983
    .line 984
    if-nez v3, :cond_1c

    .line 985
    .line 986
    new-instance v3, Ljava/util/ArrayList;

    .line 987
    .line 988
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 989
    .line 990
    .line 991
    iput-object v3, v2, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Ljava/util/ArrayList;

    .line 992
    .line 993
    :cond_1c
    iget-object v2, v2, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Ljava/util/ArrayList;

    .line 994
    .line 995
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    .line 997
    .line 998
    :cond_1d
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 999
    .line 1000
    if-nez v0, :cond_1e

    .line 1001
    .line 1002
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    .line 1003
    .line 1004
    .line 1005
    move-result v0

    .line 1006
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->popvLocal:I

    .line 1007
    .line 1008
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1009
    .line 1010
    invoke-static {v0}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 1011
    .line 1012
    .line 1013
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1014
    .line 1015
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->popvLocal:I

    .line 1016
    .line 1017
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 1018
    .line 1019
    .line 1020
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 1021
    .line 1022
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getEndLineno()I

    .line 1023
    .line 1024
    .line 1025
    move-result v0

    .line 1026
    if-eq v0, v11, :cond_20

    .line 1027
    .line 1028
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1029
    .line 1030
    int-to-short v0, v0

    .line 1031
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addLineNumberEntry(S)V

    .line 1032
    .line 1033
    .line 1034
    return-void

    .line 1035
    :cond_1e
    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->itsContainsCalls0:Z

    .line 1036
    .line 1037
    if-eqz v0, :cond_1f

    .line 1038
    .line 1039
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    .line 1040
    .line 1041
    .line 1042
    move-result v0

    .line 1043
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsZeroArgArray:I

    .line 1044
    .line 1045
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1046
    .line 1047
    const-string v2, "emptyArgs"

    .line 1048
    .line 1049
    const-string v3, "[Ljava/lang/Object;"

    .line 1050
    .line 1051
    const-string v5, "org/mozilla/javascript/ScriptRuntime"

    .line 1052
    .line 1053
    invoke-virtual {v0, v5, v2, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1054
    .line 1055
    .line 1056
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1057
    .line 1058
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsZeroArgArray:I

    .line 1059
    .line 1060
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 1061
    .line 1062
    .line 1063
    :cond_1f
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 1064
    .line 1065
    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->itsContainsCalls1:Z

    .line 1066
    .line 1067
    if-eqz v0, :cond_20

    .line 1068
    .line 1069
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    .line 1070
    .line 1071
    .line 1072
    move-result v0

    .line 1073
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsOneArgArray:I

    .line 1074
    .line 1075
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1076
    .line 1077
    invoke-virtual {v0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 1078
    .line 1079
    .line 1080
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1081
    .line 1082
    const/16 v1, 0xbd

    .line 1083
    .line 1084
    const-string v2, "java/lang/Object"

    .line 1085
    .line 1086
    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 1087
    .line 1088
    .line 1089
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 1090
    .line 1091
    iget p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsOneArgArray:I

    .line 1092
    .line 1093
    invoke-virtual {v0, p0}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 1094
    .line 1095
    .line 1096
    :cond_20
    :goto_c
    return-void
.end method

.method private generateSaveLocals(Lorg/mozilla/javascript/Node;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    iget v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 5
    .line 6
    if-ge v1, v3, :cond_1

    .line 7
    .line 8
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    .line 9
    .line 10
    aget v3, v3, v1

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    if-nez v2, :cond_2

    .line 20
    .line 21
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 22
    .line 23
    check-cast p0, Lorg/mozilla/javascript/ast/FunctionNode;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p0, p1, v1}, Lorg/mozilla/javascript/ast/FunctionNode;->addLiveLocals(Lorg/mozilla/javascript/Node;[I)V

    .line 27
    .line 28
    .line 29
    return v0

    .line 30
    :cond_2
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->maxLocals:I

    .line 31
    .line 32
    if-le v1, v2, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    move v1, v2

    .line 36
    :goto_1
    iput v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->maxLocals:I

    .line 37
    .line 38
    new-array v1, v2, [I

    .line 39
    .line 40
    move v3, v0

    .line 41
    move v4, v3

    .line 42
    :goto_2
    iget v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 43
    .line 44
    if-ge v3, v5, :cond_5

    .line 45
    .line 46
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    .line 47
    .line 48
    aget v5, v5, v3

    .line 49
    .line 50
    if-eqz v5, :cond_4

    .line 51
    .line 52
    aput v3, v1, v4

    .line 53
    .line 54
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_5
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 60
    .line 61
    check-cast v3, Lorg/mozilla/javascript/ast/FunctionNode;

    .line 62
    .line 63
    invoke-virtual {v3, p1, v1}, Lorg/mozilla/javascript/ast/FunctionNode;->addLiveLocals(Lorg/mozilla/javascript/Node;[I)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateGetGeneratorLocalsState()V

    .line 67
    .line 68
    .line 69
    :goto_3
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 70
    .line 71
    if-ge v0, v2, :cond_6

    .line 72
    .line 73
    const/16 v3, 0x59

    .line 74
    .line 75
    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 84
    .line 85
    aget v3, v1, v0

    .line 86
    .line 87
    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 91
    .line 92
    const/16 v3, 0x53

    .line 93
    .line 94
    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 95
    .line 96
    .line 97
    add-int/lit8 v0, v0, 0x1

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_6
    const/16 p0, 0x57

    .line 101
    .line 102
    invoke-virtual {p1, p0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 103
    .line 104
    .line 105
    const/4 p0, 0x1

    .line 106
    return p0
.end method

.method private generateSetGeneratorResumptionPoint(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorStateLocal:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 14
    .line 15
    const-string p1, "resumptionPoint"

    .line 16
    .line 17
    const-string v0, "I"

    .line 18
    .line 19
    const-string v1, "org/mozilla/javascript/optimizer/OptRuntime$GeneratorState"

    .line 20
    .line 21
    const/16 v2, 0xb5

    .line 22
    .line 23
    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private generateSetGeneratorReturnValue()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorStateLocal:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 9
    .line 10
    const/16 v1, 0x5f

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 13
    .line 14
    .line 15
    const-string v0, "setGeneratorReturnValue"

    .line 16
    .line 17
    const-string v1, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    .line 18
    .line 19
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private generateStatement(Lorg/mozilla/javascript/Node;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/16 v2, 0x37

    .line 13
    .line 14
    if-eq v0, v2, :cond_28

    .line 15
    .line 16
    const/16 v2, 0x38

    .line 17
    .line 18
    if-eq v0, v2, :cond_26

    .line 19
    .line 20
    const/16 v2, 0x46

    .line 21
    .line 22
    const/16 v3, 0xa7

    .line 23
    .line 24
    const/4 v4, -0x1

    .line 25
    if-eq v0, v2, :cond_1e

    .line 26
    .line 27
    const/16 v2, 0x5a

    .line 28
    .line 29
    if-eq v0, v2, :cond_1d

    .line 30
    .line 31
    const/16 v2, 0x7a

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    if-eq v0, v2, :cond_19

    .line 35
    .line 36
    const/16 v2, 0x7f

    .line 37
    .line 38
    if-eq v0, v2, :cond_17

    .line 39
    .line 40
    const/16 v2, 0x88

    .line 41
    .line 42
    if-eq v0, v2, :cond_15

    .line 43
    .line 44
    const/16 v2, 0x8a

    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    if-eq v0, v2, :cond_11

    .line 48
    .line 49
    const/16 v2, 0x8d

    .line 50
    .line 51
    if-eq v0, v2, :cond_15

    .line 52
    .line 53
    const/16 v2, 0x9b

    .line 54
    .line 55
    const/4 v7, 0x2

    .line 56
    if-eq v0, v2, :cond_e

    .line 57
    .line 58
    const/16 v2, 0xae

    .line 59
    .line 60
    if-eq v0, v2, :cond_1b

    .line 61
    .line 62
    packed-switch v0, :pswitch_data_0

    .line 63
    .line 64
    .line 65
    packed-switch v0, :pswitch_data_1

    .line 66
    .line 67
    .line 68
    packed-switch v0, :pswitch_data_2

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    throw p0

    .line 76
    :pswitch_0
    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 77
    .line 78
    .line 79
    iget p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->popvLocal:I

    .line 80
    .line 81
    if-gez p1, :cond_0

    .line 82
    .line 83
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iput p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->popvLocal:I

    .line 88
    .line 89
    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 90
    .line 91
    iget p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->popvLocal:I

    .line 92
    .line 93
    invoke-virtual {p1, p0}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_1
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    const/16 v2, 0x3d

    .line 102
    .line 103
    if-ne v0, v2, :cond_1

    .line 104
    .line 105
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {p0, v1, p1, v6}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitSetVar(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_1
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    const/16 v2, 0xaa

    .line 118
    .line 119
    if-ne v0, v2, :cond_2

    .line 120
    .line 121
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-direct {p0, v1, p1, v6}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitSetConstVar(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_2
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    const/16 v2, 0x4e

    .line 134
    .line 135
    if-eq v0, v2, :cond_5

    .line 136
    .line 137
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    const/16 v2, 0xb3

    .line 142
    .line 143
    if-ne v0, v2, :cond_3

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_3
    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 147
    .line 148
    .line 149
    const/16 v0, 0x8

    .line 150
    .line 151
    invoke-virtual {p1, v0, v4}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 156
    .line 157
    if-eq p1, v4, :cond_4

    .line 158
    .line 159
    const/16 p1, 0x58

    .line 160
    .line 161
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_4
    const/16 p1, 0x57

    .line 166
    .line 167
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_5
    :goto_0
    invoke-direct {p0, v1, v6}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateYieldPoint(Lorg/mozilla/javascript/Node;Z)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :pswitch_2
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 176
    .line 177
    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addInstructionCount()V

    .line 184
    .line 185
    .line 186
    :cond_6
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 191
    .line 192
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 196
    .line 197
    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-eqz p1, :cond_1b

    .line 202
    .line 203
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->saveCurrentCodeOffset()V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :pswitch_3
    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 208
    .line 209
    .line 210
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 211
    .line 212
    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 213
    .line 214
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 215
    .line 216
    .line 217
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 218
    .line 219
    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 220
    .line 221
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 222
    .line 223
    .line 224
    const/16 v1, 0x3f

    .line 225
    .line 226
    if-ne v0, v1, :cond_7

    .line 227
    .line 228
    move v5, v6

    .line 229
    goto :goto_1

    .line 230
    :cond_7
    const/16 v1, 0x40

    .line 231
    .line 232
    if-ne v0, v1, :cond_8

    .line 233
    .line 234
    goto :goto_1

    .line 235
    :cond_8
    const/16 v1, 0x42

    .line 236
    .line 237
    if-ne v0, v1, :cond_9

    .line 238
    .line 239
    const/4 v5, 0x6

    .line 240
    goto :goto_1

    .line 241
    :cond_9
    move v5, v7

    .line 242
    :goto_1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 243
    .line 244
    invoke-virtual {v0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 245
    .line 246
    .line 247
    const-string v0, "enumInit"

    .line 248
    .line 249
    const-string v1, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;"

    .line 250
    .line 251
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 255
    .line 256
    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getLocalBlockRegister(Lorg/mozilla/javascript/Node;)I

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :pswitch_4
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 265
    .line 266
    iput v6, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 267
    .line 268
    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getLocalBlockRegister(Lorg/mozilla/javascript/Node;)I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    const/16 v2, 0xe

    .line 273
    .line 274
    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    const/16 v4, 0x2c

    .line 283
    .line 284
    if-ne v3, v4, :cond_a

    .line 285
    .line 286
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    goto :goto_2

    .line 291
    :cond_a
    const/4 v3, 0x0

    .line 292
    :goto_2
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 297
    .line 298
    .line 299
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 300
    .line 301
    if-nez v2, :cond_b

    .line 302
    .line 303
    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 304
    .line 305
    .line 306
    goto :goto_3

    .line 307
    :cond_b
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 308
    .line 309
    .line 310
    :goto_3
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 311
    .line 312
    if-eqz v3, :cond_c

    .line 313
    .line 314
    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    goto :goto_4

    .line 318
    :cond_c
    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 319
    .line 320
    .line 321
    :goto_4
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 322
    .line 323
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 324
    .line 325
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 326
    .line 327
    .line 328
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 329
    .line 330
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 331
    .line 332
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 333
    .line 334
    .line 335
    const-string p1, "newCatchScope"

    .line 336
    .line 337
    const-string v1, "(Ljava/lang/Throwable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    .line 338
    .line 339
    invoke-direct {p0, p1, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 343
    .line 344
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 345
    .line 346
    .line 347
    return-void

    .line 348
    :pswitch_5
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 349
    .line 350
    invoke-virtual {v2}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    if-eqz v2, :cond_d

    .line 355
    .line 356
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addInstructionCount()V

    .line 357
    .line 358
    .line 359
    :cond_d
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    .line 360
    .line 361
    invoke-direct {p0, p1, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitGoto(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;)V

    .line 362
    .line 363
    .line 364
    return-void

    .line 365
    :pswitch_6
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 366
    .line 367
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 368
    .line 369
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 370
    .line 371
    .line 372
    const-string p1, "leaveWith"

    .line 373
    .line 374
    const-string v0, "(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    .line 375
    .line 376
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 380
    .line 381
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 382
    .line 383
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 384
    .line 385
    .line 386
    iget p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 387
    .line 388
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->decReferenceWordLocal(I)V

    .line 389
    .line 390
    .line 391
    return-void

    .line 392
    :pswitch_7
    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 393
    .line 394
    .line 395
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 396
    .line 397
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 398
    .line 399
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 400
    .line 401
    .line 402
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 403
    .line 404
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 405
    .line 406
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 407
    .line 408
    .line 409
    const-string p1, "enterWith"

    .line 410
    .line 411
    const-string v0, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    .line 412
    .line 413
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 417
    .line 418
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 419
    .line 420
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 421
    .line 422
    .line 423
    iget p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 424
    .line 425
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->incReferenceWordLocal(I)V

    .line 426
    .line 427
    .line 428
    return-void

    .line 429
    :cond_e
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inLocalBlock:Z

    .line 430
    .line 431
    iput-boolean v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inLocalBlock:Z

    .line 432
    .line 433
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    iget-boolean v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 438
    .line 439
    if-eqz v3, :cond_f

    .line 440
    .line 441
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 442
    .line 443
    invoke-virtual {v3, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 444
    .line 445
    .line 446
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 447
    .line 448
    invoke-virtual {v3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 449
    .line 450
    .line 451
    :cond_f
    invoke-virtual {p1, v7, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 452
    .line 453
    .line 454
    :goto_5
    if-eqz v1, :cond_10

    .line 455
    .line 456
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateStatement(Lorg/mozilla/javascript/Node;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    goto :goto_5

    .line 464
    :cond_10
    int-to-short v1, v2

    .line 465
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->releaseWordLocal(I)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {p1, v7}, Lorg/mozilla/javascript/Node;->removeProp(I)V

    .line 469
    .line 470
    .line 471
    iput-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inLocalBlock:Z

    .line 472
    .line 473
    return-void

    .line 474
    :cond_11
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 475
    .line 476
    if-nez v0, :cond_12

    .line 477
    .line 478
    goto/16 :goto_8

    .line 479
    .line 480
    :cond_12
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 481
    .line 482
    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    if-eqz v0, :cond_13

    .line 487
    .line 488
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->saveCurrentCodeOffset()V

    .line 489
    .line 490
    .line 491
    :cond_13
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 492
    .line 493
    iput v5, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 494
    .line 495
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 500
    .line 501
    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 502
    .line 503
    .line 504
    move-result v2

    .line 505
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 506
    .line 507
    invoke-virtual {v4}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 508
    .line 509
    .line 510
    move-result v4

    .line 511
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 512
    .line 513
    invoke-virtual {v5, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 514
    .line 515
    .line 516
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateIntegerWrap()V

    .line 517
    .line 518
    .line 519
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 520
    .line 521
    invoke-virtual {v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 522
    .line 523
    .line 524
    :goto_6
    if-eqz v1, :cond_14

    .line 525
    .line 526
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateStatement(Lorg/mozilla/javascript/Node;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    goto :goto_6

    .line 534
    :cond_14
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 535
    .line 536
    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 537
    .line 538
    .line 539
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 540
    .line 541
    const/16 v2, 0xc0

    .line 542
    .line 543
    const-string v5, "java/lang/Integer"

    .line 544
    .line 545
    invoke-virtual {v1, v2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 546
    .line 547
    .line 548
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateIntegerUnwrap()V

    .line 549
    .line 550
    .line 551
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finallys:Ljava/util/Map;

    .line 552
    .line 553
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object p1

    .line 557
    check-cast p1, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;

    .line 558
    .line 559
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 560
    .line 561
    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    iput v1, p1, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;->tableLabel:I

    .line 566
    .line 567
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 568
    .line 569
    invoke-virtual {p1, v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 570
    .line 571
    .line 572
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 573
    .line 574
    iput v6, p1, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 575
    .line 576
    int-to-short p1, v0

    .line 577
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->releaseWordLocal(I)V

    .line 578
    .line 579
    .line 580
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 581
    .line 582
    invoke-virtual {p0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 583
    .line 584
    .line 585
    return-void

    .line 586
    :cond_15
    :pswitch_8
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 587
    .line 588
    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    .line 589
    .line 590
    .line 591
    move-result p1

    .line 592
    if-eqz p1, :cond_16

    .line 593
    .line 594
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addInstructionCount(I)V

    .line 595
    .line 596
    .line 597
    :cond_16
    :goto_7
    if-eqz v1, :cond_1b

    .line 598
    .line 599
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateStatement(Lorg/mozilla/javascript/Node;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 603
    .line 604
    .line 605
    move-result-object v1

    .line 606
    goto :goto_7

    .line 607
    :cond_17
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 608
    .line 609
    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    .line 610
    .line 611
    .line 612
    move-result v0

    .line 613
    if-eqz v0, :cond_18

    .line 614
    .line 615
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addInstructionCount()V

    .line 616
    .line 617
    .line 618
    :cond_18
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    .line 619
    .line 620
    invoke-direct {p0, p1, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitSwitch(Lorg/mozilla/javascript/ast/Jump;Lorg/mozilla/javascript/Node;)V

    .line 621
    .line 622
    .line 623
    return-void

    .line 624
    :cond_19
    invoke-virtual {p1, v5}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    .line 625
    .line 626
    .line 627
    move-result p1

    .line 628
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 629
    .line 630
    invoke-static {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;I)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 631
    .line 632
    .line 633
    move-result-object p1

    .line 634
    iget-object v0, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    .line 635
    .line 636
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    .line 637
    .line 638
    .line 639
    move-result v0

    .line 640
    const/4 v1, 0x3

    .line 641
    if-ne v0, v1, :cond_1a

    .line 642
    .line 643
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitFunction(Lorg/mozilla/javascript/optimizer/OptFunctionNode;I)V

    .line 644
    .line 645
    .line 646
    return-void

    .line 647
    :cond_1a
    if-ne v0, v5, :cond_1c

    .line 648
    .line 649
    :cond_1b
    :goto_8
    return-void

    .line 650
    :cond_1c
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    .line 651
    .line 652
    .line 653
    move-result-object p0

    .line 654
    throw p0

    .line 655
    :cond_1d
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    .line 656
    .line 657
    invoke-direct {p0, p1, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitTryCatchFinally(Lorg/mozilla/javascript/ast/Jump;Lorg/mozilla/javascript/Node;)V

    .line 658
    .line 659
    .line 660
    return-void

    .line 661
    :cond_1e
    :pswitch_9
    if-eqz v1, :cond_1f

    .line 662
    .line 663
    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 664
    .line 665
    .line 666
    goto :goto_9

    .line 667
    :cond_1f
    const/4 p1, 0x4

    .line 668
    if-ne v0, p1, :cond_20

    .line 669
    .line 670
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 671
    .line 672
    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 673
    .line 674
    .line 675
    goto :goto_9

    .line 676
    :cond_20
    iget p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->popvLocal:I

    .line 677
    .line 678
    if-ltz p1, :cond_25

    .line 679
    .line 680
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 681
    .line 682
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 683
    .line 684
    .line 685
    :goto_9
    iget-boolean p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 686
    .line 687
    if-eqz p1, :cond_21

    .line 688
    .line 689
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateSetGeneratorReturnValue()V

    .line 690
    .line 691
    .line 692
    :cond_21
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 693
    .line 694
    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    .line 695
    .line 696
    .line 697
    move-result p1

    .line 698
    if-eqz p1, :cond_22

    .line 699
    .line 700
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addInstructionCount()V

    .line 701
    .line 702
    .line 703
    :cond_22
    iget p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->epilogueLabel:I

    .line 704
    .line 705
    if-ne p1, v4, :cond_24

    .line 706
    .line 707
    iget-boolean p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    .line 708
    .line 709
    if-eqz p1, :cond_23

    .line 710
    .line 711
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 712
    .line 713
    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 714
    .line 715
    .line 716
    move-result p1

    .line 717
    iput p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->epilogueLabel:I

    .line 718
    .line 719
    goto :goto_a

    .line 720
    :cond_23
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    .line 721
    .line 722
    .line 723
    move-result-object p0

    .line 724
    throw p0

    .line 725
    :cond_24
    :goto_a
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 726
    .line 727
    iget p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->epilogueLabel:I

    .line 728
    .line 729
    invoke-virtual {p1, v3, p0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 730
    .line 731
    .line 732
    return-void

    .line 733
    :cond_25
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    .line 734
    .line 735
    .line 736
    move-result-object p0

    .line 737
    throw p0

    .line 738
    :cond_26
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 739
    .line 740
    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    .line 741
    .line 742
    .line 743
    move-result v0

    .line 744
    if-eqz v0, :cond_27

    .line 745
    .line 746
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addInstructionCount()V

    .line 747
    .line 748
    .line 749
    :cond_27
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 750
    .line 751
    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getLocalBlockRegister(Lorg/mozilla/javascript/Node;)I

    .line 752
    .line 753
    .line 754
    move-result p1

    .line 755
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 756
    .line 757
    .line 758
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 759
    .line 760
    const/16 p1, 0xbf

    .line 761
    .line 762
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 763
    .line 764
    .line 765
    return-void

    .line 766
    :cond_28
    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 767
    .line 768
    .line 769
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 770
    .line 771
    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    .line 772
    .line 773
    .line 774
    move-result p1

    .line 775
    if-eqz p1, :cond_29

    .line 776
    .line 777
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addInstructionCount()V

    .line 778
    .line 779
    .line 780
    :cond_29
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateThrowJavaScriptException()V

    .line 781
    .line 782
    .line 783
    return-void

    .line 784
    nop

    .line 785
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    :pswitch_data_1
    .packed-switch 0x3e
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    :pswitch_data_2
    .packed-switch 0x8f
        :pswitch_8
        :pswitch_8
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method private generateThrowJavaScriptException()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    const/16 v1, 0xbb

    .line 4
    .line 5
    const-string v2, "org/mozilla/javascript/JavaScriptException"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 11
    .line 12
    const/16 v1, 0x5a

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 18
    .line 19
    const/16 v1, 0x5f

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 25
    .line 26
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 27
    .line 28
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getSourceName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 36
    .line 37
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsLineNumber:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 43
    .line 44
    const-string v1, "<init>"

    .line 45
    .line 46
    const-string v3, "(Ljava/lang/Object;Ljava/lang/String;I)V"

    .line 47
    .line 48
    const/16 v4, 0xb7

    .line 49
    .line 50
    invoke-virtual {v0, v2, v1, v4, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 54
    .line 55
    const/16 v0, 0xbf

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private generateYieldPoint(Lorg/mozilla/javascript/Node;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->unnestedYields:Ljava/util/IdentityHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->unnestedYields:Ljava/util/IdentityHashMap;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 20
    .line 21
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 22
    .line 23
    invoke-virtual {p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 27
    .line 28
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 34
    .line 35
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 38
    .line 39
    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v0, "PROP:GETNOWARN:"

    .line 43
    .line 44
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p2, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 55
    .line 56
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void

    .line 60
    :cond_1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->findNestedYield(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateYieldPoint(Lorg/mozilla/javascript/Node;Z)V

    .line 68
    .line 69
    .line 70
    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->unnestedYieldCount:I

    .line 71
    .line 72
    const-string v3, "__nested__yield__"

    .line 73
    .line 74
    invoke-static {v2, v3}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->unnestedYieldCount:I

    .line 79
    .line 80
    add-int/2addr v3, v1

    .line 81
    iput v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->unnestedYieldCount:I

    .line 82
    .line 83
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 84
    .line 85
    iget v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 86
    .line 87
    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 91
    .line 92
    const/16 v3, 0x5f

    .line 93
    .line 94
    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 98
    .line 99
    iget v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 100
    .line 101
    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 105
    .line 106
    iget v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 107
    .line 108
    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 109
    .line 110
    .line 111
    const-string v1, "PROP:SET:"

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const-string v3, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 118
    .line 119
    invoke-direct {p0, v1, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 123
    .line 124
    const/16 v3, 0x57

    .line 125
    .line 126
    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->unnestedYields:Ljava/util/IdentityHashMap;

    .line 130
    .line 131
    invoke-virtual {v1, v0, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateLocalYieldPoint(Lorg/mozilla/javascript/Node;Z)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method private static getFinallyAtTarget(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x8a

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v2, 0x91

    .line 19
    .line 20
    if-ne v0, v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-ne v0, v1, :cond_2

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    const-string p0, "bad finally target"

    .line 36
    .line 37
    invoke-static {p0}, Lorg/mozilla/javascript/Kit;->codeBug(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    throw p0
.end method

.method private static getLocalBlockRegister(Lorg/mozilla/javascript/Node;)I
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    check-cast p0, Lorg/mozilla/javascript/Node;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private getNewWordIntern(I)S
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 4
    .line 5
    const/16 v2, 0x400

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x1

    .line 9
    if-le p1, v4, :cond_2

    .line 10
    .line 11
    :goto_0
    add-int v5, v1, p1

    .line 12
    .line 13
    if-gt v5, v2, :cond_1

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    :goto_1
    if-ge v5, p1, :cond_2

    .line 17
    .line 18
    add-int v6, v1, v5

    .line 19
    .line 20
    aget v6, v0, v6

    .line 21
    .line 22
    if-eqz v6, :cond_0

    .line 23
    .line 24
    add-int/lit8 v5, v5, 0x1

    .line 25
    .line 26
    add-int/2addr v1, v5

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v1, v3

    .line 32
    :cond_2
    if-eq v1, v3, :cond_8

    .line 33
    .line 34
    aput v4, v0, v1

    .line 35
    .line 36
    if-le p1, v4, :cond_3

    .line 37
    .line 38
    add-int/lit8 v3, v1, 0x1

    .line 39
    .line 40
    aput v4, v0, v3

    .line 41
    .line 42
    :cond_3
    const/4 v3, 0x2

    .line 43
    if-le p1, v3, :cond_4

    .line 44
    .line 45
    add-int/lit8 v3, v1, 0x2

    .line 46
    .line 47
    aput v4, v0, v3

    .line 48
    .line 49
    :cond_4
    iget v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 50
    .line 51
    if-ne v1, v3, :cond_7

    .line 52
    .line 53
    add-int/2addr p1, v1

    .line 54
    :goto_2
    if-ge p1, v2, :cond_8

    .line 55
    .line 56
    aget v3, v0, p1

    .line 57
    .line 58
    if-nez v3, :cond_6

    .line 59
    .line 60
    int-to-short p1, p1

    .line 61
    iput p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 62
    .line 63
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:I

    .line 64
    .line 65
    if-ge v0, p1, :cond_5

    .line 66
    .line 67
    iput p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:I

    .line 68
    .line 69
    :cond_5
    int-to-short p0, v1

    .line 70
    return p0

    .line 71
    :cond_6
    add-int/lit8 p1, p1, 0x1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_7
    int-to-short p0, v1

    .line 75
    return p0

    .line 76
    :cond_8
    const-string p0, "Program too complex (out of locals)"

    .line 77
    .line 78
    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    throw p0
.end method

.method private getNewWordLocal()S
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordIntern(I)S

    move-result p0

    return p0
.end method

.method private getNewWordLocal(Z)S
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x1

    .line 6
    :goto_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordIntern(I)S

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private getNewWordPairLocal(Z)S
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x2

    .line 6
    :goto_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordIntern(I)S

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private getNextGeneratorState(Lorg/mozilla/javascript/Node;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 2
    .line 3
    check-cast p0, Lorg/mozilla/javascript/ast/FunctionNode;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->getResumptionPoints()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    add-int/lit8 p0, p0, 0x1

    .line 14
    .line 15
    return p0
.end method

.method private getTargetLabel(Lorg/mozilla/javascript/Node;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->labelId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Node;->labelId(I)V

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :cond_0
    return v0
.end method

.method private incReferenceWordLocal(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    .line 2
    .line 3
    aget v0, p0, p1

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    aput v0, p0, p1

    .line 8
    .line 9
    return-void
.end method

.method private initBodyGeneration()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[I

    .line 3
    .line 4
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 5
    .line 6
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0x7a

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 16
    .line 17
    invoke-static {v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 22
    .line 23
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    xor-int/lit8 v1, v0, 0x1

    .line 30
    .line 31
    iput-boolean v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 36
    .line 37
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    .line 38
    .line 39
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    new-array v0, v0, [I

    .line 46
    .line 47
    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[I

    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 50
    .line 51
    invoke-virtual {v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isTargetOfDirectCall()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inDirectCallFunction:Z

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    .line 60
    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 68
    .line 69
    iput-boolean v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    .line 70
    .line 71
    iput-boolean v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inDirectCallFunction:Z

    .line 72
    .line 73
    :cond_2
    :goto_0
    const/16 v0, 0x400

    .line 74
    .line 75
    new-array v0, v0, [I

    .line 76
    .line 77
    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    .line 78
    .line 79
    iput v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->funObjLocal:I

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 83
    .line 84
    const/4 v0, 0x2

    .line 85
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 86
    .line 87
    const/4 v0, 0x3

    .line 88
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:I

    .line 89
    .line 90
    const/4 v0, 0x4

    .line 91
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:I

    .line 92
    .line 93
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 94
    .line 95
    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->popvLocal:I

    .line 97
    .line 98
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:I

    .line 99
    .line 100
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsZeroArgArray:I

    .line 101
    .line 102
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsOneArgArray:I

    .line 103
    .line 104
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->epilogueLabel:I

    .line 105
    .line 106
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->enterAreaStartLabel:I

    .line 107
    .line 108
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorStateLocal:I

    .line 109
    .line 110
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->savedHomeObjectLocal:I

    .line 111
    .line 112
    return-void
.end method

.method private inlineFinally(Lorg/mozilla/javascript/Node;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    .line 34
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v1

    .line 35
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 36
    invoke-direct {p0, p1, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inlineFinally(Lorg/mozilla/javascript/Node;II)V

    .line 37
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    return-void
.end method

.method private inlineFinally(Lorg/mozilla/javascript/Node;II)V
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getFinallyAtTarget(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->resetTargets()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->exceptionManager:Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;

    .line 13
    .line 14
    invoke-virtual {v1, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->markInlineFinallyStart(Lorg/mozilla/javascript/Node;I)V

    .line 15
    .line 16
    .line 17
    :goto_0
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateStatement(Lorg/mozilla/javascript/Node;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->exceptionManager:Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->markInlineFinallyEnd(Lorg/mozilla/javascript/Node;I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private static isArithmeticNode(Lorg/mozilla/javascript/Node;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x16

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x19

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x18

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x17

    .line 18
    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method private nodeIsDirectCallParameter(Lorg/mozilla/javascript/Node;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3c

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inDirectCallFunction:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsForcedObjectParameters:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[I

    .line 32
    .line 33
    aget p0, p0, p1

    .line 34
    .line 35
    return p0

    .line 36
    :cond_0
    const/4 p0, -0x1

    .line 37
    return p0
.end method

.method private pushThisFromLastScriptable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 6
    .line 7
    .line 8
    const-string v0, "lastStoredScriptable"

    .line 9
    .line 10
    const-string v1, "(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;"

    .line 11
    .line 12
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private releaseWordLocal(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:I

    .line 6
    .line 7
    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    aput v0, p0, p1

    .line 11
    .line 12
    return-void
.end method

.method private saveCurrentCodeOffset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    iget v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 4
    .line 5
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->savedCodeOffset:I

    .line 6
    .line 7
    return-void
.end method

.method private updateLineNumber(Lorg/mozilla/javascript/Node;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLineno()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsLineNumber:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 12
    .line 13
    int-to-short p1, p1

    .line 14
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLineNumberEntry(S)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private varIsDirectCallParameter(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-boolean p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inDirectCallFunction:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-boolean p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsForcedObjectParameters:Z

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method private visitArithmetic(Lorg/mozilla/javascript/Node;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 1

    .line 1
    const/16 p4, 0x8

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p1, p4, v0}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 5
    .line 6
    .line 7
    move-result p4

    .line 8
    if-eq p4, v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, p3, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-direct {p0, p3, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 18
    .line 19
    .line 20
    packed-switch p2, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Lorg/mozilla/javascript/Token;->typeToName(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Lorg/mozilla/javascript/Kit;->codeBug(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    throw p0

    .line 32
    :pswitch_0
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 33
    .line 34
    const/16 p1, 0x73

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_1
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 41
    .line 42
    const/16 p1, 0x6f

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_2
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 49
    .line 50
    const/16 p1, 0x6b

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_3
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 57
    .line 58
    const/16 p1, 0x67

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    invoke-direct {p0, p3, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isArithmeticNode(Lorg/mozilla/javascript/Node;)Z

    .line 68
    .line 69
    .line 70
    move-result p4

    .line 71
    if-nez p4, :cond_1

    .line 72
    .line 73
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToNumeric()V

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 77
    .line 78
    .line 79
    move-result-object p4

    .line 80
    invoke-direct {p0, p4, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isArithmeticNode(Lorg/mozilla/javascript/Node;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_2

    .line 92
    .line 93
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToNumeric()V

    .line 94
    .line 95
    .line 96
    :cond_2
    const-string p1, "(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;"

    .line 97
    .line 98
    packed-switch p2, :pswitch_data_1

    .line 99
    .line 100
    .line 101
    invoke-static {p2}, Lorg/mozilla/javascript/Token;->typeToName(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {p0}, Lorg/mozilla/javascript/Kit;->codeBug(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    throw p0

    .line 110
    :pswitch_4
    const-string p2, "remainder"

    .line 111
    .line 112
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_5
    const-string p2, "divide"

    .line 117
    .line 118
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :pswitch_6
    const-string p2, "multiply"

    .line 123
    .line 124
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :pswitch_7
    const-string/jumbo p2, "subtract"

    .line 129
    .line 130
    .line 131
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private visitArrayLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V
    .locals 5

    .line 1
    invoke-static {p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->countArguments(Lorg/mozilla/javascript/Node;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez p3, :cond_2

    .line 6
    .line 7
    const/16 p3, 0xa

    .line 8
    .line 9
    if-gt v0, p3, :cond_0

    .line 10
    .line 11
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 12
    .line 13
    iget p3, p3, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 14
    .line 15
    const/16 v1, 0x7530

    .line 16
    .line 17
    if-le p3, v1, :cond_2

    .line 18
    .line 19
    :cond_0
    iget-boolean p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    .line 20
    .line 21
    if-nez p3, :cond_2

    .line 22
    .line 23
    iget-boolean p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 24
    .line 25
    if-nez p3, :cond_2

    .line 26
    .line 27
    iget-boolean p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inLocalBlock:Z

    .line 28
    .line 29
    if-nez p3, :cond_2

    .line 30
    .line 31
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->literals:Ljava/util/ArrayList;

    .line 32
    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    new-instance p2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->literals:Ljava/util/ArrayList;

    .line 41
    .line 42
    :cond_1
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->literals:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 48
    .line 49
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->literals:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    new-instance p3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p1, "_literal"

    .line 70
    .line 71
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 82
    .line 83
    iget p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->funObjLocal:I

    .line 84
    .line 85
    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 86
    .line 87
    .line 88
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 89
    .line 90
    iget p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 91
    .line 92
    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 93
    .line 94
    .line 95
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 96
    .line 97
    iget p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 98
    .line 99
    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 100
    .line 101
    .line 102
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 103
    .line 104
    iget p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:I

    .line 105
    .line 106
    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 107
    .line 108
    .line 109
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 110
    .line 111
    iget p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:I

    .line 112
    .line 113
    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 114
    .line 115
    .line 116
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 117
    .line 118
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 119
    .line 120
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    .line 121
    .line 122
    const-string p3, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    .line 123
    .line 124
    const/16 v0, 0xb6

    .line 125
    .line 126
    invoke-virtual {p2, p0, p1, v0, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_2
    iget-boolean p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 131
    .line 132
    const/16 v1, 0x53

    .line 133
    .line 134
    const/4 v2, 0x0

    .line 135
    const/4 v3, 0x1

    .line 136
    if-eqz p3, :cond_4

    .line 137
    .line 138
    move p3, v2

    .line 139
    :goto_0
    if-eq p3, v0, :cond_3

    .line 140
    .line 141
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    add-int/lit8 p3, p3, 0x1

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_3
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addNewObjectArray(I)V

    .line 152
    .line 153
    .line 154
    :goto_1
    if-eq v2, v0, :cond_5

    .line 155
    .line 156
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 157
    .line 158
    const/16 p3, 0x5a

    .line 159
    .line 160
    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 161
    .line 162
    .line 163
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 164
    .line 165
    const/16 p3, 0x5f

    .line 166
    .line 167
    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 168
    .line 169
    .line 170
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 171
    .line 172
    sub-int v4, v0, v2

    .line 173
    .line 174
    sub-int/2addr v4, v3

    .line 175
    invoke-virtual {p2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 176
    .line 177
    .line 178
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 179
    .line 180
    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 181
    .line 182
    .line 183
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 184
    .line 185
    invoke-virtual {p2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 186
    .line 187
    .line 188
    add-int/lit8 v2, v2, 0x1

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_4
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addNewObjectArray(I)V

    .line 192
    .line 193
    .line 194
    :goto_2
    if-eq v2, v0, :cond_5

    .line 195
    .line 196
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 197
    .line 198
    const/16 v4, 0x59

    .line 199
    .line 200
    invoke-virtual {p3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 201
    .line 202
    .line 203
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 204
    .line 205
    invoke-virtual {p3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 206
    .line 207
    .line 208
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 209
    .line 210
    .line 211
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 212
    .line 213
    invoke-virtual {p3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    add-int/lit8 v2, v2, 0x1

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_5
    const/16 p2, 0xb

    .line 224
    .line 225
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    check-cast p1, [I

    .line 230
    .line 231
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 232
    .line 233
    if-nez p1, :cond_6

    .line 234
    .line 235
    invoke-virtual {p2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 236
    .line 237
    .line 238
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 239
    .line 240
    const/4 p2, 0x3

    .line 241
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_6
    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->encodeIntArray([I)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p3

    .line 249
    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 253
    .line 254
    array-length p1, p1

    .line 255
    invoke-virtual {p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 256
    .line 257
    .line 258
    :goto_3
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 259
    .line 260
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 261
    .line 262
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 263
    .line 264
    .line 265
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 266
    .line 267
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 268
    .line 269
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 270
    .line 271
    .line 272
    const-string p1, "newArrayLiteral"

    .line 273
    .line 274
    const-string p2, "([Ljava/lang/Object;Ljava/lang/String;ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    .line 275
    .line 276
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    return-void
.end method

.method private visitBitNot(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 9
    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToNumeric()V

    .line 14
    .line 15
    .line 16
    const-string p1, "bitwiseNOT"

    .line 17
    .line 18
    const-string p2, "(Ljava/lang/Number;)Ljava/lang/Number;"

    .line 19
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string/jumbo p1, "toInt32"

    .line 25
    .line 26
    .line 27
    const-string p2, "(D)I"

    .line 28
    .line 29
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 38
    .line 39
    const/16 p2, 0x82

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 45
    .line 46
    const/16 p1, 0x87

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private visitBitOp(Lorg/mozilla/javascript/Node;ILorg/mozilla/javascript/Node;)V
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-direct {p0, p3, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 9
    .line 10
    .line 11
    const/16 v2, 0x14

    .line 12
    .line 13
    const/16 v3, 0x7e

    .line 14
    .line 15
    if-ne p2, v2, :cond_0

    .line 16
    .line 17
    const-string p2, "MATH:TOUINT32"

    .line 18
    .line 19
    const-string v0, "(Ljava/lang/Object;)J"

    .line 20
    .line 21
    invoke-direct {p0, p2, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 29
    .line 30
    .line 31
    const-string p1, "MATH:TOINT32"

    .line 32
    .line 33
    const-string p2, "(Ljava/lang/Object;)I"

    .line 34
    .line 35
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 39
    .line 40
    const/16 p2, 0x1f

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 46
    .line 47
    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 51
    .line 52
    const/16 p2, 0x7d

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 58
    .line 59
    const/16 p2, 0x8a

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    const/16 v2, 0x13

    .line 69
    .line 70
    const/16 v4, 0x12

    .line 71
    .line 72
    if-ne v0, v1, :cond_3

    .line 73
    .line 74
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToNumeric()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-direct {p0, p3, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToNumeric()V

    .line 85
    .line 86
    .line 87
    const-string p1, "(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;"

    .line 88
    .line 89
    if-eq p2, v4, :cond_2

    .line 90
    .line 91
    if-eq p2, v2, :cond_1

    .line 92
    .line 93
    packed-switch p2, :pswitch_data_0

    .line 94
    .line 95
    .line 96
    invoke-static {p2}, Lorg/mozilla/javascript/Token;->typeToName(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {p0}, Lorg/mozilla/javascript/Kit;->codeBug(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    throw p0

    .line 105
    :pswitch_0
    const-string p2, "bitwiseAND"

    .line 106
    .line 107
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :pswitch_1
    const-string p2, "bitwiseXOR"

    .line 112
    .line 113
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :pswitch_2
    const-string p2, "bitwiseOR"

    .line 118
    .line 119
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_1
    const-string/jumbo p2, "signedRightShift"

    .line 124
    .line 125
    .line 126
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_2
    const-string p2, "leftShift"

    .line 131
    .line 132
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_3
    const-string/jumbo v0, "toInt32"

    .line 137
    .line 138
    .line 139
    const-string v1, "(D)I"

    .line 140
    .line 141
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    invoke-direct {p0, p3, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 149
    .line 150
    .line 151
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    if-eq p2, v4, :cond_5

    .line 155
    .line 156
    if-eq p2, v2, :cond_4

    .line 157
    .line 158
    packed-switch p2, :pswitch_data_1

    .line 159
    .line 160
    .line 161
    invoke-static {p2}, Lorg/mozilla/javascript/Token;->typeToName(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-static {p0}, Lorg/mozilla/javascript/Kit;->codeBug(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    throw p0

    .line 170
    :pswitch_3
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 171
    .line 172
    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :pswitch_4
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 177
    .line 178
    const/16 p2, 0x82

    .line 179
    .line 180
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :pswitch_5
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 185
    .line 186
    const/16 p2, 0x80

    .line 187
    .line 188
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_4
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 193
    .line 194
    const/16 p2, 0x7a

    .line 195
    .line 196
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 197
    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_5
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 201
    .line 202
    const/16 p2, 0x78

    .line 203
    .line 204
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 205
    .line 206
    .line 207
    :goto_0
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 208
    .line 209
    const/16 p1, 0x87

    .line 210
    .line 211
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private visitDotQuery(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 8
    .line 9
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 12
    .line 13
    .line 14
    const-string v0, "enterDotQuery"

    .line 15
    .line 16
    const-string v1, "(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    .line 17
    .line 18
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 22
    .line 23
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 35
    .line 36
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 46
    .line 47
    const/16 v2, 0x57

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 57
    .line 58
    .line 59
    const-string p1, "MATH:TOBOOLEAN"

    .line 60
    .line 61
    const-string p2, "(Ljava/lang/Object;)Z"

    .line 62
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 67
    .line 68
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 71
    .line 72
    .line 73
    const-string/jumbo p1, "updateDotQuery"

    .line 74
    .line 75
    .line 76
    const-string p2, "(ZLorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 77
    .line 78
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 82
    .line 83
    const/16 p2, 0x59

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 89
    .line 90
    const/16 p2, 0xc6

    .line 91
    .line 92
    invoke-virtual {p1, p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 96
    .line 97
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 100
    .line 101
    .line 102
    const-string p1, "leaveDotQuery"

    .line 103
    .line 104
    const-string p2, "(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    .line 105
    .line 106
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 110
    .line 111
    iget p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 112
    .line 113
    invoke-virtual {p1, p0}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method private visitExponentiation(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 1

    .line 1
    const/16 p3, 0x8

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p1, p3, v0}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    if-eq p3, v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 21
    .line 22
    const-string p1, "pow"

    .line 23
    .line 24
    const-string p2, "(DD)D"

    .line 25
    .line 26
    const-string p3, "java/lang/Math"

    .line 27
    .line 28
    const/16 v0, 0xb8

    .line 29
    .line 30
    invoke-virtual {p0, p3, p1, v0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToNumeric()V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToNumeric()V

    .line 62
    .line 63
    .line 64
    const-string p1, "exponentiate"

    .line 65
    .line 66
    const-string p2, "(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;"

    .line 67
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private visitFunction(Lorg/mozilla/javascript/optimizer/OptFunctionNode;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 2
    .line 3
    iget-object v1, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/Codegen;->getIndex(Lorg/mozilla/javascript/ast/ScriptNode;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 10
    .line 11
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 12
    .line 13
    iget-object v2, v2, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    .line 14
    .line 15
    const/16 v3, 0xbb

    .line 16
    .line 17
    invoke-virtual {v1, v3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 21
    .line 22
    const/16 v2, 0x59

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 28
    .line 29
    iget v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 35
    .line 36
    iget v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 47
    .line 48
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 49
    .line 50
    iget-object v1, v1, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    .line 51
    .line 52
    const-string v3, "<init>"

    .line 53
    .line 54
    const-string v4, "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V"

    .line 55
    .line 56
    const/16 v5, 0xb7

    .line 57
    .line 58
    invoke-virtual {v0, v1, v3, v5, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x4

    .line 62
    if-ne p2, v0, :cond_0

    .line 63
    .line 64
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 65
    .line 66
    iget v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 72
    .line 73
    iget v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 79
    .line 80
    iget v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:I

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 83
    .line 84
    .line 85
    const-string v1, "bindThis"

    .line 86
    .line 87
    const-string v3, "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Function;"

    .line 88
    .line 89
    invoke-direct {p0, v1, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_0
    iget-object p1, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    .line 93
    .line 94
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->isMethodDefinition()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_1

    .line 99
    .line 100
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 101
    .line 102
    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 106
    .line 107
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->savedHomeObjectLocal:I

    .line 108
    .line 109
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 113
    .line 114
    const-string/jumbo v1, "setHomeObject"

    .line 115
    .line 116
    .line 117
    const-string v2, "(Lorg/mozilla/javascript/Scriptable;)V"

    .line 118
    .line 119
    const-string v3, "org/mozilla/javascript/BaseFunction"

    .line 120
    .line 121
    const/16 v4, 0xb6

    .line 122
    .line 123
    invoke-virtual {p1, v3, v1, v4, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_1
    const/4 p1, 0x2

    .line 127
    if-eq p2, p1, :cond_3

    .line 128
    .line 129
    if-ne p2, v0, :cond_2

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 138
    .line 139
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 140
    .line 141
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 145
    .line 146
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 149
    .line 150
    .line 151
    const-string p1, "initFunction"

    .line 152
    .line 153
    const-string p2, "(Lorg/mozilla/javascript/NativeFunction;ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;)V"

    .line 154
    .line 155
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_3
    :goto_0
    return-void
.end method

.method private visitGetProp(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 7

    .line 1
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1e

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 21
    .line 22
    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 27
    .line 28
    const/16 v3, 0x59

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 31
    .line 32
    .line 33
    const-string v2, "isNullOrUndefined"

    .line 34
    .line 35
    const-string v3, "(Ljava/lang/Object;)Z"

    .line 36
    .line 37
    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 41
    .line 42
    const/16 v3, 0x99

    .line 43
    .line 44
    invoke-virtual {v2, v3, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 48
    .line 49
    const/16 v3, 0x57

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 55
    .line 56
    const-string v3, "instance"

    .line 57
    .line 58
    const-string v4, "Ljava/lang/Object;"

    .line 59
    .line 60
    const-string v5, "org/mozilla/javascript/Undefined"

    .line 61
    .line 62
    const/16 v6, 0xb2

    .line 63
    .line 64
    invoke-virtual {v2, v5, v3, v6, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 68
    .line 69
    const/16 v3, 0xa7

    .line 70
    .line 71
    invoke-virtual {v2, v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 75
    .line 76
    invoke-virtual {v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finishGetPropGeneration(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 87
    .line 88
    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_0
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finishGetPropGeneration(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method private visitGetVar(Lorg/mozilla/javascript/Node;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[I

    .line 15
    .line 16
    aget v1, v1, v0

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varIsDirectCallParameter(I)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    const/4 v2, -0x1

    .line 27
    invoke-virtual {p1, v0, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eq p1, v2, :cond_1

    .line 32
    .line 33
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->dcpLoadAsNumber(I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->dcpLoadAsObject(I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private visitGoto(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-eq p2, v1, :cond_3

    .line 5
    .line 6
    const/4 v2, 0x7

    .line 7
    if-ne p2, v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 p1, 0x95

    .line 11
    .line 12
    if-ne p2, p1, :cond_2

    .line 13
    .line 14
    iget-boolean p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addGotoWithReturn(Lorg/mozilla/javascript/Node;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inlineFinally(Lorg/mozilla/javascript/Node;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    const/16 p1, 0xa7

    .line 27
    .line 28
    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addGoto(Lorg/mozilla/javascript/Node;I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_3
    :goto_0
    if-eqz p3, :cond_5

    .line 33
    .line 34
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 39
    .line 40
    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-ne p2, v1, :cond_4

    .line 45
    .line 46
    invoke-direct {p0, p3, p1, v0, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateIfJump(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_4
    invoke-direct {p0, p3, p1, v2, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateIfJump(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    .line 51
    .line 52
    .line 53
    :goto_1
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 54
    .line 55
    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_5
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    throw p0
.end method

.method private visitIfJumpEqOp(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    const/4 v5, -0x1

    .line 12
    if-eq v3, v5, :cond_a

    .line 13
    .line 14
    if-eq v4, v5, :cond_a

    .line 15
    .line 16
    iget-object v6, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 17
    .line 18
    iget v6, v6, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 19
    .line 20
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    const/16 v9, 0x33

    .line 29
    .line 30
    const/16 v10, 0xd

    .line 31
    .line 32
    const/16 v11, 0xa7

    .line 33
    .line 34
    const/16 v12, 0xc

    .line 35
    .line 36
    if-eq v7, v12, :cond_3

    .line 37
    .line 38
    if-eq v7, v10, :cond_3

    .line 39
    .line 40
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    .line 41
    .line 42
    .line 43
    move-result v13

    .line 44
    const/16 v14, 0x2f

    .line 45
    .line 46
    if-eq v13, v14, :cond_0

    .line 47
    .line 48
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getType()I

    .line 49
    .line 50
    .line 51
    move-result v13

    .line 52
    if-ne v13, v14, :cond_3

    .line 53
    .line 54
    :cond_0
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-ne v5, v14, :cond_1

    .line 59
    .line 60
    move-object v2, v8

    .line 61
    :cond_1
    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 62
    .line 63
    .line 64
    if-ne v7, v9, :cond_2

    .line 65
    .line 66
    const/16 v1, 0xc6

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/16 v1, 0xc7

    .line 70
    .line 71
    :goto_0
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 72
    .line 73
    invoke-virtual {v2, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 77
    .line 78
    invoke-virtual {v1, v11, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_4

    .line 82
    .line 83
    :cond_3
    invoke-direct {v0, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->nodeIsDirectCallParameter(Lorg/mozilla/javascript/Node;)I

    .line 84
    .line 85
    .line 86
    move-result v13

    .line 87
    if-eq v13, v5, :cond_5

    .line 88
    .line 89
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getType()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    const/16 v9, 0xa3

    .line 94
    .line 95
    if-ne v5, v9, :cond_5

    .line 96
    .line 97
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    const/16 v10, 0x2d

    .line 106
    .line 107
    if-ne v9, v10, :cond_5

    .line 108
    .line 109
    iget-object v9, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 110
    .line 111
    invoke-virtual {v9, v13}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 112
    .line 113
    .line 114
    iget-object v9, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 115
    .line 116
    const-string v10, "TYPE"

    .line 117
    .line 118
    const-string v11, "Ljava/lang/Class;"

    .line 119
    .line 120
    const-string v14, "java/lang/Void"

    .line 121
    .line 122
    const/16 v15, 0xb2

    .line 123
    .line 124
    invoke-virtual {v9, v14, v10, v15, v11}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v9, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 128
    .line 129
    invoke-virtual {v9}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    iget-object v10, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 134
    .line 135
    const/16 v11, 0xa6

    .line 136
    .line 137
    invoke-virtual {v10, v11, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 138
    .line 139
    .line 140
    iget-object v10, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 141
    .line 142
    add-int/lit8 v13, v13, 0x1

    .line 143
    .line 144
    invoke-virtual {v10, v13}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    .line 145
    .line 146
    .line 147
    iget-object v10, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 148
    .line 149
    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getDouble()D

    .line 150
    .line 151
    .line 152
    move-result-wide v13

    .line 153
    invoke-virtual {v10, v13, v14}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    .line 154
    .line 155
    .line 156
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 157
    .line 158
    const/16 v10, 0x97

    .line 159
    .line 160
    invoke-virtual {v5, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 161
    .line 162
    .line 163
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 164
    .line 165
    if-ne v7, v12, :cond_4

    .line 166
    .line 167
    const/16 v10, 0x99

    .line 168
    .line 169
    invoke-virtual {v5, v10, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 170
    .line 171
    .line 172
    const/16 v11, 0x9a

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_4
    const/16 v10, 0x99

    .line 176
    .line 177
    const/16 v11, 0x9a

    .line 178
    .line 179
    invoke-virtual {v5, v11, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 180
    .line 181
    .line 182
    :goto_1
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 183
    .line 184
    const/16 v13, 0xa7

    .line 185
    .line 186
    invoke-virtual {v5, v13, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 187
    .line 188
    .line 189
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 190
    .line 191
    invoke-virtual {v5, v9}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_5
    const/16 v10, 0x99

    .line 196
    .line 197
    const/16 v11, 0x9a

    .line 198
    .line 199
    :goto_2
    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 200
    .line 201
    .line 202
    invoke-direct {v0, v8, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 203
    .line 204
    .line 205
    const-string v1, "MATH:EQ"

    .line 206
    .line 207
    if-eq v7, v12, :cond_8

    .line 208
    .line 209
    const/16 v2, 0xd

    .line 210
    .line 211
    if-eq v7, v2, :cond_6

    .line 212
    .line 213
    const-string v1, "MATH:SHALLOWEQ"

    .line 214
    .line 215
    const/16 v2, 0x33

    .line 216
    .line 217
    if-eq v7, v2, :cond_8

    .line 218
    .line 219
    const/16 v2, 0x34

    .line 220
    .line 221
    if-ne v7, v2, :cond_7

    .line 222
    .line 223
    :cond_6
    move v14, v10

    .line 224
    goto :goto_3

    .line 225
    :cond_7
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    throw v0

    .line 230
    :cond_8
    move v14, v11

    .line 231
    :goto_3
    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;)Z"

    .line 232
    .line 233
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 237
    .line 238
    invoke-virtual {v1, v14, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 239
    .line 240
    .line 241
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 242
    .line 243
    const/16 v13, 0xa7

    .line 244
    .line 245
    invoke-virtual {v1, v13, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 246
    .line 247
    .line 248
    :goto_4
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 249
    .line 250
    iget v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 251
    .line 252
    if-ne v6, v0, :cond_9

    .line 253
    .line 254
    return-void

    .line 255
    :cond_9
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    throw v0

    .line 260
    :cond_a
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    throw v0
.end method

.method private visitIfJumpRelOp(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    const/4 v5, -0x1

    .line 12
    if-eq v3, v5, :cond_b

    .line 13
    .line 14
    if-eq v4, v5, :cond_b

    .line 15
    .line 16
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    const/16 v9, 0x9a

    .line 25
    .line 26
    const/16 v10, 0x3a

    .line 27
    .line 28
    if-eq v6, v10, :cond_9

    .line 29
    .line 30
    const/16 v11, 0x39

    .line 31
    .line 32
    if-ne v6, v11, :cond_0

    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_0
    const/16 v10, 0x8

    .line 37
    .line 38
    invoke-virtual {v1, v10, v5}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 39
    .line 40
    .line 41
    move-result v10

    .line 42
    invoke-direct {v0, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->nodeIsDirectCallParameter(Lorg/mozilla/javascript/Node;)I

    .line 43
    .line 44
    .line 45
    move-result v11

    .line 46
    invoke-direct {v0, v7}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->nodeIsDirectCallParameter(Lorg/mozilla/javascript/Node;)I

    .line 47
    .line 48
    .line 49
    move-result v12

    .line 50
    if-eq v10, v5, :cond_5

    .line 51
    .line 52
    const/4 v8, 0x2

    .line 53
    if-eq v10, v8, :cond_1

    .line 54
    .line 55
    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    if-eq v11, v5, :cond_2

    .line 60
    .line 61
    invoke-direct {v0, v11}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->dcpLoadAsNumber(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToDouble()V

    .line 69
    .line 70
    .line 71
    :goto_0
    const/4 v2, 0x1

    .line 72
    if-eq v10, v2, :cond_3

    .line 73
    .line 74
    invoke-direct {v0, v7, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    if-eq v12, v5, :cond_4

    .line 79
    .line 80
    invoke-direct {v0, v12}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->dcpLoadAsNumber(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    invoke-direct {v0, v7, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToDouble()V

    .line 88
    .line 89
    .line 90
    :goto_1
    invoke-direct {v0, v6, v3, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->genSimpleCompare(III)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_5
    if-eq v11, v5, :cond_8

    .line 95
    .line 96
    if-eq v12, v5, :cond_8

    .line 97
    .line 98
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 99
    .line 100
    iget v2, v1, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 101
    .line 102
    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 107
    .line 108
    invoke-virtual {v5, v11}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 109
    .line 110
    .line 111
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 112
    .line 113
    const-string v7, "java/lang/Void"

    .line 114
    .line 115
    const-string v10, "TYPE"

    .line 116
    .line 117
    const/16 v13, 0xb2

    .line 118
    .line 119
    const-string v14, "Ljava/lang/Class;"

    .line 120
    .line 121
    invoke-virtual {v5, v7, v10, v13, v14}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 125
    .line 126
    const/16 v15, 0xa6

    .line 127
    .line 128
    invoke-virtual {v5, v15, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 129
    .line 130
    .line 131
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 132
    .line 133
    add-int/lit8 v8, v11, 0x1

    .line 134
    .line 135
    invoke-virtual {v5, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, v12}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->dcpLoadAsNumber(I)V

    .line 139
    .line 140
    .line 141
    invoke-direct {v0, v6, v3, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->genSimpleCompare(III)V

    .line 142
    .line 143
    .line 144
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 145
    .line 146
    iget v8, v5, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 147
    .line 148
    if-ne v2, v8, :cond_7

    .line 149
    .line 150
    invoke-virtual {v5, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 154
    .line 155
    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 160
    .line 161
    invoke-virtual {v5, v12}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 162
    .line 163
    .line 164
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 165
    .line 166
    invoke-virtual {v5, v7, v10, v13, v14}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 170
    .line 171
    invoke-virtual {v5, v15, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 172
    .line 173
    .line 174
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 175
    .line 176
    invoke-virtual {v5, v11}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 177
    .line 178
    .line 179
    invoke-direct {v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToDouble()V

    .line 180
    .line 181
    .line 182
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 183
    .line 184
    add-int/lit8 v7, v12, 0x1

    .line 185
    .line 186
    invoke-virtual {v5, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    .line 187
    .line 188
    .line 189
    invoke-direct {v0, v6, v3, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->genSimpleCompare(III)V

    .line 190
    .line 191
    .line 192
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 193
    .line 194
    iget v7, v5, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 195
    .line 196
    if-ne v2, v7, :cond_6

    .line 197
    .line 198
    invoke-virtual {v5, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 199
    .line 200
    .line 201
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 202
    .line 203
    invoke-virtual {v1, v11}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 204
    .line 205
    .line 206
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 207
    .line 208
    invoke-virtual {v1, v12}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_6
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    throw v0

    .line 217
    :cond_7
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    throw v0

    .line 222
    :cond_8
    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 223
    .line 224
    .line 225
    invoke-direct {v0, v7, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 226
    .line 227
    .line 228
    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 229
    .line 230
    .line 231
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    throw v0

    .line 236
    :pswitch_0
    const-string v1, "MATH:COMPAREGE"

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :pswitch_1
    const-string v1, "MATH:COMPAREGT"

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :pswitch_2
    const-string v1, "MATH:COMPARELE"

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :pswitch_3
    const-string v1, "MATH:COMPARELT"

    .line 246
    .line 247
    :goto_3
    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;)Z"

    .line 248
    .line 249
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 253
    .line 254
    invoke-virtual {v1, v9, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 255
    .line 256
    .line 257
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 258
    .line 259
    const/16 v1, 0xa7

    .line 260
    .line 261
    invoke-virtual {v0, v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 262
    .line 263
    .line 264
    return-void

    .line 265
    :cond_9
    :goto_4
    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 266
    .line 267
    .line 268
    invoke-direct {v0, v7, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 269
    .line 270
    .line 271
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 272
    .line 273
    iget v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 274
    .line 275
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 276
    .line 277
    .line 278
    if-ne v6, v10, :cond_a

    .line 279
    .line 280
    const-string v1, "instanceOf"

    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_a
    const-string v1, "in"

    .line 284
    .line 285
    :goto_5
    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z"

    .line 286
    .line 287
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 291
    .line 292
    invoke-virtual {v1, v9, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 293
    .line 294
    .line 295
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 296
    .line 297
    const/16 v1, 0xa7

    .line 298
    .line 299
    invoke-virtual {v0, v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :cond_b
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    throw v0

    .line 308
    nop

    .line 309
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private visitIncDec(Lorg/mozilla/javascript/Node;)V
    .locals 13

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/16 v2, 0x1f

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1, v2, v3}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne v2, v4, :cond_0

    .line 20
    .line 21
    invoke-direct {p0, p1, v1, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitSuperIncDec(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/16 v5, 0x21

    .line 30
    .line 31
    if-eq v2, v5, :cond_18

    .line 32
    .line 33
    const/16 v5, 0x22

    .line 34
    .line 35
    if-eq v2, v5, :cond_17

    .line 36
    .line 37
    const/16 v5, 0x27

    .line 38
    .line 39
    const/16 v6, 0x8

    .line 40
    .line 41
    const/4 v7, -0x1

    .line 42
    if-eq v2, v5, :cond_15

    .line 43
    .line 44
    const/16 v5, 0x2c

    .line 45
    .line 46
    if-eq v2, v5, :cond_14

    .line 47
    .line 48
    const/16 v5, 0x3c

    .line 49
    .line 50
    if-eq v2, v5, :cond_2

    .line 51
    .line 52
    const/16 v3, 0x49

    .line 53
    .line 54
    if-eq v2, v3, :cond_1

    .line 55
    .line 56
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 68
    .line 69
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 75
    .line 76
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 84
    .line 85
    .line 86
    const-string p1, "refIncrDecr"

    .line 87
    .line 88
    const-string v0, "(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;"

    .line 89
    .line 90
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_2
    iget-boolean v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    .line 95
    .line 96
    if-nez v2, :cond_3

    .line 97
    .line 98
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 99
    .line 100
    .line 101
    :cond_3
    and-int/lit8 v2, v0, 0x2

    .line 102
    .line 103
    if-eqz v2, :cond_4

    .line 104
    .line 105
    move v3, v4

    .line 106
    :cond_4
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 107
    .line 108
    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[I

    .line 113
    .line 114
    aget v2, v2, v1

    .line 115
    .line 116
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 117
    .line 118
    iget-object v5, v5, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    .line 119
    .line 120
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarConst()[Z

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    aget-boolean v5, v5, v1

    .line 125
    .line 126
    const/16 v8, 0x59

    .line 127
    .line 128
    const/16 v9, 0x67

    .line 129
    .line 130
    const/16 v10, 0x63

    .line 131
    .line 132
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 133
    .line 134
    if-eqz v5, :cond_a

    .line 135
    .line 136
    invoke-virtual {p1, v6, v7}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eq p1, v7, :cond_6

    .line 141
    .line 142
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varIsDirectCallParameter(I)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 147
    .line 148
    add-int/2addr v2, p1

    .line 149
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    .line 150
    .line 151
    .line 152
    if-nez v3, :cond_13

    .line 153
    .line 154
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 155
    .line 156
    invoke-virtual {p1, v11, v12}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    .line 157
    .line 158
    .line 159
    and-int/lit8 p1, v0, 0x1

    .line 160
    .line 161
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 162
    .line 163
    if-nez p1, :cond_5

    .line 164
    .line 165
    invoke-virtual {p0, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_5
    invoke-virtual {p0, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_6
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varIsDirectCallParameter(I)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_7

    .line 178
    .line 179
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->dcpLoadAsObject(I)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_7
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 184
    .line 185
    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 186
    .line 187
    .line 188
    :goto_0
    if-eqz v3, :cond_8

    .line 189
    .line 190
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 191
    .line 192
    invoke-virtual {p1, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 193
    .line 194
    .line 195
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToDouble()V

    .line 196
    .line 197
    .line 198
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 199
    .line 200
    const/16 p1, 0x58

    .line 201
    .line 202
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :cond_8
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToDouble()V

    .line 207
    .line 208
    .line 209
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 210
    .line 211
    invoke-virtual {p1, v11, v12}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    .line 212
    .line 213
    .line 214
    and-int/lit8 p1, v0, 0x1

    .line 215
    .line 216
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 217
    .line 218
    if-nez p1, :cond_9

    .line 219
    .line 220
    invoke-virtual {v0, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 221
    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_9
    invoke-virtual {v0, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 225
    .line 226
    .line 227
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :cond_a
    invoke-virtual {p1, v6, v7}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    const/16 v5, 0x5c

    .line 236
    .line 237
    if-eq p1, v7, :cond_e

    .line 238
    .line 239
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varIsDirectCallParameter(I)Z

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 244
    .line 245
    add-int/2addr v2, p1

    .line 246
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    .line 247
    .line 248
    .line 249
    if-eqz v3, :cond_b

    .line 250
    .line 251
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 252
    .line 253
    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 254
    .line 255
    .line 256
    :cond_b
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 257
    .line 258
    invoke-virtual {p1, v11, v12}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    .line 259
    .line 260
    .line 261
    and-int/lit8 p1, v0, 0x1

    .line 262
    .line 263
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 264
    .line 265
    if-nez p1, :cond_c

    .line 266
    .line 267
    invoke-virtual {v0, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 268
    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_c
    invoke-virtual {v0, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 272
    .line 273
    .line 274
    :goto_2
    if-nez v3, :cond_d

    .line 275
    .line 276
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 277
    .line 278
    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 279
    .line 280
    .line 281
    :cond_d
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 282
    .line 283
    const/16 p1, 0x47

    .line 284
    .line 285
    const/16 v0, 0x39

    .line 286
    .line 287
    invoke-virtual {p0, p1, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :cond_e
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varIsDirectCallParameter(I)Z

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    if-eqz p1, :cond_f

    .line 296
    .line 297
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->dcpLoadAsObject(I)V

    .line 298
    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_f
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 302
    .line 303
    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 304
    .line 305
    .line 306
    :goto_3
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToDouble()V

    .line 307
    .line 308
    .line 309
    if-eqz v3, :cond_10

    .line 310
    .line 311
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 312
    .line 313
    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 314
    .line 315
    .line 316
    :cond_10
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 317
    .line 318
    invoke-virtual {p1, v11, v12}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    .line 319
    .line 320
    .line 321
    and-int/lit8 p1, v0, 0x1

    .line 322
    .line 323
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 324
    .line 325
    if-nez p1, :cond_11

    .line 326
    .line 327
    invoke-virtual {v0, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 328
    .line 329
    .line 330
    goto :goto_4

    .line 331
    :cond_11
    invoke-virtual {v0, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 332
    .line 333
    .line 334
    :goto_4
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    .line 335
    .line 336
    .line 337
    if-nez v3, :cond_12

    .line 338
    .line 339
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 340
    .line 341
    invoke-virtual {p1, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 342
    .line 343
    .line 344
    :cond_12
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 345
    .line 346
    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 347
    .line 348
    .line 349
    if-eqz v3, :cond_13

    .line 350
    .line 351
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    .line 352
    .line 353
    .line 354
    :cond_13
    return-void

    .line 355
    :cond_14
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 356
    .line 357
    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 358
    .line 359
    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 360
    .line 361
    .line 362
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 363
    .line 364
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 372
    .line 373
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 374
    .line 375
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 376
    .line 377
    .line 378
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 379
    .line 380
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 381
    .line 382
    .line 383
    const-string p1, "nameIncrDecr"

    .line 384
    .line 385
    const-string v0, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;"

    .line 386
    .line 387
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    return-void

    .line 391
    :cond_15
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    invoke-direct {p0, v2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 403
    .line 404
    .line 405
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 406
    .line 407
    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 408
    .line 409
    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 410
    .line 411
    .line 412
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 413
    .line 414
    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 415
    .line 416
    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 417
    .line 418
    .line 419
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 420
    .line 421
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    invoke-virtual {p1, v6, v7}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 429
    .line 430
    .line 431
    move-result p1

    .line 432
    const-string v0, "elemIncrDecr"

    .line 433
    .line 434
    if-eq p1, v7, :cond_16

    .line 435
    .line 436
    const-string p1, "(Ljava/lang/Object;DLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;"

    .line 437
    .line 438
    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    return-void

    .line 442
    :cond_16
    const-string p1, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;"

    .line 443
    .line 444
    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    return-void

    .line 448
    :cond_17
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 449
    .line 450
    .line 451
    move-result-object p0

    .line 452
    throw p0

    .line 453
    :cond_18
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 465
    .line 466
    .line 467
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 468
    .line 469
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 470
    .line 471
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 472
    .line 473
    .line 474
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 475
    .line 476
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 477
    .line 478
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 479
    .line 480
    .line 481
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 482
    .line 483
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 484
    .line 485
    .line 486
    const-string p1, "propIncrDecr"

    .line 487
    .line 488
    const-string v0, "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;"

    .line 489
    .line 490
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    return-void
.end method

.method private visitObjectLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V
    .locals 8

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    move v2, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    array-length v2, v0

    .line 15
    :goto_0
    const/16 v3, 0xb6

    .line 16
    .line 17
    const/16 v4, 0xa

    .line 18
    .line 19
    if-nez p3, :cond_3

    .line 20
    .line 21
    if-gt v2, v4, :cond_1

    .line 22
    .line 23
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 24
    .line 25
    iget p3, p3, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 26
    .line 27
    const/16 v5, 0x7530

    .line 28
    .line 29
    if-le p3, v5, :cond_3

    .line 30
    .line 31
    :cond_1
    iget-boolean p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    .line 32
    .line 33
    if-nez p3, :cond_3

    .line 34
    .line 35
    iget-boolean p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 36
    .line 37
    if-nez p3, :cond_3

    .line 38
    .line 39
    iget-boolean p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inLocalBlock:Z

    .line 40
    .line 41
    if-nez p3, :cond_3

    .line 42
    .line 43
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->literals:Ljava/util/ArrayList;

    .line 44
    .line 45
    if-nez p2, :cond_2

    .line 46
    .line 47
    new-instance p2, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->literals:Ljava/util/ArrayList;

    .line 53
    .line 54
    :cond_2
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->literals:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 60
    .line 61
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->literals:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    new-instance p3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, "_literal"

    .line 82
    .line 83
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 94
    .line 95
    iget p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->funObjLocal:I

    .line 96
    .line 97
    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 98
    .line 99
    .line 100
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 101
    .line 102
    iget p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 103
    .line 104
    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 105
    .line 106
    .line 107
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 108
    .line 109
    iget p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 110
    .line 111
    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 112
    .line 113
    .line 114
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 115
    .line 116
    iget p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:I

    .line 117
    .line 118
    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 119
    .line 120
    .line 121
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 122
    .line 123
    iget p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:I

    .line 124
    .line 125
    invoke-virtual {p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 126
    .line 127
    .line 128
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 129
    .line 130
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 131
    .line 132
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    .line 133
    .line 134
    const-string p3, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    .line 135
    .line 136
    invoke-virtual {p2, p0, p1, v3, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_3
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 141
    .line 142
    iget v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 143
    .line 144
    invoke-virtual {p3, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 145
    .line 146
    .line 147
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 148
    .line 149
    iget v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 150
    .line 151
    invoke-virtual {p3, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 152
    .line 153
    .line 154
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 155
    .line 156
    const-string v5, "newObject"

    .line 157
    .line 158
    const-string v6, "(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    .line 159
    .line 160
    const-string v7, "org/mozilla/javascript/Context"

    .line 161
    .line 162
    invoke-virtual {p3, v7, v5, v3, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 166
    .line 167
    const/16 v3, 0x59

    .line 168
    .line 169
    invoke-virtual {p3, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 170
    .line 171
    .line 172
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    .line 173
    .line 174
    .line 175
    move-result p3

    .line 176
    iput p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->savedHomeObjectLocal:I

    .line 177
    .line 178
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 179
    .line 180
    invoke-virtual {v5, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 181
    .line 182
    .line 183
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 184
    .line 185
    invoke-virtual {p3, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 186
    .line 187
    .line 188
    invoke-direct {p0, p1, p2, v0, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addLoadProperty(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;[Ljava/lang/Object;I)V

    .line 189
    .line 190
    .line 191
    move-object p3, p2

    .line 192
    move p1, v1

    .line 193
    :goto_1
    if-eq p1, v2, :cond_8

    .line 194
    .line 195
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getType()I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    const/16 v5, 0xa6

    .line 200
    .line 201
    const/16 v6, 0xa5

    .line 202
    .line 203
    if-eq v0, v6, :cond_5

    .line 204
    .line 205
    if-ne v0, v5, :cond_4

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_4
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 209
    .line 210
    .line 211
    move-result-object p3

    .line 212
    add-int/lit8 p1, p1, 0x1

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 216
    .line 217
    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 221
    .line 222
    const/16 p3, 0xbc

    .line 223
    .line 224
    invoke-virtual {p1, p3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 225
    .line 226
    .line 227
    :goto_3
    if-eq v1, v2, :cond_9

    .line 228
    .line 229
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 230
    .line 231
    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 235
    .line 236
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    if-ne p1, v6, :cond_6

    .line 244
    .line 245
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 246
    .line 247
    const/4 p3, 0x2

    .line 248
    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_6
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 253
    .line 254
    if-ne p1, v5, :cond_7

    .line 255
    .line 256
    const/4 p1, 0x4

    .line 257
    invoke-virtual {p3, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 258
    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_7
    const/4 p1, 0x3

    .line 262
    invoke-virtual {p3, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 263
    .line 264
    .line 265
    :goto_4
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 266
    .line 267
    const/16 p3, 0x4f

    .line 268
    .line 269
    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 273
    .line 274
    .line 275
    move-result-object p2

    .line 276
    add-int/lit8 v1, v1, 0x1

    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_8
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 280
    .line 281
    const/4 p2, 0x1

    .line 282
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 283
    .line 284
    .line 285
    :cond_9
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 286
    .line 287
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 288
    .line 289
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 290
    .line 291
    .line 292
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 293
    .line 294
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 295
    .line 296
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 297
    .line 298
    .line 299
    const-string p1, "fillObjectLiteral"

    .line 300
    .line 301
    const-string p2, "(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V"

    .line 302
    .line 303
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    return-void
.end method

.method private visitOptimizedCall(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/optimizer/OptFunctionNode;ILorg/mozilla/javascript/Node;)V
    .locals 11

    .line 1
    const/16 v0, 0x1f

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 19
    .line 20
    iget-object v3, v3, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    .line 21
    .line 22
    const/16 v4, 0x1e

    .line 23
    .line 24
    if-ne p3, v4, :cond_1

    .line 25
    .line 26
    invoke-direct {p0, p4, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-direct {p0, p4, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateFunctionAndThisObj(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->pushThisFromLastScriptable()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget-object p4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 41
    .line 42
    invoke-virtual {p4, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object p4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 46
    .line 47
    invoke-virtual {p4}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 48
    .line 49
    .line 50
    move-result p4

    .line 51
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 52
    .line 53
    invoke-virtual {v5}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 58
    .line 59
    const/16 v7, 0x59

    .line 60
    .line 61
    invoke-virtual {v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 62
    .line 63
    .line 64
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 65
    .line 66
    const/16 v8, 0xc1

    .line 67
    .line 68
    invoke-virtual {v6, v8, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 72
    .line 73
    const/16 v8, 0x99

    .line 74
    .line 75
    invoke-virtual {v6, v8, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 76
    .line 77
    .line 78
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 79
    .line 80
    const/16 v8, 0xc0

    .line 81
    .line 82
    invoke-virtual {v6, v8, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 86
    .line 87
    invoke-virtual {v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 88
    .line 89
    .line 90
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 91
    .line 92
    const-string v7, "_id"

    .line 93
    .line 94
    const-string v8, "I"

    .line 95
    .line 96
    const/16 v9, 0xb4

    .line 97
    .line 98
    invoke-virtual {v6, v3, v7, v9, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 102
    .line 103
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 104
    .line 105
    iget-object v7, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    .line 106
    .line 107
    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/optimizer/Codegen;->getIndex(Lorg/mozilla/javascript/ast/ScriptNode;)I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    invoke-virtual {v3, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 112
    .line 113
    .line 114
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 115
    .line 116
    const/16 v6, 0xa0

    .line 117
    .line 118
    invoke-virtual {v3, v6, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 119
    .line 120
    .line 121
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 122
    .line 123
    iget v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 124
    .line 125
    invoke-virtual {v3, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 126
    .line 127
    .line 128
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 129
    .line 130
    iget v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 131
    .line 132
    invoke-virtual {v3, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 133
    .line 134
    .line 135
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 136
    .line 137
    if-ne p3, v4, :cond_2

    .line 138
    .line 139
    invoke-virtual {v3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 144
    .line 145
    .line 146
    :goto_1
    move-object v3, v0

    .line 147
    :goto_2
    const/16 v6, 0xb2

    .line 148
    .line 149
    if-eqz v3, :cond_5

    .line 150
    .line 151
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->nodeIsDirectCallParameter(Lorg/mozilla/javascript/Node;)I

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-ltz v7, :cond_3

    .line 156
    .line 157
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 158
    .line 159
    invoke-virtual {v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 160
    .line 161
    .line 162
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 163
    .line 164
    add-int/lit8 v7, v7, 0x1

    .line 165
    .line 166
    invoke-virtual {v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_3
    const/16 v7, 0x8

    .line 171
    .line 172
    const/4 v8, -0x1

    .line 173
    invoke-virtual {v3, v7, v8}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-nez v7, :cond_4

    .line 178
    .line 179
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 180
    .line 181
    const-string v8, "TYPE"

    .line 182
    .line 183
    const-string v9, "Ljava/lang/Class;"

    .line 184
    .line 185
    const-string v10, "java/lang/Void"

    .line 186
    .line 187
    invoke-virtual {v7, v10, v8, v6, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-direct {p0, v3, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_4
    invoke-direct {p0, v3, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 195
    .line 196
    .line 197
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 198
    .line 199
    const-wide/16 v7, 0x0

    .line 200
    .line 201
    invoke-virtual {v6, v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    .line 202
    .line 203
    .line 204
    :goto_3
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    goto :goto_2

    .line 209
    :cond_5
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 210
    .line 211
    const-string v7, "emptyArgs"

    .line 212
    .line 213
    const-string v8, "[Ljava/lang/Object;"

    .line 214
    .line 215
    const-string v9, "org/mozilla/javascript/ScriptRuntime"

    .line 216
    .line 217
    invoke-virtual {v3, v9, v7, v6, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 221
    .line 222
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 223
    .line 224
    iget-object v7, v6, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    .line 225
    .line 226
    iget-object v8, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    .line 227
    .line 228
    if-ne p3, v4, :cond_6

    .line 229
    .line 230
    invoke-virtual {v6, v8}, Lorg/mozilla/javascript/optimizer/Codegen;->getDirectCtorName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    goto :goto_4

    .line 235
    :cond_6
    invoke-virtual {v6, v8}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    :goto_4
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 240
    .line 241
    iget-object p2, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    .line 242
    .line 243
    invoke-virtual {v8, p2}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodSignature(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    const/16 v8, 0xb8

    .line 248
    .line 249
    invoke-virtual {v3, v7, v6, v8, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 253
    .line 254
    const/16 v3, 0xa7

    .line 255
    .line 256
    invoke-virtual {p2, v3, p4}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 257
    .line 258
    .line 259
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 260
    .line 261
    invoke-virtual {p2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 262
    .line 263
    .line 264
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 265
    .line 266
    iget v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 267
    .line 268
    invoke-virtual {p2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 269
    .line 270
    .line 271
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 272
    .line 273
    iget v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 274
    .line 275
    invoke-virtual {p2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 276
    .line 277
    .line 278
    if-eq p3, v4, :cond_7

    .line 279
    .line 280
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 281
    .line 282
    invoke-virtual {p2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 283
    .line 284
    .line 285
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->releaseWordLocal(I)V

    .line 286
    .line 287
    .line 288
    :cond_7
    invoke-direct {p0, p1, v0, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCallArgArray(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    .line 289
    .line 290
    .line 291
    if-ne p3, v4, :cond_8

    .line 292
    .line 293
    const-string p1, "newObject"

    .line 294
    .line 295
    const-string p2, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    .line 296
    .line 297
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    goto :goto_5

    .line 301
    :cond_8
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 302
    .line 303
    const-string p2, "call"

    .line 304
    .line 305
    const-string p3, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;"

    .line 306
    .line 307
    const-string v0, "org/mozilla/javascript/Callable"

    .line 308
    .line 309
    const/16 v1, 0xb9

    .line 310
    .line 311
    invoke-virtual {p1, v0, p2, v1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 312
    .line 313
    .line 314
    :goto_5
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 315
    .line 316
    invoke-virtual {p0, p4}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 317
    .line 318
    .line 319
    return-void
.end method

.method private visitSetConst(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 20
    .line 21
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p2, "NAME:SETCONST:"

    .line 29
    .line 30
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    .line 41
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private visitSetConstVar(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 19
    .line 20
    .line 21
    const/16 p2, 0x8

    .line 22
    .line 23
    const/4 v1, -0x1

    .line 24
    invoke-virtual {p1, p2, v1}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 p2, 0x1

    .line 29
    if-eq p1, v1, :cond_1

    .line 30
    .line 31
    move p1, p2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[I

    .line 35
    .line 36
    aget v0, v1, v0

    .line 37
    .line 38
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 39
    .line 40
    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 45
    .line 46
    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 51
    .line 52
    const/16 v4, 0x36

    .line 53
    .line 54
    const/16 v5, 0x3b

    .line 55
    .line 56
    const/16 v6, 0xa7

    .line 57
    .line 58
    const/16 v7, 0x9a

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    add-int/lit8 p1, v0, 0x2

    .line 63
    .line 64
    invoke-virtual {v3, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    .line 65
    .line 66
    .line 67
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 68
    .line 69
    invoke-virtual {v3, v7, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 70
    .line 71
    .line 72
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 73
    .line 74
    iget v7, v3, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 75
    .line 76
    invoke-virtual {v3, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 77
    .line 78
    .line 79
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 80
    .line 81
    invoke-virtual {p2, v5, v4, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 85
    .line 86
    const/16 p2, 0x47

    .line 87
    .line 88
    const/16 v3, 0x39

    .line 89
    .line 90
    invoke-virtual {p1, p2, v3, v0}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 94
    .line 95
    if-eqz p3, :cond_2

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 101
    .line 102
    invoke-virtual {p1, v2, v7}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(II)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {p1, v6, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 110
    .line 111
    invoke-virtual {p1, v2, v7}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(II)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 115
    .line 116
    const/16 p2, 0x58

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    add-int/lit8 p1, v0, 0x1

    .line 123
    .line 124
    invoke-virtual {v3, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    .line 125
    .line 126
    .line 127
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 128
    .line 129
    invoke-virtual {v3, v7, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 130
    .line 131
    .line 132
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 133
    .line 134
    iget v7, v3, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 135
    .line 136
    invoke-virtual {v3, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 137
    .line 138
    .line 139
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 140
    .line 141
    invoke-virtual {p2, v5, v4, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 150
    .line 151
    if-eqz p3, :cond_4

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 157
    .line 158
    invoke-virtual {p1, v2, v7}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(II)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_4
    invoke-virtual {p1, v6, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 166
    .line 167
    invoke-virtual {p1, v2, v7}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(II)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 171
    .line 172
    const/16 p2, 0x57

    .line 173
    .line 174
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 175
    .line 176
    .line 177
    :goto_1
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 178
    .line 179
    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 180
    .line 181
    .line 182
    return-void
.end method

.method private visitSetElem(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 5

    .line 1
    invoke-direct {p0, p3, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    const/16 v0, 0x9a

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 13
    .line 14
    const/16 v2, 0x59

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0, p3, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    const/16 v1, 0x8

    .line 27
    .line 28
    const/4 v2, -0x1

    .line 29
    invoke-virtual {p2, v1, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eq v1, v2, :cond_1

    .line 36
    .line 37
    move v1, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v1, v3

    .line 40
    :goto_0
    const/16 v2, 0x1f

    .line 41
    .line 42
    invoke-virtual {p2, v2, v3}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-ne v2, v4, :cond_2

    .line 47
    .line 48
    move v3, v4

    .line 49
    :cond_2
    if-ne p1, v0, :cond_5

    .line 50
    .line 51
    const/16 p1, 0x5a

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 61
    .line 62
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 68
    .line 69
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 75
    .line 76
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:I

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 79
    .line 80
    .line 81
    const-string p1, "PROP:GETELEMENTSUPER"

    .line 82
    .line 83
    const-string v0, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;"

    .line 84
    .line 85
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    const/16 p1, 0x5d

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 99
    .line 100
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 106
    .line 107
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 110
    .line 111
    .line 112
    const-string p1, "PROP:GETINDEX"

    .line 113
    .line 114
    const-string v0, "(Ljava/lang/Object;DLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 115
    .line 116
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 124
    .line 125
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 131
    .line 132
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 135
    .line 136
    .line 137
    const-string p1, "PROP:GETELEMENT"

    .line 138
    .line 139
    const-string v0, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 140
    .line 141
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_5
    :goto_1
    invoke-direct {p0, p3, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 148
    .line 149
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 155
    .line 156
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 157
    .line 158
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 159
    .line 160
    .line 161
    if-eqz v3, :cond_6

    .line 162
    .line 163
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 164
    .line 165
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:I

    .line 166
    .line 167
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 168
    .line 169
    .line 170
    const-string p1, "PROP:SETELEMENTSUPER"

    .line 171
    .line 172
    const-string p2, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;"

    .line 173
    .line 174
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :cond_6
    if-eqz v1, :cond_7

    .line 179
    .line 180
    const-string p1, "PROP:SETINDEX"

    .line 181
    .line 182
    const-string p2, "(Ljava/lang/Object;DLjava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 183
    .line 184
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_7
    const-string p1, "PROP:SETELEMENT"

    .line 189
    .line 190
    const-string p2, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 191
    .line 192
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method private visitSetName(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 20
    .line 21
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 27
    .line 28
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string p2, "NAME:SET:"

    .line 36
    .line 37
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string p2, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 48
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private visitSetProp(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 1

    .line 1
    invoke-direct {p0, p3, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    const/16 v0, 0x99

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 13
    .line 14
    const/16 v0, 0x59

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p2, p3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finishGetPropGeneration(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 30
    .line 31
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 37
    .line 38
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 41
    .line 42
    .line 43
    const/16 p1, 0x1f

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p2, p1, v0}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/4 p2, 0x1

    .line 51
    if-ne p1, p2, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 54
    .line 55
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:I

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string p2, "PROP:SETSUPER:"

    .line 65
    .line 66
    invoke-static {p2, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string p2, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;"

    .line 71
    .line 72
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_1
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string p2, "PROP:SET:"

    .line 81
    .line 82
    invoke-static {p2, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string p2, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 87
    .line 88
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method private visitSetVar(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 19
    .line 20
    .line 21
    const/16 p2, 0x8

    .line 22
    .line 23
    const/4 v1, -0x1

    .line 24
    invoke-virtual {p1, p2, v1}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 p2, 0x1

    .line 29
    if-eq p1, v1, :cond_1

    .line 30
    .line 31
    move p1, p2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[I

    .line 35
    .line 36
    aget v1, v1, v0

    .line 37
    .line 38
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 39
    .line 40
    iget-object v2, v2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    .line 41
    .line 42
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarConst()[Z

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    aget-boolean v2, v2, v0

    .line 47
    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    if-nez p3, :cond_c

    .line 51
    .line 52
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    const/16 p1, 0x58

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    const/16 p1, 0x57

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varIsDirectCallParameter(I)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const/16 v3, 0x39

    .line 73
    .line 74
    const/16 v4, 0x47

    .line 75
    .line 76
    const/16 v5, 0x5c

    .line 77
    .line 78
    if-eqz v2, :cond_7

    .line 79
    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    if-eqz p3, :cond_4

    .line 83
    .line 84
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 85
    .line 86
    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 87
    .line 88
    .line 89
    :cond_4
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 95
    .line 96
    const-string p3, "TYPE"

    .line 97
    .line 98
    const-string v0, "Ljava/lang/Class;"

    .line 99
    .line 100
    const-string v2, "java/lang/Void"

    .line 101
    .line 102
    const/16 v5, 0xb2

    .line 103
    .line 104
    invoke-virtual {p1, v2, p3, v5, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 108
    .line 109
    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 114
    .line 115
    invoke-virtual {p3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 120
    .line 121
    const/16 v2, 0xa5

    .line 122
    .line 123
    invoke-virtual {v0, v2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 127
    .line 128
    iget v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 129
    .line 130
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    .line 131
    .line 132
    .line 133
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 134
    .line 135
    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 136
    .line 137
    .line 138
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 139
    .line 140
    const/16 v5, 0xa7

    .line 141
    .line 142
    invoke-virtual {v2, v5, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 146
    .line 147
    invoke-virtual {v2, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(II)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 151
    .line 152
    add-int/2addr v1, p2

    .line 153
    invoke-virtual {p1, v4, v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    .line 154
    .line 155
    .line 156
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 157
    .line 158
    invoke-virtual {p0, p3}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_5
    if-eqz p3, :cond_6

    .line 163
    .line 164
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 165
    .line 166
    const/16 p2, 0x59

    .line 167
    .line 168
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 169
    .line 170
    .line 171
    :cond_6
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 172
    .line 173
    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_7
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 178
    .line 179
    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    if-eqz p1, :cond_a

    .line 184
    .line 185
    if-eqz p2, :cond_8

    .line 186
    .line 187
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 188
    .line 189
    invoke-virtual {p1, v4, v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    .line 190
    .line 191
    .line 192
    if-eqz p3, :cond_c

    .line 193
    .line 194
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 195
    .line 196
    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_8
    if-eqz p3, :cond_9

    .line 201
    .line 202
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 203
    .line 204
    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 205
    .line 206
    .line 207
    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    .line 208
    .line 209
    .line 210
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 211
    .line 212
    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :cond_a
    if-eqz p2, :cond_b

    .line 217
    .line 218
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 219
    .line 220
    .line 221
    :cond_b
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 222
    .line 223
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 224
    .line 225
    .line 226
    if-eqz p3, :cond_c

    .line 227
    .line 228
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 229
    .line 230
    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 231
    .line 232
    .line 233
    :cond_c
    return-void
.end method

.method private visitSpecialCall(Lorg/mozilla/javascript/Node;IILorg/mozilla/javascript/Node;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x1e

    .line 9
    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, p4, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0, p4, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateFunctionAndThisObj(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->pushThisFromLastScriptable()V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1, p4, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCallArgArray(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    .line 28
    .line 29
    .line 30
    if-ne p2, v0, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 33
    .line 34
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 40
    .line 41
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 47
    .line 48
    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 49
    .line 50
    .line 51
    const-string p1, "newObjectSpecial"

    .line 52
    .line 53
    const-string p2, "(Lorg/mozilla/javascript/Context;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;"

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    const/4 p2, 0x1

    .line 61
    if-ne p1, p2, :cond_2

    .line 62
    .line 63
    move v1, p2

    .line 64
    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 65
    .line 66
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 72
    .line 73
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:I

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 79
    .line 80
    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 84
    .line 85
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getSourceName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 90
    .line 91
    if-nez p1, :cond_3

    .line 92
    .line 93
    const-string p1, ""

    .line 94
    .line 95
    :cond_3
    invoke-virtual {p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 99
    .line 100
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsLineNumber:I

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Z)V

    .line 108
    .line 109
    .line 110
    const-string p1, "callSpecial"

    .line 111
    .line 112
    const-string p2, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ILjava/lang/String;IZ)Ljava/lang/Object;"

    .line 113
    .line 114
    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method private visitStandardCall(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/16 v4, 0x2b

    .line 12
    .line 13
    if-ne v3, v4, :cond_12

    .line 14
    .line 15
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/16 v5, 0x1e

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    invoke-virtual {v1, v5, v6}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    const/4 v7, 0x1

    .line 31
    if-ne v5, v7, :cond_0

    .line 32
    .line 33
    move v5, v7

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v5, v6

    .line 36
    :goto_0
    const/16 v8, 0x1f

    .line 37
    .line 38
    invoke-virtual {v1, v8, v6}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    const-string v9, "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 43
    .line 44
    const-string v10, "call2"

    .line 45
    .line 46
    const-string v12, "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 47
    .line 48
    const-string v13, "call1"

    .line 49
    .line 50
    const-string v14, "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 51
    .line 52
    const-string v15, "call0"

    .line 53
    .line 54
    const-string v16, "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 55
    .line 56
    const-string v17, "callN"

    .line 57
    .line 58
    const/16 v18, 0x0

    .line 59
    .line 60
    if-ne v8, v7, :cond_4

    .line 61
    .line 62
    invoke-static {v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->countArguments(Lorg/mozilla/javascript/Node;)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateFunctionAndThisObj(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 67
    .line 68
    .line 69
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 70
    .line 71
    iget v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 72
    .line 73
    invoke-virtual {v2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 74
    .line 75
    .line 76
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 77
    .line 78
    const-string v5, "discardLastStoredScriptable"

    .line 79
    .line 80
    const-string v8, "(Lorg/mozilla/javascript/Context;)V"

    .line 81
    .line 82
    const-string v6, "org/mozilla/javascript/ScriptRuntime"

    .line 83
    .line 84
    const/16 v11, 0xb8

    .line 85
    .line 86
    invoke-virtual {v2, v6, v5, v11, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 90
    .line 91
    iget v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:I

    .line 92
    .line 93
    invoke-virtual {v2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 94
    .line 95
    .line 96
    if-nez v4, :cond_1

    .line 97
    .line 98
    move-object v9, v14

    .line 99
    move-object v10, v15

    .line 100
    goto/16 :goto_9

    .line 101
    .line 102
    :cond_1
    if-ne v4, v7, :cond_2

    .line 103
    .line 104
    invoke-direct {v0, v3, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_7

    .line 108
    .line 109
    :cond_2
    const/4 v2, 0x2

    .line 110
    if-ne v4, v2, :cond_3

    .line 111
    .line 112
    invoke-direct {v0, v3, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_9

    .line 123
    .line 124
    :cond_3
    const/4 v2, 0x0

    .line 125
    invoke-direct {v0, v1, v3, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCallArgArray(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_8

    .line 129
    .line 130
    :cond_4
    const/16 v6, 0x2c

    .line 131
    .line 132
    if-nez v3, :cond_b

    .line 133
    .line 134
    if-ne v4, v6, :cond_6

    .line 135
    .line 136
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 141
    .line 142
    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    if-eqz v5, :cond_5

    .line 146
    .line 147
    const-string v1, "callName0Optional"

    .line 148
    .line 149
    :goto_1
    move-object v10, v1

    .line 150
    goto :goto_2

    .line 151
    :cond_5
    const-string v1, "callName0"

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :goto_2
    const-string v9, "(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 155
    .line 156
    goto/16 :goto_9

    .line 157
    .line 158
    :cond_6
    const/16 v3, 0x21

    .line 159
    .line 160
    if-ne v4, v3, :cond_8

    .line 161
    .line 162
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 178
    .line 179
    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    if-eqz v5, :cond_7

    .line 183
    .line 184
    const-string v1, "callProp0Optional"

    .line 185
    .line 186
    :goto_3
    move-object v10, v1

    .line 187
    goto :goto_4

    .line 188
    :cond_7
    const-string v1, "callProp0"

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :goto_4
    const-string v9, "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 192
    .line 193
    goto/16 :goto_9

    .line 194
    .line 195
    :cond_8
    const/16 v3, 0x22

    .line 196
    .line 197
    if-eq v4, v3, :cond_a

    .line 198
    .line 199
    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateFunctionAndThisObj(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 200
    .line 201
    .line 202
    invoke-direct {v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->pushThisFromLastScriptable()V

    .line 203
    .line 204
    .line 205
    if-eqz v5, :cond_9

    .line 206
    .line 207
    const-string v1, "call0Optional"

    .line 208
    .line 209
    move-object v10, v1

    .line 210
    goto :goto_5

    .line 211
    :cond_9
    move-object v10, v15

    .line 212
    :goto_5
    move-object v9, v14

    .line 213
    goto/16 :goto_9

    .line 214
    .line 215
    :cond_a
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    throw v0

    .line 220
    :cond_b
    const-string v11, "Ljava/lang/Object;"

    .line 221
    .line 222
    const-string v14, "instance"

    .line 223
    .line 224
    const-string v15, "org/mozilla/javascript/Undefined"

    .line 225
    .line 226
    const-string v8, "(Ljava/lang/Object;)Z"

    .line 227
    .line 228
    const-string v7, "isNullOrUndefined"

    .line 229
    .line 230
    move/from16 v19, v5

    .line 231
    .line 232
    const/16 v5, 0x59

    .line 233
    .line 234
    if-ne v4, v6, :cond_d

    .line 235
    .line 236
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    if-eqz v19, :cond_c

    .line 241
    .line 242
    iget-object v4, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 243
    .line 244
    iget v6, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 245
    .line 246
    invoke-virtual {v4, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 247
    .line 248
    .line 249
    iget-object v4, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 250
    .line 251
    iget v6, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 252
    .line 253
    invoke-virtual {v4, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 254
    .line 255
    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string v6, "NAME:GETWITHTHISOPTIONAL:"

    .line 259
    .line 260
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    const-string v4, "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;"

    .line 271
    .line 272
    invoke-direct {v0, v2, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 276
    .line 277
    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 282
    .line 283
    .line 284
    move-result-object v18

    .line 285
    iget-object v4, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 286
    .line 287
    invoke-virtual {v4}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    iget-object v6, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 292
    .line 293
    invoke-virtual {v6, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 294
    .line 295
    .line 296
    invoke-direct {v0, v7, v8}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 300
    .line 301
    const/16 v6, 0x99

    .line 302
    .line 303
    invoke-virtual {v5, v6, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 304
    .line 305
    .line 306
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 307
    .line 308
    const/16 v6, 0x57

    .line 309
    .line 310
    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 311
    .line 312
    .line 313
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 314
    .line 315
    const/16 v6, 0xb2

    .line 316
    .line 317
    invoke-virtual {v5, v15, v14, v6, v11}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 318
    .line 319
    .line 320
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 321
    .line 322
    const/16 v6, 0xa7

    .line 323
    .line 324
    invoke-virtual {v5, v6, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 325
    .line 326
    .line 327
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 328
    .line 329
    invoke-virtual {v2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 330
    .line 331
    .line 332
    invoke-direct {v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->pushThisFromLastScriptable()V

    .line 333
    .line 334
    .line 335
    const/4 v4, 0x0

    .line 336
    invoke-direct {v0, v1, v3, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCallArgArray(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_8

    .line 340
    .line 341
    :cond_c
    const/4 v4, 0x0

    .line 342
    invoke-direct {v0, v1, v3, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCallArgArray(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    .line 343
    .line 344
    .line 345
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 346
    .line 347
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    const-string v1, "callName"

    .line 351
    .line 352
    const-string v2, "([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 353
    .line 354
    move-object v10, v1

    .line 355
    move-object v9, v2

    .line 356
    goto/16 :goto_9

    .line 357
    .line 358
    :cond_d
    invoke-static {v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->countArguments(Lorg/mozilla/javascript/Node;)I

    .line 359
    .line 360
    .line 361
    move-result v4

    .line 362
    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateFunctionAndThisObj(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 363
    .line 364
    .line 365
    if-eqz v19, :cond_e

    .line 366
    .line 367
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 368
    .line 369
    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 374
    .line 375
    .line 376
    move-result-object v18

    .line 377
    iget-object v6, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 378
    .line 379
    invoke-virtual {v6}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 380
    .line 381
    .line 382
    move-result v6

    .line 383
    move-object/from16 v19, v9

    .line 384
    .line 385
    iget-object v9, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 386
    .line 387
    invoke-virtual {v9, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 388
    .line 389
    .line 390
    invoke-direct {v0, v7, v8}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 394
    .line 395
    const/16 v7, 0x99

    .line 396
    .line 397
    invoke-virtual {v5, v7, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 398
    .line 399
    .line 400
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 401
    .line 402
    const/16 v7, 0x57

    .line 403
    .line 404
    invoke-virtual {v5, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 405
    .line 406
    .line 407
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 408
    .line 409
    const/16 v7, 0xb2

    .line 410
    .line 411
    invoke-virtual {v5, v15, v14, v7, v11}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 412
    .line 413
    .line 414
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 415
    .line 416
    const/16 v7, 0xa7

    .line 417
    .line 418
    invoke-virtual {v5, v7, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 419
    .line 420
    .line 421
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 422
    .line 423
    invoke-virtual {v2, v6}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 424
    .line 425
    .line 426
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 427
    .line 428
    const/16 v5, 0xc0

    .line 429
    .line 430
    const-string v6, "org/mozilla/javascript/Callable"

    .line 431
    .line 432
    invoke-virtual {v2, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 433
    .line 434
    .line 435
    goto :goto_6

    .line 436
    :cond_e
    move-object/from16 v19, v9

    .line 437
    .line 438
    :goto_6
    invoke-direct {v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->pushThisFromLastScriptable()V

    .line 439
    .line 440
    .line 441
    const/4 v2, 0x1

    .line 442
    if-ne v4, v2, :cond_f

    .line 443
    .line 444
    invoke-direct {v0, v3, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 445
    .line 446
    .line 447
    :goto_7
    move-object v9, v12

    .line 448
    move-object v10, v13

    .line 449
    goto :goto_9

    .line 450
    :cond_f
    const/4 v2, 0x2

    .line 451
    if-ne v4, v2, :cond_10

    .line 452
    .line 453
    invoke-direct {v0, v3, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 461
    .line 462
    .line 463
    move-object/from16 v9, v19

    .line 464
    .line 465
    goto :goto_9

    .line 466
    :cond_10
    const/4 v2, 0x0

    .line 467
    invoke-direct {v0, v1, v3, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCallArgArray(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    .line 468
    .line 469
    .line 470
    :goto_8
    move-object/from16 v9, v16

    .line 471
    .line 472
    move-object/from16 v10, v17

    .line 473
    .line 474
    :goto_9
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 475
    .line 476
    iget v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 477
    .line 478
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 479
    .line 480
    .line 481
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 482
    .line 483
    iget v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 484
    .line 485
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 486
    .line 487
    .line 488
    invoke-direct {v0, v10, v9}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    if-eqz v18, :cond_11

    .line 492
    .line 493
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 494
    .line 495
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 500
    .line 501
    .line 502
    :cond_11
    return-void

    .line 503
    :cond_12
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    throw v0
.end method

.method private visitStandardNew(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1e

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 17
    .line 18
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 19
    .line 20
    invoke-virtual {p2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 24
    .line 25
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 26
    .line 27
    invoke-virtual {p2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 28
    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    invoke-direct {p0, p1, v0, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCallArgArray(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    .line 32
    .line 33
    .line 34
    const-string p1, "newObject"

    .line 35
    .line 36
    const-string p2, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    .line 37
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    throw p0
.end method

.method private visitStrictSetName(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 20
    .line 21
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 27
    .line 28
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string p2, "NAME:SETSTRICT:"

    .line 36
    .line 37
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string p2, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 48
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private visitSuperIncDec(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 9
    .line 10
    const/16 v2, 0x59

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;"

    .line 20
    .line 21
    const/16 v3, 0x27

    .line 22
    .line 23
    const/16 v4, 0x21

    .line 24
    .line 25
    if-eq v1, v4, :cond_1

    .line 26
    .line 27
    if-eq v1, v3, :cond_0

    .line 28
    .line 29
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 41
    .line 42
    iget v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 43
    .line 44
    invoke-virtual {v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 48
    .line 49
    iget v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 50
    .line 51
    invoke-virtual {v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 55
    .line 56
    iget v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:I

    .line 57
    .line 58
    invoke-virtual {v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 59
    .line 60
    .line 61
    const-string v1, "PROP:GETELEMENTSUPER"

    .line 62
    .line 63
    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 68
    .line 69
    iget v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 70
    .line 71
    invoke-virtual {v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 75
    .line 76
    iget v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 77
    .line 78
    invoke-virtual {v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 82
    .line 83
    iget v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:I

    .line 84
    .line 85
    invoke-virtual {v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 89
    .line 90
    const/4 v5, 0x0

    .line 91
    invoke-virtual {v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const-string v5, "PROP:GETSUPER:"

    .line 107
    .line 108
    invoke-static {v5, v1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const-string v5, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Z)Ljava/lang/Object;"

    .line 113
    .line 114
    invoke-direct {p0, v1, v5}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :goto_0
    and-int/lit8 v1, p3, 0x2

    .line 118
    .line 119
    const/16 v5, 0x57

    .line 120
    .line 121
    const/16 v6, 0x5f

    .line 122
    .line 123
    if-eqz v1, :cond_2

    .line 124
    .line 125
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 126
    .line 127
    invoke-virtual {v7, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 128
    .line 129
    .line 130
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 131
    .line 132
    const/16 v8, 0x5c

    .line 133
    .line 134
    invoke-virtual {v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 135
    .line 136
    .line 137
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 138
    .line 139
    invoke-virtual {v7, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 140
    .line 141
    .line 142
    :cond_2
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToDouble()V

    .line 143
    .line 144
    .line 145
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 146
    .line 147
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 148
    .line 149
    invoke-virtual {v7, v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    .line 150
    .line 151
    .line 152
    and-int/lit8 p3, p3, 0x1

    .line 153
    .line 154
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 155
    .line 156
    if-nez p3, :cond_3

    .line 157
    .line 158
    const/16 p3, 0x63

    .line 159
    .line 160
    invoke-virtual {v7, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_3
    const/16 p3, 0x67

    .line 165
    .line 166
    invoke-virtual {v7, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 167
    .line 168
    .line 169
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    .line 173
    .line 174
    .line 175
    move-result p3

    .line 176
    if-eq p3, v4, :cond_5

    .line 177
    .line 178
    if-eq p3, v3, :cond_4

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_4
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 189
    .line 190
    invoke-virtual {p1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 194
    .line 195
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 196
    .line 197
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 201
    .line 202
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 203
    .line 204
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 208
    .line 209
    iget p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:I

    .line 210
    .line 211
    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 212
    .line 213
    .line 214
    const-string p1, "PROP:SETELEMENTSUPER"

    .line 215
    .line 216
    const-string p2, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;"

    .line 217
    .line 218
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_5
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 223
    .line 224
    iget p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 225
    .line 226
    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 227
    .line 228
    .line 229
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 230
    .line 231
    iget p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 232
    .line 233
    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 234
    .line 235
    .line 236
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 237
    .line 238
    iget p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:I

    .line 239
    .line 240
    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    const-string p2, "PROP:SETSUPER:"

    .line 256
    .line 257
    invoke-static {p2, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-direct {p0, p1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :goto_2
    if-eqz v1, :cond_6

    .line 265
    .line 266
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 267
    .line 268
    invoke-virtual {p0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 269
    .line 270
    .line 271
    :cond_6
    return-void
.end method

.method private visitSwitch(Lorg/mozilla/javascript/ast/Jump;Lorg/mozilla/javascript/Node;)V
    .locals 2

    .line 1
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Lorg/mozilla/javascript/ast/Jump;

    .line 18
    .line 19
    :goto_0
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/16 v1, 0x80

    .line 26
    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p0, v0, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 39
    .line 40
    .line 41
    const-string v0, "MATH:SHALLOWEQ"

    .line 42
    .line 43
    const-string v1, "(Ljava/lang/Object;Ljava/lang/Object;)Z"

    .line 44
    .line 45
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDynamicInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p2, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 49
    .line 50
    const/16 v1, 0x9a

    .line 51
    .line 52
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addGoto(Lorg/mozilla/javascript/Node;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    check-cast p2, Lorg/mozilla/javascript/ast/Jump;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    throw p0

    .line 67
    :cond_1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->releaseWordLocal(I)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private visitTemplateLiteral(Lorg/mozilla/javascript/Node;)V
    .locals 5

    .line 1
    const/16 v0, 0x1b

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 8
    .line 9
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 15
    .line 16
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 22
    .line 23
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 24
    .line 25
    iget-object v2, v1, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/optimizer/Codegen;->getTemplateLiteralName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v3, "[Ljava/lang/Object;"

    .line 34
    .line 35
    const/16 v4, 0xb2

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1, v4, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 46
    .line 47
    const-string p1, "getTemplateLiteralCallSite"

    .line 48
    .line 49
    const-string v0, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Lorg/mozilla/javascript/Scriptable;"

    .line 50
    .line 51
    const-string v1, "org/mozilla/javascript/ScriptRuntime"

    .line 52
    .line 53
    const/16 v2, 0xb8

    .line 54
    .line 55
    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private visitTryCatchFinally(Lorg/mozilla/javascript/ast/Jump;Lorg/mozilla/javascript/Node;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct {v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 10
    .line 11
    iget v4, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 12
    .line 13
    invoke-virtual {v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 14
    .line 15
    .line 16
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 19
    .line 20
    .line 21
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 22
    .line 23
    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-virtual {v3, v6, v4}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(II)V

    .line 31
    .line 32
    .line 33
    iget-object v3, v1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 34
    .line 35
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    const/4 v5, 0x5

    .line 40
    new-array v8, v5, [I

    .line 41
    .line 42
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->exceptionManager:Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;

    .line 43
    .line 44
    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->pushExceptionInfo(Lorg/mozilla/javascript/ast/Jump;)V

    .line 45
    .line 46
    .line 47
    const/16 v9, 0xd

    .line 48
    .line 49
    const/4 v10, 0x3

    .line 50
    const/4 v11, 0x2

    .line 51
    const/4 v12, 0x1

    .line 52
    if-eqz v3, :cond_0

    .line 53
    .line 54
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 55
    .line 56
    invoke-virtual {v5}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    aput v5, v8, v4

    .line 61
    .line 62
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 63
    .line 64
    invoke-virtual {v5}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    aput v5, v8, v12

    .line 69
    .line 70
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 71
    .line 72
    invoke-virtual {v5}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    aput v5, v8, v11

    .line 77
    .line 78
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    if-eqz v5, :cond_0

    .line 83
    .line 84
    invoke-virtual {v5, v9}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_0

    .line 89
    .line 90
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 91
    .line 92
    invoke-virtual {v5}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    aput v5, v8, v10

    .line 97
    .line 98
    :cond_0
    const/4 v13, 0x4

    .line 99
    if-eqz v7, :cond_1

    .line 100
    .line 101
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 102
    .line 103
    invoke-virtual {v5}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    aput v5, v8, v13

    .line 108
    .line 109
    :cond_1
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->exceptionManager:Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;

    .line 110
    .line 111
    invoke-virtual {v5, v8, v6}, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->setHandlers([II)V

    .line 112
    .line 113
    .line 114
    iget-boolean v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 115
    .line 116
    if-eqz v5, :cond_3

    .line 117
    .line 118
    if-eqz v7, :cond_3

    .line 119
    .line 120
    new-instance v5, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;

    .line 121
    .line 122
    invoke-direct {v5}, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;-><init>()V

    .line 123
    .line 124
    .line 125
    iget-object v14, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finallys:Ljava/util/Map;

    .line 126
    .line 127
    if-nez v14, :cond_2

    .line 128
    .line 129
    new-instance v14, Ljava/util/HashMap;

    .line 130
    .line 131
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 132
    .line 133
    .line 134
    iput-object v14, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finallys:Ljava/util/Map;

    .line 135
    .line 136
    :cond_2
    iget-object v14, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finallys:Ljava/util/Map;

    .line 137
    .line 138
    invoke-interface {v14, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    iget-object v14, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finallys:Ljava/util/Map;

    .line 142
    .line 143
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 144
    .line 145
    .line 146
    move-result-object v15

    .line 147
    invoke-interface {v14, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    :cond_3
    move-object/from16 v5, p2

    .line 151
    .line 152
    :goto_0
    if-eqz v5, :cond_5

    .line 153
    .line 154
    if-ne v5, v3, :cond_4

    .line 155
    .line 156
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    .line 157
    .line 158
    .line 159
    move-result v14

    .line 160
    iget-object v15, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->exceptionManager:Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;

    .line 161
    .line 162
    invoke-virtual {v15, v4, v14}, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->removeHandler(II)I

    .line 163
    .line 164
    .line 165
    iget-object v15, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->exceptionManager:Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;

    .line 166
    .line 167
    invoke-virtual {v15, v12, v14}, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->removeHandler(II)I

    .line 168
    .line 169
    .line 170
    iget-object v15, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->exceptionManager:Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;

    .line 171
    .line 172
    invoke-virtual {v15, v11, v14}, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->removeHandler(II)I

    .line 173
    .line 174
    .line 175
    iget-object v15, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->exceptionManager:Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;

    .line 176
    .line 177
    invoke-virtual {v15, v10, v14}, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->removeHandler(II)I

    .line 178
    .line 179
    .line 180
    :cond_4
    invoke-direct {v0, v5}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateStatement(Lorg/mozilla/javascript/Node;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    goto :goto_0

    .line 188
    :cond_5
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 189
    .line 190
    invoke-virtual {v5}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 191
    .line 192
    .line 193
    move-result v14

    .line 194
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 195
    .line 196
    const/16 v15, 0xa7

    .line 197
    .line 198
    invoke-virtual {v5, v15, v14}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 199
    .line 200
    .line 201
    invoke-static {v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getLocalBlockRegister(Lorg/mozilla/javascript/Node;)I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v3, :cond_7

    .line 206
    .line 207
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->labelId()I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    move v5, v4

    .line 212
    move v4, v1

    .line 213
    const/4 v1, 0x0

    .line 214
    aget v5, v8, v5

    .line 215
    .line 216
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCatchBlock(ISIII)V

    .line 217
    .line 218
    .line 219
    const/4 v1, 0x1

    .line 220
    aget v5, v8, v12

    .line 221
    .line 222
    move-object/from16 v0, p0

    .line 223
    .line 224
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCatchBlock(ISIII)V

    .line 225
    .line 226
    .line 227
    const/4 v1, 0x2

    .line 228
    aget v5, v8, v11

    .line 229
    .line 230
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCatchBlock(ISIII)V

    .line 231
    .line 232
    .line 233
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    if-eqz v0, :cond_6

    .line 238
    .line 239
    invoke-virtual {v0, v9}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_6

    .line 244
    .line 245
    const/4 v1, 0x3

    .line 246
    aget v5, v8, v10

    .line 247
    .line 248
    move-object/from16 v0, p0

    .line 249
    .line 250
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCatchBlock(ISIII)V

    .line 251
    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_6
    move-object/from16 v0, p0

    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_7
    move v4, v1

    .line 258
    :goto_1
    if-eqz v7, :cond_b

    .line 259
    .line 260
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 261
    .line 262
    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 267
    .line 268
    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 273
    .line 274
    iput v12, v5, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 275
    .line 276
    invoke-virtual {v5, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 277
    .line 278
    .line 279
    iget-boolean v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 280
    .line 281
    if-nez v5, :cond_8

    .line 282
    .line 283
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 284
    .line 285
    aget v9, v8, v13

    .line 286
    .line 287
    invoke-virtual {v5, v9}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 288
    .line 289
    .line 290
    :cond_8
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 291
    .line 292
    invoke-virtual {v5, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 293
    .line 294
    .line 295
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 296
    .line 297
    invoke-virtual {v5, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 298
    .line 299
    .line 300
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 301
    .line 302
    iget v9, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 303
    .line 304
    invoke-virtual {v5, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->labelId()I

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    iget-boolean v9, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 312
    .line 313
    if-eqz v9, :cond_9

    .line 314
    .line 315
    invoke-direct {v0, v7}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addGotoWithReturn(Lorg/mozilla/javascript/Node;)V

    .line 316
    .line 317
    .line 318
    goto :goto_2

    .line 319
    :cond_9
    aget v8, v8, v13

    .line 320
    .line 321
    invoke-direct {v0, v7, v8, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inlineFinally(Lorg/mozilla/javascript/Node;II)V

    .line 322
    .line 323
    .line 324
    :goto_2
    iget-object v7, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 325
    .line 326
    invoke-virtual {v7, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 327
    .line 328
    .line 329
    iget-boolean v4, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 330
    .line 331
    if-eqz v4, :cond_a

    .line 332
    .line 333
    iget-object v4, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 334
    .line 335
    const/16 v7, 0xc0

    .line 336
    .line 337
    const-string v8, "java/lang/Throwable"

    .line 338
    .line 339
    invoke-virtual {v4, v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 340
    .line 341
    .line 342
    :cond_a
    iget-object v4, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 343
    .line 344
    const/16 v7, 0xbf

    .line 345
    .line 346
    invoke-virtual {v4, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 347
    .line 348
    .line 349
    iget-object v4, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 350
    .line 351
    invoke-virtual {v4, v3}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 352
    .line 353
    .line 354
    iget-boolean v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 355
    .line 356
    if-eqz v3, :cond_b

    .line 357
    .line 358
    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 359
    .line 360
    const/4 v4, 0x0

    .line 361
    invoke-virtual {v3, v6, v4, v5, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addExceptionHandler(ILjava/lang/String;II)V

    .line 362
    .line 363
    .line 364
    :cond_b
    invoke-direct {v0, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->releaseWordLocal(I)V

    .line 365
    .line 366
    .line 367
    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 368
    .line 369
    invoke-virtual {v1, v14}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 370
    .line 371
    .line 372
    iget-boolean v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 373
    .line 374
    if-nez v1, :cond_c

    .line 375
    .line 376
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->exceptionManager:Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;

    .line 377
    .line 378
    invoke-virtual {v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->popExceptionInfo()V

    .line 379
    .line 380
    .line 381
    :cond_c
    return-void
.end method

.method private visitTypeofname(Lorg/mozilla/javascript/Node;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 6
    .line 7
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ltz v0, :cond_2

    .line 14
    .line 15
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const-string v1, "number"

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varIsDirectCallParameter(I)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const-string v2, "(Ljava/lang/Object;)Ljava/lang/String;"

    .line 36
    .line 37
    const-string/jumbo v3, "typeof"

    .line 38
    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[I

    .line 43
    .line 44
    aget p1, p1, v0

    .line 45
    .line 46
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 52
    .line 53
    const-string v4, "TYPE"

    .line 54
    .line 55
    const-string v5, "Ljava/lang/Class;"

    .line 56
    .line 57
    const-string v6, "java/lang/Void"

    .line 58
    .line 59
    const/16 v7, 0xb2

    .line 60
    .line 61
    invoke-virtual {v0, v6, v4, v7, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 65
    .line 66
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 71
    .line 72
    const/16 v5, 0xa5

    .line 73
    .line 74
    invoke-virtual {v4, v5, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 75
    .line 76
    .line 77
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 78
    .line 79
    iget v5, v4, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:I

    .line 80
    .line 81
    invoke-virtual {v4, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, v3, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 88
    .line 89
    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 94
    .line 95
    const/16 v3, 0xa7

    .line 96
    .line 97
    invoke-virtual {v2, v3, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 101
    .line 102
    invoke-virtual {v2, v0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(II)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 117
    .line 118
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[I

    .line 119
    .line 120
    aget v0, v1, v0

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0, v3, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 130
    .line 131
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:I

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 137
    .line 138
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string/jumbo p1, "typeofName"

    .line 146
    .line 147
    .line 148
    const-string v0, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/String;"

    .line 149
    .line 150
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method


# virtual methods
.method public generateBodyCode()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/mozilla/javascript/optimizer/Codegen;->isGenerator(Lorg/mozilla/javascript/ast/ScriptNode;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 8
    .line 9
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->initBodyGeneration()V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 13
    .line 14
    const/16 v1, 0xa

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 19
    .line 20
    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassSignature:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "("

    .line 23
    .line 24
    const-string v3, "Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;"

    .line 25
    .line 26
    invoke-static {v2, v0, v3}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 31
    .line 32
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 33
    .line 34
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, "_gen"

    .line 49
    .line 50
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v2, v3, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 62
    .line 63
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 64
    .line 65
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 72
    .line 73
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodSignature(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v0, v2, v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 80
    .line 81
    .line 82
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatePrologue()V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 86
    .line 87
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 88
    .line 89
    if-eqz v0, :cond_1

    .line 90
    .line 91
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    :cond_1
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateStatement(Lorg/mozilla/javascript/Node;)V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateEpilogue()V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 102
    .line 103
    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:I

    .line 104
    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 106
    .line 107
    int-to-short v1, v1

    .line 108
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(I)V

    .line 109
    .line 110
    .line 111
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 112
    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateGenerator()V

    .line 116
    .line 117
    .line 118
    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->literals:Ljava/util/ArrayList;

    .line 119
    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    const/4 v0, 0x0

    .line 123
    :goto_1
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->literals:Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-ge v0, v1, :cond_5

    .line 130
    .line 131
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->literals:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Lorg/mozilla/javascript/Node;

    .line 138
    .line 139
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    const/16 v3, 0x47

    .line 144
    .line 145
    if-eq v2, v3, :cond_4

    .line 146
    .line 147
    const/16 v3, 0x48

    .line 148
    .line 149
    if-eq v2, v3, :cond_3

    .line 150
    .line 151
    invoke-static {v2}, Lorg/mozilla/javascript/Token;->typeToName(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v1}, Lorg/mozilla/javascript/Kit;->codeBug(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_3
    add-int/lit8 v2, v0, 0x1

    .line 160
    .line 161
    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateObjectLiteralFactory(Lorg/mozilla/javascript/Node;I)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_4
    add-int/lit8 v2, v0, 0x1

    .line 166
    .line 167
    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateArrayLiteralFactory(Lorg/mozilla/javascript/Node;I)V

    .line 168
    .line 169
    .line 170
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_5
    return-void
.end method
