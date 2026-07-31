.class public final Lorg/mozilla/javascript/Interpreter;
.super Lorg/mozilla/javascript/Icode;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/mozilla/javascript/Evaluator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/Interpreter$CallFrame;,
        Lorg/mozilla/javascript/Interpreter$GeneratorState;,
        Lorg/mozilla/javascript/Interpreter$ContinuationJump;,
        Lorg/mozilla/javascript/Interpreter$NewState;,
        Lorg/mozilla/javascript/Interpreter$ContinueLoop;,
        Lorg/mozilla/javascript/Interpreter$StateContinue;,
        Lorg/mozilla/javascript/Interpreter$NewThrowable;
    }
.end annotation


# static fields
.field private static final EXCEPTION_COST:I = 0x64

.field static final EXCEPTION_HANDLER_SLOT:I = 0x2

.field static final EXCEPTION_LOCAL_SLOT:I = 0x4

.field static final EXCEPTION_SCOPE_SLOT:I = 0x5

.field static final EXCEPTION_SLOT_SIZE:I = 0x6

.field static final EXCEPTION_TRY_END_SLOT:I = 0x1

.field static final EXCEPTION_TRY_START_SLOT:I = 0x0

.field static final EXCEPTION_TYPE_SLOT:I = 0x3

.field private static final INVOCATION_COST:I = 0x64

.field private static final undefined:Ljava/lang/Object;


# instance fields
.field itsData:Lorg/mozilla/javascript/InterpreterData;


