.class final Lorg/mozilla/javascript/NativeBigInt;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final BIG_INT_TAG:Ljava/lang/Object;

.field private static final ConstructorId_asIntN:I = -0x1

.field private static final ConstructorId_asUintN:I = -0x2

.field private static final Id_constructor:I = 0x1

.field private static final Id_toLocaleString:I = 0x3

.field private static final Id_toSource:I = 0x4

.field private static final Id_toString:I = 0x2

.field private static final Id_valueOf:I = 0x5

.field private static final MAX_PROTOTYPE_ID:I = 0x6

.field private static final SymbolId_toStringTag:I = 0x6

.field private static final serialVersionUID:J = 0x12890984fec5db99L


# instance fields
.field private bigIntValue:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "BigInt"

    .line 2
    .line 3
    sput-object v0, Lorg/mozilla/javascript/NativeBigInt;->BIG_INT_TAG:Ljava/lang/Object;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mozilla/javascript/NativeBigInt;->bigIntValue:Ljava/math/BigInteger;

    .line 5
    .line 6
    return-void
.end method

.method private static execConstructorCall(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, -0x2

    .line 3
    if-eq p0, v1, :cond_1

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_1
    :goto_0
    array-length v2, p1

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x1

    .line 20
    if-ge v2, v4, :cond_2

    .line 21
    .line 22
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    aget-object v2, p1, v3

    .line 26
    .line 27
    :goto_1
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toIndex(Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    array-length v5, p1

    .line 32
    const/4 v6, 0x2

    .line 33
    if-ge v5, v6, :cond_3

    .line 34
    .line 35
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_3
    aget-object p1, p1, v4

    .line 39
    .line 40
    :goto_2
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toBigInt(Ljava/lang/Object;)Ljava/math/BigInteger;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-nez v2, :cond_4

    .line 45
    .line 46
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_4
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    div-int/lit8 v6, v2, 0x8

    .line 54
    .line 55
    add-int/2addr v6, v4

    .line 56
    array-length v7, v5

    .line 57
    if-le v6, v7, :cond_5

    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_5
    array-length p1, v5

    .line 61
    sub-int/2addr p1, v6

    .line 62
    array-length v6, v5

    .line 63
    invoke-static {v5, p1, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    rem-int/lit8 v2, v2, 0x8

    .line 68
    .line 69
    if-eq p0, v1, :cond_a

    .line 70
    .line 71
    if-eq p0, v0, :cond_6

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_6
    if-nez v2, :cond_8

    .line 75
    .line 76
    aget-byte p0, p1, v4

    .line 77
    .line 78
    if-gez p0, :cond_7

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_7
    move v0, v3

    .line 82
    :goto_3
    aput-byte v0, p1, v3

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_8
    aget-byte p0, p1, v3

    .line 86
    .line 87
    add-int/lit8 v1, v2, -0x1

    .line 88
    .line 89
    shl-int v1, v4, v1

    .line 90
    .line 91
    and-int/2addr v1, p0

    .line 92
    if-eqz v1, :cond_9

    .line 93
    .line 94
    shl-int/2addr v0, v2

    .line 95
    or-int/2addr p0, v0

    .line 96
    int-to-byte p0, p0

    .line 97
    aput-byte p0, p1, v3

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_9
    shl-int v0, v4, v2

    .line 101
    .line 102
    sub-int/2addr v0, v4

    .line 103
    and-int/2addr p0, v0

    .line 104
    int-to-byte p0, p0

    .line 105
    aput-byte p0, p1, v3

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_a
    aget-byte p0, p1, v3

    .line 109
    .line 110
    shl-int v0, v4, v2

    .line 111
    .line 112
    sub-int/2addr v0, v4

    .line 113
    and-int/2addr p0, v0

    .line 114
    int-to-byte p0, p0

    .line 115
    aput-byte p0, p1, v3

    .line 116
    .line 117
    :goto_4
    new-instance p0, Ljava/math/BigInteger;

    .line 118
    .line 119
    invoke-direct {p0, p1}, Ljava/math/BigInteger;-><init>([B)V

    .line 120
    .line 121
    .line 122
    return-object p0
.end method

.method public static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 2

    .line 1
    new-instance v0, Lorg/mozilla/javascript/NativeBigInt;

    .line 2
    .line 3
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/NativeBigInt;-><init>(Ljava/math/BigInteger;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x6

    .line 9
    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lorg/mozilla/javascript/NativeBigInt;->BIG_INT_TAG:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/4 p2, 0x0

    .line 19
    const/4 p3, 0x1

    .line 20
    if-ne p0, p3, :cond_3

    .line 21
    .line 22
    if-eqz p4, :cond_2

    .line 23
    .line 24
    array-length p0, p5

    .line 25
    if-lt p0, p3, :cond_1

    .line 26
    .line 27
    aget-object p0, p5, p2

    .line 28
    .line 29
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toBigInt(Ljava/lang/Object;)Ljava/math/BigInteger;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_1
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_2
    new-array p0, p3, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object v0, p0, p2

    .line 40
    .line 41
    const-string p1, "msg.not.ctor"

    .line 42
    .line 43
    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    throw p0

    .line 48
    :cond_3
    if-ge p0, p3, :cond_4

    .line 49
    .line 50
    invoke-static {p0, p5}, Lorg/mozilla/javascript/NativeBigInt;->execConstructorCall(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_4
    const-class p3, Lorg/mozilla/javascript/NativeBigInt;

    .line 56
    .line 57
    invoke-static {p4, p3, p1}, Lorg/mozilla/javascript/IdScriptableObject;->ensureType(Ljava/lang/Object;Ljava/lang/Class;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lorg/mozilla/javascript/NativeBigInt;

    .line 62
    .line 63
    iget-object p1, p1, Lorg/mozilla/javascript/NativeBigInt;->bigIntValue:Ljava/math/BigInteger;

    .line 64
    .line 65
    const/4 p3, 0x2

    .line 66
    if-eq p0, p3, :cond_7

    .line 67
    .line 68
    const/4 p3, 0x3

    .line 69
    if-eq p0, p3, :cond_7

    .line 70
    .line 71
    const/4 p2, 0x4

    .line 72
    if-eq p0, p2, :cond_6

    .line 73
    .line 74
    const/4 p2, 0x5

    .line 75
    if-ne p0, p2, :cond_5

    .line 76
    .line 77
    return-object p1

    .line 78
    :cond_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const/4 p0, 0x0

    .line 86
    return-object p0

    .line 87
    :cond_6
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-string p1, "(new BigInt("

    .line 92
    .line 93
    const-string p2, "))"

    .line 94
    .line 95
    invoke-static {p1, p0, p2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :cond_7
    array-length p0, p5

    .line 101
    if-eqz p0, :cond_9

    .line 102
    .line 103
    aget-object p0, p5, p2

    .line 104
    .line 105
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 106
    .line 107
    if-ne p0, p2, :cond_8

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_8
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    goto :goto_1

    .line 115
    :cond_9
    :goto_0
    const/16 p0, 0xa

    .line 116
    .line 117
    :goto_1
    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->bigIntToString(Ljava/math/BigInteger;I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0
.end method

.method public fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 6

    .line 1
    sget-object v2, Lorg/mozilla/javascript/NativeBigInt;->BIG_INT_TAG:Ljava/lang/Object;

    .line 2
    .line 3
    const-string v4, "asIntN"

    .line 4
    .line 5
    const/4 v5, 0x2

    .line 6
    const/4 v3, -0x1

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const-string v4, "asUintN"

    .line 13
    .line 14
    const/4 v3, -0x2

    .line 15
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-super {v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public findPrototypeId(Ljava/lang/String;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const/4 v0, 0x4

    .line 9
    const/4 v1, 0x3

    .line 10
    const/4 v2, 0x2

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, -0x1

    .line 14
    sparse-switch p0, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :sswitch_0
    const-string/jumbo p0, "valueOf"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v5, v0

    .line 29
    goto :goto_0

    .line 30
    :sswitch_1
    const-string p0, "constructor"

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v5, v1

    .line 40
    goto :goto_0

    .line 41
    :sswitch_2
    const-string/jumbo p0, "toString"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move v5, v2

    .line 52
    goto :goto_0

    .line 53
    :sswitch_3
    const-string/jumbo p0, "toSource"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    move v5, v3

    .line 64
    goto :goto_0

    .line 65
    :sswitch_4
    const-string/jumbo p0, "toLocaleString"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-nez p0, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    move v5, v4

    .line 76
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 77
    .line 78
    .line 79
    return v4

    .line 80
    :pswitch_0
    const/4 p0, 0x5

    .line 81
    return p0

    .line 82
    :pswitch_1
    return v3

    .line 83
    :pswitch_2
    return v2

    .line 84
    :pswitch_3
    return v0

    .line 85
    :pswitch_4
    return v1

    .line 86
    nop

    .line 87
    :sswitch_data_0
    .sparse-switch
        -0x7866ceda -> :sswitch_4
        -0x6a2ea58a -> :sswitch_3
        -0x69e9ad94 -> :sswitch_2
        -0x5ead2806 -> :sswitch_1
        0xdce0328 -> :sswitch_0
    .end sparse-switch

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
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
    .line 108
    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public findPrototypeId(Lorg/mozilla/javascript/Symbol;)I
    .locals 0

    .line 87
    sget-object p0, Lorg/mozilla/javascript/SymbolKey;->TO_STRING_TAG:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "BigInt"

    .line 2
    .line 3
    return-object p0
.end method

.method public initPrototypeId(I)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x6

    .line 3
    if-ne p1, v1, :cond_0

    .line 4
    .line 5
    sget-object p1, Lorg/mozilla/javascript/SymbolKey;->TO_STRING_TAG:Lorg/mozilla/javascript/SymbolKey;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeBigInt;->getClassName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeValue(ILorg/mozilla/javascript/Symbol;Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v1, 0x1

    .line 16
    if-eq p1, v1, :cond_5

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eq p1, v1, :cond_4

    .line 21
    .line 22
    if-eq p1, v0, :cond_3

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    if-eq p1, v0, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x5

    .line 28
    if-ne p1, v0, :cond_1

    .line 29
    .line 30
    const-string/jumbo v0, "valueOf"

    .line 31
    .line 32
    .line 33
    :goto_0
    move v1, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    const-string/jumbo v0, "toSource"

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    const-string/jumbo v0, "toLocaleString"

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    const-string/jumbo v0, "toString"

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    const-string v0, "constructor"

    .line 56
    .line 57
    :goto_1
    sget-object v2, Lorg/mozilla/javascript/NativeBigInt;->BIG_INT_TAG:Ljava/lang/Object;

    .line 58
    .line 59
    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/NativeBigInt;->bigIntValue:Ljava/math/BigInteger;

    .line 2
    .line 3
    const/16 v0, 0xa

    .line 4
    .line 5
    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->bigIntToString(Ljava/math/BigInteger;I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