# direct methods
.method public static bridge synthetic -$$Nest$smcompareIdata(Lorg/mozilla/javascript/InterpreterData;Lorg/mozilla/javascript/InterpreterData;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/javascript/Interpreter;->compareIdata(Lorg/mozilla/javascript/InterpreterData;Lorg/mozilla/javascript/InterpreterData;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sminitFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/Interpreter;->initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 2
    .line 3
    sput-object v0, Lorg/mozilla/javascript/Interpreter;->undefined:Ljava/lang/Object;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/Icode;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    .line 2
    .line 3
    iget v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 4
    .line 5
    iget p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    .line 6
    .line 7
    sub-int/2addr v1, p1

    .line 8
    add-int/2addr v1, p2

    .line 9
    add-int/2addr v1, v0

    .line 10
    iput v1, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    .line 11
    .line 12
    iget p1, p0, Lorg/mozilla/javascript/Context;->instructionThreshold:I

    .line 13
    .line 14
    if-le v1, p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Context;->observeInstructionCount(I)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private static bytecodeSpan(I)I
    .locals 4

    .line 1
    const/16 v0, -0x54

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq p0, v0, :cond_3

    .line 5
    .line 6
    const/16 v0, -0x53

    .line 7
    .line 8
    if-eq p0, v0, :cond_3

    .line 9
    .line 10
    const/16 v0, -0x49

    .line 11
    .line 12
    if-eq p0, v0, :cond_3

    .line 13
    .line 14
    const/16 v0, -0x48

    .line 15
    .line 16
    if-eq p0, v0, :cond_3

    .line 17
    .line 18
    const/16 v0, -0x3d

    .line 19
    .line 20
    if-eq p0, v0, :cond_3

    .line 21
    .line 22
    const/16 v0, -0x1c

    .line 23
    .line 24
    if-eq p0, v0, :cond_3

    .line 25
    .line 26
    const/16 v0, 0x37

    .line 27
    .line 28
    if-eq p0, v0, :cond_3

    .line 29
    .line 30
    const/16 v0, 0x3e

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    if-eq p0, v0, :cond_2

    .line 34
    .line 35
    const/16 v0, 0x4e

    .line 36
    .line 37
    if-eq p0, v0, :cond_3

    .line 38
    .line 39
    const/16 v0, -0x1a

    .line 40
    .line 41
    const/4 v3, 0x5

    .line 42
    if-eq p0, v0, :cond_1

    .line 43
    .line 44
    const/16 v0, -0x19

    .line 45
    .line 46
    if-eq p0, v0, :cond_1

    .line 47
    .line 48
    if-eq p0, v3, :cond_3

    .line 49
    .line 50
    const/4 v0, 0x6

    .line 51
    if-eq p0, v0, :cond_3

    .line 52
    .line 53
    const/4 v0, 0x7

    .line 54
    if-eq p0, v0, :cond_3

    .line 55
    .line 56
    packed-switch p0, :pswitch_data_0

    .line 57
    .line 58
    .line 59
    packed-switch p0, :pswitch_data_1

    .line 60
    .line 61
    .line 62
    packed-switch p0, :pswitch_data_2

    .line 63
    .line 64
    .line 65
    packed-switch p0, :pswitch_data_3

    .line 66
    .line 67
    .line 68
    packed-switch p0, :pswitch_data_4

    .line 69
    .line 70
    .line 71
    invoke-static {p0}, Lorg/mozilla/javascript/Icode;->validBytecode(I)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_0

    .line 76
    .line 77
    const/4 p0, 0x1

    .line 78
    return p0

    .line 79
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    throw p0

    .line 84
    :pswitch_0
    return v2

    .line 85
    :pswitch_1
    return v1

    .line 86
    :pswitch_2
    return v3

    .line 87
    :pswitch_3
    return v2

    .line 88
    :pswitch_4
    return v1

    .line 89
    :pswitch_5
    return v3

    .line 90
    :pswitch_6
    return v2

    .line 91
    :pswitch_7
    return v1

    .line 92
    :pswitch_8
    return v3

    .line 93
    :pswitch_9
    return v2

    .line 94
    :cond_1
    return v3

    .line 95
    :cond_2
    return v2

    .line 96
    :cond_3
    :pswitch_a
    return v1

    .line 97
    :pswitch_data_0
    .packed-switch -0x46
        :pswitch_a
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :pswitch_data_1
    .packed-switch -0x38
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :pswitch_data_2
    .packed-switch -0x2f
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    :pswitch_data_3
    .packed-switch -0x22
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch -0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public static captureContinuation(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/NativeContinuation;
    .locals 2

    .line 95
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v1, :cond_0

    .line 96
    check-cast v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;

    move-result-object p0

    return-object p0

    .line 97
    :cond_0
    const-string p0, "Interpreter frames not found"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;
    .locals 6

    .line 1
    new-instance v0, Lorg/mozilla/javascript/NativeContinuation;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/mozilla/javascript/NativeContinuation;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    .line 11
    .line 12
    .line 13
    move-object p0, p1

    .line 14
    move-object v1, p0

    .line 15
    :goto_0
    const/4 v2, 0x0

    .line 16
    if-eqz p0, :cond_4

    .line 17
    .line 18
    iget-boolean v3, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 19
    .line 20
    if-nez v3, :cond_4

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 24
    .line 25
    iget v3, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 26
    .line 27
    add-int/2addr v3, v1

    .line 28
    :goto_1
    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    .line 29
    .line 30
    array-length v4, v1

    .line 31
    if-eq v3, v4, :cond_0

    .line 32
    .line 33
    aput-object v2, v1, v3

    .line 34
    .line 35
    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    aput v4, v1, v3

    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    iget v3, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    .line 44
    .line 45
    const/16 v4, 0x2b

    .line 46
    .line 47
    if-eq v3, v4, :cond_2

    .line 48
    .line 49
    const/16 v4, -0x55

    .line 50
    .line 51
    if-ne v3, v4, :cond_1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    const/16 v1, 0x1e

    .line 55
    .line 56
    if-eq v3, v1, :cond_3

    .line 57
    .line 58
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_2
    :goto_2
    iget v3, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 63
    .line 64
    aput-object v2, v1, v3

    .line 65
    .line 66
    :cond_3
    :goto_3
    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 67
    .line 68
    move-object v5, v1

    .line 69
    move-object v1, p0

    .line 70
    move-object p0, v5

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    if-eqz p2, :cond_7

    .line 73
    .line 74
    :goto_4
    iget-object p0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 75
    .line 76
    if-eqz p0, :cond_5

    .line 77
    .line 78
    move-object v1, p0

    .line 79
    goto :goto_4

    .line 80
    :cond_5
    iget-boolean p0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->isContinuationsTopFrame:Z

    .line 81
    .line 82
    if-eqz p0, :cond_6

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_6
    const-string p0, "Cannot capture continuation from JavaScript code not called directly by executeScriptWithContinuations or callFunctionWithContinuations"

    .line 86
    .line 87
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v2

    .line 91
    :cond_7
    :goto_5
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/NativeContinuation;->initImplementation(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-object v0
.end method

.method private static captureFrameForGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    iput-object p0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 13
    .line 14
    iput v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    .line 15
    .line 16
    return-object v0
.end method

.method private static compareIdata(Lorg/mozilla/javascript/InterpreterData;Lorg/mozilla/javascript/InterpreterData;)Z
    .locals 0

    .line 1
    if-eq p0, p1, :cond_1

    .line 2
    .line 3
    invoke-static {p0}, Lorg/mozilla/javascript/Interpreter;->getRawSource(Lorg/mozilla/javascript/InterpreterData;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p1}, Lorg/mozilla/javascript/Interpreter;->getRawSource(Lorg/mozilla/javascript/InterpreterData;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method private static doAdd([Ljava/lang/Object;[DILorg/mozilla/javascript/Context;)V
    .locals 11

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    aget-object v1, p0, v0

    .line 4
    .line 5
    aget-object v2, p0, p2

    .line 6
    .line 7
    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v5, "BigInt"

    .line 11
    .line 12
    const-string v6, "msg.cant.convert.to.number"

    .line 13
    .line 14
    const/4 v7, 0x1

    .line 15
    if-ne v1, v3, :cond_1

    .line 16
    .line 17
    aget-wide v0, p1, v0

    .line 18
    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    aget-wide v2, p1, p2

    .line 22
    .line 23
    add-double/2addr v2, v0

    .line 24
    aput-wide v2, p1, p2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    move v8, v7

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    if-ne v2, v3, :cond_8

    .line 30
    .line 31
    aget-wide v8, p1, p2

    .line 32
    .line 33
    move-object v2, v1

    .line 34
    move-wide v0, v8

    .line 35
    move v8, v4

    .line 36
    :goto_0
    instance-of v9, v2, Lorg/mozilla/javascript/Scriptable;

    .line 37
    .line 38
    if-eqz v9, :cond_3

    .line 39
    .line 40
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-nez v8, :cond_2

    .line 45
    .line 46
    move-object v10, v2

    .line 47
    move-object v2, p1

    .line 48
    move-object p1, v10

    .line 49
    :cond_2
    invoke-static {v2, p1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    aput-object p1, p0, p2

    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    instance-of p3, v2, Ljava/lang/CharSequence;

    .line 57
    .line 58
    if-eqz p3, :cond_5

    .line 59
    .line 60
    const/16 p1, 0xa

    .line 61
    .line 62
    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz v8, :cond_4

    .line 67
    .line 68
    new-instance p3, Lorg/mozilla/javascript/ConsString;

    .line 69
    .line 70
    check-cast v2, Ljava/lang/CharSequence;

    .line 71
    .line 72
    invoke-direct {p3, v2, p1}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    aput-object p3, p0, p2

    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    new-instance p3, Lorg/mozilla/javascript/ConsString;

    .line 79
    .line 80
    check-cast v2, Ljava/lang/CharSequence;

    .line 81
    .line 82
    invoke-direct {p3, p1, v2}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    aput-object p3, p0, p2

    .line 86
    .line 87
    return-void

    .line 88
    :cond_5
    instance-of p3, v2, Ljava/lang/Number;

    .line 89
    .line 90
    if-eqz p3, :cond_6

    .line 91
    .line 92
    check-cast v2, Ljava/lang/Number;

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_6
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumeric(Ljava/lang/Object;)Ljava/lang/Number;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    :goto_1
    instance-of p3, v2, Ljava/math/BigInteger;

    .line 100
    .line 101
    if-nez p3, :cond_7

    .line 102
    .line 103
    aput-object v3, p0, p2

    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 106
    .line 107
    .line 108
    move-result-wide v2

    .line 109
    add-double/2addr v2, v0

    .line 110
    aput-wide v2, p1, p2

    .line 111
    .line 112
    return-void

    .line 113
    :cond_7
    new-array p0, v7, [Ljava/lang/Object;

    .line 114
    .line 115
    aput-object v5, p0, v4

    .line 116
    .line 117
    invoke-static {v6, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    throw p0

    .line 122
    :cond_8
    instance-of v0, v2, Lorg/mozilla/javascript/Scriptable;

    .line 123
    .line 124
    if-nez v0, :cond_11

    .line 125
    .line 126
    instance-of v0, v1, Lorg/mozilla/javascript/Scriptable;

    .line 127
    .line 128
    if-eqz v0, :cond_9

    .line 129
    .line 130
    goto/16 :goto_4

    .line 131
    .line 132
    :cond_9
    instance-of p3, v2, Ljava/lang/CharSequence;

    .line 133
    .line 134
    if-eqz p3, :cond_b

    .line 135
    .line 136
    instance-of p1, v1, Ljava/lang/CharSequence;

    .line 137
    .line 138
    if-eqz p1, :cond_a

    .line 139
    .line 140
    new-instance p1, Lorg/mozilla/javascript/ConsString;

    .line 141
    .line 142
    check-cast v2, Ljava/lang/CharSequence;

    .line 143
    .line 144
    check-cast v1, Ljava/lang/CharSequence;

    .line 145
    .line 146
    invoke-direct {p1, v2, v1}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    aput-object p1, p0, p2

    .line 150
    .line 151
    return-void

    .line 152
    :cond_a
    new-instance p1, Lorg/mozilla/javascript/ConsString;

    .line 153
    .line 154
    check-cast v2, Ljava/lang/CharSequence;

    .line 155
    .line 156
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    invoke-direct {p1, v2, p3}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    aput-object p1, p0, p2

    .line 164
    .line 165
    return-void

    .line 166
    :cond_b
    instance-of p3, v1, Ljava/lang/CharSequence;

    .line 167
    .line 168
    if-eqz p3, :cond_c

    .line 169
    .line 170
    new-instance p1, Lorg/mozilla/javascript/ConsString;

    .line 171
    .line 172
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    check-cast v1, Ljava/lang/CharSequence;

    .line 177
    .line 178
    invoke-direct {p1, p3, v1}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    aput-object p1, p0, p2

    .line 182
    .line 183
    return-void

    .line 184
    :cond_c
    instance-of p3, v2, Ljava/lang/Number;

    .line 185
    .line 186
    if-eqz p3, :cond_d

    .line 187
    .line 188
    check-cast v2, Ljava/lang/Number;

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_d
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumeric(Ljava/lang/Object;)Ljava/lang/Number;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    :goto_2
    instance-of p3, v1, Ljava/lang/Number;

    .line 196
    .line 197
    if-eqz p3, :cond_e

    .line 198
    .line 199
    check-cast v1, Ljava/lang/Number;

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_e
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumeric(Ljava/lang/Object;)Ljava/lang/Number;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    :goto_3
    instance-of p3, v2, Ljava/math/BigInteger;

    .line 207
    .line 208
    if-eqz p3, :cond_f

    .line 209
    .line 210
    instance-of v0, v1, Ljava/math/BigInteger;

    .line 211
    .line 212
    if-eqz v0, :cond_f

    .line 213
    .line 214
    check-cast v2, Ljava/math/BigInteger;

    .line 215
    .line 216
    check-cast v1, Ljava/math/BigInteger;

    .line 217
    .line 218
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    aput-object p1, p0, p2

    .line 223
    .line 224
    return-void

    .line 225
    :cond_f
    if-nez p3, :cond_10

    .line 226
    .line 227
    instance-of p3, v1, Ljava/math/BigInteger;

    .line 228
    .line 229
    if-nez p3, :cond_10

    .line 230
    .line 231
    aput-object v3, p0, p2

    .line 232
    .line 233
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 234
    .line 235
    .line 236
    move-result-wide v2

    .line 237
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    .line 238
    .line 239
    .line 240
    move-result-wide v0

    .line 241
    add-double/2addr v0, v2

    .line 242
    aput-wide v0, p1, p2

    .line 243
    .line 244
    return-void

    .line 245
    :cond_10
    new-array p0, v7, [Ljava/lang/Object;

    .line 246
    .line 247
    aput-object v5, p0, v4

    .line 248
    .line 249
    invoke-static {v6, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    throw p0

    .line 254
    :cond_11
    :goto_4
    invoke-static {v2, v1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    aput-object p1, p0, p2

    .line 259
    .line 260
    return-void
.end method

.method private static doArithmetic(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .locals 2

    .line 1
    add-int/lit8 v0, p4, -0x1

    .line 2
    .line 3
    invoke-static {p0, v0}, Lorg/mozilla/javascript/Interpreter;->stack_numeric(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Ljava/lang/Number;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0, p4}, Lorg/mozilla/javascript/Interpreter;->stack_numeric(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Ljava/lang/Number;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    add-int/lit8 p4, p4, -0x1

    .line 12
    .line 13
    const/16 v1, 0x51

    .line 14
    .line 15
    if-eq p1, v1, :cond_0

    .line 16
    .line 17
    packed-switch p1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    goto :goto_0

    .line 22
    :pswitch_0
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->remainder(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    :pswitch_1
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->divide(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    goto :goto_0

    .line 32
    :pswitch_2
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->multiply(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :pswitch_3
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->subtract(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->exponentiate(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :goto_0
    instance-of p1, p0, Ljava/math/BigInteger;

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    aput-object p0, p2, p4

    .line 51
    .line 52
    return p4

    .line 53
    :cond_1
    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 54
    .line 55
    aput-object p1, p2, p4

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    .line 58
    .line 59
    .line 60
    move-result-wide p0

    .line 61
    aput-wide p0, p3, p4

    .line 62
    .line 63
    return p4

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static doBitNOT(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I
    .locals 1

    .line 1
    invoke-static {p0, p3}, Lorg/mozilla/javascript/Interpreter;->stack_numeric(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Ljava/lang/Number;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->bitwiseNOT(Ljava/lang/Number;)Ljava/lang/Number;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v0, p0, Ljava/math/BigInteger;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    aput-object p0, p1, p3

    .line 14
    .line 15
    return p3

    .line 16
    :cond_0
    sget-object v0, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 17
    .line 18
    aput-object v0, p1, p3

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    aput-wide p0, p2, p3

    .line 25
    .line 26
    return p3
.end method

.method private static doBitOp(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .locals 2

    .line 1
    add-int/lit8 v0, p4, -0x1

    .line 2
    .line 3
    invoke-static {p0, v0}, Lorg/mozilla/javascript/Interpreter;->stack_numeric(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Ljava/lang/Number;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0, p4}, Lorg/mozilla/javascript/Interpreter;->stack_numeric(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Ljava/lang/Number;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    add-int/lit8 p4, p4, -0x1

    .line 12
    .line 13
    const/16 v1, 0x12

    .line 14
    .line 15
    if-eq p1, v1, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x13

    .line 18
    .line 19
    if-eq p1, v1, :cond_0

    .line 20
    .line 21
    packed-switch p1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    goto :goto_0

    .line 26
    :pswitch_0
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->bitwiseAND(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    goto :goto_0

    .line 31
    :pswitch_1
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->bitwiseXOR(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :pswitch_2
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->bitwiseOR(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->signedRightShift(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->leftShift(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :goto_0
    instance-of p1, p0, Ljava/math/BigInteger;

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    aput-object p0, p2, p4

    .line 55
    .line 56
    return p4

    .line 57
    :cond_2
    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 58
    .line 59
    aput-object p1, p2, p4

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    .line 62
    .line 63
    .line 64
    move-result-wide p0

    .line 65
    aput-wide p0, p3, p4

    .line 66
    .line 67
    return p4

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final doCallByteCode(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;ZIII)Lorg/mozilla/javascript/Interpreter$NewState;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move/from16 v10, p3

    .line 6
    .line 7
    move/from16 v1, p5

    .line 8
    .line 9
    iget-object v2, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget v4, v0, Lorg/mozilla/javascript/Context;->instructionCount:I

    .line 16
    .line 17
    add-int/lit8 v4, v4, 0x64

    .line 18
    .line 19
    iput v4, v0, Lorg/mozilla/javascript/Context;->instructionCount:I

    .line 20
    .line 21
    :cond_0
    add-int/lit8 v4, v1, 0x1

    .line 22
    .line 23
    sub-int v11, p4, v4

    .line 24
    .line 25
    aget-object v4, v2, v11

    .line 26
    .line 27
    check-cast v4, Lorg/mozilla/javascript/Callable;

    .line 28
    .line 29
    add-int/lit8 v5, v11, 0x1

    .line 30
    .line 31
    aget-object v5, v2, v5

    .line 32
    .line 33
    check-cast v5, Lorg/mozilla/javascript/Scriptable;

    .line 34
    .line 35
    instance-of v7, v4, Lorg/mozilla/javascript/BaseFunction;

    .line 36
    .line 37
    if-eqz v7, :cond_1

    .line 38
    .line 39
    move-object v7, v4

    .line 40
    check-cast v7, Lorg/mozilla/javascript/BaseFunction;

    .line 41
    .line 42
    invoke-virtual {v7}, Lorg/mozilla/javascript/BaseFunction;->getHomeObject()Lorg/mozilla/javascript/Scriptable;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v7, 0x0

    .line 48
    :goto_0
    const/16 v9, -0x55

    .line 49
    .line 50
    if-ne v10, v9, :cond_2

    .line 51
    .line 52
    iget-object v5, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    .line 53
    .line 54
    :cond_2
    const/16 v9, 0x4c

    .line 55
    .line 56
    const/4 v12, 0x0

    .line 57
    if-ne v10, v9, :cond_3

    .line 58
    .line 59
    add-int/lit8 v7, v11, 0x2

    .line 60
    .line 61
    invoke-static {v2, v3, v7, v1}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v4, v5, v3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->callRef(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Ref;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    aput-object v0, v2, v11

    .line 70
    .line 71
    new-instance v0, Lorg/mozilla/javascript/Interpreter$ContinueLoop;

    .line 72
    .line 73
    invoke-direct {v0, v6, v11, v1, v12}, Lorg/mozilla/javascript/Interpreter$ContinueLoop;-><init>(Lorg/mozilla/javascript/Interpreter$CallFrame;III)V

    .line 74
    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_3
    iget-object v9, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 78
    .line 79
    iget-boolean v13, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    .line 80
    .line 81
    if-eqz v13, :cond_4

    .line 82
    .line 83
    invoke-static {v9}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    :cond_4
    move-object/from16 v16, v4

    .line 88
    .line 89
    move v4, v1

    .line 90
    move-object v1, v2

    .line 91
    move-object v2, v3

    .line 92
    move-object/from16 v3, v16

    .line 93
    .line 94
    :goto_1
    instance-of v13, v3, Lorg/mozilla/javascript/ArrowFunction;

    .line 95
    .line 96
    if-eqz v13, :cond_5

    .line 97
    .line 98
    check-cast v3, Lorg/mozilla/javascript/ArrowFunction;

    .line 99
    .line 100
    invoke-virtual {v3}, Lorg/mozilla/javascript/ArrowFunction;->getTargetFunction()Lorg/mozilla/javascript/Callable;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ArrowFunction;->getCallThis(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-virtual {v3}, Lorg/mozilla/javascript/ArrowFunction;->getBoundHomeObject()Lorg/mozilla/javascript/Scriptable;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    move-object/from16 v16, v7

    .line 113
    .line 114
    move-object v7, v3

    .line 115
    move-object v3, v5

    .line 116
    move-object/from16 v5, v16

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    instance-of v13, v3, Lorg/mozilla/javascript/LambdaConstructor;

    .line 120
    .line 121
    const/4 v14, 0x2

    .line 122
    if-eqz v13, :cond_7

    .line 123
    .line 124
    :cond_6
    move-object v15, v6

    .line 125
    goto/16 :goto_5

    .line 126
    .line 127
    :cond_7
    instance-of v13, v3, Lorg/mozilla/javascript/LambdaFunction;

    .line 128
    .line 129
    if-eqz v13, :cond_8

    .line 130
    .line 131
    check-cast v3, Lorg/mozilla/javascript/LambdaFunction;

    .line 132
    .line 133
    invoke-virtual {v3}, Lorg/mozilla/javascript/LambdaFunction;->getTarget()Lorg/mozilla/javascript/Callable;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    goto :goto_1

    .line 138
    :cond_8
    instance-of v13, v3, Lorg/mozilla/javascript/BoundFunction;

    .line 139
    .line 140
    if-eqz v13, :cond_a

    .line 141
    .line 142
    check-cast v3, Lorg/mozilla/javascript/BoundFunction;

    .line 143
    .line 144
    invoke-virtual {v3}, Lorg/mozilla/javascript/BoundFunction;->getTargetFunction()Lorg/mozilla/javascript/Callable;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v3, v0, v9}, Lorg/mozilla/javascript/BoundFunction;->getCallThis(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 149
    .line 150
    .line 151
    move-result-object v13

    .line 152
    invoke-virtual {v3}, Lorg/mozilla/javascript/BoundFunction;->getBoundArgs()[Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    array-length v15, v3

    .line 157
    if-lez v15, :cond_9

    .line 158
    .line 159
    add-int v1, v15, v11

    .line 160
    .line 161
    add-int/2addr v1, v14

    .line 162
    add-int/2addr v1, v4

    .line 163
    invoke-virtual {v6, v1}, Lorg/mozilla/javascript/Interpreter$CallFrame;->ensureStackLength(I)[Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    iget-object v2, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    .line 168
    .line 169
    add-int/lit8 v14, v11, 0x2

    .line 170
    .line 171
    add-int v8, v14, v15

    .line 172
    .line 173
    invoke-static {v1, v14, v1, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    .line 175
    .line 176
    invoke-static {v2, v14, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    .line 178
    .line 179
    invoke-static {v3, v12, v1, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    .line 181
    .line 182
    add-int/2addr v4, v15

    .line 183
    :cond_9
    move-object v3, v5

    .line 184
    move-object v5, v13

    .line 185
    goto :goto_1

    .line 186
    :cond_a
    instance-of v8, v3, Lorg/mozilla/javascript/IdFunctionObject;

    .line 187
    .line 188
    if-eqz v8, :cond_f

    .line 189
    .line 190
    move-object v8, v3

    .line 191
    check-cast v8, Lorg/mozilla/javascript/IdFunctionObject;

    .line 192
    .line 193
    invoke-static {v8}, Lorg/mozilla/javascript/BaseFunction;->isApplyOrCall(Lorg/mozilla/javascript/IdFunctionObject;)Z

    .line 194
    .line 195
    .line 196
    move-result v13

    .line 197
    if-eqz v13, :cond_6

    .line 198
    .line 199
    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->getCallable(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    add-int/lit8 v3, v11, 0x2

    .line 204
    .line 205
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/Interpreter;->getApplyThis(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DIILorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Scriptable;

    .line 206
    .line 207
    .line 208
    move-result-object v13

    .line 209
    move-object v15, v6

    .line 210
    invoke-static {v8}, Lorg/mozilla/javascript/BaseFunction;->isApply(Lorg/mozilla/javascript/IdFunctionObject;)Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-eqz v6, :cond_c

    .line 215
    .line 216
    if-ge v4, v14, :cond_b

    .line 217
    .line 218
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_b
    add-int/lit8 v2, v11, 0x3

    .line 222
    .line 223
    aget-object v1, v1, v2

    .line 224
    .line 225
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getApplyArguments(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    :goto_2
    array-length v2, v1

    .line 230
    add-int v4, v2, v11

    .line 231
    .line 232
    add-int/2addr v4, v14

    .line 233
    invoke-virtual {v15, v4}, Lorg/mozilla/javascript/Interpreter$CallFrame;->ensureStackLength(I)[Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    iget-object v6, v15, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    .line 238
    .line 239
    invoke-static {v1, v12, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    .line 241
    .line 242
    move-object v1, v4

    .line 243
    move v4, v2

    .line 244
    move-object v2, v6

    .line 245
    goto :goto_3

    .line 246
    :cond_c
    if-lez v4, :cond_e

    .line 247
    .line 248
    const/4 v6, 0x1

    .line 249
    if-le v4, v6, :cond_d

    .line 250
    .line 251
    add-int/lit8 v6, v11, 0x3

    .line 252
    .line 253
    add-int/lit8 v8, v4, -0x1

    .line 254
    .line 255
    invoke-static {v1, v6, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    .line 257
    .line 258
    invoke-static {v2, v6, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    .line 260
    .line 261
    :cond_d
    add-int/lit8 v4, v4, -0x1

    .line 262
    .line 263
    :cond_e
    :goto_3
    move-object v3, v5

    .line 264
    move-object v5, v13

    .line 265
    :goto_4
    move-object v6, v15

    .line 266
    goto/16 :goto_1

    .line 267
    .line 268
    :cond_f
    move-object v15, v6

    .line 269
    instance-of v6, v3, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;

    .line 270
    .line 271
    if-eqz v6, :cond_10

    .line 272
    .line 273
    check-cast v3, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;

    .line 274
    .line 275
    add-int/lit8 v1, v11, 0x4

    .line 276
    .line 277
    invoke-virtual {v15, v1}, Lorg/mozilla/javascript/Interpreter$CallFrame;->ensureStackLength(I)[Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    iget-object v2, v15, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    .line 282
    .line 283
    add-int/lit8 v6, v11, 0x2

    .line 284
    .line 285
    invoke-static {v1, v2, v6, v4}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    iget-object v8, v3, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;->noSuchMethodMethod:Lorg/mozilla/javascript/Callable;

    .line 290
    .line 291
    iget-object v3, v3, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;->methodName:Ljava/lang/String;

    .line 292
    .line 293
    aput-object v3, v1, v6

    .line 294
    .line 295
    add-int/lit8 v3, v11, 0x3

    .line 296
    .line 297
    invoke-virtual {v0, v9, v4}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    aput-object v4, v1, v3

    .line 302
    .line 303
    move-object v3, v8

    .line 304
    move v4, v14

    .line 305
    goto :goto_4

    .line 306
    :cond_10
    if-eqz v3, :cond_17

    .line 307
    .line 308
    :goto_5
    instance-of v6, v3, Lorg/mozilla/javascript/InterpretedFunction;

    .line 309
    .line 310
    if-eqz v6, :cond_13

    .line 311
    .line 312
    move-object v8, v3

    .line 313
    check-cast v8, Lorg/mozilla/javascript/InterpretedFunction;

    .line 314
    .line 315
    iget-object v6, v15, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    .line 316
    .line 317
    iget-object v6, v6, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    .line 318
    .line 319
    iget-object v13, v8, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    .line 320
    .line 321
    if-ne v6, v13, :cond_13

    .line 322
    .line 323
    const/16 v13, -0x3e

    .line 324
    .line 325
    if-ne v10, v13, :cond_11

    .line 326
    .line 327
    iget-object v6, v15, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 328
    .line 329
    const/4 v3, 0x0

    .line 330
    invoke-static {v0, v15, v3}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    goto :goto_6

    .line 334
    :cond_11
    move-object v6, v15

    .line 335
    :goto_6
    move-object v3, v7

    .line 336
    move v7, v4

    .line 337
    move-object v4, v1

    .line 338
    move-object v1, v9

    .line 339
    move-object v9, v6

    .line 340
    add-int/lit8 v6, v11, 0x2

    .line 341
    .line 342
    move-object/from16 v16, v5

    .line 343
    .line 344
    move-object v5, v2

    .line 345
    move-object/from16 v2, v16

    .line 346
    .line 347
    invoke-static/range {v0 .. v9}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    if-eq v10, v13, :cond_12

    .line 352
    .line 353
    iput v11, v15, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 354
    .line 355
    iput v10, v15, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    .line 356
    .line 357
    :cond_12
    new-instance v1, Lorg/mozilla/javascript/Interpreter$StateContinue;

    .line 358
    .line 359
    invoke-direct {v1, v0, v12}, Lorg/mozilla/javascript/Interpreter$StateContinue;-><init>(Lorg/mozilla/javascript/Interpreter$CallFrame;I)V

    .line 360
    .line 361
    .line 362
    return-object v1

    .line 363
    :cond_13
    move-object v6, v2

    .line 364
    move-object v2, v5

    .line 365
    move-object v5, v1

    .line 366
    move-object v1, v9

    .line 367
    instance-of v7, v3, Lorg/mozilla/javascript/NativeContinuation;

    .line 368
    .line 369
    if-eqz v7, :cond_15

    .line 370
    .line 371
    new-instance v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    .line 372
    .line 373
    check-cast v3, Lorg/mozilla/javascript/NativeContinuation;

    .line 374
    .line 375
    invoke-direct {v0, v3, v15}, Lorg/mozilla/javascript/Interpreter$ContinuationJump;-><init>(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    .line 376
    .line 377
    .line 378
    if-nez v4, :cond_14

    .line 379
    .line 380
    sget-object v1, Lorg/mozilla/javascript/Interpreter;->undefined:Ljava/lang/Object;

    .line 381
    .line 382
    iput-object v1, v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    .line 383
    .line 384
    goto :goto_7

    .line 385
    :cond_14
    add-int/2addr v11, v14

    .line 386
    aget-object v1, v5, v11

    .line 387
    .line 388
    iput-object v1, v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    .line 389
    .line 390
    aget-wide v1, v6, v11

    .line 391
    .line 392
    iput-wide v1, v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    .line 393
    .line 394
    :goto_7
    new-instance v1, Lorg/mozilla/javascript/Interpreter$NewThrowable;

    .line 395
    .line 396
    invoke-direct {v1, v0, v12}, Lorg/mozilla/javascript/Interpreter$NewThrowable;-><init>(Ljava/lang/Object;I)V

    .line 397
    .line 398
    .line 399
    return-object v1

    .line 400
    :cond_15
    instance-of v7, v3, Lorg/mozilla/javascript/IdFunctionObject;

    .line 401
    .line 402
    if-eqz v7, :cond_16

    .line 403
    .line 404
    move-object v7, v3

    .line 405
    check-cast v7, Lorg/mozilla/javascript/IdFunctionObject;

    .line 406
    .line 407
    invoke-static {v7}, Lorg/mozilla/javascript/NativeContinuation;->isContinuationConstructor(Lorg/mozilla/javascript/IdFunctionObject;)Z

    .line 408
    .line 409
    .line 410
    move-result v7

    .line 411
    if-eqz v7, :cond_16

    .line 412
    .line 413
    iget-object v1, v15, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    .line 414
    .line 415
    iget-object v2, v15, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 416
    .line 417
    invoke-static {v0, v2, v12}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    aput-object v0, v1, v11

    .line 422
    .line 423
    new-instance v0, Lorg/mozilla/javascript/Interpreter$ContinueLoop;

    .line 424
    .line 425
    invoke-direct {v0, v15, v11, v4, v12}, Lorg/mozilla/javascript/Interpreter$ContinueLoop;-><init>(Lorg/mozilla/javascript/Interpreter$CallFrame;III)V

    .line 426
    .line 427
    .line 428
    return-object v0

    .line 429
    :cond_16
    iput-object v15, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    .line 430
    .line 431
    iput v10, v15, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    .line 432
    .line 433
    iput v11, v15, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 434
    .line 435
    add-int/lit8 v7, v11, 0x2

    .line 436
    .line 437
    invoke-static {v5, v6, v7, v4}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v6

    .line 441
    invoke-interface {v3, v0, v1, v2, v6}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    aput-object v0, v5, v11

    .line 446
    .line 447
    new-instance v0, Lorg/mozilla/javascript/Interpreter$ContinueLoop;

    .line 448
    .line 449
    invoke-direct {v0, v15, v11, v4, v12}, Lorg/mozilla/javascript/Interpreter$ContinueLoop;-><init>(Lorg/mozilla/javascript/Interpreter$CallFrame;III)V

    .line 450
    .line 451
    .line 452
    return-object v0

    .line 453
    :cond_17
    const/4 v3, 0x0

    .line 454
    invoke-static {v3, v3}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    throw v0
.end method

.method private static doCallSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[BIZ)I
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    move/from16 v4, p6

    .line 10
    .line 11
    iget v5, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 12
    .line 13
    aget-byte v6, v3, v5

    .line 14
    .line 15
    and-int/lit16 v13, v6, 0xff

    .line 16
    .line 17
    add-int/lit8 v6, v5, 0x1

    .line 18
    .line 19
    aget-byte v6, v3, v6

    .line 20
    .line 21
    if-eqz v6, :cond_0

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v6, 0x0

    .line 26
    :goto_0
    add-int/lit8 v5, v5, 0x2

    .line 27
    .line 28
    invoke-static {v3, v5}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    .line 29
    .line 30
    .line 31
    move-result v15

    .line 32
    if-eqz v6, :cond_2

    .line 33
    .line 34
    sub-int v3, p4, v4

    .line 35
    .line 36
    aget-object v5, v1, v3

    .line 37
    .line 38
    sget-object v6, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 39
    .line 40
    if-ne v5, v6, :cond_1

    .line 41
    .line 42
    aget-wide v5, v2, v3

    .line 43
    .line 44
    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    :cond_1
    add-int/lit8 v6, v3, 0x1

    .line 49
    .line 50
    invoke-static {v1, v2, v6, v4}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v4, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 55
    .line 56
    move-object/from16 v7, p0

    .line 57
    .line 58
    invoke-static {v7, v5, v2, v4, v13}, Lorg/mozilla/javascript/ScriptRuntime;->newSpecial(Lorg/mozilla/javascript/Context;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    aput-object v2, v1, v3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move-object/from16 v7, p0

    .line 66
    .line 67
    add-int/lit8 v3, v4, 0x1

    .line 68
    .line 69
    sub-int v3, p4, v3

    .line 70
    .line 71
    add-int/lit8 v5, v3, 0x1

    .line 72
    .line 73
    aget-object v5, v1, v5

    .line 74
    .line 75
    move-object v9, v5

    .line 76
    check-cast v9, Lorg/mozilla/javascript/Scriptable;

    .line 77
    .line 78
    aget-object v5, v1, v3

    .line 79
    .line 80
    move-object v8, v5

    .line 81
    check-cast v8, Lorg/mozilla/javascript/Callable;

    .line 82
    .line 83
    add-int/lit8 v5, v3, 0x2

    .line 84
    .line 85
    invoke-static {v1, v2, v5, v4}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    iget-object v11, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 90
    .line 91
    iget-object v12, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    .line 92
    .line 93
    iget-object v2, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 94
    .line 95
    iget-object v14, v2, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    .line 96
    .line 97
    move/from16 v16, p7

    .line 98
    .line 99
    invoke-static/range {v7 .. v16}, Lorg/mozilla/javascript/ScriptRuntime;->callSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ILjava/lang/String;IZ)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    aput-object v2, v1, v3

    .line 104
    .line 105
    :goto_1
    iget v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 106
    .line 107
    add-int/lit8 v1, v1, 0x4

    .line 108
    .line 109
    iput v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 110
    .line 111
    return v3
.end method

.method private static doCompare(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .locals 5

    .line 1
    add-int/lit8 v0, p4, -0x1

    .line 2
    .line 3
    aget-object v1, p2, p4

    .line 4
    .line 5
    aget-object v2, p2, v0

    .line 6
    .line 7
    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 8
    .line 9
    if-ne v1, v3, :cond_0

    .line 10
    .line 11
    aget-wide v1, p3, p4

    .line 12
    .line 13
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-static {p0, v0}, Lorg/mozilla/javascript/Interpreter;->stack_numeric(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Ljava/lang/Number;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-ne v2, v3, :cond_1

    .line 23
    .line 24
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumeric(Ljava/lang/Object;)Ljava/lang/Number;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    aget-wide v1, p3, v0

    .line 29
    .line 30
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    move-object v4, p3

    .line 35
    move-object p3, p0

    .line 36
    move-object p0, v4

    .line 37
    :goto_0
    invoke-static {p0, p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->compare(Ljava/lang/Number;Ljava/lang/Number;I)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-static {v2, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->compare(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    :goto_1
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    aput-object p0, p2, v0

    .line 51
    .line 52
    return v0
.end method

.method private static doDelName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .locals 4

    .line 1
    aget-object v0, p3, p5

    .line 2
    .line 3
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    aget-wide v2, p4, p5

    .line 8
    .line 9
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    add-int/lit8 p5, p5, -0x1

    .line 14
    .line 15
    aget-object v2, p3, p5

    .line 16
    .line 17
    if-ne v2, v1, :cond_1

    .line 18
    .line 19
    aget-wide v1, p4, p5

    .line 20
    .line 21
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :cond_1
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 26
    .line 27
    if-nez p2, :cond_2

    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 p2, 0x0

    .line 32
    :goto_0
    invoke-static {v2, v0, p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->delete(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    aput-object p0, p3, p5

    .line 37
    .line 38
    return p5
.end method

.method private static doElemIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[B[Ljava/lang/Object;[DI)I
    .locals 4

    .line 1
    aget-object v0, p3, p5

    .line 2
    .line 3
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    aget-wide v2, p4, p5

    .line 8
    .line 9
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    add-int/lit8 p5, p5, -0x1

    .line 14
    .line 15
    aget-object v2, p3, p5

    .line 16
    .line 17
    if-ne v2, v1, :cond_1

    .line 18
    .line 19
    aget-wide v1, p4, p5

    .line 20
    .line 21
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :cond_1
    iget-object p4, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 26
    .line 27
    iget v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 28
    .line 29
    aget-byte p2, p2, v1

    .line 30
    .line 31
    invoke-static {v2, v0, p0, p4, p2}, Lorg/mozilla/javascript/ScriptRuntime;->elemIncrDecr(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    aput-object p0, p3, p5

    .line 36
    .line 37
    iget p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 38
    .line 39
    add-int/lit8 p0, p0, 0x1

    .line 40
    .line 41
    iput p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 42
    .line 43
    return p5
.end method

.method private static doEquals([Ljava/lang/Object;[DI)Z
    .locals 3

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    aget-object v1, p0, v0

    .line 4
    .line 5
    aget-object p0, p0, p2

    .line 6
    .line 7
    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 8
    .line 9
    if-ne v1, v2, :cond_2

    .line 10
    .line 11
    if-ne p0, v2, :cond_1

    .line 12
    .line 13
    aget-wide v1, p1, p2

    .line 14
    .line 15
    aget-wide p0, p1, v0

    .line 16
    .line 17
    cmpl-double p0, v1, p0

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_1
    aget-wide v0, p1, v0

    .line 26
    .line 27
    invoke-static {v0, v1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_2
    if-ne p0, v2, :cond_3

    .line 33
    .line 34
    aget-wide p0, p1, p2

    .line 35
    .line 36
    invoke-static {p0, p1, v1}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0

    .line 41
    :cond_3
    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0
.end method

.method private static doGetElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I
    .locals 5

    .line 1
    add-int/lit8 v0, p4, -0x1

    .line 2
    .line 3
    aget-object v1, p2, v0

    .line 4
    .line 5
    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 6
    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    aget-wide v3, p3, v0

    .line 10
    .line 11
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    aget-object v3, p2, p4

    .line 16
    .line 17
    if-eq v3, v2, :cond_1

    .line 18
    .line 19
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 20
    .line 21
    invoke-static {v1, v3, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectElem(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    aget-wide v2, p3, p4

    .line 27
    .line 28
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 29
    .line 30
    invoke-static {v1, v2, v3, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectIndex(Ljava/lang/Object;DLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :goto_0
    aput-object p0, p2, v0

    .line 35
    .line 36
    return v0
.end method

.method private static doGetElemSuper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I
    .locals 7

    .line 1
    add-int/lit8 v0, p4, -0x1

    .line 2
    .line 3
    aget-object v1, p2, v0

    .line 4
    .line 5
    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 6
    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    :cond_0
    aget-object v3, p2, p4

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    iget-object p3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 17
    .line 18
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    .line 19
    .line 20
    invoke-static {v1, v3, p0, p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getSuperElem(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    aget-wide v2, p3, p4

    .line 26
    .line 27
    iget-object v5, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 28
    .line 29
    iget-object v6, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    .line 30
    .line 31
    move-object v4, p0

    .line 32
    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/ScriptRuntime;->getSuperIndex(Ljava/lang/Object;DLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :goto_0
    aput-object p0, p2, v0

    .line 37
    .line 38
    return v0
.end method

.method private static doGetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[DI)I
    .locals 1

    .line 1
    add-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    aget-object p0, p4, p6

    .line 8
    .line 9
    aput-object p0, p1, p3

    .line 10
    .line 11
    aget-wide p0, p5, p6

    .line 12
    .line 13
    aput-wide p0, p2, p3

    .line 14
    .line 15
    return p3

    .line 16
    :cond_0
    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 17
    .line 18
    iget-object p2, p2, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    .line 19
    .line 20
    aget-object p2, p2, p6

    .line 21
    .line 22
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 23
    .line 24
    invoke-interface {p0, p2, p0}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    aput-object p0, p1, p3

    .line 29
    .line 30
    return p3
.end method

.method private static doInOrInstanceof(Lorg/mozilla/javascript/Context;I[Ljava/lang/Object;[DI)I
    .locals 4

    .line 1
    aget-object v0, p2, p4

    .line 2
    .line 3
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    aget-wide v2, p3, p4

    .line 8
    .line 9
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    add-int/lit8 p4, p4, -0x1

    .line 14
    .line 15
    aget-object v2, p2, p4

    .line 16
    .line 17
    if-ne v2, v1, :cond_1

    .line 18
    .line 19
    aget-wide v1, p3, p4

    .line 20
    .line 21
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :cond_1
    const/16 p3, 0x39

    .line 26
    .line 27
    if-ne p1, p3, :cond_2

    .line 28
    .line 29
    invoke-static {v2, v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->in(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-static {v2, v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->instanceOf(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    :goto_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    aput-object p0, p2, p4

    .line 43
    .line 44
    return p4
.end method

.method private static doRefMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I
    .locals 4

    .line 1
    aget-object v0, p1, p3

    .line 2
    .line 3
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    aget-wide v2, p2, p3

    .line 8
    .line 9
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    add-int/lit8 p3, p3, -0x1

    .line 14
    .line 15
    aget-object v2, p1, p3

    .line 16
    .line 17
    if-ne v2, v1, :cond_1

    .line 18
    .line 19
    aget-wide v1, p2, p3

    .line 20
    .line 21
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :cond_1
    invoke-static {v2, v0, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->memberRef(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    aput-object p0, p1, p3

    .line 30
    .line 31
    return p3
.end method

.method private static doRefNsMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I
    .locals 4

    .line 1
    aget-object v0, p1, p3

    .line 2
    .line 3
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    aget-wide v2, p2, p3

    .line 8
    .line 9
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    add-int/lit8 v2, p3, -0x1

    .line 14
    .line 15
    aget-object v3, p1, v2

    .line 16
    .line 17
    if-ne v3, v1, :cond_1

    .line 18
    .line 19
    aget-wide v2, p2, v2

    .line 20
    .line 21
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    :cond_1
    add-int/lit8 p3, p3, -0x2

    .line 26
    .line 27
    aget-object v2, p1, p3

    .line 28
    .line 29
    if-ne v2, v1, :cond_2

    .line 30
    .line 31
    aget-wide v1, p2, p3

    .line 32
    .line 33
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :cond_2
    invoke-static {v2, v3, v0, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->memberRef(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    aput-object p0, p1, p3

    .line 42
    .line 43
    return p3
.end method

.method private static doRefNsName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DII)I
    .locals 4

    .line 1
    aget-object v0, p2, p4

    .line 2
    .line 3
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    aget-wide v2, p3, p4

    .line 8
    .line 9
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    add-int/lit8 p4, p4, -0x1

    .line 14
    .line 15
    aget-object v2, p2, p4

    .line 16
    .line 17
    if-ne v2, v1, :cond_1

    .line 18
    .line 19
    aget-wide v1, p3, p4

    .line 20
    .line 21
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :cond_1
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 26
    .line 27
    invoke-static {v2, v0, p0, p1, p5}, Lorg/mozilla/javascript/ScriptRuntime;->nameRef(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    aput-object p0, p2, p4

    .line 32
    .line 33
    return p4
.end method

.method private static doSetConstVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    aget v0, p6, p7

    .line 6
    .line 7
    and-int/lit8 v1, v0, 0x1

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    and-int/lit8 p0, v0, 0x8

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    aget-object p0, p1, p3

    .line 16
    .line 17
    aput-object p0, p4, p7

    .line 18
    .line 19
    and-int/lit8 p0, v0, -0x9

    .line 20
    .line 21
    aput p0, p6, p7

    .line 22
    .line 23
    aget-wide p0, p2, p3

    .line 24
    .line 25
    aput-wide p0, p5, p7

    .line 26
    .line 27
    :cond_0
    return p3

    .line 28
    :cond_1
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 29
    .line 30
    iget-object p0, p0, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    .line 31
    .line 32
    aget-object p0, p0, p7

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    new-array p1, p1, [Ljava/lang/Object;

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    aput-object p0, p1, p2

    .line 39
    .line 40
    const-string p0, "msg.var.redecl"

    .line 41
    .line 42
    invoke-static {p0, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    throw p0

    .line 47
    :cond_2
    aget-object p1, p1, p3

    .line 48
    .line 49
    sget-object p4, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 50
    .line 51
    if-ne p1, p4, :cond_3

    .line 52
    .line 53
    aget-wide p1, p2, p3

    .line 54
    .line 55
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :cond_3
    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 60
    .line 61
    iget-object p2, p2, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    .line 62
    .line 63
    aget-object p2, p2, p7

    .line 64
    .line 65
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 66
    .line 67
    instance-of p4, p0, Lorg/mozilla/javascript/ConstProperties;

    .line 68
    .line 69
    if-eqz p4, :cond_4

    .line 70
    .line 71
    move-object p4, p0

    .line 72
    check-cast p4, Lorg/mozilla/javascript/ConstProperties;

    .line 73
    .line 74
    invoke-interface {p4, p2, p0, p1}, Lorg/mozilla/javascript/ConstProperties;->putConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return p3

    .line 78
    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    throw p0
.end method

.method private static doSetElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I
    .locals 9

    .line 1
    add-int/lit8 v0, p4, -0x2

    .line 2
    .line 3
    aget-object v1, p2, p4

    .line 4
    .line 5
    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 6
    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    aget-wide v3, p3, p4

    .line 10
    .line 11
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    move-object v6, v1

    .line 16
    aget-object v1, p2, v0

    .line 17
    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    aget-wide v3, p3, v0

    .line 21
    .line 22
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_1
    move-object v3, v1

    .line 27
    add-int/lit8 p4, p4, -0x1

    .line 28
    .line 29
    aget-object v1, p2, p4

    .line 30
    .line 31
    if-eq v1, v2, :cond_2

    .line 32
    .line 33
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 34
    .line 35
    invoke-static {v3, v1, v6, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectElem(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    aget-wide v4, p3, p4

    .line 41
    .line 42
    iget-object v8, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 43
    .line 44
    move-object v7, p0

    .line 45
    invoke-static/range {v3 .. v8}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectIndex(Ljava/lang/Object;DLjava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :goto_0
    aput-object p0, p2, v0

    .line 50
    .line 51
    return v0
.end method

.method private static doSetElemSuper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I
    .locals 10

    .line 1
    add-int/lit8 v0, p4, -0x2

    .line 2
    .line 3
    aget-object v1, p2, p4

    .line 4
    .line 5
    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 6
    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    aget-wide v3, p3, p4

    .line 10
    .line 11
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    move-object v5, v1

    .line 16
    aget-object v3, p2, v0

    .line 17
    .line 18
    if-ne v3, v2, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 21
    .line 22
    .line 23
    :cond_1
    add-int/lit8 p4, p4, -0x1

    .line 24
    .line 25
    aget-object v4, p2, p4

    .line 26
    .line 27
    if-eq v4, v2, :cond_2

    .line 28
    .line 29
    iget-object v7, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 30
    .line 31
    iget-object v8, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    .line 32
    .line 33
    move-object v6, p0

    .line 34
    invoke-static/range {v3 .. v8}, Lorg/mozilla/javascript/ScriptRuntime;->setSuperElem(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move-object v6, p0

    .line 40
    aget-wide v1, p3, p4

    .line 41
    .line 42
    iget-object v8, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 43
    .line 44
    iget-object v9, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    .line 45
    .line 46
    move-object v7, v6

    .line 47
    move-object v6, v5

    .line 48
    move-wide v4, v1

    .line 49
    invoke-static/range {v3 .. v9}, Lorg/mozilla/javascript/ScriptRuntime;->setSuperIndex(Ljava/lang/Object;DLjava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :goto_0
    aput-object p0, p2, v0

    .line 54
    .line 55
    return v0
.end method

.method private static doSetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    aget p0, p6, p7

    .line 6
    .line 7
    and-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    aget-object p0, p1, p3

    .line 12
    .line 13
    aput-object p0, p4, p7

    .line 14
    .line 15
    aget-wide p0, p2, p3

    .line 16
    .line 17
    aput-wide p0, p5, p7

    .line 18
    .line 19
    :cond_0
    return p3

    .line 20
    :cond_1
    aget-object p1, p1, p3

    .line 21
    .line 22
    sget-object p4, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 23
    .line 24
    if-ne p1, p4, :cond_2

    .line 25
    .line 26
    aget-wide p1, p2, p3

    .line 27
    .line 28
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :cond_2
    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 33
    .line 34
    iget-object p2, p2, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    .line 35
    .line 36
    aget-object p2, p2, p7

    .line 37
    .line 38
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 39
    .line 40
    invoke-interface {p0, p2, p0, p1}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return p3
.end method

.method private static doShallowEquals([Ljava/lang/Object;[DI)Z
    .locals 4

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    aget-object v1, p0, v0

    .line 4
    .line 5
    aget-object p0, p0, p2

    .line 6
    .line 7
    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-ne v1, v2, :cond_2

    .line 11
    .line 12
    aget-wide v0, p1, v0

    .line 13
    .line 14
    if-ne p0, v2, :cond_0

    .line 15
    .line 16
    aget-wide p0, p1, p2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    instance-of p1, p0, Ljava/lang/Number;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    instance-of p1, p0, Ljava/math/BigInteger;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    check-cast p0, Ljava/lang/Number;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    .line 30
    .line 31
    .line 32
    move-result-wide p0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return v3

    .line 35
    :cond_2
    if-ne p0, v2, :cond_4

    .line 36
    .line 37
    aget-wide p0, p1, p2

    .line 38
    .line 39
    instance-of p2, v1, Ljava/lang/Number;

    .line 40
    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    instance-of p2, v1, Ljava/math/BigInteger;

    .line 44
    .line 45
    if-nez p2, :cond_3

    .line 46
    .line 47
    check-cast v1, Ljava/lang/Number;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    :goto_0
    cmpl-double p0, p0, v0

    .line 54
    .line 55
    if-nez p0, :cond_3

    .line 56
    .line 57
    const/4 p0, 0x1

    .line 58
    return p0

    .line 59
    :cond_3
    return v3

    .line 60
    :cond_4
    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    return p0
.end method

.method private static doVarIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    add-int/2addr p4, v0

    .line 3
    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 4
    .line 5
    iget-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 6
    .line 7
    iget v3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 8
    .line 9
    aget-byte v2, v2, v3

    .line 10
    .line 11
    iget-boolean v3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    .line 12
    .line 13
    if-nez v3, :cond_10

    .line 14
    .line 15
    aget-object p0, p5, p8

    .line 16
    .line 17
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-ne p0, v1, :cond_0

    .line 21
    .line 22
    aget-wide v4, p6, p8

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumeric(Ljava/lang/Object;)Ljava/lang/Number;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    instance-of v5, v4, Ljava/math/BigInteger;

    .line 30
    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    move-object v3, v4

    .line 34
    check-cast v3, Ljava/math/BigInteger;

    .line 35
    .line 36
    const-wide/16 v4, 0x0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    :goto_0
    const/4 v6, 0x0

    .line 44
    if-nez v3, :cond_9

    .line 45
    .line 46
    and-int/lit8 v3, v2, 0x1

    .line 47
    .line 48
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 49
    .line 50
    if-nez v3, :cond_2

    .line 51
    .line 52
    add-double/2addr v7, v4

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    sub-double v7, v4, v7

    .line 55
    .line 56
    :goto_1
    and-int/lit8 v2, v2, 0x2

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    move v6, v0

    .line 61
    :cond_3
    aget v2, p7, p8

    .line 62
    .line 63
    and-int/2addr v2, v0

    .line 64
    if-nez v2, :cond_6

    .line 65
    .line 66
    if-eq p0, v1, :cond_4

    .line 67
    .line 68
    aput-object v1, p5, p8

    .line 69
    .line 70
    :cond_4
    aput-wide v7, p6, p8

    .line 71
    .line 72
    aput-object v1, p2, p4

    .line 73
    .line 74
    if-eqz v6, :cond_5

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    move-wide v4, v7

    .line 78
    :goto_2
    aput-wide v4, p3, p4

    .line 79
    .line 80
    goto :goto_7

    .line 81
    :cond_6
    if-eqz v6, :cond_7

    .line 82
    .line 83
    if-eq p0, v1, :cond_7

    .line 84
    .line 85
    aput-object p0, p2, p4

    .line 86
    .line 87
    goto :goto_7

    .line 88
    :cond_7
    aput-object v1, p2, p4

    .line 89
    .line 90
    if-eqz v6, :cond_8

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_8
    move-wide v4, v7

    .line 94
    :goto_3
    aput-wide v4, p3, p4

    .line 95
    .line 96
    goto :goto_7

    .line 97
    :cond_9
    and-int/lit8 p3, v2, 0x1

    .line 98
    .line 99
    if-nez p3, :cond_a

    .line 100
    .line 101
    sget-object p3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 102
    .line 103
    invoke-virtual {v3, p3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    goto :goto_4

    .line 108
    :cond_a
    sget-object p3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 109
    .line 110
    invoke-virtual {v3, p3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    :goto_4
    and-int/lit8 v2, v2, 0x2

    .line 115
    .line 116
    if-eqz v2, :cond_b

    .line 117
    .line 118
    move v6, v0

    .line 119
    :cond_b
    aget v2, p7, p8

    .line 120
    .line 121
    and-int/2addr v2, v0

    .line 122
    if-nez v2, :cond_d

    .line 123
    .line 124
    aput-object p3, p5, p8

    .line 125
    .line 126
    if-eqz v6, :cond_c

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_c
    move-object v3, p3

    .line 130
    :goto_5
    aput-object v3, p2, p4

    .line 131
    .line 132
    goto :goto_7

    .line 133
    :cond_d
    if-eqz v6, :cond_e

    .line 134
    .line 135
    if-eq p0, v1, :cond_e

    .line 136
    .line 137
    aput-object p0, p2, p4

    .line 138
    .line 139
    goto :goto_7

    .line 140
    :cond_e
    if-eqz v6, :cond_f

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_f
    move-object v3, p3

    .line 144
    :goto_6
    aput-object v3, p2, p4

    .line 145
    .line 146
    goto :goto_7

    .line 147
    :cond_10
    iget-object p3, v1, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    .line 148
    .line 149
    aget-object p3, p3, p8

    .line 150
    .line 151
    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 152
    .line 153
    invoke-static {v1, p3, p0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->nameIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    aput-object p0, p2, p4

    .line 158
    .line 159
    :goto_7
    iget p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 160
    .line 161
    add-int/2addr p0, v0

    .line 162
    iput p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 163
    .line 164
    return p4
.end method

.method public static dumpICode(Lorg/mozilla/javascript/InterpreterData;)V
    .locals 0

    .line 1
    return-void
.end method

.method private static enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V
    .locals 3

    .line 1
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 2
    .line 3
    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    .line 4
    .line 5
    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-nez v0, :cond_1

    .line 13
    .line 14
    if-eqz v1, :cond_7

    .line 15
    .line 16
    :cond_1
    iget-object v2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 17
    .line 18
    if-nez v2, :cond_2

    .line 19
    .line 20
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    if-eqz p3, :cond_5

    .line 25
    .line 26
    :cond_3
    instance-of p3, v2, Lorg/mozilla/javascript/NativeWith;

    .line 27
    .line 28
    if-eqz p3, :cond_5

    .line 29
    .line 30
    invoke-interface {v2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    iget-object p3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 37
    .line 38
    if-eqz p3, :cond_3

    .line 39
    .line 40
    iget-object p3, p3, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 41
    .line 42
    if-ne p3, v2, :cond_3

    .line 43
    .line 44
    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 45
    .line 46
    .line 47
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 48
    .line 49
    iget-object p3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    .line 50
    .line 51
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    .line 52
    .line 53
    invoke-interface {p3, p0, v2, p1, p2}, Lorg/mozilla/javascript/debug/DebugFrame;->onEnter(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_6
    if-eqz v0, :cond_7

    .line 57
    .line 58
    invoke-static {p0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->enterActivationFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    .line 59
    .line 60
    .line 61
    :cond_7
    return-void
.end method

.method private static exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 2
    .line 3
    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->exitActivationFunction(Lorg/mozilla/javascript/Context;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    .line 11
    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    :try_start_0
    instance-of v1, p2, Ljava/lang/Throwable;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-interface {v0, p0, p1, p2}, Lorg/mozilla/javascript/debug/DebugFrame;->onExit(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    check-cast p2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    .line 24
    .line 25
    if-nez p2, :cond_2

    .line 26
    .line 27
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget-object v0, p2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    .line 31
    .line 32
    :goto_0
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 33
    .line 34
    if-ne v0, v1, :cond_4

    .line 35
    .line 36
    if-nez p2, :cond_3

    .line 37
    .line 38
    iget-wide v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    iget-wide v0, p2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    .line 42
    .line 43
    :goto_1
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_4
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    .line 48
    .line 49
    const/4 p2, 0x0

    .line 50
    invoke-interface {p1, p0, p2, v0}, Lorg/mozilla/javascript/debug/DebugFrame;->onExit(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 56
    .line 57
    const-string p2, "RHINO USAGE WARNING: onExit terminated with exception"

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 65
    .line 66
    .line 67
    :cond_5
    return-void
.end method

.method private static freezeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;Z)Ljava/lang/Object;
    .locals 3

    .line 1
    iget p3, p3, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-eq p3, v0, :cond_2

    .line 5
    .line 6
    const/4 p3, 0x1

    .line 7
    iput-boolean p3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 8
    .line 9
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    .line 10
    .line 11
    aget-object v0, v0, p2

    .line 12
    .line 13
    iput-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    .line 16
    .line 17
    aget-wide v1, v0, p2

    .line 18
    .line 19
    iput-wide v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    .line 20
    .line 21
    iput p2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 22
    .line 23
    iget p2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 24
    .line 25
    sub-int/2addr p2, p3

    .line 26
    iput p2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 27
    .line 28
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->exitActivationFunction(Lorg/mozilla/javascript/Context;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object p2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 34
    .line 35
    if-eq p0, p2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-wide p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    .line 39
    .line 40
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :goto_0
    if-eqz p4, :cond_1

    .line 45
    .line 46
    new-instance p1, Lorg/mozilla/javascript/ES6Generator$YieldStarResult;

    .line 47
    .line 48
    invoke-direct {p1, p0}, Lorg/mozilla/javascript/ES6Generator$YieldStarResult;-><init>(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_1
    return-object p0

    .line 53
    :cond_2
    const/4 p0, 0x0

    .line 54
    new-array p0, p0, [Ljava/lang/Object;

    .line 55
    .line 56
    const-string p1, "msg.yield.closing"

    .line 57
    .line 58
    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    throw p0
.end method

.method private static getApplyThis(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DIILorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .line 1
    instance-of p5, p5, Lorg/mozilla/javascript/InterpretedFunction;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_3

    .line 5
    .line 6
    if-eqz p4, :cond_1

    .line 7
    .line 8
    aget-object p1, p1, p3

    .line 9
    .line 10
    sget-object p4, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 11
    .line 12
    if-ne p1, p4, :cond_0

    .line 13
    .line 14
    aget-wide p1, p2, p3

    .line 15
    .line 16
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_0
    iget-object p2, p6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 21
    .line 22
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_1
    if-nez v0, :cond_2

    .line 27
    .line 28
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_2
    return-object v0

    .line 34
    :cond_3
    if-eqz p4, :cond_4

    .line 35
    .line 36
    aget-object v0, p1, p3

    .line 37
    .line 38
    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 39
    .line 40
    if-ne v0, p1, :cond_4

    .line 41
    .line 42
    aget-wide p1, p2, p3

    .line 43
    .line 44
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_4
    iget-object p1, p6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 49
    .line 50
    invoke-static {p0, p1, v0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->getApplyOrCallThis(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Lorg/mozilla/javascript/Scriptable;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method private static getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;
    .locals 4

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-array v0, p3, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-eq v1, p3, :cond_2

    .line 10
    .line 11
    aget-object v2, p0, p2

    .line 12
    .line 13
    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 14
    .line 15
    if-ne v2, v3, :cond_1

    .line 16
    .line 17
    aget-wide v2, p1, p2

    .line 18
    .line 19
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    :cond_1
    aput-object v2, v0, v1

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    add-int/lit8 p2, p2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    return-object v0
.end method

.method private static getCurrentFrameHomeObject(Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 2
    .line 3
    instance-of v0, p0, Lorg/mozilla/javascript/NativeCall;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lorg/mozilla/javascript/NativeCall;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeCall;->getHomeObject()Lorg/mozilla/javascript/Scriptable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method private static getExceptionHandler(Lorg/mozilla/javascript/Interpreter$CallFrame;Z)I
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    sub-int/2addr p0, v2

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    move v5, v4

    .line 16
    :goto_0
    array-length v6, v0

    .line 17
    if-eq v3, v6, :cond_7

    .line 18
    .line 19
    aget v6, v0, v3

    .line 20
    .line 21
    add-int/lit8 v7, v3, 0x1

    .line 22
    .line 23
    aget v7, v0, v7

    .line 24
    .line 25
    if-gt v6, p0, :cond_6

    .line 26
    .line 27
    if-lt p0, v7, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    if-eqz p1, :cond_2

    .line 31
    .line 32
    add-int/lit8 v8, v3, 0x3

    .line 33
    .line 34
    aget v8, v0, v8

    .line 35
    .line 36
    if-eq v8, v2, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    if-ltz v1, :cond_5

    .line 40
    .line 41
    if-ge v4, v7, :cond_3

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    if-le v5, v6, :cond_4

    .line 45
    .line 46
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 47
    .line 48
    .line 49
    :cond_4
    if-ne v4, v7, :cond_5

    .line 50
    .line 51
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 52
    .line 53
    .line 54
    :cond_5
    move v1, v3

    .line 55
    move v5, v6

    .line 56
    move v4, v7

    .line 57
    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x6

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_7
    return v1
.end method

.method private static getIndex([BI)I
    .locals 1

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    shl-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    aget-byte p0, p0, p1

    .line 10
    .line 11
    and-int/lit16 p0, p0, 0xff

    .line 12
    .line 13
    or-int/2addr p0, v0

    .line 14
    return p0
.end method

.method private static getInt([BI)I
    .locals 2

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    shl-int/lit8 v0, v0, 0x18

    .line 4
    .line 5
    add-int/lit8 v1, p1, 0x1

    .line 6
    .line 7
    aget-byte v1, p0, v1

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    shl-int/lit8 v1, v1, 0x10

    .line 12
    .line 13
    or-int/2addr v0, v1

    .line 14
    add-int/lit8 v1, p1, 0x2

    .line 15
    .line 16
    aget-byte v1, p0, v1

    .line 17
    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 19
    .line 20
    shl-int/lit8 v1, v1, 0x8

    .line 21
    .line 22
    or-int/2addr v0, v1

    .line 23
    add-int/lit8 p1, p1, 0x3

    .line 24
    .line 25
    aget-byte p0, p0, p1

    .line 26
    .line 27
    and-int/lit16 p0, p0, 0xff

    .line 28
    .line 29
    or-int/2addr p0, v0

    .line 30
    return p0
.end method

.method public static getLineNumbers(Lorg/mozilla/javascript/InterpreterData;)[I
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-eq v3, v1, :cond_2

    .line 12
    .line 13
    aget-byte v4, p0, v3

    .line 14
    .line 15
    invoke-static {v4}, Lorg/mozilla/javascript/Interpreter;->bytecodeSpan(I)I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    const/16 v6, -0x1f

    .line 20
    .line 21
    if-ne v4, v6, :cond_1

    .line 22
    .line 23
    const/4 v4, 0x3

    .line 24
    if-eq v5, v4, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 27
    .line 28
    .line 29
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 30
    .line 31
    invoke-static {p0, v4}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    add-int/2addr v3, v5

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    new-array p0, p0, [I

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    add-int/lit8 v3, v2, 0x1

    .line 71
    .line 72
    aput v1, p0, v2

    .line 73
    .line 74
    move v2, v3

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    return-object p0
.end method

.method public static getRawSource(Lorg/mozilla/javascript/InterpreterData;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->rawSource:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    iget v1, p0, Lorg/mozilla/javascript/InterpreterData;->rawSourceStart:I

    .line 8
    .line 9
    iget p0, p0, Lorg/mozilla/javascript/InterpreterData;->rawSourceEnd:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static getShort([BI)I
    .locals 1

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    shl-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    aget-byte p0, p0, p1

    .line 8
    .line 9
    and-int/lit16 p0, p0, 0xff

    .line 10
    .line 11
    or-int/2addr p0, v0

    .line 12
    return p0
.end method

.method private static initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 2

    .line 1
    move-object v0, p2

    .line 2
    move-object p2, p1

    .line 3
    move-object p1, p0

    .line 4
    new-instance p0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 5
    .line 6
    invoke-direct {p0, p1, v0, p8, p9}, Lorg/mozilla/javascript/Interpreter$CallFrame;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    .line 7
    .line 8
    .line 9
    move v1, p7

    .line 10
    move-object p7, p3

    .line 11
    move-object p3, p4

    .line 12
    move-object p4, p5

    .line 13
    move p5, p6

    .line 14
    move p6, v1

    .line 15
    invoke-virtual/range {p0 .. p7}, Lorg/mozilla/javascript/Interpreter$CallFrame;->initializeArgs(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/Scriptable;)V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-static {p1, p0, p3, p2}, Lorg/mozilla/javascript/Interpreter;->enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method private static initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V
    .locals 1

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/InterpretedFunction;->createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)Lorg/mozilla/javascript/InterpretedFunction;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iget-object v0, p3, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 6
    .line 7
    iget v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    .line 8
    .line 9
    iget-object p2, p2, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 10
    .line 11
    iget-boolean p2, p2, Lorg/mozilla/javascript/InterpreterData;->evalScriptFlag:Z

    .line 12
    .line 13
    invoke-static {p0, p1, p3, v0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;IZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static interpret(Lorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->hasTopCall(Lorg/mozilla/javascript/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v7, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v0, p0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    .line 13
    .line 14
    if-eq v7, v0, :cond_1

    .line 15
    .line 16
    iput-object v0, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v1, v0

    .line 19
    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/InterpretedFunction;->securityController:Lorg/mozilla/javascript/SecurityController;

    .line 20
    .line 21
    move-object v3, p0

    .line 22
    move-object v2, p1

    .line 23
    move-object v4, p2

    .line 24
    move-object v5, p3

    .line 25
    move-object v6, p4

    .line 26
    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/SecurityController;->callWithDomain(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iput-object v7, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    .line 31
    .line 32
    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    iput-object v7, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    .line 35
    .line 36
    throw v0

    .line 37
    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getHomeObject()Lorg/mozilla/javascript/Scriptable;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    array-length v8, p4

    .line 42
    const/4 v10, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    move-object v9, p0

    .line 46
    move-object v1, p1

    .line 47
    move-object v2, p2

    .line 48
    move-object v3, p3

    .line 49
    move-object v5, p4

    .line 50
    invoke-static/range {v1 .. v10}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-boolean v2, p1, Lorg/mozilla/javascript/Context;->isContinuationsTopCall:Z

    .line 55
    .line 56
    iput-boolean v2, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->isContinuationsTopFrame:Z

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    iput-boolean v2, p1, Lorg/mozilla/javascript/Context;->isContinuationsTopCall:Z

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-static {p1, v0, v2}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method

.method private static interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 39

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    sget-object v11, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 2
    iget v2, v1, Lorg/mozilla/javascript/Context;->instructionThreshold:I

    const/4 v13, 0x1

    if-eqz v2, :cond_0

    move v14, v13

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 3
    :goto_0
    iget-object v2, v1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 4
    iget-object v2, v1, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Ljava/util/Deque;

    if-nez v2, :cond_1

    .line 5
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, v1, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Ljava/util/Deque;

    .line 6
    :cond_1
    iget-object v2, v1, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Ljava/util/Deque;

    iget-object v3, v1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :cond_2
    const/4 v15, 0x0

    if-eqz v0, :cond_4

    .line 7
    instance-of v2, v0, Lorg/mozilla/javascript/Interpreter$GeneratorState;

    if-eqz v2, :cond_3

    .line 8
    check-cast v0, Lorg/mozilla/javascript/Interpreter$GeneratorState;

    .line 9
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    move-object/from16 v3, p1

    invoke-static {v1, v3, v2, v13}, Lorg/mozilla/javascript/Interpreter;->enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V

    move-object v7, v0

    move-object v0, v15

    goto :goto_2

    :cond_3
    move-object/from16 v3, p1

    .line 10
    instance-of v2, v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    if-nez v2, :cond_5

    .line 11
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_1

    :cond_4
    move-object/from16 v3, p1

    :cond_5
    :goto_1
    move-object v7, v15

    :goto_2
    const-wide/16 v16, 0x0

    const/16 v18, -0x1

    move-object v2, v0

    move-object v4, v15

    move-object v5, v4

    move-object/from16 v19, v5

    move-wide/from16 v20, v16

    move/from16 v0, v18

    :goto_3
    if-eqz v2, :cond_7

    .line 12
    :try_start_0
    invoke-static {v1, v2, v3, v0, v14}, Lorg/mozilla/javascript/Interpreter;->processThrowable(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Interpreter$CallFrame;IZ)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v3

    .line 13
    iget-object v2, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->throwable:Ljava/lang/Object;

    .line 14
    iput-object v15, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->throwable:Ljava/lang/Object;

    :cond_6
    :goto_4
    move-object/from16 v22, v2

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v15, v7

    move/from16 v32, v13

    move/from16 v36, v14

    const/16 p2, 0x64

    :goto_5
    const/16 v33, 0x0

    goto/16 :goto_74

    :cond_7
    if-nez v7, :cond_6

    .line 15
    iget-boolean v6, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-eqz v6, :cond_6

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 16
    :goto_6
    :try_start_1
    iget-object v2, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    .line 17
    iget-object v6, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    .line 18
    iget-object v8, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_28

    const/16 p2, 0x64

    :try_start_2
    iget-object v9, v8, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_27

    move-object/from16 v23, v7

    .line 19
    :try_start_3
    iget-object v7, v8, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    .line 20
    iget-object v8, v8, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    .line 21
    iget-object v10, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    move-object/from16 v31, v15

    iget-object v15, v10, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_26

    move/from16 v32, v13

    .line 22
    :try_start_4
    iget-object v13, v10, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    .line 23
    iget-object v10, v10, Lorg/mozilla/javascript/InterpreterData;->itsBigIntTable:[Ljava/math/BigInteger;

    .line 24
    iget v12, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 25
    iput-object v3, v1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_25

    move-object/from16 v34, v3

    move-object v3, v2

    move-object/from16 v2, v34

    move-object/from16 v34, v5

    move v5, v12

    move-object v12, v4

    move-object v4, v6

    move v6, v0

    .line 26
    :goto_7
    :try_start_5
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_24

    add-int/lit8 v1, v0, 0x1

    :try_start_6
    iput v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move-object/from16 v35, v13

    aget-byte v13, v15, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_23

    move-object/from16 v25, v3

    const/16 v3, 0xaa

    if-eq v13, v3, :cond_57

    const/16 v26, 0x3

    const/4 v3, 0x4

    packed-switch v13, :pswitch_data_0

    packed-switch v13, :pswitch_data_1

    packed-switch v13, :pswitch_data_2

    .line 27
    :try_start_7
    iget-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    invoke-static {v0}, Lorg/mozilla/javascript/Interpreter;->dumpICode(Lorg/mozilla/javascript/InterpreterData;)V

    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    iget v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v1, v1, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown icode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " @ pc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    const/16 v33, 0x0

    move-object/from16 v1, p0

    move-object v3, v2

    move-object v4, v12

    move/from16 v36, v14

    move-object/from16 v2, v22

    move-object/from16 v15, v23

    :goto_8
    move-object/from16 v5, v34

    goto/16 :goto_74

    :pswitch_0
    add-int/lit8 v5, v5, 0x1

    .line 29
    aput-object v34, v25, v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v1, p0

    move-object/from16 v3, v25

    :goto_9
    move-object/from16 v13, v35

    goto :goto_7

    :pswitch_1
    move-object/from16 v1, p0

    move-object/from16 v3, v25

    .line 30
    :try_start_8
    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/Interpreter;->doRefNsName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DII)I

    move-result v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v0, v3

    move-object/from16 v29, v8

    move v8, v6

    move-object v6, v2

    move-object v2, v1

    move-object v1, v4

    :goto_a
    move-object v3, v0

    move-object v4, v1

    :goto_b
    move-object v1, v2

    move-object v2, v6

    move v6, v8

    :goto_c
    move-object/from16 v8, v29

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    :goto_d
    move-object v3, v6

    move-object v4, v12

    :goto_e
    move/from16 v36, v14

    :goto_f
    move-object/from16 v2, v22

    move-object/from16 v15, v23

    :goto_10
    move-object/from16 v5, v34

    goto/16 :goto_5

    :pswitch_2
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 31
    :try_start_9
    aget-object v4, v0, v3

    if-ne v4, v11, :cond_8

    .line 32
    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v4

    goto :goto_12

    :catchall_3
    move-exception v0

    :goto_11
    move-object v1, v2

    goto :goto_d

    .line 33
    :cond_8
    :goto_12
    iget-object v5, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 34
    invoke-static {v4, v2, v5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->nameRef(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;

    move-result-object v4

    aput-object v4, v0, v3

    :cond_9
    :goto_13
    move-object/from16 p1, v6

    move-object v6, v2

    move-object/from16 v2, p1

    move-object/from16 v24, v0

    move-object/from16 v25, v1

    move v5, v3

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    const/16 p1, 0x2

    goto/16 :goto_66

    :pswitch_3
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 35
    invoke-static {v2, v0, v1, v3, v8}, Lorg/mozilla/javascript/Interpreter;->doRefNsMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I

    move-result v5

    goto :goto_a

    :pswitch_4
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 36
    invoke-static {v2, v0, v1, v3, v8}, Lorg/mozilla/javascript/Interpreter;->doRefMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I

    move-result v5

    goto :goto_a

    :pswitch_5
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 37
    aget-object v4, v0, v3

    if-eq v4, v11, :cond_9

    .line 38
    invoke-static {v4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->escapeTextValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    goto :goto_13

    :pswitch_6
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 39
    aget-object v4, v0, v3

    if-eq v4, v11, :cond_9

    .line 40
    invoke-static {v4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->escapeAttributeValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    goto :goto_13

    :pswitch_7
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 41
    aget-object v4, v0, v3

    if-ne v4, v11, :cond_a

    .line 42
    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v4

    .line 43
    :cond_a
    invoke-static {v4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->setDefaultNamespace(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    goto :goto_13

    :pswitch_8
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 44
    invoke-static {v6}, Lorg/mozilla/javascript/Interpreter;->getCurrentFrameHomeObject(Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    if-nez v4, :cond_b

    add-int/lit8 v5, v3, 0x1

    .line 45
    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aput-object v3, v0, v5

    goto/16 :goto_a

    :cond_b
    add-int/lit8 v5, v3, 0x1

    .line 46
    invoke-interface {v4}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    aput-object v3, v0, v5

    goto/16 :goto_a

    :pswitch_9
    move-object/from16 v29, v8

    const/16 p1, 0x2

    move v8, v6

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move v3, v13

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v6, p0

    move-object/from16 v25, v4

    goto/16 :goto_64

    :pswitch_a
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 47
    aget-object v4, v0, v3

    if-ne v4, v11, :cond_c

    .line 48
    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v4

    .line 49
    :cond_c
    iget-object v5, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 50
    invoke-static {v4, v12, v2, v5}, Lorg/mozilla/javascript/ScriptRuntime;->specialRef(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Ref;

    move-result-object v4

    aput-object v4, v0, v3

    goto/16 :goto_13

    :pswitch_b
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 51
    aget-object v4, v0, v3

    check-cast v4, Lorg/mozilla/javascript/Ref;

    .line 52
    invoke-static {v4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->refDel(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    goto/16 :goto_13

    :pswitch_c
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 53
    aget-object v4, v0, v3

    if-ne v4, v11, :cond_d

    .line 54
    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v4

    :cond_d
    add-int/lit8 v5, v3, -0x1

    .line 55
    aget-object v3, v0, v5

    check-cast v3, Lorg/mozilla/javascript/Ref;

    .line 56
    iget-object v13, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 57
    invoke-static {v3, v4, v2, v13}, Lorg/mozilla/javascript/ScriptRuntime;->refSet(Lorg/mozilla/javascript/Ref;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v5

    goto/16 :goto_a

    :pswitch_d
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 58
    aget-object v4, v0, v3

    check-cast v4, Lorg/mozilla/javascript/Ref;

    .line 59
    invoke-static {v4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->refGet(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    goto/16 :goto_13

    :pswitch_e
    move-object v1, v4

    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 60
    aget-object v4, v0, v3

    check-cast v4, [Ljava/lang/Object;

    add-int/lit8 v5, v3, -0x1

    .line 61
    aget-object v5, v0, v5

    check-cast v5, [I

    add-int/lit8 v13, v3, -0x2

    .line 62
    aget-object v13, v0, v13

    check-cast v13, [Ljava/lang/Object;

    add-int/lit8 v25, v3, -0x3

    .line 63
    aget-object v3, v0, v25

    check-cast v3, Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v26, v0

    move-object v0, v3

    move-object v3, v5

    .line 64
    iget-object v5, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v38, v13

    move-object v13, v1

    move-object/from16 v1, v38

    move-object/from16 v38, v4

    move-object v4, v2

    move-object/from16 v2, v38

    :try_start_a
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptRuntime;->fillObjectLiteral(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object v2, v4

    move-object v1, v2

    move-object v2, v6

    move v6, v8

    move-object v4, v13

    move/from16 v5, v25

    :goto_14
    move-object/from16 v3, v26

    goto/16 :goto_c

    :catchall_4
    move-exception v0

    move-object v2, v4

    goto/16 :goto_11

    :pswitch_f
    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object/from16 v9, v29

    const/16 p1, 0x2

    move v8, v6

    move-object/from16 v28, v7

    move v3, v13

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    :goto_15
    move-object/from16 v6, p0

    goto/16 :goto_57

    :pswitch_10
    move v8, v6

    move/from16 v36, v14

    move-object/from16 v15, v23

    move-object/from16 v1, v31

    const/16 p1, 0x2

    move-object/from16 v6, p0

    goto/16 :goto_61

    :pswitch_11
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, 0x1

    .line 65
    :try_start_b
    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    aput-object v1, v0, v5

    :goto_16
    move-object v3, v0

    goto/16 :goto_b

    :pswitch_12
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 66
    iget v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v1, v8

    .line 67
    aget-object v5, v0, v1

    add-int/lit8 v3, v3, 0x1

    const/16 v8, 0x43

    if-ne v13, v8, :cond_e

    .line 68
    invoke-static {v5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->enumNext(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_17

    .line 69
    :cond_e
    invoke-static {v5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->enumId(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v5

    :goto_17
    aput-object v5, v0, v3

    move-object v5, v6

    move v6, v1

    move-object v1, v2

    move-object v2, v5

    move v5, v3

    move-object/from16 v8, v29

    move-object/from16 v13, v35

    :goto_18
    move-object v3, v0

    goto/16 :goto_7

    :pswitch_13
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 70
    aget-object v1, v0, v3

    if-ne v1, v11, :cond_f

    .line 71
    aget-wide v25, v4, v3

    invoke-static/range {v25 .. v26}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_f
    add-int/lit8 v5, v3, -0x1

    .line 72
    iget v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v3, v8

    const/16 v8, 0x3f

    if-ne v13, v8, :cond_10

    const/4 v8, 0x0

    goto :goto_19

    :cond_10
    const/16 v8, 0x40

    if-ne v13, v8, :cond_11

    move/from16 v8, v32

    goto :goto_19

    :cond_11
    const/16 v8, 0x42

    if-ne v13, v8, :cond_12

    const/4 v8, 0x6

    goto :goto_19

    :cond_12
    const/4 v8, 0x2

    .line 73
    :goto_19
    iget-object v13, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 74
    invoke-static {v1, v2, v13, v8}, Lorg/mozilla/javascript/ScriptRuntime;->enumInit(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v3

    move-object v1, v2

    move-object v2, v6

    move-object/from16 v8, v29

    move-object/from16 v13, v35

    move v6, v3

    goto :goto_18

    :pswitch_14
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, -0x1

    .line 75
    iget v13, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v8, v13

    .line 76
    iget-object v13, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v13, v13, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    aget-byte v1, v13, v1

    if-eqz v1, :cond_13

    move/from16 v1, v32

    goto :goto_1a

    :cond_13
    const/4 v1, 0x0

    .line 77
    :goto_1a
    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/Throwable;

    if-nez v1, :cond_14

    move-object/from16 v1, v31

    goto :goto_1b

    .line 78
    :cond_14
    aget-object v1, v0, v8

    check-cast v1, Lorg/mozilla/javascript/Scriptable;

    .line 79
    :goto_1b
    iget-object v13, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 80
    invoke-static {v3, v1, v12, v2, v13}, Lorg/mozilla/javascript/ScriptRuntime;->newCatchScope(Ljava/lang/Throwable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    aput-object v1, v0, v8

    .line 81
    iget v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_16

    :pswitch_15
    move-object/from16 v29, v8

    move v8, v6

    const/16 p1, 0x2

    move-object/from16 v6, p0

    move-object/from16 v28, v7

    move/from16 v30, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move/from16 v26, v5

    move-object/from16 v23, v2

    move-object/from16 v25, v4

    goto/16 :goto_5b

    :pswitch_16
    move-object/from16 v29, v8

    move v8, v6

    const/16 p1, 0x2

    move-object/from16 v6, p0

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v9, v29

    move/from16 v29, v8

    move/from16 v26, v5

    move-object/from16 v23, v2

    move-object/from16 v25, v4

    goto/16 :goto_5a

    :pswitch_17
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, 0x1

    .line 82
    iget v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v1, v8

    .line 83
    aget-object v3, v0, v1

    aput-object v3, v0, v5

    .line 84
    aget-wide v25, v4, v1

    aput-wide v25, v4, v5

    move-object v3, v6

    move v6, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    goto/16 :goto_c

    :pswitch_18
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 85
    invoke-static {v2, v13, v0, v4, v3}, Lorg/mozilla/javascript/Interpreter;->doInOrInstanceof(Lorg/mozilla/javascript/Context;I[Ljava/lang/Object;[DI)I

    move-result v5

    goto/16 :goto_16

    :pswitch_19
    move v8, v6

    move-object/from16 v0, v25

    move-object v6, v2

    move-object/from16 v2, p0

    .line 86
    iget v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v1, v8

    .line 87
    aget-object v0, v0, v1

    move-object v1, v2

    :goto_1c
    move-object v2, v6

    move-object v4, v12

    move/from16 v36, v14

    move-object/from16 v15, v23

    :goto_1d
    move-object/from16 v5, v34

    :goto_1e
    const/16 v33, 0x0

    goto/16 :goto_75

    :pswitch_1a
    move-object v6, v2

    move v3, v5

    move-object/from16 v0, v25

    move-object/from16 v2, p0

    .line 88
    aget-object v0, v0, v3

    if-ne v0, v11, :cond_15

    .line 89
    aget-wide v0, v4, v3

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    .line 90
    :cond_15
    iget v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v15, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v1

    .line 91
    new-instance v3, Lorg/mozilla/javascript/JavaScriptException;

    iget-object v4, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-direct {v3, v0, v4, v1}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    move-object v1, v2

    move-object v0, v3

    goto :goto_1c

    :pswitch_1b
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, 0x1

    .line 92
    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, v1, v12}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    aput-object v1, v0, v5

    goto/16 :goto_16

    :pswitch_1c
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 93
    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsRegExpLiterals:[Ljava/lang/Object;

    aget-object v1, v1, v8

    add-int/lit8 v5, v3, 0x1

    .line 94
    iget-object v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, v3, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    aput-object v1, v0, v5

    goto/16 :goto_16

    :pswitch_1d
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, -0x1

    .line 95
    invoke-static {v0, v4, v5}, Lorg/mozilla/javascript/Interpreter;->doShallowEquals([Ljava/lang/Object;[DI)Z

    move-result v1

    const/16 v3, 0x34

    if-ne v13, v3, :cond_16

    move/from16 v3, v32

    goto :goto_1f

    :cond_16
    const/4 v3, 0x0

    :goto_1f
    xor-int/2addr v1, v3

    .line 96
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v5

    goto/16 :goto_16

    :pswitch_1e
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, 0x1

    .line 97
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v5

    goto/16 :goto_16

    :pswitch_1f
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, 0x1

    .line 98
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v5

    goto/16 :goto_16

    :pswitch_20
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, 0x1

    .line 99
    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    aput-object v1, v0, v5

    goto/16 :goto_16

    :pswitch_21
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, 0x1

    .line 100
    aput-object v31, v0, v5

    goto/16 :goto_16

    :pswitch_22
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, 0x1

    .line 101
    aput-object v12, v0, v5

    goto/16 :goto_16

    :pswitch_23
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, 0x1

    .line 102
    aput-object v11, v0, v5

    .line 103
    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    aget-wide v25, v1, v8

    aput-wide v25, v4, v5

    goto/16 :goto_16

    :pswitch_24
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v3, 0x1

    .line 104
    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, v1, v12}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v5

    goto/16 :goto_16

    :pswitch_25
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move v3, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    const/16 p1, 0x2

    const/16 v33, 0x0

    move-object/from16 v1, p0

    move-object/from16 v25, v4

    move v4, v13

    goto/16 :goto_6b

    :pswitch_26
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 105
    invoke-static {v2, v6, v0, v4, v3}, Lorg/mozilla/javascript/Interpreter;->doSetElemSuper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I

    move-result v5

    goto/16 :goto_16

    :pswitch_27
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 106
    invoke-static {v2, v6, v0, v4, v3}, Lorg/mozilla/javascript/Interpreter;->doSetElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I

    move-result v5

    goto/16 :goto_16

    :pswitch_28
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 107
    invoke-static {v2, v6, v0, v4, v3}, Lorg/mozilla/javascript/Interpreter;->doGetElemSuper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I

    move-result v5

    goto/16 :goto_16

    :pswitch_29
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 108
    invoke-static {v2, v6, v0, v4, v3}, Lorg/mozilla/javascript/Interpreter;->doGetElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I

    move-result v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto/16 :goto_16

    :pswitch_2a
    move v3, v5

    move-object/from16 v29, v8

    move-object/from16 v0, v25

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 109
    :try_start_c
    aget-object v1, v0, v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-ne v1, v11, :cond_17

    .line 110
    :try_start_d
    aget-wide v25, v4, v3

    invoke-static/range {v25 .. v26}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :cond_17
    add-int/lit8 v13, v3, -0x1

    move-object v3, v0

    .line 111
    :try_start_e
    aget-object v0, v3, v13
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    if-ne v0, v11, :cond_18

    .line 112
    :try_start_f
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :cond_18
    move-object/from16 v25, v4

    .line 113
    :try_start_10
    iget-object v4, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v5, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    move-object/from16 v26, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v12

    .line 114
    :try_start_11
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptRuntime;->setSuperProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    move-object v2, v3

    :try_start_12
    aput-object v0, v26, v13

    move-object v12, v1

    move-object v1, v2

    move-object v2, v6

    move v6, v8

    move v5, v13

    :goto_20
    move-object/from16 v4, v25

    goto/16 :goto_14

    :catchall_5
    move-exception v0

    :goto_21
    move-object v4, v1

    move-object v1, v2

    :goto_22
    move-object v3, v6

    goto/16 :goto_e

    :catchall_6
    move-exception v0

    move-object v2, v3

    goto :goto_21

    :catchall_7
    move-exception v0

    move-object v1, v12

    goto :goto_21

    :pswitch_2b
    move v3, v5

    move-object/from16 v29, v8

    move-object v1, v12

    move-object/from16 v26, v25

    move-object/from16 v25, v4

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 115
    aget-object v0, v26, v3

    if-ne v0, v11, :cond_19

    .line 116
    aget-wide v4, v25, v3

    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_19
    add-int/lit8 v5, v3, -0x1

    .line 117
    aget-object v3, v26, v5

    if-ne v3, v11, :cond_1a

    .line 118
    aget-wide v3, v25, v5

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    .line 119
    :cond_1a
    iget-object v4, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 120
    invoke-static {v3, v1, v0, v2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v26, v5

    move-object v12, v1

    move-object v1, v2

    move-object v2, v6

    move v6, v8

    goto :goto_20

    :pswitch_2c
    move v3, v5

    move-object/from16 v29, v8

    move-object v1, v12

    move-object/from16 v26, v25

    move-object/from16 v25, v4

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 121
    aget-object v0, v26, v3

    if-ne v0, v11, :cond_1b

    .line 122
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_1b
    move v5, v3

    .line 123
    iget-object v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v4, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    const/16 v12, 0x24

    if-ne v13, v12, :cond_1c

    move v12, v5

    move/from16 v5, v32

    goto :goto_23

    :cond_1c
    move v12, v5

    const/4 v5, 0x0

    .line 124
    :goto_23
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptRuntime;->getSuperProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v26, v12

    :goto_24
    move-object/from16 p1, v6

    move-object v6, v2

    move-object/from16 v2, p1

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move v5, v12

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v26

    const/16 p1, 0x2

    move-object v12, v1

    goto/16 :goto_66

    :pswitch_2d
    move-object/from16 v29, v8

    move-object v1, v12

    move-object/from16 v26, v25

    move-object/from16 v25, v4

    move v12, v5

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 125
    aget-object v0, v26, v12

    if-ne v0, v11, :cond_1d

    .line 126
    aget-wide v3, v25, v12

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    .line 127
    :cond_1d
    iget-object v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 128
    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectPropNoWarn(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v26, v12

    goto :goto_24

    :pswitch_2e
    move-object/from16 v29, v8

    move-object v1, v12

    move-object/from16 v26, v25

    move-object/from16 v25, v4

    move v12, v5

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 129
    aget-object v0, v26, v12

    if-ne v0, v11, :cond_1e

    .line 130
    aget-wide v3, v25, v12

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    .line 131
    :cond_1e
    iget-object v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 132
    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v26, v12

    goto :goto_24

    :pswitch_2f
    move-object/from16 v29, v8

    move-object v1, v12

    move-object/from16 v26, v25

    move-object/from16 v25, v4

    move v12, v5

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 133
    aget-object v0, v26, v12

    if-ne v0, v11, :cond_1f

    .line 134
    aget-wide v3, v25, v12

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    .line 135
    :cond_1f
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v26, v12

    goto :goto_24

    :pswitch_30
    move-object/from16 v29, v8

    move-object v1, v12

    move-object/from16 v26, v25

    move v8, v6

    move v3, v13

    const/4 v13, 0x2

    move v6, v5

    move-object v5, v4

    move-object/from16 v4, v26

    move-object/from16 v27, v9

    move-object/from16 v25, v15

    move-object/from16 v15, v23

    move-object/from16 v1, p0

    goto/16 :goto_37

    :pswitch_31
    move-object/from16 v29, v8

    move-object v1, v12

    move-object/from16 v26, v25

    move-object/from16 v25, v4

    move v12, v5

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    if-eqz v14, :cond_20

    .line 136
    iget v0, v2, Lorg/mozilla/javascript/Context;->instructionCount:I

    add-int/lit8 v0, v0, 0x64

    iput v0, v2, Lorg/mozilla/javascript/Context;->instructionCount:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :cond_20
    sub-int v0, v12, v8

    .line 137
    :try_start_13
    aget-object v3, v26, v0

    .line 138
    instance-of v4, v3, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v4, :cond_22

    move-object/from16 v27, v9

    .line 139
    move-object v9, v3

    check-cast v9, Lorg/mozilla/javascript/InterpretedFunction;

    .line 140
    iget-object v4, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    iget-object v5, v9, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    if-ne v4, v5, :cond_21

    .line 141
    :try_start_14
    iget-object v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 142
    invoke-virtual {v9, v2, v3}, Lorg/mozilla/javascript/BaseFunction;->createObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    .line 143
    :try_start_15
    iget-object v2, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    add-int/lit8 v7, v0, 0x1

    move-object v4, v3

    const/16 v24, 0x2

    move/from16 v15, p2

    move-object v12, v1

    move-object v10, v6

    move-object/from16 v6, v25

    move-object/from16 v5, v26

    move-object/from16 v1, p0

    .line 144
    :try_start_16
    invoke-static/range {v1 .. v10}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    move-object v4, v5

    move-object v6, v10

    .line 145
    :try_start_17
    aput-object v3, v4, v0

    .line 146
    iput v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 147
    iput v13, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    move-object v3, v2

    move v0, v8

    move-object v4, v12

    move-object/from16 v2, v22

    move-object/from16 v7, v23

    move-object/from16 v15, v31

    move/from16 v13, v32

    move-object/from16 v5, v34

    goto/16 :goto_3

    :catchall_8
    move-exception v0

    :goto_25
    move-object v3, v6

    move-object v4, v12

    :goto_26
    move/from16 v36, v14

    move/from16 p2, v15

    goto/16 :goto_f

    :catchall_9
    move-exception v0

    move-object v6, v10

    goto :goto_25

    :catchall_a
    move-exception v0

    const/16 v24, 0x2

    move/from16 v15, p2

    move-object v12, v1

    move-object/from16 v1, p0

    goto/16 :goto_d

    :catchall_b
    move-exception v0

    move/from16 v15, p2

    move-object v12, v1

    move-object v1, v2

    :goto_27
    const/16 v24, 0x2

    goto/16 :goto_d

    :cond_21
    :goto_28
    move-object v12, v1

    move-object v1, v2

    move-object/from16 v5, v25

    move-object/from16 v4, v26

    const/16 v9, 0xd

    const/16 v24, 0x2

    move-object/from16 v25, v15

    move/from16 v15, p2

    goto :goto_29

    :catchall_c
    move-exception v0

    move/from16 v15, p2

    move-object v12, v1

    move-object v1, v2

    const/16 v9, 0xd

    goto :goto_27

    :cond_22
    move-object/from16 v27, v9

    goto :goto_28

    .line 148
    :goto_29
    instance-of v2, v3, Lorg/mozilla/javascript/Constructable;

    if-nez v2, :cond_24

    if-ne v3, v11, :cond_23

    .line 149
    aget-wide v2, v5, v0

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    .line 150
    :cond_23
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 151
    :cond_24
    check-cast v3, Lorg/mozilla/javascript/Constructable;

    .line 152
    instance-of v2, v3, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz v2, :cond_25

    .line 153
    move-object v2, v3

    check-cast v2, Lorg/mozilla/javascript/IdFunctionObject;

    .line 154
    invoke-static {v2}, Lorg/mozilla/javascript/NativeContinuation;->isContinuationConstructor(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 155
    iget-object v2, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v13, 0x0

    .line 156
    invoke-static {v1, v3, v13}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_2a

    :cond_25
    add-int/lit8 v2, v0, 0x1

    .line 157
    invoke-static {v4, v5, v2, v8}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v2

    .line 158
    iget-object v13, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v3, v1, v13, v2}, Lorg/mozilla/javascript/Constructable;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    aput-object v2, v4, v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    :goto_2a
    move-object v3, v4

    move-object v4, v5

    move-object v2, v6

    move v6, v8

    move/from16 p2, v15

    :goto_2b
    move-object/from16 v15, v25

    move-object/from16 v9, v27

    move-object/from16 v8, v29

    move-object/from16 v13, v35

    move v5, v0

    goto/16 :goto_7

    :pswitch_32
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    const/16 v9, 0xd

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    .line 159
    :try_start_18
    invoke-static {v6, v12}, Lorg/mozilla/javascript/Interpreter;->stack_numeric(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Ljava/lang/Number;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->negate(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    .line 161
    instance-of v3, v0, Ljava/math/BigInteger;

    if-eqz v3, :cond_26

    .line 162
    aput-object v0, v4, v12

    :goto_2c
    move-object/from16 v28, v7

    move/from16 v36, v14

    move/from16 p2, v15

    :goto_2d
    move-object/from16 v15, v23

    move/from16 p1, v24

    move-object/from16 v7, v25

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move v5, v12

    move-object v12, v2

    move-object v2, v6

    :goto_2e
    move-object v6, v1

    goto/16 :goto_66

    :catchall_d
    move-exception v0

    move-object v4, v2

    move-object v3, v6

    goto/16 :goto_26

    .line 163
    :cond_26
    aput-object v11, v4, v12

    .line 164
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v36

    aput-wide v36, v5, v12

    goto :goto_2c

    :pswitch_33
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    const/16 v9, 0xd

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    .line 165
    invoke-static {v6, v12}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v36

    .line 166
    aput-object v11, v4, v12

    .line 167
    aput-wide v36, v5, v12

    goto :goto_2c

    :pswitch_34
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    const/16 v9, 0xd

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    .line 168
    invoke-static {v6, v4, v5, v12}, Lorg/mozilla/javascript/Interpreter;->doBitNOT(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I

    move-result v0

    :goto_2f
    move-object v12, v2

    goto/16 :goto_2a

    :pswitch_35
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    const/16 v9, 0xd

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    .line 169
    invoke-static {v6, v12}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v12

    goto :goto_2c

    :pswitch_36
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    const/16 v9, 0xd

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    .line 170
    invoke-static {v6, v13, v4, v5, v12}, Lorg/mozilla/javascript/Interpreter;->doArithmetic(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v0

    goto :goto_2f

    :pswitch_37
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    const/16 v9, 0xd

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    add-int/lit8 v0, v12, -0x1

    .line 171
    invoke-static {v4, v5, v0, v1}, Lorg/mozilla/javascript/Interpreter;->doAdd([Ljava/lang/Object;[DILorg/mozilla/javascript/Context;)V

    goto :goto_2f

    :pswitch_38
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    const/16 v9, 0xd

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    add-int/lit8 v0, v12, -0x1

    .line 172
    invoke-static {v6, v0}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v36

    .line 173
    invoke-static {v6, v12}, Lorg/mozilla/javascript/Interpreter;->stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v3, v12, -0x1

    .line 174
    aput-object v11, v4, v3

    .line 175
    invoke-static/range {v36 .. v37}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(D)J

    move-result-wide v12

    ushr-long/2addr v12, v0

    long-to-double v12, v12

    aput-wide v12, v5, v3

    move-object/from16 p2, v5

    move v5, v3

    move-object v3, v4

    move-object/from16 v4, p2

    move-object v12, v2

    move-object v2, v6

    move v6, v8

    move/from16 p2, v15

    :goto_30
    move-object/from16 v15, v25

    move-object/from16 v9, v27

    goto/16 :goto_c

    :pswitch_39
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    const/16 v9, 0xd

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    .line 176
    invoke-static {v6, v13, v4, v5, v12}, Lorg/mozilla/javascript/Interpreter;->doCompare(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v0

    goto/16 :goto_2f

    :pswitch_3a
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    const/16 v9, 0xd

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    add-int/lit8 v0, v12, -0x1

    .line 177
    invoke-static {v4, v5, v0}, Lorg/mozilla/javascript/Interpreter;->doEquals([Ljava/lang/Object;[DI)Z

    move-result v3

    if-ne v13, v9, :cond_27

    move/from16 v12, v32

    goto :goto_31

    :cond_27
    const/4 v12, 0x0

    :goto_31
    xor-int/2addr v3, v12

    .line 178
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v0

    goto/16 :goto_2f

    :pswitch_3b
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    const/16 v9, 0xd

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    .line 179
    invoke-static {v6, v13, v4, v5, v12}, Lorg/mozilla/javascript/Interpreter;->doBitOp(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    goto/16 :goto_2f

    :pswitch_3c
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    const/16 v9, 0xd

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    move/from16 v15, p2

    .line 180
    :try_start_19
    aget-object v0, v4, v12
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_f

    if-ne v0, v11, :cond_28

    .line 181
    :try_start_1a
    aget-wide v36, v5, v12

    invoke-static/range {v36 .. v37}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    :cond_28
    add-int/lit8 v3, v12, -0x1

    .line 182
    :try_start_1b
    aget-object v12, v4, v3

    check-cast v12, Lorg/mozilla/javascript/Scriptable;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_f

    .line 183
    iget-object v9, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move/from16 p2, v15

    const/16 v15, 0x8

    if-ne v13, v15, :cond_29

    .line 184
    :try_start_1c
    invoke-static {v12, v0, v1, v9, v2}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_33

    :catchall_e
    move-exception v0

    :goto_32
    move-object v4, v2

    goto/16 :goto_22

    .line 185
    :cond_29
    invoke-static {v12, v0, v1, v9, v2}, Lorg/mozilla/javascript/ScriptRuntime;->strictSetName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_33
    aput-object v0, v4, v3

    :goto_34
    move-object v9, v5

    move v5, v3

    move-object v3, v4

    move-object v4, v9

    move-object v12, v2

    move-object v2, v6

    move v6, v8

    goto/16 :goto_30

    :catchall_f
    move-exception v0

    move/from16 p2, v15

    goto :goto_32

    :pswitch_3d
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    add-int/lit8 v0, v12, -0x1

    .line 186
    invoke-static {v6, v12}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 187
    iget v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v3, v3, 0x2

    iput v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    :goto_35
    move-object v12, v2

    move-object v3, v4

    move-object v4, v5

    move-object v2, v6

    move v6, v8

    goto/16 :goto_2b

    :cond_2a
    move-object v12, v2

    move-object v2, v6

    move-object/from16 v28, v7

    move/from16 v36, v14

    move-object/from16 v15, v23

    move/from16 p1, v24

    move-object/from16 v7, v25

    const/16 v33, 0x0

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move v5, v0

    goto/16 :goto_6f

    :pswitch_3e
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    add-int/lit8 v0, v12, -0x1

    .line 188
    invoke-static {v6, v12}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 189
    iget v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v3, v3, 0x2

    iput v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto :goto_35

    :pswitch_3f
    move-object/from16 v29, v8

    const/16 v24, 0x2

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    const/16 v33, 0x0

    move-object/from16 v1, p0

    move-object/from16 v25, v5

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move v5, v12

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move/from16 p1, v24

    move-object v12, v2

    move-object/from16 v24, v4

    move-object v2, v6

    goto/16 :goto_6f

    :pswitch_40
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    .line 190
    aget-object v0, v4, v12

    iput-object v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    .line 191
    aget-wide v3, v5, v12

    iput-wide v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    move-object v12, v2

    move-object v2, v6

    move/from16 v36, v14

    move-object/from16 v15, v23

    move/from16 p1, v24

    move-object v6, v1

    :goto_36
    move-object/from16 v1, v31

    goto/16 :goto_61

    :pswitch_41
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    .line 192
    iget-object v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->leaveWith(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    iput-object v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v28, v7

    move/from16 v36, v14

    goto/16 :goto_2d

    :pswitch_42
    const/16 v24, 0x2

    move-object/from16 v1, p0

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v15

    .line 193
    aget-object v0, v4, v12

    if-ne v0, v11, :cond_2b

    .line 194
    aget-wide v36, v5, v12

    invoke-static/range {v36 .. v37}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_2b
    add-int/lit8 v3, v12, -0x1

    .line 195
    iget-object v9, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, v1, v9}, Lorg/mozilla/javascript/ScriptRuntime;->enterWith(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    iput-object v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    goto/16 :goto_34

    :pswitch_43
    move-object/from16 v29, v8

    const/16 v24, 0x2

    move v8, v6

    move-object v6, v2

    move-object v2, v12

    move v12, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move v1, v12

    move-object v12, v2

    move-object v2, v6

    move v6, v1

    move v3, v13

    move/from16 v13, v24

    move-object/from16 v27, v9

    move-object/from16 v25, v15

    move-object/from16 v1, p0

    move-object/from16 v15, v23

    .line 196
    :goto_37
    :try_start_1d
    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/Interpreter;->doDelName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v0

    move-object v3, v4

    move-object v4, v5

    :goto_38
    move-object/from16 v1, p0

    move v5, v0

    :goto_39
    move v6, v8

    move-object/from16 v23, v15

    goto/16 :goto_30

    :catchall_10
    move-exception v0

    const/16 v33, 0x0

    move-object/from16 v1, p0

    move-object v3, v2

    move-object v4, v12

    move/from16 v36, v14

    :goto_3a
    move-object/from16 v2, v22

    goto/16 :goto_8

    :pswitch_44
    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object/from16 v3, v25

    const/4 v13, 0x2

    move v8, v6

    move-object/from16 v25, v15

    move-object/from16 v15, v23

    add-int/lit8 v0, v5, 0x1

    .line 197
    aget-object v1, v3, v5

    aput-object v1, v3, v0

    .line 198
    aget-wide v5, v4, v5

    aput-wide v5, v4, v0

    goto :goto_38

    :pswitch_45
    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object/from16 v3, v25

    const/4 v13, 0x2

    move v8, v6

    move-object/from16 v25, v15

    move-object/from16 v15, v23

    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v1, v5, -0x1

    .line 199
    aget-object v6, v3, v1

    aput-object v6, v3, v0

    .line 200
    aget-wide v23, v4, v1

    aput-wide v23, v4, v0

    add-int/lit8 v0, v5, 0x2

    .line 201
    aget-object v1, v3, v5

    aput-object v1, v3, v0

    .line 202
    aget-wide v5, v4, v5

    aput-wide v5, v4, v0

    goto :goto_38

    :pswitch_46
    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object/from16 v3, v25

    const/4 v13, 0x2

    move v8, v6

    move-object/from16 v25, v15

    move-object/from16 v15, v23

    .line 203
    aget-object v0, v3, v5

    add-int/lit8 v1, v5, -0x1

    .line 204
    aget-object v6, v3, v1

    aput-object v6, v3, v5

    .line 205
    aput-object v0, v3, v1

    .line 206
    aget-wide v23, v4, v5

    .line 207
    aget-wide v36, v4, v1

    aput-wide v36, v4, v5

    .line 208
    aput-wide v23, v4, v1

    move-object/from16 v6, p0

    move-object/from16 v24, v3

    move-object/from16 v28, v7

    :goto_3b
    move/from16 p1, v13

    move/from16 v36, v14

    move-object/from16 v7, v25

    move-object/from16 v25, v4

    goto/16 :goto_66

    :pswitch_47
    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object/from16 v3, v25

    const/4 v13, 0x2

    move v8, v6

    move-object/from16 v25, v15

    move-object/from16 v15, v23

    .line 209
    aput-object v31, v3, v5

    :goto_3c
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v1, p0

    goto/16 :goto_39

    :pswitch_48
    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object/from16 v3, v25

    const/4 v13, 0x2

    move v8, v6

    move-object/from16 v25, v15

    move-object/from16 v15, v23

    .line 210
    aget-object v0, v3, v5

    iput-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    .line 211
    aget-wide v0, v4, v5

    iput-wide v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    .line 212
    aput-object v31, v3, v5

    goto :goto_3c

    :pswitch_49
    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object/from16 v3, v25

    const/4 v13, 0x2

    move v8, v6

    move-object/from16 v25, v15

    move-object/from16 v15, v23

    add-int/lit8 v0, v5, -0x1

    .line 213
    invoke-static {v2, v5}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 214
    iget v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v1, v13

    iput v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_38

    :cond_2c
    add-int/lit8 v5, v5, -0x2

    .line 215
    aput-object v31, v3, v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    const/16 v33, 0x0

    move-object/from16 v1, p0

    move-object/from16 v24, v3

    move-object/from16 v28, v7

    move/from16 p1, v13

    move/from16 v36, v14

    move-object/from16 v7, v25

    move-object/from16 v25, v4

    goto/16 :goto_6f

    :pswitch_4a
    move-object v1, v9

    move v9, v6

    move-object v6, v1

    const/4 v13, 0x2

    move-object/from16 v1, p0

    move-object/from16 v3, v25

    move-object/from16 v25, v15

    move-object/from16 v15, v23

    .line 216
    :try_start_1e
    invoke-static/range {v1 .. v9}, Lorg/mozilla/javascript/Interpreter;->doVarIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I

    move-result v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_11

    move/from16 v27, v9

    move-object v9, v8

    move/from16 v8, v27

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object v6, v1

    :goto_3d
    move-object v1, v6

    move v6, v8

    move-object v8, v9

    move-object/from16 v23, v15

    move-object/from16 v15, v25

    move-object/from16 v9, v27

    move-object/from16 v7, v28

    goto/16 :goto_9

    :catchall_11
    move-exception v0

    move-object v6, v1

    :goto_3e
    move-object v3, v2

    :goto_3f
    move-object v4, v12

    move/from16 v36, v14

    :goto_40
    move-object/from16 v2, v22

    goto/16 :goto_10

    :pswitch_4b
    const/4 v13, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object/from16 v3, v25

    move-object v9, v8

    move-object/from16 v25, v15

    move-object/from16 v15, v23

    move v8, v6

    move-object/from16 v6, p0

    add-int/lit8 v5, v5, 0x1

    .line 217
    :try_start_1f
    iget-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    aget-byte v1, v25, v1

    .line 218
    invoke-static {v0, v12, v6, v1}, Lorg/mozilla/javascript/ScriptRuntime;->nameIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v5

    .line 219
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto :goto_3d

    :catchall_12
    move-exception v0

    move-object v3, v2

    move-object v1, v6

    goto :goto_3f

    :pswitch_4c
    const/4 v13, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object/from16 v3, v25

    move-object v9, v8

    move-object/from16 v25, v15

    move-object/from16 v15, v23

    move v8, v6

    move-object/from16 v6, p0

    .line 220
    aget-object v0, v3, v5

    if-ne v0, v11, :cond_2d

    .line 221
    aget-wide v0, v4, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    .line 222
    :cond_2d
    iget-object v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget v7, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v7, v25, v7

    .line 223
    invoke-static {v0, v12, v6, v1, v7}, Lorg/mozilla/javascript/ScriptRuntime;->propIncrDecr(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v5

    .line 224
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_12

    move-object/from16 v24, v3

    move-object/from16 v29, v9

    goto/16 :goto_3b

    :pswitch_4d
    const/4 v13, 0x2

    move-object/from16 v1, p0

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v3, v15

    move-object/from16 v15, v23

    move-object v9, v8

    move v8, v6

    move v6, v5

    move-object v5, v4

    move-object/from16 v4, v25

    .line 225
    :try_start_20
    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/Interpreter;->doElemIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[B[Ljava/lang/Object;[DI)I

    move-result v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_13

    move-object v6, v2

    move-object v7, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object v2, v1

    move v5, v0

    :goto_41
    move-object v1, v2

    :goto_42
    move-object v2, v6

    move v6, v8

    move-object v8, v9

    move-object/from16 v23, v15

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    :goto_43
    move-object/from16 v9, v27

    move-object/from16 v13, v35

    :goto_44
    move-object v15, v7

    move-object/from16 v7, v28

    goto/16 :goto_7

    :catchall_13
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    :goto_45
    move-object v3, v6

    goto/16 :goto_3f

    :pswitch_4e
    const/4 v13, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 226
    :try_start_21
    aget-object v0, v24, v5

    check-cast v0, Lorg/mozilla/javascript/Ref;

    .line 227
    iget-object v3, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    aget-byte v1, v7, v1

    .line 228
    invoke-static {v0, v2, v3, v1}, Lorg/mozilla/javascript/ScriptRuntime;->refIncrDecr(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v24, v5

    .line 229
    iget v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    :goto_46
    move-object/from16 p1, v6

    move-object v6, v2

    move-object/from16 v2, p1

    :goto_47
    move-object/from16 v29, v9

    move/from16 p1, v13

    move/from16 v36, v14

    goto/16 :goto_66

    :catchall_14
    move-exception v0

    move-object v1, v2

    goto :goto_45

    :pswitch_4f
    const/4 v13, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 230
    iget v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v0, v8

    .line 231
    aget-object v1, v24, v0

    check-cast v1, Lorg/mozilla/javascript/Scriptable;

    iput-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    :goto_48
    move-object v1, v2

    move-object v2, v6

    move-object v8, v9

    move-object/from16 v23, v15

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    :goto_49
    move-object/from16 v9, v27

    move-object/from16 v13, v35

    :goto_4a
    move v6, v0

    goto :goto_44

    :pswitch_50
    const/4 v13, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 232
    iget v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v0, v8

    .line 233
    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    aput-object v1, v24, v0

    goto :goto_48

    :pswitch_51
    const/4 v13, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v5, v5, 0x1

    .line 234
    iget-object v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 235
    invoke-static {v0, v12}, Lorg/mozilla/javascript/ScriptRuntime;->typeofName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_41

    :pswitch_52
    const/4 v13, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v0, v5, 0x1

    .line 236
    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 237
    invoke-static {v12, v2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getNameFunctionAndThis(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    aput-object v1, v24, v0

    add-int/lit8 v5, v5, 0x2

    .line 238
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_41

    :pswitch_53
    const/4 v13, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 239
    aget-object v0, v24, v5

    if-ne v0, v11, :cond_2e

    .line 240
    aget-wide v0, v25, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    .line 241
    :cond_2e
    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 242
    invoke-static {v0, v12, v2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    aput-object v0, v24, v5

    add-int/lit8 v5, v5, 0x1

    .line 243
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_41

    :pswitch_54
    const/4 v13, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v0, v5, -0x1

    .line 244
    aget-object v1, v24, v0

    if-ne v1, v11, :cond_2f

    .line 245
    aget-wide v3, v25, v0

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    .line 246
    :cond_2f
    aget-object v3, v24, v5

    if-ne v3, v11, :cond_30

    .line 247
    aget-wide v3, v25, v5

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    .line 248
    :cond_30
    iget-object v4, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 249
    invoke-static {v1, v3, v2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->getElemFunctionAndThis(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    aput-object v1, v24, v0

    .line 250
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_46

    :pswitch_55
    const/4 v13, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 251
    aget-object v0, v24, v5

    if-ne v0, v11, :cond_31

    .line 252
    aget-wide v0, v25, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    .line 253
    :cond_31
    invoke-static {v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->getValueFunctionAndThis(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    aput-object v0, v24, v5

    add-int/lit8 v5, v5, 0x1

    .line 254
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_41

    :pswitch_56
    const/4 v13, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v0, v5, 0x1

    .line 255
    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 256
    invoke-static {v12, v2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getNameFunctionAndThisOptional(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    aput-object v1, v24, v0

    add-int/lit8 v5, v5, 0x2

    .line 257
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_41

    :pswitch_57
    const/4 v13, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 258
    aget-object v0, v24, v5

    if-ne v0, v11, :cond_32

    .line 259
    aget-wide v0, v25, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    .line 260
    :cond_32
    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 261
    invoke-static {v0, v12, v2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThisOptional(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    aput-object v0, v24, v5

    add-int/lit8 v5, v5, 0x1

    .line 262
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_41

    :pswitch_58
    const/4 v13, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    add-int/lit8 v0, v5, -0x1

    .line 263
    aget-object v1, v24, v0

    if-ne v1, v11, :cond_33

    .line 264
    aget-wide v3, v25, v0

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    .line 265
    :cond_33
    aget-object v3, v24, v5

    if-ne v3, v11, :cond_34

    .line 266
    aget-wide v3, v25, v5

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    .line 267
    :cond_34
    iget-object v4, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 268
    invoke-static {v1, v3, v2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->getElemFunctionAndThisOptional(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    aput-object v1, v24, v0

    .line 269
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_46

    :pswitch_59
    const/4 v13, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 270
    aget-object v0, v24, v5

    if-ne v0, v11, :cond_35

    .line 271
    aget-wide v0, v25, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    .line 272
    :cond_35
    invoke-static {v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->getValueFunctionAndThisOptional(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    aput-object v0, v24, v5

    add-int/lit8 v5, v5, 0x1

    .line 273
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_41

    :pswitch_5a
    const/4 v13, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, p0

    .line 274
    iget-object v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    .line 275
    invoke-static {v2, v0, v1, v8}, Lorg/mozilla/javascript/InterpretedFunction;->createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object v0

    .line 276
    iget-object v1, v0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-ne v1, v3, :cond_36

    move/from16 v26, v5

    .line 277
    invoke-static {v6}, Lorg/mozilla/javascript/Interpreter;->getCurrentFrameHomeObject(Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    add-int/lit8 v23, v26, 0x1

    move-object v3, v0

    .line 278
    new-instance v0, Lorg/mozilla/javascript/ArrowFunction;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_14

    :try_start_22
    iget-object v2, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v4, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_16

    move-object/from16 v1, p0

    :try_start_23
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/ArrowFunction;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V

    aput-object v0, v24, v23

    move-object v2, v6

    move v6, v8

    move-object v8, v9

    move/from16 v5, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v9, v27

    move-object/from16 v13, v35

    move-object/from16 v23, v15

    goto/16 :goto_44

    :catchall_15
    move-exception v0

    goto/16 :goto_45

    :catchall_16
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_45

    :cond_36
    move-object v3, v0

    move-object v1, v2

    move/from16 v26, v5

    add-int/lit8 v5, v26, 0x1

    .line 279
    aput-object v3, v24, v5

    goto/16 :goto_42

    :pswitch_5b
    const/4 v13, 0x2

    move-object/from16 v1, p0

    move/from16 v26, v5

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    .line 280
    iget-object v0, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-static {v1, v0, v2, v8}, Lorg/mozilla/javascript/Interpreter;->initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V

    move-object v2, v6

    move-object/from16 v29, v9

    move/from16 p1, v13

    move/from16 v36, v14

    move/from16 v5, v26

    goto/16 :goto_2e

    :pswitch_5c
    const/4 v13, 0x2

    move-object/from16 v1, p0

    move/from16 v26, v5

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move-object v9, v8

    move v8, v6

    move-object v6, v2

    if-eqz v14, :cond_37

    .line 281
    iget v0, v1, Lorg/mozilla/javascript/Context;->instructionCount:I

    add-int/lit8 v0, v0, 0x64

    iput v0, v1, Lorg/mozilla/javascript/Context;->instructionCount:I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_15

    :cond_37
    move-object v3, v7

    move v7, v8

    const/4 v8, 0x0

    move-object v2, v6

    move-object/from16 v4, v25

    move/from16 v5, v26

    move-object v6, v3

    move-object/from16 v3, v24

    .line 282
    :try_start_24
    invoke-static/range {v1 .. v8}, Lorg/mozilla/javascript/Interpreter;->doCallSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[BIZ)I

    move-result v5

    move v8, v7

    move-object/from16 v23, v15

    move-object/from16 v7, v28

    move-object/from16 v13, v35

    move-object v15, v6

    move v6, v8

    move-object v8, v9

    move-object/from16 v9, v27

    goto/16 :goto_7

    :catchall_17
    move-exception v0

    goto/16 :goto_3e

    :pswitch_5d
    const/4 v13, 0x2

    move-object/from16 v1, p0

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object/from16 v3, v25

    move-object v9, v8

    move v8, v6

    move-object v6, v15

    move-object/from16 v15, v23

    if-eqz v14, :cond_38

    .line 283
    iget v0, v1, Lorg/mozilla/javascript/Context;->instructionCount:I

    add-int/lit8 v0, v0, 0x64

    iput v0, v1, Lorg/mozilla/javascript/Context;->instructionCount:I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_17

    :cond_38
    move v7, v8

    const/4 v8, 0x1

    .line 284
    :try_start_25
    invoke-static/range {v1 .. v8}, Lorg/mozilla/javascript/Interpreter;->doCallSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[BIZ)I

    move-result v5
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_11

    move-object/from16 v24, v3

    move v8, v7

    move-object v7, v6

    move-object v6, v1

    move-object v1, v6

    move v6, v8

    move-object v8, v9

    move-object/from16 v23, v15

    move-object/from16 v3, v24

    goto/16 :goto_43

    :pswitch_5e
    const/4 v13, 0x2

    move v8, v6

    move-object/from16 v15, v23

    move-object/from16 v6, p0

    .line 285
    :try_start_26
    sget-object v0, Lorg/mozilla/javascript/Interpreter;->undefined:Ljava/lang/Object;

    iput-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    move/from16 p1, v13

    move/from16 v36, v14

    goto/16 :goto_36

    :pswitch_5f
    const/4 v13, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    add-int/lit8 v5, v5, 0x1

    .line 286
    aput-object v11, v24, v5

    add-int/lit8 v0, v0, 0x3

    int-to-double v0, v0

    .line 287
    aput-wide v0, v4, v5

    move-object/from16 v25, v4

    move-object v1, v6

    move-object/from16 v29, v9

    move/from16 p1, v13

    move/from16 v36, v14

    :goto_4b
    const/16 v33, 0x0

    goto/16 :goto_6f

    :pswitch_60
    const/4 v13, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    .line 288
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    add-int/lit8 v1, v0, 0x1

    if-ne v5, v1, :cond_39

    .line 289
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v0, v8

    .line 290
    aget-object v1, v24, v5

    aput-object v1, v24, v0

    .line 291
    aget-wide v25, v4, v5

    aput-wide v25, v4, v0

    add-int/lit8 v5, v5, -0x1

    move-object v1, v6

    move-object v8, v9

    move-object/from16 v23, v15

    :goto_4c
    move-object/from16 v3, v24

    goto/16 :goto_49

    :cond_39
    if-eq v5, v0, :cond_3a

    .line 292
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_3a
    move-object/from16 v25, v4

    goto/16 :goto_47

    :pswitch_61
    const/4 v13, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    if-eqz v14, :cond_3b

    const/4 v1, 0x0

    .line 293
    invoke-static {v6, v2, v1}, Lorg/mozilla/javascript/Interpreter;->addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_12

    .line 294
    :cond_3b
    :try_start_27
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v0, v8

    .line 295
    aget-object v1, v24, v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_19

    if-eq v1, v11, :cond_3c

    move-object v0, v1

    move-object v1, v6

    move-object v4, v12

    move/from16 v36, v14

    goto/16 :goto_1d

    :cond_3c
    move/from16 p1, v13

    move/from16 v36, v14

    .line 296
    :try_start_28
    aget-wide v13, v4, v0

    double-to-int v1, v13

    iput v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    if-eqz v36, :cond_3d

    .line 297
    iput v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    goto :goto_4e

    :catchall_18
    move-exception v0

    :goto_4d
    move-object v3, v2

    move-object v1, v6

    move-object v4, v12

    goto/16 :goto_40

    :cond_3d
    :goto_4e
    move-object v1, v6

    move-object v8, v9

    move-object/from16 v23, v15

    move-object/from16 v3, v24

    :goto_4f
    move-object/from16 v9, v27

    :goto_50
    move-object/from16 v13, v35

    move/from16 v14, v36

    goto/16 :goto_4a

    :catchall_19
    move-exception v0

    move/from16 p1, v13

    move/from16 v36, v14

    goto :goto_4d

    :pswitch_62
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    .line 298
    iput v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    .line 299
    iget-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v0, :cond_3e

    .line 300
    invoke-static {v7, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v0

    .line 301
    iget-object v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    invoke-interface {v1, v6, v0}, Lorg/mozilla/javascript/debug/DebugFrame;->onLineChange(Lorg/mozilla/javascript/Context;I)V

    .line 302
    :cond_3e
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v0, v0, 0x2

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    :goto_51
    move-object/from16 v25, v4

    move-object/from16 v29, v9

    goto/16 :goto_66

    :pswitch_63
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    add-int/lit8 v5, v5, 0x1

    .line 303
    aput-object v11, v24, v5

    .line 304
    invoke-static {v7, v1}, Lorg/mozilla/javascript/Interpreter;->getShort([BI)I

    move-result v0

    int-to-double v0, v0

    aput-wide v0, v4, v5

    .line 305
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v0, v0, 0x2

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    :goto_52
    move-object v1, v6

    move v6, v8

    :goto_53
    move-object v8, v9

    move-object/from16 v23, v15

    move-object/from16 v3, v24

    move-object/from16 v9, v27

    :goto_54
    move-object/from16 v13, v35

    move/from16 v14, v36

    goto/16 :goto_44

    :pswitch_64
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    add-int/lit8 v5, v5, 0x1

    .line 306
    aput-object v11, v24, v5

    .line 307
    invoke-static {v7, v1}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result v0

    int-to-double v0, v0

    aput-wide v0, v4, v5

    .line 308
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v0, v3

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto :goto_52

    :pswitch_65
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    .line 309
    iget-object v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->literalIds:[Ljava/lang/Object;

    aget-object v3, v3, v8

    check-cast v3, [Ljava/lang/Object;

    .line 310
    aget-byte v1, v7, v1

    if-eqz v1, :cond_3f

    move/from16 v1, v32

    goto :goto_55

    :cond_3f
    const/4 v1, 0x0

    :goto_55
    add-int/lit8 v0, v0, 0x2

    .line 311
    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v0, v5, 0x1

    .line 312
    iget-object v13, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {v6, v13}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v13

    aput-object v13, v24, v0

    add-int/lit8 v0, v5, 0x2

    if-eqz v1, :cond_40

    .line 313
    array-length v1, v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_56

    :cond_40
    move-object v1, v3

    :goto_56
    aput-object v1, v24, v0

    add-int/lit8 v0, v5, 0x3

    .line 314
    array-length v1, v3

    new-array v1, v1, [I

    aput-object v1, v24, v0

    add-int/lit8 v5, v5, 0x4

    .line 315
    array-length v0, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v0, v24, v5

    .line 316
    aput-wide v16, v4, v5

    goto :goto_52

    :pswitch_66
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    add-int/lit8 v0, v5, 0x1

    .line 317
    new-array v1, v8, [I

    aput-object v1, v24, v0

    add-int/lit8 v5, v5, 0x2

    .line 318
    new-array v0, v8, [Ljava/lang/Object;

    aput-object v0, v24, v5

    .line 319
    aput-wide v16, v4, v5

    goto/16 :goto_52

    :pswitch_67
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    .line 320
    aget-object v0, v24, v5

    if-ne v0, v11, :cond_41

    .line 321
    aget-wide v0, v4, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_41
    add-int/lit8 v5, v5, -0x1

    .line 322
    aget-wide v13, v4, v5

    double-to-int v1, v13

    .line 323
    aget-object v3, v24, v5

    check-cast v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    int-to-double v0, v1

    .line 324
    aput-wide v0, v4, v5

    goto/16 :goto_52

    :pswitch_68
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    .line 325
    aget-object v0, v24, v5

    check-cast v0, Lorg/mozilla/javascript/InterpretedFunction;

    add-int/lit8 v1, v5, -0x4

    .line 326
    aget-object v1, v24, v1

    check-cast v1, Lorg/mozilla/javascript/Scriptable;

    .line 327
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/BaseFunction;->setHomeObject(Lorg/mozilla/javascript/Scriptable;)V

    goto/16 :goto_51

    :pswitch_69
    move-object/from16 v27, v9

    move-object v9, v8

    const/16 p1, 0x2

    move-object/from16 v28, v7

    move v3, v13

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move v8, v6

    goto/16 :goto_15

    .line 328
    :goto_57
    aget-object v0, v24, v5

    check-cast v0, [Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    .line 329
    aget-object v1, v24, v5

    check-cast v1, [I

    const/16 v1, -0x26

    if-ne v3, v1, :cond_42

    .line 330
    iget-object v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->literalIds:[Ljava/lang/Object;

    aget-object v1, v1, v8

    check-cast v1, [I

    goto :goto_58

    :cond_42
    move-object/from16 v1, v31

    .line 331
    :goto_58
    iget-object v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 332
    invoke-static {v0, v1, v6, v3}, Lorg/mozilla/javascript/ScriptRuntime;->newArrayLiteral([Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 333
    aput-object v0, v24, v5

    goto/16 :goto_52

    :pswitch_6a
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object/from16 v24, v25

    const/16 p1, 0x2

    move-object/from16 v1, p0

    move-object/from16 v3, v24

    move-object/from16 v13, v35

    const/4 v6, 0x0

    goto/16 :goto_7

    :pswitch_6b
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object/from16 v24, v25

    const/16 p1, 0x2

    move-object/from16 v1, p0

    move-object/from16 v3, v24

    move/from16 v6, v32

    goto/16 :goto_9

    :pswitch_6c
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object/from16 v24, v25

    const/16 p1, 0x2

    move-object/from16 v1, p0

    move/from16 v6, p1

    :goto_59
    move-object/from16 v3, v24

    goto/16 :goto_9

    :pswitch_6d
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object/from16 v24, v25

    const/16 p1, 0x2

    move-object/from16 v1, p0

    move-object/from16 v3, v24

    move/from16 v6, v26

    goto/16 :goto_9

    :pswitch_6e
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move-object/from16 v24, v25

    const/16 p1, 0x2

    move-object/from16 v1, p0

    move v6, v3

    goto :goto_59

    :pswitch_6f
    const/16 p1, 0x2

    move-object/from16 v6, p0

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object v9, v8

    const/4 v0, 0x5

    move-object v1, v6

    goto/16 :goto_4c

    :pswitch_70
    const/16 p1, 0x2

    move-object/from16 v6, p0

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object v9, v8

    .line 334
    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v0, v0, 0x2

    .line 335
    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move-object v3, v6

    move v6, v1

    move-object v1, v3

    goto/16 :goto_53

    :pswitch_71
    const/16 p1, 0x2

    move-object/from16 v6, p0

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object v9, v8

    .line 336
    invoke-static {v7, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v0

    .line 337
    iget v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_4e

    :pswitch_72
    const/16 p1, 0x2

    move-object/from16 v6, p0

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object v9, v8

    .line 338
    invoke-static {v7, v1}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result v0

    .line 339
    iget v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v1, v3

    iput v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_4e

    :pswitch_73
    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    const/16 p1, 0x2

    const/16 v33, 0x0

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    .line 340
    aget-object v12, v35, v33

    goto/16 :goto_52

    :pswitch_74
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    .line 341
    aget-object v12, v35, v32

    goto/16 :goto_52

    :pswitch_75
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    .line 342
    aget-object v12, v35, p1

    goto/16 :goto_52

    :pswitch_76
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    .line 343
    aget-object v12, v35, v26

    goto/16 :goto_52

    :pswitch_77
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    .line 344
    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    aget-object v12, v35, v1

    add-int/lit8 v0, v0, 0x2

    .line 345
    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_52

    :pswitch_78
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    .line 346
    invoke-static {v7, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v0

    aget-object v12, v35, v0

    .line 347
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v0, v0, 0x2

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_52

    :pswitch_79
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object v9, v8

    move v8, v6

    move-object/from16 v6, p0

    .line 348
    invoke-static {v7, v1}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result v0

    aget-object v12, v35, v0

    .line 349
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v0, v3

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_52

    :pswitch_7a
    const/16 p1, 0x2

    move-object/from16 v6, p0

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object v9, v8

    add-int/lit8 v0, v0, 0x2

    .line 350
    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v0, v7, v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_18

    move/from16 v29, v0

    move-object/from16 v23, v2

    move-object/from16 v25, v4

    move/from16 v26, v5

    .line 351
    :goto_5a
    :try_start_29
    invoke-static/range {v23 .. v29}, Lorg/mozilla/javascript/Interpreter;->doGetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[DI)I

    move-result v5
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1a

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move/from16 v0, v29

    move-object v1, v6

    move-object v8, v9

    move-object/from16 v23, v15

    goto/16 :goto_4f

    :catchall_1a
    move-exception v0

    move-object/from16 v2, v23

    goto/16 :goto_4d

    :pswitch_7b
    const/16 p1, 0x2

    move-object/from16 v6, p0

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v3, v25

    move-object v9, v8

    add-int/lit8 v0, v0, 0x2

    .line 352
    :try_start_2a
    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v0, v7, v1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_18

    move/from16 v30, v0

    move-object/from16 v24, v3

    move-object/from16 v29, v9

    move-object/from16 v23, v2

    move-object/from16 v25, v4

    move/from16 v26, v5

    .line 353
    :goto_5b
    :try_start_2b
    invoke-static/range {v23 .. v30}, Lorg/mozilla/javascript/Interpreter;->doSetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I

    move-result v5
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1a

    move-object/from16 v2, v23

    move/from16 v0, v30

    :goto_5c
    move-object v1, v6

    move-object/from16 v23, v15

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v9, v27

    move-object/from16 v8, v29

    goto/16 :goto_50

    :pswitch_7c
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    add-int/lit8 v5, v5, 0x1

    .line 354
    :try_start_2c
    sget-object v0, Lorg/mozilla/javascript/Interpreter;->undefined:Ljava/lang/Object;

    aput-object v0, v24, v5

    :goto_5d
    move-object v1, v6

    move v6, v8

    move-object/from16 v23, v15

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v9, v27

    move-object/from16 v8, v29

    goto/16 :goto_54

    :pswitch_7d
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    add-int/lit8 v5, v5, 0x1

    const/16 v33, 0x0

    .line 355
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v24, v5

    goto :goto_5d

    :pswitch_7e
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    add-int/lit8 v5, v5, 0x1

    .line 356
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v24, v5

    goto :goto_5d

    :pswitch_7f
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    .line 357
    aget-object v0, v24, v5

    if-ne v0, v11, :cond_43

    .line 358
    aget-wide v0, v25, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_43
    add-int/lit8 v5, v5, -0x1

    .line 359
    iget-object v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->enterDotQuery(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    iput-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    goto :goto_5d

    :pswitch_80
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    .line 360
    invoke-static {v2, v5}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v0

    .line 361
    iget-object v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->updateDotQuery(ZLorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 362
    aput-object v0, v24, v5

    .line 363
    iget-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->leaveDotQuery(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    iput-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 364
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v0, v0, 0x2

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_66

    :cond_44
    add-int/lit8 v5, v5, -0x1

    move-object v1, v6

    goto/16 :goto_4b

    :pswitch_81
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    const/16 p1, 0x2

    move-object/from16 v25, v4

    const/16 v33, 0x0

    :goto_5e
    move-object/from16 v1, p0

    move v4, v13

    move v3, v14

    goto/16 :goto_6b

    :pswitch_82
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    .line 365
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v0, v8

    .line 366
    aput-object v31, v24, v0

    goto/16 :goto_5c

    :pswitch_83
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    .line 367
    aget-object v0, v24, v5

    add-int/lit8 v1, v5, -0x1

    .line 368
    aget-wide v3, v25, v1

    double-to-int v3, v3

    .line 369
    aget-object v4, v24, v1

    check-cast v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    add-int/lit8 v5, v5, -0x2

    .line 370
    aget-object v0, v24, v5

    check-cast v0, [I

    aput v18, v0, v3

    add-int/lit8 v3, v3, 0x1

    int-to-double v3, v3

    .line 371
    aput-wide v3, v25, v1

    :goto_5f
    move v5, v1

    goto/16 :goto_5d

    :pswitch_84
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    .line 372
    aget-object v0, v24, v5

    add-int/lit8 v1, v5, -0x1

    .line 373
    aget-wide v3, v25, v1

    double-to-int v3, v3

    .line 374
    aget-object v4, v24, v1

    check-cast v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    add-int/lit8 v5, v5, -0x2

    .line 375
    aget-object v0, v24, v5

    check-cast v0, [I

    aput v32, v0, v3

    add-int/lit8 v3, v3, 0x1

    int-to-double v3, v3

    .line 376
    aput-wide v3, v25, v1

    goto :goto_5f

    :pswitch_85
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    .line 377
    aget-object v0, v24, v5

    if-ne v0, v11, :cond_45

    .line 378
    aget-wide v0, v25, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_45
    add-int/lit8 v5, v5, -0x1

    .line 379
    aget-object v1, v24, v5

    check-cast v1, Lorg/mozilla/javascript/Scriptable;

    .line 380
    invoke-static {v1, v0, v6, v12}, Lorg/mozilla/javascript/ScriptRuntime;->setConst(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_5d

    :pswitch_86
    const/16 p1, 0x2

    move-object/from16 v6, p0

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    add-int/lit8 v0, v0, 0x2

    .line 381
    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v0, v7, v1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_18

    move/from16 v30, v0

    move-object v1, v6

    move-object/from16 v23, v2

    move/from16 v26, v5

    const/16 v33, 0x0

    goto/16 :goto_71

    :pswitch_87
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move v3, v13

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    .line 382
    :try_start_2d
    iget-boolean v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v1, :cond_4a

    .line 383
    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 384
    invoke-static {v2}, Lorg/mozilla/javascript/Interpreter;->captureFrameForGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v0

    move/from16 v1, v32

    .line 385
    iput-boolean v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 386
    invoke-virtual {v6}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v1

    const/16 v3, 0xc8

    if-lt v1, v3, :cond_46

    .line 387
    new-instance v1, Lorg/mozilla/javascript/ES6Generator;

    iget-object v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v4, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-direct {v1, v3, v4, v0}, Lorg/mozilla/javascript/ES6Generator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;Ljava/lang/Object;)V

    iput-object v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    goto/16 :goto_36

    :catchall_1b
    move-exception v0

    :goto_60
    move-object v3, v2

    move-object v1, v6

    move-object v4, v12

    move-object/from16 v2, v22

    move-object/from16 v5, v34

    const/16 v32, 0x1

    goto/16 :goto_5

    .line 388
    :cond_46
    new-instance v1, Lorg/mozilla/javascript/NativeGenerator;

    iget-object v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v4, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-direct {v1, v3, v4, v0}, Lorg/mozilla/javascript/NativeGenerator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;Ljava/lang/Object;)V

    iput-object v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    goto/16 :goto_36

    :pswitch_88
    const/16 p1, 0x2

    move v8, v6

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move/from16 v3, v32

    move-object/from16 v6, p0

    .line 389
    iput-boolean v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 390
    invoke-static {v7, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v0

    .line 391
    new-instance v1, Lorg/mozilla/javascript/JavaScriptException;

    iget-object v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 392
    invoke-static {v3}, Lorg/mozilla/javascript/NativeIterator;->getStopIterationObject(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v0}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v1, v15, Lorg/mozilla/javascript/Interpreter$GeneratorState;->returnedException:Ljava/lang/RuntimeException;

    goto/16 :goto_36

    :pswitch_89
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    .line 393
    iget-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v0, :cond_4d

    .line 394
    invoke-interface {v0, v6}, Lorg/mozilla/javascript/debug/DebugFrame;->onDebuggerStatement(Lorg/mozilla/javascript/Context;)V

    goto/16 :goto_66

    :pswitch_8a
    const/16 p1, 0x2

    move v8, v6

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move/from16 v1, v32

    move-object/from16 v6, p0

    move-object/from16 v25, v4

    .line 395
    iput-boolean v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 396
    aget-object v0, v24, v5

    iput-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    .line 397
    aget-wide v0, v25, v5

    iput-wide v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    .line 398
    new-instance v0, Lorg/mozilla/javascript/NativeIterator$StopIteration;

    .line 399
    iget-object v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v3, :cond_47

    .line 400
    iget-wide v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 401
    :cond_47
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/NativeIterator$StopIteration;-><init>(Ljava/lang/Object;)V

    .line 402
    iget v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v7, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v1

    .line 403
    new-instance v3, Lorg/mozilla/javascript/JavaScriptException;

    iget-object v4, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-direct {v3, v0, v4, v1}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v3, v15, Lorg/mozilla/javascript/Interpreter$GeneratorState;->returnedException:Ljava/lang/RuntimeException;

    goto/16 :goto_36

    .line 404
    :goto_61
    invoke-static {v6, v2, v1}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    .line 405
    iget-object v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1b

    .line 406
    :try_start_2e
    iget-wide v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1d

    .line 407
    :try_start_2f
    iget-object v2, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v2, :cond_49

    .line 408
    iget-boolean v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-eqz v0, :cond_48

    .line 409
    invoke-virtual {v2}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v0

    move-object v2, v0

    goto :goto_63

    :catchall_1c
    move-exception v0

    move-object/from16 v19, v1

    move-wide/from16 v20, v3

    move-object v1, v6

    move-object v4, v12

    move-object/from16 v5, v34

    const/16 v32, 0x1

    const/16 v33, 0x0

    move-object v3, v2

    :goto_62
    move-object/from16 v2, v22

    goto/16 :goto_74

    .line 410
    :cond_48
    :goto_63
    invoke-static {v2, v1, v3, v4}, Lorg/mozilla/javascript/Interpreter;->setCallResult(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;D)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1c

    move-wide/from16 v20, v3

    move-object v1, v6

    move v0, v8

    move-object v4, v12

    move-object v7, v15

    move-object/from16 v5, v34

    move/from16 v14, v36

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object v3, v2

    move-object/from16 v2, v22

    goto/16 :goto_3

    :cond_49
    move-object v0, v1

    move-object v1, v6

    move-object/from16 v2, v22

    goto/16 :goto_81

    :catchall_1d
    move-exception v0

    move-object/from16 v19, v1

    goto/16 :goto_60

    :pswitch_8b
    const/16 p1, 0x2

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move v3, v13

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    .line 411
    :cond_4a
    :goto_64
    :try_start_30
    iget-boolean v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v0, :cond_4c

    const/16 v0, -0x49

    if-ne v3, v0, :cond_4b

    const/4 v13, 0x1

    goto :goto_65

    :cond_4b
    const/4 v13, 0x0

    .line 412
    :goto_65
    invoke-static {v6, v2, v5, v15, v13}, Lorg/mozilla/javascript/Interpreter;->freezeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 413
    :cond_4c
    invoke-static {v2, v5, v15, v3}, Lorg/mozilla/javascript/Interpreter;->thawGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;I)Ljava/lang/Object;

    move-result-object v0

    .line 414
    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1b

    if-eq v0, v1, :cond_4d

    move-object v1, v6

    move-object v4, v12

    move-object/from16 v5, v34

    const/16 v32, 0x1

    goto/16 :goto_1e

    :cond_4d
    :goto_66
    move-object v1, v6

    move v6, v8

    move-object/from16 v23, v15

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v9, v27

    move-object/from16 v8, v29

    move-object/from16 v13, v35

    move/from16 v14, v36

    const/16 v31, 0x0

    const/16 v32, 0x1

    goto/16 :goto_44

    :pswitch_8c
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    const/16 p1, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    .line 415
    :try_start_31
    aget-object v34, v10, v33
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1e

    goto :goto_66

    :catchall_1e
    move-exception v0

    move-object v3, v2

    move-object v1, v6

    move-object v4, v12

    move-object/from16 v2, v22

    move-object/from16 v5, v34

    const/16 v32, 0x1

    goto/16 :goto_74

    :pswitch_8d
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    const/16 p1, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    .line 416
    :try_start_32
    aget-object v34, v10, v32

    :goto_67
    move-object v1, v6

    :cond_4e
    :goto_68
    move v6, v8

    move-object/from16 v23, v15

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    :goto_69
    move-object/from16 v9, v27

    move-object/from16 v8, v29

    move-object/from16 v13, v35

    move/from16 v14, v36

    const/16 v31, 0x0

    goto/16 :goto_44

    :catchall_1f
    move-exception v0

    move-object v3, v2

    move-object v1, v6

    :goto_6a
    move-object v4, v12

    goto/16 :goto_3a

    :pswitch_8e
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    const/16 p1, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    .line 417
    aget-object v34, v10, p1

    goto :goto_67

    :pswitch_8f
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    const/16 p1, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    .line 418
    aget-object v34, v10, v26

    goto :goto_67

    :pswitch_90
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    const/16 p1, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    .line 419
    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    aget-object v34, v10, v1

    add-int/lit8 v0, v0, 0x2

    .line 420
    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto :goto_67

    :pswitch_91
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    const/16 p1, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    .line 421
    invoke-static {v7, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v0

    aget-object v34, v10, v0

    .line 422
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v0, v0, 0x2

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_67

    :pswitch_92
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    const/16 p1, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    .line 423
    invoke-static {v7, v1}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result v0

    aget-object v34, v10, v0

    .line 424
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v0, v3

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_67

    :pswitch_93
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    const/16 p1, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    .line 425
    iget-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsTemplateLiterals:[Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    .line 426
    iget-object v1, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 427
    invoke-static {v6, v1, v0, v8}, Lorg/mozilla/javascript/ScriptRuntime;->getTemplateLiteralCallSite(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    aput-object v0, v24, v5

    goto/16 :goto_67

    :pswitch_94
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    const/16 p1, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    .line 428
    aget-object v0, v24, v5

    if-ne v0, v11, :cond_4f

    .line 429
    aget-wide v0, v25, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_4f
    add-int/lit8 v1, v5, -0x1

    add-int/lit8 v5, v5, -0x3

    .line 430
    aget-object v3, v24, v5

    check-cast v3, [Ljava/lang/Object;

    .line 431
    aget-wide v4, v25, v1

    double-to-int v4, v4

    .line 432
    aput-object v0, v3, v4

    move v5, v1

    goto/16 :goto_67

    :pswitch_95
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    const/16 p1, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    .line 433
    iget-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, v5

    add-int/lit8 v5, v5, -0x1

    if-eqz v0, :cond_50

    .line 434
    invoke-static {v0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 435
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v0, v0, 0x2

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_67

    :cond_50
    move-object v1, v6

    goto/16 :goto_6f

    :pswitch_96
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    const/16 p1, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    move v8, v6

    move-object/from16 v6, p0

    .line 436
    iget-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, v5

    add-int/lit8 v5, v5, -0x1

    if-eqz v0, :cond_51

    .line 437
    invoke-static {v0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 438
    :cond_51
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v0, v0, 0x2

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1f

    goto/16 :goto_67

    :pswitch_97
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    const/16 p1, 0x2

    const/16 v33, 0x0

    move-object/from16 v25, v4

    goto/16 :goto_5e

    .line 439
    :goto_6b
    :try_start_33
    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/Interpreter;->doCallByteCode(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;ZIII)Lorg/mozilla/javascript/Interpreter$NewState;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_21

    move/from16 v36, v3

    move v8, v6

    .line 440
    :try_start_34
    instance-of v3, v0, Lorg/mozilla/javascript/Interpreter$ContinueLoop;

    if-eqz v3, :cond_52

    .line 441
    check-cast v0, Lorg/mozilla/javascript/Interpreter$ContinueLoop;

    .line 442
    invoke-static {v0}, Lorg/mozilla/javascript/Interpreter$ContinueLoop;->-$$Nest$fgetframe(Lorg/mozilla/javascript/Interpreter$ContinueLoop;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v2

    .line 443
    iget-object v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    .line 444
    iget-object v4, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    .line 445
    invoke-static {v0}, Lorg/mozilla/javascript/Interpreter$ContinueLoop;->-$$Nest$fgetstackTop(Lorg/mozilla/javascript/Interpreter$ContinueLoop;)I

    move-result v5

    .line 446
    invoke-static {v0}, Lorg/mozilla/javascript/Interpreter$ContinueLoop;->-$$Nest$fgetindexReg(Lorg/mozilla/javascript/Interpreter$ContinueLoop;)I

    move-result v6

    :goto_6c
    move-object/from16 v23, v15

    goto/16 :goto_69

    :catchall_20
    move-exception v0

    :goto_6d
    move-object v3, v2

    goto/16 :goto_6a

    .line 447
    :cond_52
    instance-of v3, v0, Lorg/mozilla/javascript/Interpreter$StateContinue;

    if-eqz v3, :cond_53

    .line 448
    check-cast v0, Lorg/mozilla/javascript/Interpreter$StateContinue;

    invoke-static {v0}, Lorg/mozilla/javascript/Interpreter$StateContinue;->-$$Nest$fgetframe(Lorg/mozilla/javascript/Interpreter$StateContinue;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v3

    move v0, v8

    move-object v4, v12

    move-object v7, v15

    move-object/from16 v2, v22

    move/from16 v13, v32

    move-object/from16 v5, v34

    :goto_6e
    move/from16 v14, v36

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 449
    :cond_53
    instance-of v3, v0, Lorg/mozilla/javascript/Interpreter$NewThrowable;

    if-eqz v3, :cond_54

    .line 450
    check-cast v0, Lorg/mozilla/javascript/Interpreter$NewThrowable;

    invoke-static {v0}, Lorg/mozilla/javascript/Interpreter$NewThrowable;->-$$Nest$fgetthrowable(Lorg/mozilla/javascript/Interpreter$NewThrowable;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v12

    move-object/from16 v5, v34

    goto/16 :goto_75

    .line 451
    :cond_54
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :goto_6f
    if-eqz v36, :cond_55

    move/from16 v13, p1

    .line 452
    invoke-static {v1, v2, v13}, Lorg/mozilla/javascript/Interpreter;->addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V

    .line 453
    :cond_55
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v7, v0}, Lorg/mozilla/javascript/Interpreter;->getShort([BI)I

    move-result v0

    if-eqz v0, :cond_56

    .line 454
    iget v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v3

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto :goto_70

    .line 455
    :cond_56
    iget-object v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->longJumps:Ljava/util/Map;

    iget v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    :goto_70
    if-eqz v36, :cond_4e

    .line 456
    iget v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iput v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    goto/16 :goto_68

    :catchall_21
    move-exception v0

    move/from16 v36, v3

    goto :goto_6d

    :pswitch_98
    const/16 v33, 0x0

    move-object/from16 v1, p0

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v27, v9

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v4

    move v8, v6

    add-int/lit8 v5, v5, -0x1

    .line 457
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v0, v24, v5

    .line 458
    invoke-static {}, Lorg/mozilla/javascript/ScriptRuntime;->throwDeleteOnSuperPropertyNotAllowed()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_20

    goto/16 :goto_68

    :cond_57
    move-object/from16 v1, p0

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move/from16 v36, v14

    move-object v7, v15

    move-object/from16 v15, v23

    move-object/from16 v24, v25

    move v8, v6

    move-object/from16 v25, v4

    move/from16 v30, v8

    move-object/from16 v27, v9

    const/16 v33, 0x0

    move-object/from16 v23, v2

    move/from16 v26, v5

    .line 459
    :goto_71
    :try_start_35
    invoke-static/range {v23 .. v30}, Lorg/mozilla/javascript/Interpreter;->doSetConstVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I

    move-result v5
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move/from16 v6, v30

    goto/16 :goto_6c

    :catchall_22
    move-exception v0

    move-object/from16 v2, v23

    goto/16 :goto_6d

    :catchall_23
    move-exception v0

    const/16 v33, 0x0

    move-object/from16 v1, p0

    move/from16 v36, v14

    move-object/from16 v15, v23

    goto/16 :goto_6d

    :catchall_24
    move-exception v0

    move/from16 v36, v14

    move-object/from16 v15, v23

    const/16 v33, 0x0

    goto/16 :goto_6d

    :catchall_25
    move-exception v0

    :goto_72
    move/from16 v36, v14

    move-object/from16 v15, v23

    :goto_73
    const/16 v33, 0x0

    goto/16 :goto_62

    :catchall_26
    move-exception v0

    move/from16 v32, v13

    goto :goto_72

    :catchall_27
    move-exception v0

    move-object v15, v7

    move/from16 v32, v13

    move/from16 v36, v14

    goto :goto_73

    :catchall_28
    move-exception v0

    move-object v15, v7

    move/from16 v32, v13

    move/from16 v36, v14

    const/16 p2, 0x64

    goto :goto_73

    :goto_74
    if-nez v2, :cond_70

    move-object v2, v3

    :goto_75
    if-nez v0, :cond_58

    .line 460
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_58
    if-eqz v15, :cond_5a

    .line 461
    iget v3, v15, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    const/4 v13, 0x2

    if-ne v3, v13, :cond_5a

    iget-object v3, v15, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    if-ne v0, v3, :cond_5a

    :cond_59
    move/from16 v10, v32

    :goto_76
    const/4 v3, 0x0

    goto :goto_79

    .line 462
    :cond_5a
    instance-of v3, v0, Lorg/mozilla/javascript/JavaScriptException;

    if-eqz v3, :cond_5b

    :goto_77
    const/4 v3, 0x0

    const/4 v10, 0x2

    goto :goto_79

    .line 463
    :cond_5b
    instance-of v3, v0, Lorg/mozilla/javascript/EcmaError;

    if-eqz v3, :cond_5c

    goto :goto_77

    .line 464
    :cond_5c
    instance-of v3, v0, Lorg/mozilla/javascript/EvaluatorException;

    if-eqz v3, :cond_5d

    goto :goto_77

    .line 465
    :cond_5d
    instance-of v3, v0, Lorg/mozilla/javascript/ContinuationPending;

    if-eqz v3, :cond_5f

    :cond_5e
    move/from16 v10, v33

    goto :goto_76

    .line 466
    :cond_5f
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_60

    const/16 v9, 0xd

    .line 467
    invoke-virtual {v1, v9}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_59

    :goto_78
    const/4 v10, 0x2

    goto :goto_76

    :cond_60
    const/16 v9, 0xd

    .line 468
    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_61

    .line 469
    invoke-virtual {v1, v9}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_5e

    goto :goto_78

    .line 470
    :cond_61
    instance-of v3, v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    if-eqz v3, :cond_62

    .line 471
    move-object v3, v0

    check-cast v3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    move/from16 v10, v32

    goto :goto_79

    .line 472
    :cond_62
    invoke-virtual {v1, v9}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_59

    goto :goto_78

    :goto_79
    if-eqz v36, :cond_63

    move/from16 v6, p2

    .line 473
    :try_start_36
    invoke-static {v1, v2, v6}, Lorg/mozilla/javascript/Interpreter;->addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_36} :catch_1
    .catch Ljava/lang/Error; {:try_start_36 .. :try_end_36} :catch_0

    goto :goto_7a

    :catch_0
    move-exception v0

    move/from16 v13, v33

    const/4 v3, 0x0

    goto :goto_7b

    :catch_1
    move-exception v0

    move/from16 v13, v32

    goto :goto_7b

    :cond_63
    :goto_7a
    move v13, v10

    .line 474
    :goto_7b
    iget-object v6, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v6, :cond_64

    instance-of v7, v0, Ljava/lang/RuntimeException;

    if-eqz v7, :cond_64

    .line 475
    move-object v7, v0

    check-cast v7, Ljava/lang/RuntimeException;

    .line 476
    :try_start_37
    invoke-interface {v6, v1, v7}, Lorg/mozilla/javascript/debug/DebugFrame;->onExceptionThrown(Lorg/mozilla/javascript/Context;Ljava/lang/Throwable;)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_29

    goto :goto_7c

    :catchall_29
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    move/from16 v13, v33

    const/4 v3, 0x0

    goto :goto_7d

    :cond_64
    :goto_7c
    move-object/from16 v38, v2

    move-object v2, v0

    move-object/from16 v0, v38

    :cond_65
    :goto_7d
    const/4 v6, 0x2

    if-eqz v13, :cond_67

    if-eq v13, v6, :cond_66

    move/from16 v7, v32

    goto :goto_7e

    :cond_66
    move/from16 v7, v33

    .line 477
    :goto_7e
    invoke-static {v0, v7}, Lorg/mozilla/javascript/Interpreter;->getExceptionHandler(Lorg/mozilla/javascript/Interpreter$CallFrame;Z)I

    move-result v7

    if-ltz v7, :cond_67

    move-object v3, v0

    move v0, v7

    move-object v7, v15

    :goto_7f
    move/from16 v13, v32

    goto/16 :goto_6e

    .line 478
    :cond_67
    invoke-static {v1, v0, v2}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    .line 479
    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-nez v0, :cond_6f

    if-eqz v3, :cond_6a

    .line 480
    iget-object v6, v3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v6, :cond_68

    .line 481
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 482
    :cond_68
    iget-object v6, v3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v6, :cond_69

    :goto_80
    move-object v3, v0

    move-object v7, v15

    move/from16 v0, v18

    goto :goto_7f

    .line 483
    :cond_69
    iget-object v0, v3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    .line 484
    iget-wide v3, v3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    const/4 v2, 0x0

    goto :goto_81

    :cond_6a
    move-object/from16 v0, v19

    move-wide/from16 v3, v20

    .line 485
    :goto_81
    iget-object v5, v1, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Ljava/util/Deque;

    if-eqz v5, :cond_6b

    .line 486
    invoke-interface {v5}, Ljava/util/Deque;->size()I

    move-result v5

    if-eqz v5, :cond_6b

    .line 487
    iget-object v5, v1, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    goto :goto_82

    :cond_6b
    const/4 v5, 0x0

    .line 488
    iput-object v5, v1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    .line 489
    iput-object v5, v1, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Ljava/util/Deque;

    :goto_82
    if-eqz v2, :cond_6d

    .line 490
    instance-of v0, v2, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_6c

    .line 491
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 492
    :cond_6c
    check-cast v2, Ljava/lang/Error;

    throw v2

    :cond_6d
    if-eq v0, v11, :cond_6e

    goto :goto_83

    .line 493
    :cond_6e
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :goto_83
    return-object v0

    :cond_6f
    if-eqz v3, :cond_65

    .line 494
    iget-object v7, v3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    invoke-static {v7, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    goto :goto_80

    .line 495
    :cond_70
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 496
    invoke-static {}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m()V

    const/16 v31, 0x0

    return-object v31

    nop

    :pswitch_data_0
    .packed-switch -0x56
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x42
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3a
        :pswitch_3a
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_3b
        :pswitch_3b
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_25
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_3c
        :pswitch_36
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static processThrowable(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Interpreter$CallFrame;IZ)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p3, :cond_2

    .line 3
    .line 4
    iget-boolean p0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :cond_0
    iget-object p0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 13
    .line 14
    iget-object p0, p0, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    .line 15
    .line 16
    add-int/lit8 v1, p3, 0x2

    .line 17
    .line 18
    aget v1, p0, v1

    .line 19
    .line 20
    iput v1, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 21
    .line 22
    if-eqz p4, :cond_1

    .line 23
    .line 24
    iput v1, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    .line 25
    .line 26
    :cond_1
    iget p4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    .line 27
    .line 28
    iput p4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 29
    .line 30
    iget p4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    .line 31
    .line 32
    add-int/lit8 v1, p3, 0x5

    .line 33
    .line 34
    aget v1, p0, v1

    .line 35
    .line 36
    add-int/2addr v1, p4

    .line 37
    add-int/lit8 p3, p3, 0x4

    .line 38
    .line 39
    aget p0, p0, p3

    .line 40
    .line 41
    add-int/2addr p4, p0

    .line 42
    iget-object p0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    .line 43
    .line 44
    aget-object p3, p0, v1

    .line 45
    .line 46
    check-cast p3, Lorg/mozilla/javascript/Scriptable;

    .line 47
    .line 48
    iput-object p3, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 49
    .line 50
    aput-object p1, p0, p4

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    check-cast p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    .line 54
    .line 55
    iget-object p3, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 56
    .line 57
    invoke-static {p3, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-nez p2, :cond_3

    .line 62
    .line 63
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 64
    .line 65
    .line 66
    :cond_3
    iget-object p2, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 67
    .line 68
    if-nez p2, :cond_4

    .line 69
    .line 70
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-object p2, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 74
    .line 75
    iget p3, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    .line 76
    .line 77
    const/4 p4, 0x1

    .line 78
    add-int/2addr p3, p4

    .line 79
    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 80
    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    iget v1, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    .line 84
    .line 85
    sub-int/2addr p3, v1

    .line 86
    :cond_5
    const/4 v1, 0x0

    .line 87
    move-object v3, v0

    .line 88
    move v2, v1

    .line 89
    :goto_0
    if-eq v1, p3, :cond_9

    .line 90
    .line 91
    iget-boolean v4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 92
    .line 93
    if-nez v4, :cond_6

    .line 94
    .line 95
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 96
    .line 97
    .line 98
    :cond_6
    iget-boolean v4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    .line 99
    .line 100
    if-eqz v4, :cond_8

    .line 101
    .line 102
    if-nez v3, :cond_7

    .line 103
    .line 104
    sub-int v3, p3, v1

    .line 105
    .line 106
    new-array v3, v3, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 107
    .line 108
    :cond_7
    aput-object p2, v3, v2

    .line 109
    .line 110
    add-int/lit8 v2, v2, 0x1

    .line 111
    .line 112
    :cond_8
    iget-object p2, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 113
    .line 114
    add-int/lit8 v1, v1, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_9
    :goto_1
    if-eqz v2, :cond_a

    .line 118
    .line 119
    add-int/lit8 v2, v2, -0x1

    .line 120
    .line 121
    aget-object p2, v3, v2

    .line 122
    .line 123
    sget-object p3, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .line 124
    .line 125
    invoke-static {p0, p2, p3, p4}, Lorg/mozilla/javascript/Interpreter;->enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_a
    iget-object p0, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 130
    .line 131
    invoke-virtual {p0}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    iget-object p0, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    .line 136
    .line 137
    iget-wide p3, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    .line 138
    .line 139
    invoke-static {p2, p0, p3, p4}, Lorg/mozilla/javascript/Interpreter;->setCallResult(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;D)V

    .line 140
    .line 141
    .line 142
    :goto_2
    iput-object v0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->throwable:Ljava/lang/Object;

    .line 143
    .line 144
    return-object p2
.end method

.method public static restartContinuation(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->hasTopCall(Lorg/mozilla/javascript/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    iget-boolean v6, p1, Lorg/mozilla/javascript/Context;->isTopLevelStrict:Z

    .line 9
    .line 10
    move-object v1, p0

    .line 11
    move-object v2, p1

    .line 12
    move-object v3, p2

    .line 13
    move-object v5, p3

    .line 14
    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/ScriptRuntime;->doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    move-object v1, p0

    .line 20
    move-object v2, p1

    .line 21
    move-object v5, p3

    .line 22
    array-length p0, v5

    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    aget-object p0, v5, p0

    .line 30
    .line 31
    :goto_0
    invoke-virtual {v1}, Lorg/mozilla/javascript/NativeContinuation;->getImplementation()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_2
    new-instance p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    .line 41
    .line 42
    const/4 p2, 0x0

    .line 43
    invoke-direct {p1, v1, p2}, Lorg/mozilla/javascript/Interpreter$ContinuationJump;-><init>(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    .line 44
    .line 45
    .line 46
    iput-object p0, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-static {v2, p2, p1}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public static resumeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p3, Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 2
    .line 3
    new-instance p1, Lorg/mozilla/javascript/Interpreter$GeneratorState;

    .line 4
    .line 5
    invoke-direct {p1, p2, p4}, Lorg/mozilla/javascript/Interpreter$GeneratorState;-><init>(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-ne p2, v0, :cond_1

    .line 10
    .line 11
    :try_start_0
    invoke-static {p0, p3, p1}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    if-ne p0, p4, :cond_0

    .line 18
    .line 19
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    throw p0

    .line 23
    :cond_1
    invoke-static {p0, p3, p1}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$GeneratorState;->returnedException:Ljava/lang/RuntimeException;

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_2
    throw p1
.end method

.method private static setCallResult(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;D)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    .line 2
    .line 3
    const/16 v1, 0x2b

    .line 4
    .line 5
    if-eq v0, v1, :cond_2

    .line 6
    .line 7
    const/16 v1, -0x55

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 p2, 0x1e

    .line 13
    .line 14
    if-ne v0, p2, :cond_1

    .line 15
    .line 16
    instance-of p2, p1, Lorg/mozilla/javascript/Scriptable;

    .line 17
    .line 18
    if-eqz p2, :cond_3

    .line 19
    .line 20
    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    .line 21
    .line 22
    iget p3, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 23
    .line 24
    aput-object p1, p2, p3

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    .line 32
    .line 33
    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 34
    .line 35
    aput-object p1, v0, v1

    .line 36
    .line 37
    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    .line 38
    .line 39
    aput-wide p2, p1, v1

    .line 40
    .line 41
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    .line 43
    .line 44
    return-void
.end method

.method private static stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    return v3

    .line 25
    :cond_1
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 26
    .line 27
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    if-ne v0, v1, :cond_3

    .line 30
    .line 31
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    .line 32
    .line 33
    aget-wide v0, p0, p1

    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_2

    .line 40
    .line 41
    cmpl-double p0, v0, v4

    .line 42
    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    return v2

    .line 46
    :cond_2
    return v3

    .line 47
    :cond_3
    if-eqz v0, :cond_8

    .line 48
    .line 49
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 50
    .line 51
    if-ne v0, p0, :cond_4

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    instance-of p0, v0, Ljava/math/BigInteger;

    .line 55
    .line 56
    if-eqz p0, :cond_5

    .line 57
    .line 58
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    xor-int/2addr p0, v2

    .line 65
    return p0

    .line 66
    :cond_5
    instance-of p0, v0, Ljava/lang/Number;

    .line 67
    .line 68
    if-eqz p0, :cond_7

    .line 69
    .line 70
    check-cast v0, Ljava/lang/Number;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 73
    .line 74
    .line 75
    move-result-wide p0

    .line 76
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_6

    .line 81
    .line 82
    cmpl-double p0, p0, v4

    .line 83
    .line 84
    if-eqz p0, :cond_6

    .line 85
    .line 86
    return v2

    .line 87
    :cond_6
    return v3

    .line 88
    :cond_7
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    return p0

    .line 93
    :cond_8
    :goto_0
    return v3
.end method

.method private static stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0

    .line 14
    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    .line 15
    .line 16
    aget-wide v0, p0, p1

    .line 17
    .line 18
    return-wide v0
.end method

.method private static stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    .line 10
    .line 11
    aget-wide v0, p0, p1

    .line 12
    .line 13
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method private static stack_numeric(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Ljava/lang/Number;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumeric(Ljava/lang/Object;)Ljava/lang/Number;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    .line 15
    .line 16
    aget-wide v0, p0, p1

    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private static thawGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;I)Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 3
    .line 4
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 5
    .line 6
    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 7
    .line 8
    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 9
    .line 10
    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    add-int/2addr v1, v2

    .line 18
    iput v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 19
    .line 20
    iget v1, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    if-ne v1, v3, :cond_0

    .line 24
    .line 25
    new-instance p1, Lorg/mozilla/javascript/JavaScriptException;

    .line 26
    .line 27
    iget-object p2, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 30
    .line 31
    iget-object p0, p0, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {p1, p2, p0, v0}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_0
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    iget-object p0, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    if-nez v1, :cond_4

    .line 43
    .line 44
    const/16 v0, 0x4e

    .line 45
    .line 46
    if-eq p3, v0, :cond_2

    .line 47
    .line 48
    const/16 v0, -0x49

    .line 49
    .line 50
    if-ne p3, v0, :cond_3

    .line 51
    .line 52
    :cond_2
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    .line 53
    .line 54
    iget-object p2, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    .line 55
    .line 56
    aput-object p2, p0, p1

    .line 57
    .line 58
    :cond_3
    sget-object p0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    throw p0
.end method


# virtual methods
.method public captureStackInfo(Lorg/mozilla/javascript/RhinoException;)V
    .locals 5

    .line 1
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_8

    .line 6
    .line 7
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_4

    .line 12
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Ljava/util/Deque;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Ljava/util/Deque;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v2, p0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Ljava/util/Deque;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, p0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    .line 37
    .line 38
    if-ne v2, v3, :cond_2

    .line 39
    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 41
    .line 42
    :cond_2
    add-int/2addr v0, v1

    .line 43
    new-array v0, v0, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 44
    .line 45
    new-instance v2, Ljava/util/ArrayList;

    .line 46
    .line 47
    iget-object v3, p0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Ljava/util/Deque;

    .line 48
    .line 49
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    :goto_0
    new-array v0, v1, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 60
    .line 61
    :goto_1
    array-length v2, v0

    .line 62
    sub-int/2addr v2, v1

    .line 63
    iget-object p0, p0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 66
    .line 67
    aput-object p0, v0, v2

    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    move v2, p0

    .line 71
    :goto_2
    array-length v3, v0

    .line 72
    if-eq p0, v3, :cond_4

    .line 73
    .line 74
    aget-object v3, v0, p0

    .line 75
    .line 76
    iget v3, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    .line 77
    .line 78
    add-int/2addr v3, v1

    .line 79
    add-int/2addr v2, v3

    .line 80
    add-int/lit8 p0, p0, 0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    new-array p0, v2, [I

    .line 84
    .line 85
    array-length v1, v0

    .line 86
    :cond_5
    if-eqz v1, :cond_6

    .line 87
    .line 88
    add-int/lit8 v1, v1, -0x1

    .line 89
    .line 90
    aget-object v3, v0, v1

    .line 91
    .line 92
    :goto_3
    if-eqz v3, :cond_5

    .line 93
    .line 94
    add-int/lit8 v2, v2, -0x1

    .line 95
    .line 96
    iget v4, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    .line 97
    .line 98
    aput v4, p0, v2

    .line 99
    .line 100
    iget-object v3, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_6
    if-eqz v2, :cond_7

    .line 104
    .line 105
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 106
    .line 107
    .line 108
    :cond_7
    iput-object v0, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    .line 109
    .line 110
    iput-object p0, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    .line 111
    .line 112
    return-void

    .line 113
    :cond_8
    :goto_4
    const/4 p0, 0x0

    .line 114
    iput-object p0, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    .line 115
    .line 116
    iput-object p0, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    .line 117
    .line 118
    return-void
.end method

.method public compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lorg/mozilla/javascript/CodeGenerator;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/mozilla/javascript/CodeGenerator;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/CodeGenerator;->compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Lorg/mozilla/javascript/InterpreterData;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    .line 11
    .line 12
    return-object p1
.end method

.method public createFunctionObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Function;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    .line 2
    .line 3
    if-eq p3, v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    .line 9
    .line 10
    invoke-static {p1, p2, p0, p4}, Lorg/mozilla/javascript/InterpretedFunction;->createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpreterData;Ljava/lang/Object;)Lorg/mozilla/javascript/InterpretedFunction;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public createScriptObject(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Script;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    .line 9
    .line 10
    invoke-static {p0, p2}, Lorg/mozilla/javascript/InterpretedFunction;->createScript(Lorg/mozilla/javascript/InterpreterData;Ljava/lang/Object;)Lorg/mozilla/javascript/InterpretedFunction;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public getPatchedStack(Lorg/mozilla/javascript/RhinoException;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit16 v0, v0, 0x3e8

    .line 8
    .line 9
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const-string v0, "line.separator"

    .line 13
    .line 14
    invoke-static {v0}, Lorg/mozilla/javascript/SecurityUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 21
    .line 22
    iget-object p1, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    .line 23
    .line 24
    array-length v2, v1

    .line 25
    array-length v3, p1

    .line 26
    const/4 v4, 0x0

    .line 27
    :goto_0
    if-eqz v2, :cond_7

    .line 28
    .line 29
    add-int/lit8 v2, v2, -0x1

    .line 30
    .line 31
    const-string v5, "org.mozilla.javascript.Interpreter.interpretLoop"

    .line 32
    .line 33
    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-gez v5, :cond_0

    .line 38
    .line 39
    goto :goto_4

    .line 40
    :cond_0
    add-int/lit8 v5, v5, 0x30

    .line 41
    .line 42
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eq v5, v6, :cond_2

    .line 47
    .line 48
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    const/16 v7, 0xa

    .line 53
    .line 54
    if-eq v6, v7, :cond_2

    .line 55
    .line 56
    const/16 v7, 0xd

    .line 57
    .line 58
    if-ne v6, v7, :cond_1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    :goto_2
    invoke-virtual {p0, p2, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    aget-object v4, v1, v2

    .line 68
    .line 69
    :goto_3
    if-eqz v4, :cond_6

    .line 70
    .line 71
    if-nez v3, :cond_3

    .line 72
    .line 73
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 74
    .line 75
    .line 76
    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 77
    .line 78
    iget-object v6, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v7, "\tat script"

    .line 84
    .line 85
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v7, v6, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    .line 89
    .line 90
    if-eqz v7, :cond_4

    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-eqz v7, :cond_4

    .line 97
    .line 98
    const/16 v7, 0x2e

    .line 99
    .line 100
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v7, v6, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :cond_4
    const/16 v7, 0x28

    .line 109
    .line 110
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v7, v6, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    aget v7, p1, v3

    .line 119
    .line 120
    if-ltz v7, :cond_5

    .line 121
    .line 122
    const/16 v8, 0x3a

    .line 123
    .line 124
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v6, v6, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 128
    .line 129
    invoke-static {v6, v7}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    :cond_5
    const/16 v6, 0x29

    .line 137
    .line 138
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-object v4, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_6
    move v4, v5

    .line 145
    goto :goto_0

    .line 146
    :cond_7
    :goto_4
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0
.end method

.method public getScriptStack(Lorg/mozilla/javascript/RhinoException;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/RhinoException;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Interpreter;->getScriptStackElements(Lorg/mozilla/javascript/RhinoException;)[[Lorg/mozilla/javascript/ScriptStackElement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    array-length v0, p0

    .line 8
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    const-string v0, "line.separator"

    .line 12
    .line 13
    invoke-static {v0}, Lorg/mozilla/javascript/SecurityUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    array-length v1, p0

    .line 18
    const/4 v2, 0x0

    .line 19
    move v3, v2

    .line 20
    :goto_0
    if-ge v3, v1, :cond_1

    .line 21
    .line 22
    aget-object v4, p0, v3

    .line 23
    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    array-length v6, v4

    .line 30
    move v7, v2

    .line 31
    :goto_1
    if-ge v7, v6, :cond_0

    .line 32
    .line 33
    aget-object v8, v4, v7

    .line 34
    .line 35
    invoke-virtual {v8, v5}, Lorg/mozilla/javascript/ScriptStackElement;->renderJavaStyle(Ljava/lang/StringBuilder;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    add-int/lit8 v7, v7, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-object p1
.end method

.method public getScriptStackElements(Lorg/mozilla/javascript/RhinoException;)[[Lorg/mozilla/javascript/ScriptStackElement;
    .locals 10

    .line 1
    iget-object p0, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 15
    .line 16
    iget-object p1, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    .line 17
    .line 18
    array-length v2, v1

    .line 19
    array-length v3, p1

    .line 20
    :goto_0
    if-eqz v2, :cond_5

    .line 21
    .line 22
    add-int/lit8 v2, v2, -0x1

    .line 23
    .line 24
    aget-object v4, v1, v2

    .line 25
    .line 26
    new-instance v5, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    :goto_1
    if-eqz v4, :cond_4

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 36
    .line 37
    .line 38
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 39
    .line 40
    iget-object v6, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 41
    .line 42
    iget-object v7, v6, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    .line 43
    .line 44
    aget v8, p1, v3

    .line 45
    .line 46
    if-ltz v8, :cond_2

    .line 47
    .line 48
    iget-object v9, v6, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 49
    .line 50
    invoke-static {v9, v8}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/4 v8, -0x1

    .line 56
    :goto_2
    iget-object v9, v6, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v9, :cond_3

    .line 59
    .line 60
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-eqz v9, :cond_3

    .line 65
    .line 66
    iget-object v6, v6, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    move-object v6, v0

    .line 70
    :goto_3
    iget-object v4, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 71
    .line 72
    new-instance v9, Lorg/mozilla/javascript/ScriptStackElement;

    .line 73
    .line 74
    invoke-direct {v9, v7, v6, v8}, Lorg/mozilla/javascript/ScriptStackElement;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    const/4 v4, 0x0

    .line 82
    new-array v4, v4, [Lorg/mozilla/javascript/ScriptStackElement;

    .line 83
    .line 84
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, [Lorg/mozilla/javascript/ScriptStackElement;

    .line 89
    .line 90
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    new-array p1, p1, [[Lorg/mozilla/javascript/ScriptStackElement;

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, [[Lorg/mozilla/javascript/ScriptStackElement;

    .line 105
    .line 106
    return-object p0
.end method

.method public getSourcePositionFromStack(Lorg/mozilla/javascript/Context;[I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 4
    .line 5
    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 6
    .line 7
    iget p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-ltz p0, :cond_0

    .line 11
    .line 12
    iget-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 13
    .line 14
    invoke-static {v1, p0}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    aput p0, p2, v0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    aput v0, p2, v0

    .line 22
    .line 23
    :goto_0
    iget-object p0, p1, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    .line 24
    .line 25
    return-object p0
.end method

.method public setEvalScriptFlag(Lorg/mozilla/javascript/Script;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/mozilla/javascript/InterpretedFunction;

    .line 2
    .line 3
    iget-object p0, p1, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lorg/mozilla/javascript/InterpreterData;->evalScriptFlag:Z

    .line 7
    .line 8
    return-void
.end method
