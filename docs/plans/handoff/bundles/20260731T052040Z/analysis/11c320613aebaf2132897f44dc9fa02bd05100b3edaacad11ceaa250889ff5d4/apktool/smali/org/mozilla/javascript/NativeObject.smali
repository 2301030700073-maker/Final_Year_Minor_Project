.class public Lorg/mozilla/javascript/NativeObject;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/NativeObject$KeySet;,
        Lorg/mozilla/javascript/NativeObject$ValueCollection;,
        Lorg/mozilla/javascript/NativeObject$EntrySet;
    }
.end annotation


# static fields
.field private static final ConstructorId_assign:I = -0x10

.field private static final ConstructorId_create:I = -0xa

.field private static final ConstructorId_defineProperties:I = -0x9

.field private static final ConstructorId_defineProperty:I = -0x6

.field private static final ConstructorId_entries:I = -0x13

.field private static final ConstructorId_freeze:I = -0xe

.field private static final ConstructorId_fromEntries:I = -0x14

.field private static final ConstructorId_getOwnPropertyDescriptor:I = -0x4

.field private static final ConstructorId_getOwnPropertyDescriptors:I = -0x5

.field private static final ConstructorId_getOwnPropertyNames:I = -0x3

.field private static final ConstructorId_getOwnPropertySymbols:I = -0xf

.field private static final ConstructorId_getPrototypeOf:I = -0x1

.field private static final ConstructorId_groupBy:I = -0x17

.field private static final ConstructorId_hasOwn:I = -0x16

.field private static final ConstructorId_is:I = -0x11

.field private static final ConstructorId_isExtensible:I = -0x7

.field private static final ConstructorId_isFrozen:I = -0xc

.field private static final ConstructorId_isSealed:I = -0xb

.field private static final ConstructorId_keys:I = -0x2

.field private static final ConstructorId_preventExtensions:I = -0x8

.field private static final ConstructorId_seal:I = -0xd

.field private static final ConstructorId_setPrototypeOf:I = -0x12

.field private static final ConstructorId_values:I = -0x15

.field private static final Id___defineGetter__:I = 0x9

.field private static final Id___defineSetter__:I = 0xa

.field private static final Id___lookupGetter__:I = 0xb

.field private static final Id___lookupSetter__:I = 0xc

.field private static final Id_constructor:I = 0x1

.field private static final Id_hasOwnProperty:I = 0x5

.field private static final Id_isPrototypeOf:I = 0x7

.field private static final Id_propertyIsEnumerable:I = 0x6

.field private static final Id_toLocaleString:I = 0x3

.field private static final Id_toSource:I = 0x8

.field private static final Id_toString:I = 0x2

.field private static final Id_valueOf:I = 0x4

.field private static final MAX_PROTOTYPE_ID:I = 0xc

.field private static final OBJECT_TAG:Ljava/lang/Object;

.field private static final serialVersionUID:J = -0x580f0dd5006845f4L


# direct methods
.method public static synthetic $r8$lambda$7wgYXA6j5v7wMvdZQWLWExPc5G4(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativeObject;->lambda$execIdCall$0(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "Object"

    .line 2
    .line 3
    sput-object v0, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xc8

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 2

    .line 1
    new-instance v0, Lorg/mozilla/javascript/NativeObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0xc

    .line 7
    .line 8
    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private isEnumerable(ILjava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of p0, p2, Lorg/mozilla/javascript/ScriptableObject;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    check-cast p2, Lorg/mozilla/javascript/ScriptableObject;

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(I)I

    .line 9
    .line 10
    .line 11
    move-result p0
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    and-int/lit8 p0, p0, 0x2

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :catch_0
    :cond_1
    return v0
.end method

.method private isEnumerable(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    .line 20
    instance-of p0, p2, Lorg/mozilla/javascript/ScriptableObject;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 21
    check-cast p2, Lorg/mozilla/javascript/ScriptableObject;

    .line 22
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method private isEnumerable(Lorg/mozilla/javascript/Symbol;Ljava/lang/Object;)Z
    .locals 1

    .line 23
    instance-of p0, p2, Lorg/mozilla/javascript/ScriptableObject;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 24
    check-cast p2, Lorg/mozilla/javascript/ScriptableObject;

    .line 25
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(Lorg/mozilla/javascript/Symbol;)I

    move-result p0
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method private static synthetic lambda$execIdCall$0(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-interface {p0, p1, p0, p2}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    instance-of v0, p1, Lorg/mozilla/javascript/Symbol;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    instance-of v0, p0, Lorg/mozilla/javascript/SymbolScriptable;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    move-object v0, p0

    .line 24
    check-cast v0, Lorg/mozilla/javascript/SymbolScriptable;

    .line 25
    .line 26
    check-cast p1, Lorg/mozilla/javascript/Symbol;

    .line 27
    .line 28
    invoke-interface {v0, p1, p0, p2}, Lorg/mozilla/javascript/SymbolScriptable;->put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p0, p1, p0, p2}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p0}, Lorg/mozilla/javascript/IdScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p1, Ljava/lang/Number;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeObject;->values()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/mozilla/javascript/NativeObject$EntrySet;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/mozilla/javascript/NativeObject$EntrySet;-><init>(Lorg/mozilla/javascript/NativeObject;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    sget-object v6, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {v2, v6}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-nez v6, :cond_0

    .line 20
    .line 21
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_0
    invoke-virtual {v2}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    const/4 v7, 0x3

    .line 31
    const-string v9, ".to.object"

    .line 32
    .line 33
    const-string v10, "msg."

    .line 34
    .line 35
    const-string/jumbo v11, "undef"

    .line 36
    .line 37
    .line 38
    const/16 v12, 0xb4

    .line 39
    .line 40
    const-string v13, "null"

    .line 41
    .line 42
    const/4 v15, 0x2

    .line 43
    const/16 v16, 0x0

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    const/4 v14, 0x1

    .line 47
    packed-switch v6, :pswitch_data_0

    .line 48
    .line 49
    .line 50
    :pswitch_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v16

    .line 58
    :pswitch_1
    array-length v1, v5

    .line 59
    if-lt v1, v14, :cond_8

    .line 60
    .line 61
    instance-of v1, v4, Lorg/mozilla/javascript/ScriptableObject;

    .line 62
    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_1
    move-object v1, v4

    .line 67
    check-cast v1, Lorg/mozilla/javascript/ScriptableObject;

    .line 68
    .line 69
    aget-object v2, v5, v8

    .line 70
    .line 71
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iget-object v3, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    .line 76
    .line 77
    if-eqz v3, :cond_2

    .line 78
    .line 79
    move v3, v8

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    iget v3, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    .line 82
    .line 83
    :goto_0
    const/16 v4, 0xc

    .line 84
    .line 85
    if-ne v6, v4, :cond_3

    .line 86
    .line 87
    move v8, v14

    .line 88
    :cond_3
    :goto_1
    iget-object v4, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v1, v4, v3, v0, v8}, Lorg/mozilla/javascript/ScriptableObject;->getGetterOrSetter(Ljava/lang/String;ILorg/mozilla/javascript/Scriptable;Z)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    if-eqz v4, :cond_4

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    invoke-virtual {v1}, Lorg/mozilla/javascript/ScriptableObject;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-nez v1, :cond_5

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    instance-of v5, v1, Lorg/mozilla/javascript/ScriptableObject;

    .line 105
    .line 106
    if-eqz v5, :cond_6

    .line 107
    .line 108
    check-cast v1, Lorg/mozilla/javascript/ScriptableObject;

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    .line 112
    .line 113
    return-object v4

    .line 114
    :cond_7
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 115
    .line 116
    return-object v0

    .line 117
    :cond_8
    :goto_3
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 118
    .line 119
    return-object v0

    .line 120
    :pswitch_2
    array-length v0, v5

    .line 121
    if-lt v0, v15, :cond_f

    .line 122
    .line 123
    aget-object v0, v5, v14

    .line 124
    .line 125
    instance-of v0, v0, Lorg/mozilla/javascript/Callable;

    .line 126
    .line 127
    if-nez v0, :cond_9

    .line 128
    .line 129
    goto :goto_7

    .line 130
    :cond_9
    instance-of v0, v4, Lorg/mozilla/javascript/ScriptableObject;

    .line 131
    .line 132
    if-nez v0, :cond_b

    .line 133
    .line 134
    if-nez v4, :cond_a

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v13

    .line 145
    :goto_4
    aget-object v0, v5, v8

    .line 146
    .line 147
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    new-array v1, v15, [Ljava/lang/Object;

    .line 152
    .line 153
    aput-object v13, v1, v8

    .line 154
    .line 155
    aput-object v0, v1, v14

    .line 156
    .line 157
    const-string v0, "msg.extend.scriptable"

    .line 158
    .line 159
    invoke-static {v0, v1}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    throw v0

    .line 164
    :cond_b
    move-object v0, v4

    .line 165
    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    .line 166
    .line 167
    aget-object v1, v5, v8

    .line 168
    .line 169
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    iget-object v2, v1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    .line 174
    .line 175
    if-eqz v2, :cond_c

    .line 176
    .line 177
    move v1, v8

    .line 178
    goto :goto_5

    .line 179
    :cond_c
    iget v1, v1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    .line 180
    .line 181
    :goto_5
    aget-object v3, v5, v14

    .line 182
    .line 183
    check-cast v3, Lorg/mozilla/javascript/Callable;

    .line 184
    .line 185
    const/16 v4, 0xa

    .line 186
    .line 187
    if-ne v6, v4, :cond_d

    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_d
    move v14, v8

    .line 191
    :goto_6
    invoke-virtual {v0, v2, v1, v3, v14}, Lorg/mozilla/javascript/ScriptableObject;->setGetterOrSetter(Ljava/lang/Object;ILorg/mozilla/javascript/Callable;Z)V

    .line 192
    .line 193
    .line 194
    instance-of v1, v0, Lorg/mozilla/javascript/NativeArray;

    .line 195
    .line 196
    if-eqz v1, :cond_e

    .line 197
    .line 198
    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    .line 199
    .line 200
    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/NativeArray;->setDenseOnly(Z)V

    .line 201
    .line 202
    .line 203
    :cond_e
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 204
    .line 205
    return-object v0

    .line 206
    :cond_f
    :goto_7
    array-length v0, v5

    .line 207
    if-lt v0, v15, :cond_10

    .line 208
    .line 209
    aget-object v0, v5, v14

    .line 210
    .line 211
    goto :goto_8

    .line 212
    :cond_10
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 213
    .line 214
    :goto_8
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    throw v0

    .line 219
    :pswitch_3
    invoke-static/range {p2 .. p5}, Lorg/mozilla/javascript/ScriptRuntime;->defaultObjectToSource(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    return-object v0

    .line 224
    :pswitch_4
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-lt v0, v12, :cond_13

    .line 229
    .line 230
    if-eqz v4, :cond_11

    .line 231
    .line 232
    invoke-static {v4}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_13

    .line 237
    .line 238
    :cond_11
    if-nez v4, :cond_12

    .line 239
    .line 240
    move-object v11, v13

    .line 241
    :cond_12
    invoke-static {v10, v11, v9}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    new-array v1, v8, [Ljava/lang/Object;

    .line 246
    .line 247
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    throw v0

    .line 252
    :cond_13
    array-length v0, v5

    .line 253
    if-eqz v0, :cond_16

    .line 254
    .line 255
    aget-object v0, v5, v8

    .line 256
    .line 257
    instance-of v1, v0, Lorg/mozilla/javascript/Scriptable;

    .line 258
    .line 259
    if-eqz v1, :cond_16

    .line 260
    .line 261
    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    .line 262
    .line 263
    :cond_14
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    if-ne v0, v4, :cond_15

    .line 268
    .line 269
    move v8, v14

    .line 270
    goto :goto_9

    .line 271
    :cond_15
    if-nez v0, :cond_14

    .line 272
    .line 273
    :cond_16
    :goto_9
    invoke-static {v8}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    return-object v0

    .line 278
    :pswitch_5
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-lt v1, v12, :cond_19

    .line 283
    .line 284
    if-eqz v4, :cond_17

    .line 285
    .line 286
    invoke-static {v4}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-eqz v1, :cond_19

    .line 291
    .line 292
    :cond_17
    if-nez v4, :cond_18

    .line 293
    .line 294
    move-object v11, v13

    .line 295
    :cond_18
    invoke-static {v10, v11, v9}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    new-array v1, v8, [Ljava/lang/Object;

    .line 300
    .line 301
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    throw v0

    .line 306
    :cond_19
    array-length v1, v5

    .line 307
    if-ge v1, v14, :cond_1a

    .line 308
    .line 309
    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 310
    .line 311
    goto :goto_a

    .line 312
    :cond_1a
    aget-object v1, v5, v8

    .line 313
    .line 314
    :goto_a
    instance-of v2, v1, Lorg/mozilla/javascript/Symbol;

    .line 315
    .line 316
    if-eqz v2, :cond_1b

    .line 317
    .line 318
    move-object v2, v4

    .line 319
    check-cast v2, Lorg/mozilla/javascript/SymbolScriptable;

    .line 320
    .line 321
    check-cast v1, Lorg/mozilla/javascript/Symbol;

    .line 322
    .line 323
    invoke-interface {v2, v1, v4}, Lorg/mozilla/javascript/SymbolScriptable;->has(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Z

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    if-eqz v2, :cond_1e

    .line 328
    .line 329
    invoke-direct {v0, v1, v4}, Lorg/mozilla/javascript/NativeObject;->isEnumerable(Lorg/mozilla/javascript/Symbol;Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-eqz v0, :cond_1e

    .line 334
    .line 335
    :goto_b
    move v8, v14

    .line 336
    goto :goto_d

    .line 337
    :cond_1b
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    :try_start_0
    iget-object v2, v1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    .line 342
    .line 343
    if-nez v2, :cond_1c

    .line 344
    .line 345
    iget v2, v1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    .line 346
    .line 347
    invoke-interface {v4, v2, v4}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    if-eqz v2, :cond_1e

    .line 352
    .line 353
    iget v2, v1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    .line 354
    .line 355
    invoke-direct {v0, v2, v4}, Lorg/mozilla/javascript/NativeObject;->isEnumerable(ILjava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    if-eqz v0, :cond_1e

    .line 360
    .line 361
    goto :goto_b

    .line 362
    :catch_0
    move-exception v0

    .line 363
    goto :goto_c

    .line 364
    :cond_1c
    invoke-interface {v4, v2, v4}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    .line 365
    .line 366
    .line 367
    move-result v2

    .line 368
    if-eqz v2, :cond_1e

    .line 369
    .line 370
    iget-object v2, v1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    .line 371
    .line 372
    invoke-direct {v0, v2, v4}, Lorg/mozilla/javascript/NativeObject;->isEnumerable(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v0
    :try_end_0
    .catch Lorg/mozilla/javascript/EvaluatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    if-eqz v0, :cond_1e

    .line 377
    .line 378
    goto :goto_b

    .line 379
    :goto_c
    invoke-virtual {v0}, Lorg/mozilla/javascript/RhinoException;->getMessage()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    iget-object v3, v1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    .line 384
    .line 385
    if-nez v3, :cond_1d

    .line 386
    .line 387
    iget v1, v1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    .line 388
    .line 389
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    :cond_1d
    new-array v1, v14, [Ljava/lang/Object;

    .line 394
    .line 395
    aput-object v3, v1, v8

    .line 396
    .line 397
    const-string v3, "msg.prop.not.found"

    .line 398
    .line 399
    invoke-static {v3, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    if-eqz v1, :cond_1f

    .line 408
    .line 409
    :cond_1e
    :goto_d
    invoke-static {v8}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    return-object v0

    .line 414
    :cond_1f
    throw v0

    .line 415
    :pswitch_6
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    if-lt v0, v12, :cond_22

    .line 420
    .line 421
    if-eqz v4, :cond_20

    .line 422
    .line 423
    invoke-static {v4}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    if-eqz v0, :cond_22

    .line 428
    .line 429
    :cond_20
    if-nez v4, :cond_21

    .line 430
    .line 431
    move-object v11, v13

    .line 432
    :cond_21
    invoke-static {v10, v11, v9}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    new-array v1, v8, [Ljava/lang/Object;

    .line 437
    .line 438
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    throw v0

    .line 443
    :cond_22
    array-length v0, v5

    .line 444
    if-ge v0, v14, :cond_23

    .line 445
    .line 446
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 447
    .line 448
    goto :goto_e

    .line 449
    :cond_23
    aget-object v0, v5, v8

    .line 450
    .line 451
    :goto_e
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->hasOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    return-object v0

    .line 460
    :pswitch_7
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    if-lt v0, v12, :cond_26

    .line 465
    .line 466
    if-eqz v4, :cond_24

    .line 467
    .line 468
    invoke-static {v4}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    if-eqz v0, :cond_26

    .line 473
    .line 474
    :cond_24
    if-nez v4, :cond_25

    .line 475
    .line 476
    move-object v11, v13

    .line 477
    :cond_25
    invoke-static {v10, v11, v9}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    new-array v1, v8, [Ljava/lang/Object;

    .line 482
    .line 483
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    throw v0

    .line 488
    :cond_26
    return-object v4

    .line 489
    :pswitch_8
    if-eqz v4, :cond_28

    .line 490
    .line 491
    const-string/jumbo v0, "toString"

    .line 492
    .line 493
    .line 494
    invoke-static {v4, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    instance-of v2, v0, Lorg/mozilla/javascript/Callable;

    .line 499
    .line 500
    if-eqz v2, :cond_27

    .line 501
    .line 502
    check-cast v0, Lorg/mozilla/javascript/Callable;

    .line 503
    .line 504
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .line 505
    .line 506
    invoke-interface {v0, v1, v3, v4, v2}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    return-object v0

    .line 511
    :cond_27
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    throw v0

    .line 516
    :cond_28
    invoke-static/range {v16 .. v16}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    throw v0

    .line 521
    :pswitch_9
    const/4 v0, 0x4

    .line 522
    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    .line 523
    .line 524
    .line 525
    move-result v0

    .line 526
    if-eqz v0, :cond_2a

    .line 527
    .line 528
    invoke-static/range {p2 .. p5}, Lorg/mozilla/javascript/ScriptRuntime;->defaultObjectToSource(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 533
    .line 534
    .line 535
    move-result v1

    .line 536
    if-eqz v1, :cond_29

    .line 537
    .line 538
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 539
    .line 540
    .line 541
    move-result v2

    .line 542
    const/16 v3, 0x28

    .line 543
    .line 544
    if-ne v2, v3, :cond_29

    .line 545
    .line 546
    sub-int/2addr v1, v14

    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 548
    .line 549
    .line 550
    move-result v2

    .line 551
    const/16 v3, 0x29

    .line 552
    .line 553
    if-ne v2, v3, :cond_29

    .line 554
    .line 555
    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    :cond_29
    return-object v0

    .line 560
    :cond_2a
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->defaultObjectToString(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    return-object v0

    .line 565
    :pswitch_a
    if-eqz v4, :cond_2b

    .line 566
    .line 567
    invoke-virtual {v2, v1, v3, v5}, Lorg/mozilla/javascript/BaseFunction;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    return-object v0

    .line 572
    :cond_2b
    array-length v0, v5

    .line 573
    if-eqz v0, :cond_2d

    .line 574
    .line 575
    aget-object v0, v5, v8

    .line 576
    .line 577
    if-eqz v0, :cond_2d

    .line 578
    .line 579
    invoke-static {v0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    move-result v0

    .line 583
    if-eqz v0, :cond_2c

    .line 584
    .line 585
    goto :goto_f

    .line 586
    :cond_2c
    aget-object v0, v5, v8

    .line 587
    .line 588
    invoke-static {v1, v3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    return-object v0

    .line 593
    :cond_2d
    :goto_f
    invoke-virtual/range {p2 .. p3}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    return-object v0

    .line 598
    :pswitch_b
    array-length v0, v5

    .line 599
    if-ge v0, v14, :cond_2e

    .line 600
    .line 601
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 602
    .line 603
    goto :goto_10

    .line 604
    :cond_2e
    aget-object v0, v5, v8

    .line 605
    .line 606
    :goto_10
    invoke-static {v1, v3, v0}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    return-object v0

    .line 615
    :pswitch_c
    array-length v0, v5

    .line 616
    if-ge v0, v14, :cond_2f

    .line 617
    .line 618
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 619
    .line 620
    goto :goto_11

    .line 621
    :cond_2f
    aget-object v0, v5, v8

    .line 622
    .line 623
    :goto_11
    invoke-static {v1, v3, v0}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    :goto_12
    array-length v2, v0

    .line 632
    if-ge v8, v2, :cond_30

    .line 633
    .line 634
    aget-object v2, v0, v8

    .line 635
    .line 636
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    aput-object v2, v0, v8

    .line 641
    .line 642
    add-int/lit8 v8, v8, 0x1

    .line 643
    .line 644
    goto :goto_12

    .line 645
    :cond_30
    invoke-virtual {v1, v3, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    return-object v0

    .line 650
    :pswitch_d
    array-length v0, v5

    .line 651
    if-ge v0, v14, :cond_31

    .line 652
    .line 653
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 654
    .line 655
    goto :goto_13

    .line 656
    :cond_31
    aget-object v0, v5, v8

    .line 657
    .line 658
    :goto_13
    invoke-static {v1, v3, v0}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    invoke-virtual {v0, v14, v8}, Lorg/mozilla/javascript/ScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    :goto_14
    array-length v2, v0

    .line 671
    if-ge v8, v2, :cond_32

    .line 672
    .line 673
    aget-object v2, v0, v8

    .line 674
    .line 675
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v2

    .line 679
    aput-object v2, v0, v8

    .line 680
    .line 681
    add-int/lit8 v8, v8, 0x1

    .line 682
    .line 683
    goto :goto_14

    .line 684
    :cond_32
    invoke-virtual {v1, v3, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    return-object v0

    .line 689
    :pswitch_e
    array-length v0, v5

    .line 690
    if-ge v0, v14, :cond_33

    .line 691
    .line 692
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 693
    .line 694
    goto :goto_15

    .line 695
    :cond_33
    aget-object v0, v5, v8

    .line 696
    .line 697
    :goto_15
    invoke-static {v1, v3, v0}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    array-length v2, v5

    .line 706
    if-ge v2, v15, :cond_34

    .line 707
    .line 708
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 709
    .line 710
    goto :goto_16

    .line 711
    :cond_34
    aget-object v2, v5, v14

    .line 712
    .line 713
    :goto_16
    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    if-nez v0, :cond_35

    .line 718
    .line 719
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 720
    .line 721
    :cond_35
    return-object v0

    .line 722
    :pswitch_f
    array-length v0, v5

    .line 723
    if-ge v0, v14, :cond_36

    .line 724
    .line 725
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 726
    .line 727
    goto :goto_17

    .line 728
    :cond_36
    aget-object v0, v5, v8

    .line 729
    .line 730
    :goto_17
    invoke-static {v1, v3, v0}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    .line 735
    .line 736
    .line 737
    move-result-object v0

    .line 738
    invoke-virtual/range {p2 .. p3}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    check-cast v2, Lorg/mozilla/javascript/ScriptableObject;

    .line 743
    .line 744
    invoke-virtual {v0, v14, v14}, Lorg/mozilla/javascript/ScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v3

    .line 748
    array-length v4, v3

    .line 749
    :goto_18
    if-ge v8, v4, :cond_3a

    .line 750
    .line 751
    aget-object v5, v3, v8

    .line 752
    .line 753
    invoke-virtual {v0, v1, v5}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    .line 754
    .line 755
    .line 756
    move-result-object v6

    .line 757
    if-nez v6, :cond_37

    .line 758
    .line 759
    goto :goto_19

    .line 760
    :cond_37
    instance-of v7, v5, Lorg/mozilla/javascript/Symbol;

    .line 761
    .line 762
    if-eqz v7, :cond_38

    .line 763
    .line 764
    check-cast v5, Lorg/mozilla/javascript/Symbol;

    .line 765
    .line 766
    invoke-virtual {v2, v5, v2, v6}, Lorg/mozilla/javascript/ScriptableObject;->put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 767
    .line 768
    .line 769
    goto :goto_19

    .line 770
    :cond_38
    instance-of v7, v5, Ljava/lang/Integer;

    .line 771
    .line 772
    if-eqz v7, :cond_39

    .line 773
    .line 774
    check-cast v5, Ljava/lang/Integer;

    .line 775
    .line 776
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 777
    .line 778
    .line 779
    move-result v5

    .line 780
    invoke-virtual {v2, v5, v2, v6}, Lorg/mozilla/javascript/ScriptableObject;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 781
    .line 782
    .line 783
    goto :goto_19

    .line 784
    :cond_39
    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v5

    .line 788
    invoke-virtual {v2, v5, v2, v6}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 789
    .line 790
    .line 791
    :goto_19
    add-int/lit8 v8, v8, 0x1

    .line 792
    .line 793
    goto :goto_18

    .line 794
    :cond_3a
    return-object v2

    .line 795
    :pswitch_10
    array-length v0, v5

    .line 796
    if-ge v0, v14, :cond_3b

    .line 797
    .line 798
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 799
    .line 800
    goto :goto_1a

    .line 801
    :cond_3b
    aget-object v0, v5, v8

    .line 802
    .line 803
    :goto_1a
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    .line 804
    .line 805
    .line 806
    move-result-object v0

    .line 807
    array-length v2, v5

    .line 808
    if-ge v2, v15, :cond_3c

    .line 809
    .line 810
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 811
    .line 812
    goto :goto_1b

    .line 813
    :cond_3c
    aget-object v2, v5, v14

    .line 814
    .line 815
    :goto_1b
    array-length v3, v5

    .line 816
    if-ge v3, v7, :cond_3d

    .line 817
    .line 818
    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 819
    .line 820
    goto :goto_1c

    .line 821
    :cond_3d
    aget-object v3, v5, v15

    .line 822
    .line 823
    :goto_1c
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    .line 824
    .line 825
    .line 826
    move-result-object v3

    .line 827
    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)Z

    .line 828
    .line 829
    .line 830
    return-object v0

    .line 831
    :pswitch_11
    array-length v0, v5

    .line 832
    if-ge v0, v14, :cond_3e

    .line 833
    .line 834
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 835
    .line 836
    goto :goto_1d

    .line 837
    :cond_3e
    aget-object v0, v5, v8

    .line 838
    .line 839
    :goto_1d
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 840
    .line 841
    .line 842
    move-result v1

    .line 843
    const/16 v2, 0xc8

    .line 844
    .line 845
    if-lt v1, v2, :cond_3f

    .line 846
    .line 847
    instance-of v1, v0, Lorg/mozilla/javascript/ScriptableObject;

    .line 848
    .line 849
    if-nez v1, :cond_3f

    .line 850
    .line 851
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 852
    .line 853
    return-object v0

    .line 854
    :cond_3f
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    .line 859
    .line 860
    .line 861
    move-result v0

    .line 862
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    return-object v0

    .line 867
    :pswitch_12
    array-length v0, v5

    .line 868
    if-ge v0, v14, :cond_40

    .line 869
    .line 870
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 871
    .line 872
    goto :goto_1e

    .line 873
    :cond_40
    aget-object v0, v5, v8

    .line 874
    .line 875
    :goto_1e
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 876
    .line 877
    .line 878
    move-result v1

    .line 879
    const/16 v2, 0xc8

    .line 880
    .line 881
    if-lt v1, v2, :cond_41

    .line 882
    .line 883
    instance-of v1, v0, Lorg/mozilla/javascript/ScriptableObject;

    .line 884
    .line 885
    if-nez v1, :cond_41

    .line 886
    .line 887
    return-object v0

    .line 888
    :cond_41
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    .line 889
    .line 890
    .line 891
    move-result-object v0

    .line 892
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->preventExtensions()Z

    .line 893
    .line 894
    .line 895
    move-result v1

    .line 896
    if-eqz v1, :cond_42

    .line 897
    .line 898
    return-object v0

    .line 899
    :cond_42
    const-string v0, "Object.preventExtensions is not allowed"

    .line 900
    .line 901
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    throw v0

    .line 906
    :pswitch_13
    array-length v0, v5

    .line 907
    if-ge v0, v14, :cond_43

    .line 908
    .line 909
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 910
    .line 911
    goto :goto_1f

    .line 912
    :cond_43
    aget-object v0, v5, v8

    .line 913
    .line 914
    :goto_1f
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    .line 915
    .line 916
    .line 917
    move-result-object v0

    .line 918
    array-length v2, v5

    .line 919
    if-ge v2, v15, :cond_44

    .line 920
    .line 921
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 922
    .line 923
    goto :goto_20

    .line 924
    :cond_44
    aget-object v2, v5, v14

    .line 925
    .line 926
    :goto_20
    invoke-static {v2, v3}, Lorg/mozilla/javascript/Context;->toObject(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 927
    .line 928
    .line 929
    move-result-object v2

    .line 930
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    .line 931
    .line 932
    .line 933
    move-result-object v2

    .line 934
    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperties(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;)V

    .line 935
    .line 936
    .line 937
    return-object v0

    .line 938
    :pswitch_14
    array-length v0, v5

    .line 939
    if-ge v0, v14, :cond_45

    .line 940
    .line 941
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 942
    .line 943
    goto :goto_21

    .line 944
    :cond_45
    aget-object v0, v5, v8

    .line 945
    .line 946
    :goto_21
    if-nez v0, :cond_46

    .line 947
    .line 948
    move-object/from16 v8, v16

    .line 949
    .line 950
    goto :goto_22

    .line 951
    :cond_46
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 952
    .line 953
    .line 954
    move-result-object v8

    .line 955
    :goto_22
    new-instance v0, Lorg/mozilla/javascript/NativeObject;

    .line 956
    .line 957
    invoke-direct {v0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    .line 958
    .line 959
    .line 960
    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 961
    .line 962
    .line 963
    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 964
    .line 965
    .line 966
    array-length v2, v5

    .line 967
    if-le v2, v14, :cond_47

    .line 968
    .line 969
    aget-object v2, v5, v14

    .line 970
    .line 971
    invoke-static {v2}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    .line 972
    .line 973
    .line 974
    move-result v2

    .line 975
    if-nez v2, :cond_47

    .line 976
    .line 977
    aget-object v2, v5, v14

    .line 978
    .line 979
    invoke-static {v2, v3}, Lorg/mozilla/javascript/Context;->toObject(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 980
    .line 981
    .line 982
    move-result-object v2

    .line 983
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    .line 984
    .line 985
    .line 986
    move-result-object v2

    .line 987
    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperties(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;)V

    .line 988
    .line 989
    .line 990
    :cond_47
    return-object v0

    .line 991
    :pswitch_15
    array-length v0, v5

    .line 992
    if-ge v0, v14, :cond_48

    .line 993
    .line 994
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 995
    .line 996
    goto :goto_23

    .line 997
    :cond_48
    aget-object v0, v5, v8

    .line 998
    .line 999
    :goto_23
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 1000
    .line 1001
    .line 1002
    move-result v2

    .line 1003
    const/16 v3, 0xc8

    .line 1004
    .line 1005
    if-lt v2, v3, :cond_49

    .line 1006
    .line 1007
    instance-of v2, v0, Lorg/mozilla/javascript/ScriptableObject;

    .line 1008
    .line 1009
    if-nez v2, :cond_49

    .line 1010
    .line 1011
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1012
    .line 1013
    return-object v0

    .line 1014
    :cond_49
    sget-object v2, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;->SEALED:Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;

    .line 1015
    .line 1016
    invoke-static {v1, v0, v2}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->testIntegrityLevel(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;)Z

    .line 1017
    .line 1018
    .line 1019
    move-result v0

    .line 1020
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    return-object v0

    .line 1025
    :pswitch_16
    array-length v0, v5

    .line 1026
    if-ge v0, v14, :cond_4a

    .line 1027
    .line 1028
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 1029
    .line 1030
    goto :goto_24

    .line 1031
    :cond_4a
    aget-object v0, v5, v8

    .line 1032
    .line 1033
    :goto_24
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 1034
    .line 1035
    .line 1036
    move-result v2

    .line 1037
    const/16 v3, 0xc8

    .line 1038
    .line 1039
    if-lt v2, v3, :cond_4b

    .line 1040
    .line 1041
    instance-of v2, v0, Lorg/mozilla/javascript/ScriptableObject;

    .line 1042
    .line 1043
    if-nez v2, :cond_4b

    .line 1044
    .line 1045
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1046
    .line 1047
    return-object v0

    .line 1048
    :cond_4b
    sget-object v2, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;->FROZEN:Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;

    .line 1049
    .line 1050
    invoke-static {v1, v0, v2}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->testIntegrityLevel(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;)Z

    .line 1051
    .line 1052
    .line 1053
    move-result v0

    .line 1054
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v0

    .line 1058
    return-object v0

    .line 1059
    :pswitch_17
    array-length v0, v5

    .line 1060
    if-ge v0, v14, :cond_4c

    .line 1061
    .line 1062
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 1063
    .line 1064
    goto :goto_25

    .line 1065
    :cond_4c
    aget-object v0, v5, v8

    .line 1066
    .line 1067
    :goto_25
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 1068
    .line 1069
    .line 1070
    move-result v2

    .line 1071
    const/16 v3, 0xc8

    .line 1072
    .line 1073
    if-lt v2, v3, :cond_4d

    .line 1074
    .line 1075
    instance-of v2, v0, Lorg/mozilla/javascript/ScriptableObject;

    .line 1076
    .line 1077
    if-nez v2, :cond_4d

    .line 1078
    .line 1079
    goto :goto_26

    .line 1080
    :cond_4d
    sget-object v2, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;->SEALED:Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;

    .line 1081
    .line 1082
    invoke-static {v1, v0, v2}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->setIntegrityLevel(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;)Z

    .line 1083
    .line 1084
    .line 1085
    move-result v1

    .line 1086
    if-eqz v1, :cond_4e

    .line 1087
    .line 1088
    :goto_26
    return-object v0

    .line 1089
    :cond_4e
    const-string v0, "Object is not sealable"

    .line 1090
    .line 1091
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v0

    .line 1095
    throw v0

    .line 1096
    :pswitch_18
    array-length v0, v5

    .line 1097
    if-ge v0, v14, :cond_4f

    .line 1098
    .line 1099
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 1100
    .line 1101
    goto :goto_27

    .line 1102
    :cond_4f
    aget-object v0, v5, v8

    .line 1103
    .line 1104
    :goto_27
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 1105
    .line 1106
    .line 1107
    move-result v2

    .line 1108
    const/16 v3, 0xc8

    .line 1109
    .line 1110
    if-lt v2, v3, :cond_50

    .line 1111
    .line 1112
    instance-of v2, v0, Lorg/mozilla/javascript/ScriptableObject;

    .line 1113
    .line 1114
    if-nez v2, :cond_50

    .line 1115
    .line 1116
    goto :goto_28

    .line 1117
    :cond_50
    sget-object v2, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;->FROZEN:Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;

    .line 1118
    .line 1119
    invoke-static {v1, v0, v2}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->setIntegrityLevel(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/AbstractEcmaObjectOperations$INTEGRITY_LEVEL;)Z

    .line 1120
    .line 1121
    .line 1122
    move-result v1

    .line 1123
    if-eqz v1, :cond_51

    .line 1124
    .line 1125
    :goto_28
    return-object v0

    .line 1126
    :cond_51
    const-string v0, "Object is not freezable"

    .line 1127
    .line 1128
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v0

    .line 1132
    throw v0

    .line 1133
    :pswitch_19
    array-length v0, v5

    .line 1134
    if-ge v0, v14, :cond_52

    .line 1135
    .line 1136
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 1137
    .line 1138
    goto :goto_29

    .line 1139
    :cond_52
    aget-object v0, v5, v8

    .line 1140
    .line 1141
    :goto_29
    invoke-static {v1, v3, v0}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v0

    .line 1145
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v0

    .line 1149
    invoke-virtual {v0, v14, v14}, Lorg/mozilla/javascript/ScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v0

    .line 1153
    new-instance v2, Ljava/util/ArrayList;

    .line 1154
    .line 1155
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    .line 1157
    .line 1158
    array-length v4, v0

    .line 1159
    :goto_2a
    if-ge v8, v4, :cond_54

    .line 1160
    .line 1161
    aget-object v5, v0, v8

    .line 1162
    .line 1163
    instance-of v6, v5, Lorg/mozilla/javascript/Symbol;

    .line 1164
    .line 1165
    if-eqz v6, :cond_53

    .line 1166
    .line 1167
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    .line 1169
    .line 1170
    :cond_53
    add-int/lit8 v8, v8, 0x1

    .line 1171
    .line 1172
    goto :goto_2a

    .line 1173
    :cond_54
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v0

    .line 1177
    invoke-virtual {v1, v3, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v0

    .line 1181
    return-object v0

    .line 1182
    :pswitch_1a
    array-length v2, v5

    .line 1183
    if-lez v2, :cond_55

    .line 1184
    .line 1185
    aget-object v2, v5, v8

    .line 1186
    .line 1187
    invoke-static {v1, v3, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v2

    .line 1191
    goto :goto_2b

    .line 1192
    :cond_55
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 1193
    .line 1194
    invoke-static {v1, v3, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v2

    .line 1198
    :goto_2b
    move v4, v14

    .line 1199
    :goto_2c
    array-length v6, v5

    .line 1200
    if-ge v4, v6, :cond_5a

    .line 1201
    .line 1202
    aget-object v6, v5, v4

    .line 1203
    .line 1204
    if-eqz v6, :cond_59

    .line 1205
    .line 1206
    invoke-static {v6}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    .line 1207
    .line 1208
    .line 1209
    move-result v6

    .line 1210
    if-eqz v6, :cond_56

    .line 1211
    .line 1212
    goto :goto_2f

    .line 1213
    :cond_56
    aget-object v6, v5, v4

    .line 1214
    .line 1215
    invoke-static {v1, v3, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v6

    .line 1219
    invoke-interface {v6}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v7

    .line 1223
    array-length v9, v7

    .line 1224
    move v10, v8

    .line 1225
    :goto_2d
    if-ge v10, v9, :cond_59

    .line 1226
    .line 1227
    aget-object v11, v7, v10

    .line 1228
    .line 1229
    instance-of v12, v11, Ljava/lang/Integer;

    .line 1230
    .line 1231
    if-eqz v12, :cond_57

    .line 1232
    .line 1233
    check-cast v11, Ljava/lang/Integer;

    .line 1234
    .line 1235
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 1236
    .line 1237
    .line 1238
    move-result v11

    .line 1239
    invoke-interface {v6, v11, v6}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    .line 1240
    .line 1241
    .line 1242
    move-result v12

    .line 1243
    if-eqz v12, :cond_58

    .line 1244
    .line 1245
    invoke-direct {v0, v11, v6}, Lorg/mozilla/javascript/NativeObject;->isEnumerable(ILjava/lang/Object;)Z

    .line 1246
    .line 1247
    .line 1248
    move-result v12

    .line 1249
    if-eqz v12, :cond_58

    .line 1250
    .line 1251
    invoke-interface {v6, v11, v6}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v12

    .line 1255
    invoke-static {v1, v2, v11, v12, v14}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->put(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Z)V

    .line 1256
    .line 1257
    .line 1258
    goto :goto_2e

    .line 1259
    :cond_57
    invoke-static {v11}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v11

    .line 1263
    invoke-interface {v6, v11, v6}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    .line 1264
    .line 1265
    .line 1266
    move-result v12

    .line 1267
    if-eqz v12, :cond_58

    .line 1268
    .line 1269
    invoke-direct {v0, v11, v6}, Lorg/mozilla/javascript/NativeObject;->isEnumerable(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1270
    .line 1271
    .line 1272
    move-result v12

    .line 1273
    if-eqz v12, :cond_58

    .line 1274
    .line 1275
    invoke-interface {v6, v11, v6}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v12

    .line 1279
    invoke-static {v1, v2, v11, v12, v14}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->put(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1280
    .line 1281
    .line 1282
    :cond_58
    :goto_2e
    add-int/lit8 v10, v10, 0x1

    .line 1283
    .line 1284
    goto :goto_2d

    .line 1285
    :cond_59
    :goto_2f
    add-int/lit8 v4, v4, 0x1

    .line 1286
    .line 1287
    goto :goto_2c

    .line 1288
    :cond_5a
    return-object v2

    .line 1289
    :pswitch_1b
    array-length v0, v5

    .line 1290
    if-ge v0, v14, :cond_5b

    .line 1291
    .line 1292
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 1293
    .line 1294
    goto :goto_30

    .line 1295
    :cond_5b
    aget-object v0, v5, v8

    .line 1296
    .line 1297
    :goto_30
    array-length v1, v5

    .line 1298
    if-ge v1, v15, :cond_5c

    .line 1299
    .line 1300
    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 1301
    .line 1302
    goto :goto_31

    .line 1303
    :cond_5c
    aget-object v1, v5, v14

    .line 1304
    .line 1305
    :goto_31
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->same(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1306
    .line 1307
    .line 1308
    move-result v0

    .line 1309
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v0

    .line 1313
    return-object v0

    .line 1314
    :pswitch_1c
    array-length v0, v5

    .line 1315
    if-lt v0, v15, :cond_64

    .line 1316
    .line 1317
    aget-object v0, v5, v14

    .line 1318
    .line 1319
    if-nez v0, :cond_5d

    .line 1320
    .line 1321
    move-object/from16 v0, v16

    .line 1322
    .line 1323
    goto :goto_32

    .line 1324
    :cond_5d
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v0

    .line 1328
    :goto_32
    instance-of v3, v0, Lorg/mozilla/javascript/Symbol;

    .line 1329
    .line 1330
    if-nez v3, :cond_63

    .line 1331
    .line 1332
    aget-object v3, v5, v8

    .line 1333
    .line 1334
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 1335
    .line 1336
    .line 1337
    move-result v4

    .line 1338
    const/16 v5, 0xc8

    .line 1339
    .line 1340
    if-lt v4, v5, :cond_5e

    .line 1341
    .line 1342
    invoke-static {v1, v3, v2}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    .line 1343
    .line 1344
    .line 1345
    :cond_5e
    instance-of v1, v3, Lorg/mozilla/javascript/ScriptableObject;

    .line 1346
    .line 1347
    if-nez v1, :cond_5f

    .line 1348
    .line 1349
    return-object v3

    .line 1350
    :cond_5f
    check-cast v3, Lorg/mozilla/javascript/ScriptableObject;

    .line 1351
    .line 1352
    invoke-virtual {v3}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    .line 1353
    .line 1354
    .line 1355
    move-result v1

    .line 1356
    if-eqz v1, :cond_62

    .line 1357
    .line 1358
    move-object v1, v0

    .line 1359
    :goto_33
    if-eqz v1, :cond_61

    .line 1360
    .line 1361
    if-eq v1, v3, :cond_60

    .line 1362
    .line 1363
    invoke-interface {v1}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v1

    .line 1367
    goto :goto_33

    .line 1368
    :cond_60
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v0

    .line 1372
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v0

    .line 1376
    new-array v1, v14, [Ljava/lang/Object;

    .line 1377
    .line 1378
    aput-object v0, v1, v8

    .line 1379
    .line 1380
    const-string v0, "msg.object.cyclic.prototype"

    .line 1381
    .line 1382
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v0

    .line 1386
    throw v0

    .line 1387
    :cond_61
    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 1388
    .line 1389
    .line 1390
    return-object v3

    .line 1391
    :cond_62
    const-string v0, "msg.not.extensible"

    .line 1392
    .line 1393
    new-array v1, v8, [Ljava/lang/Object;

    .line 1394
    .line 1395
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v0

    .line 1399
    throw v0

    .line 1400
    :cond_63
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v0

    .line 1404
    new-array v1, v14, [Ljava/lang/Object;

    .line 1405
    .line 1406
    aput-object v0, v1, v8

    .line 1407
    .line 1408
    const-string v0, "msg.arg.not.object"

    .line 1409
    .line 1410
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v0

    .line 1414
    throw v0

    .line 1415
    :cond_64
    array-length v0, v5

    .line 1416
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v0

    .line 1420
    new-array v1, v7, [Ljava/lang/Object;

    .line 1421
    .line 1422
    const-string v2, "Object.setPrototypeOf"

    .line 1423
    .line 1424
    aput-object v2, v1, v8

    .line 1425
    .line 1426
    const-string v2, "2"

    .line 1427
    .line 1428
    aput-object v2, v1, v14

    .line 1429
    .line 1430
    aput-object v0, v1, v15

    .line 1431
    .line 1432
    const-string v0, "msg.method.missing.parameter"

    .line 1433
    .line 1434
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v0

    .line 1438
    throw v0

    .line 1439
    :pswitch_1d
    array-length v2, v5

    .line 1440
    if-ge v2, v14, :cond_65

    .line 1441
    .line 1442
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 1443
    .line 1444
    goto :goto_34

    .line 1445
    :cond_65
    aget-object v2, v5, v8

    .line 1446
    .line 1447
    :goto_34
    invoke-static {v1, v3, v2}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v2

    .line 1451
    invoke-interface {v2}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v4

    .line 1455
    move v5, v8

    .line 1456
    move v6, v5

    .line 1457
    :goto_35
    array-length v7, v4

    .line 1458
    if-ge v5, v7, :cond_68

    .line 1459
    .line 1460
    aget-object v7, v4, v5

    .line 1461
    .line 1462
    instance-of v9, v7, Ljava/lang/Integer;

    .line 1463
    .line 1464
    if-eqz v9, :cond_66

    .line 1465
    .line 1466
    check-cast v7, Ljava/lang/Integer;

    .line 1467
    .line 1468
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 1469
    .line 1470
    .line 1471
    move-result v7

    .line 1472
    invoke-interface {v2, v7, v2}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    .line 1473
    .line 1474
    .line 1475
    move-result v9

    .line 1476
    if-eqz v9, :cond_67

    .line 1477
    .line 1478
    invoke-direct {v0, v7, v2}, Lorg/mozilla/javascript/NativeObject;->isEnumerable(ILjava/lang/Object;)Z

    .line 1479
    .line 1480
    .line 1481
    move-result v9

    .line 1482
    if-eqz v9, :cond_67

    .line 1483
    .line 1484
    aget-object v9, v4, v5

    .line 1485
    .line 1486
    invoke-static {v9}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v9

    .line 1490
    invoke-interface {v2, v7, v2}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v7

    .line 1494
    new-array v10, v15, [Ljava/lang/Object;

    .line 1495
    .line 1496
    aput-object v9, v10, v8

    .line 1497
    .line 1498
    aput-object v7, v10, v14

    .line 1499
    .line 1500
    add-int/lit8 v7, v6, 0x1

    .line 1501
    .line 1502
    invoke-virtual {v1, v3, v10}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v9

    .line 1506
    aput-object v9, v4, v6

    .line 1507
    .line 1508
    goto :goto_36

    .line 1509
    :cond_66
    invoke-static {v7}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v7

    .line 1513
    invoke-interface {v2, v7, v2}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    .line 1514
    .line 1515
    .line 1516
    move-result v9

    .line 1517
    if-eqz v9, :cond_67

    .line 1518
    .line 1519
    invoke-direct {v0, v7, v2}, Lorg/mozilla/javascript/NativeObject;->isEnumerable(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1520
    .line 1521
    .line 1522
    move-result v9

    .line 1523
    if-eqz v9, :cond_67

    .line 1524
    .line 1525
    invoke-interface {v2, v7, v2}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v9

    .line 1529
    new-array v10, v15, [Ljava/lang/Object;

    .line 1530
    .line 1531
    aput-object v7, v10, v8

    .line 1532
    .line 1533
    aput-object v9, v10, v14

    .line 1534
    .line 1535
    add-int/lit8 v7, v6, 0x1

    .line 1536
    .line 1537
    invoke-virtual {v1, v3, v10}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v9

    .line 1541
    aput-object v9, v4, v6

    .line 1542
    .line 1543
    :goto_36
    move v6, v7

    .line 1544
    :cond_67
    add-int/lit8 v5, v5, 0x1

    .line 1545
    .line 1546
    goto :goto_35

    .line 1547
    :cond_68
    array-length v0, v4

    .line 1548
    if-eq v6, v0, :cond_69

    .line 1549
    .line 1550
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v4

    .line 1554
    :cond_69
    invoke-virtual {v1, v3, v4}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v0

    .line 1558
    return-object v0

    .line 1559
    :pswitch_1e
    array-length v0, v5

    .line 1560
    if-ge v0, v14, :cond_6a

    .line 1561
    .line 1562
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 1563
    .line 1564
    goto :goto_37

    .line 1565
    :cond_6a
    aget-object v0, v5, v8

    .line 1566
    .line 1567
    :goto_37
    invoke-static {v1, v3, v0}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v0

    .line 1571
    invoke-virtual/range {p2 .. p3}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v2

    .line 1575
    new-instance v4, Lorg/mozilla/javascript/NativeObject$$ExternalSyntheticLambda0;

    .line 1576
    .line 1577
    invoke-direct {v4, v2}, Lorg/mozilla/javascript/NativeObject$$ExternalSyntheticLambda0;-><init>(Lorg/mozilla/javascript/Scriptable;)V

    .line 1578
    .line 1579
    .line 1580
    invoke-static {v1, v3, v0, v4}, Lorg/mozilla/javascript/ScriptRuntime;->loadFromIterable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/util/function/BiConsumer;)Z

    .line 1581
    .line 1582
    .line 1583
    return-object v2

    .line 1584
    :pswitch_1f
    array-length v2, v5

    .line 1585
    if-ge v2, v14, :cond_6b

    .line 1586
    .line 1587
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 1588
    .line 1589
    goto :goto_38

    .line 1590
    :cond_6b
    aget-object v2, v5, v8

    .line 1591
    .line 1592
    :goto_38
    invoke-static {v1, v3, v2}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v2

    .line 1596
    invoke-interface {v2}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v4

    .line 1600
    move v5, v8

    .line 1601
    :goto_39
    array-length v6, v4

    .line 1602
    if-ge v8, v6, :cond_6e

    .line 1603
    .line 1604
    aget-object v6, v4, v8

    .line 1605
    .line 1606
    instance-of v7, v6, Ljava/lang/Integer;

    .line 1607
    .line 1608
    if-eqz v7, :cond_6c

    .line 1609
    .line 1610
    check-cast v6, Ljava/lang/Integer;

    .line 1611
    .line 1612
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1613
    .line 1614
    .line 1615
    move-result v6

    .line 1616
    invoke-interface {v2, v6, v2}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    .line 1617
    .line 1618
    .line 1619
    move-result v7

    .line 1620
    if-eqz v7, :cond_6d

    .line 1621
    .line 1622
    invoke-direct {v0, v6, v2}, Lorg/mozilla/javascript/NativeObject;->isEnumerable(ILjava/lang/Object;)Z

    .line 1623
    .line 1624
    .line 1625
    move-result v7

    .line 1626
    if-eqz v7, :cond_6d

    .line 1627
    .line 1628
    add-int/lit8 v7, v5, 0x1

    .line 1629
    .line 1630
    invoke-interface {v2, v6, v2}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 1631
    .line 1632
    .line 1633
    move-result-object v6

    .line 1634
    aput-object v6, v4, v5

    .line 1635
    .line 1636
    goto :goto_3a

    .line 1637
    :cond_6c
    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v6

    .line 1641
    invoke-interface {v2, v6, v2}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    .line 1642
    .line 1643
    .line 1644
    move-result v7

    .line 1645
    if-eqz v7, :cond_6d

    .line 1646
    .line 1647
    invoke-direct {v0, v6, v2}, Lorg/mozilla/javascript/NativeObject;->isEnumerable(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1648
    .line 1649
    .line 1650
    move-result v7

    .line 1651
    if-eqz v7, :cond_6d

    .line 1652
    .line 1653
    add-int/lit8 v7, v5, 0x1

    .line 1654
    .line 1655
    invoke-interface {v2, v6, v2}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v6

    .line 1659
    aput-object v6, v4, v5

    .line 1660
    .line 1661
    :goto_3a
    move v5, v7

    .line 1662
    :cond_6d
    add-int/lit8 v8, v8, 0x1

    .line 1663
    .line 1664
    goto :goto_39

    .line 1665
    :cond_6e
    array-length v0, v4

    .line 1666
    if-eq v5, v0, :cond_6f

    .line 1667
    .line 1668
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v4

    .line 1672
    :cond_6f
    invoke-virtual {v1, v3, v4}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v0

    .line 1676
    return-object v0

    .line 1677
    :pswitch_20
    array-length v0, v5

    .line 1678
    if-ge v0, v14, :cond_70

    .line 1679
    .line 1680
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 1681
    .line 1682
    goto :goto_3b

    .line 1683
    :cond_70
    aget-object v0, v5, v8

    .line 1684
    .line 1685
    :goto_3b
    array-length v2, v5

    .line 1686
    if-ge v2, v15, :cond_71

    .line 1687
    .line 1688
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 1689
    .line 1690
    goto :goto_3c

    .line 1691
    :cond_71
    aget-object v2, v5, v14

    .line 1692
    .line 1693
    :goto_3c
    invoke-static {v1, v0, v2}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->hasOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1694
    .line 1695
    .line 1696
    move-result v0

    .line 1697
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1698
    .line 1699
    .line 1700
    move-result-object v0

    .line 1701
    return-object v0

    .line 1702
    :pswitch_21
    array-length v0, v5

    .line 1703
    if-ge v0, v14, :cond_72

    .line 1704
    .line 1705
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 1706
    .line 1707
    goto :goto_3d

    .line 1708
    :cond_72
    aget-object v0, v5, v8

    .line 1709
    .line 1710
    :goto_3d
    array-length v4, v5

    .line 1711
    if-ge v4, v15, :cond_73

    .line 1712
    .line 1713
    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 1714
    .line 1715
    goto :goto_3e

    .line 1716
    :cond_73
    aget-object v4, v5, v14

    .line 1717
    .line 1718
    :goto_3e
    sget-object v5, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;->PROPERTY:Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;

    .line 1719
    .line 1720
    move-object/from16 v17, v3

    .line 1721
    .line 1722
    move-object v3, v0

    .line 1723
    move-object v0, v1

    .line 1724
    move-object/from16 v1, v17

    .line 1725
    .line 1726
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->groupBy(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;)Ljava/util/Map;

    .line 1727
    .line 1728
    .line 1729
    move-result-object v2

    .line 1730
    invoke-virtual/range {p2 .. p3}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v3

    .line 1734
    check-cast v3, Lorg/mozilla/javascript/NativeObject;

    .line 1735
    .line 1736
    move-object/from16 v4, v16

    .line 1737
    .line 1738
    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 1739
    .line 1740
    .line 1741
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 1742
    .line 1743
    .line 1744
    move-result-object v2

    .line 1745
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v2

    .line 1749
    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1750
    .line 1751
    .line 1752
    move-result v4

    .line 1753
    if-eqz v4, :cond_74

    .line 1754
    .line 1755
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v4

    .line 1759
    check-cast v4, Ljava/util/Map$Entry;

    .line 1760
    .line 1761
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1762
    .line 1763
    .line 1764
    move-result-object v5

    .line 1765
    check-cast v5, Ljava/util/List;

    .line 1766
    .line 1767
    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v5

    .line 1771
    invoke-virtual {v0, v1, v5}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 1772
    .line 1773
    .line 1774
    move-result-object v5

    .line 1775
    invoke-virtual/range {p2 .. p3}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 1776
    .line 1777
    .line 1778
    move-result-object v6

    .line 1779
    check-cast v6, Lorg/mozilla/javascript/ScriptableObject;

    .line 1780
    .line 1781
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1782
    .line 1783
    const-string v8, "enumerable"

    .line 1784
    .line 1785
    invoke-virtual {v6, v8, v6, v7}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 1786
    .line 1787
    .line 1788
    const-string v8, "configurable"

    .line 1789
    .line 1790
    invoke-virtual {v6, v8, v6, v7}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 1791
    .line 1792
    .line 1793
    const-string/jumbo v7, "value"

    .line 1794
    .line 1795
    .line 1796
    invoke-virtual {v6, v7, v6, v5}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 1797
    .line 1798
    .line 1799
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v4

    .line 1803
    invoke-virtual {v3, v0, v4, v6}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)Z

    .line 1804
    .line 1805
    .line 1806
    goto :goto_3f

    .line 1807
    :cond_74
    return-object v3

    .line 1808
    nop

    :pswitch_data_0
    .packed-switch -0x17
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
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
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 6

    .line 1
    sget-object v2, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    .line 2
    .line 3
    const-string v4, "getPrototypeOf"

    .line 4
    .line 5
    const/4 v5, 0x1

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
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget p0, p0, Lorg/mozilla/javascript/Context;->version:I

    .line 17
    .line 18
    const/16 p1, 0xc8

    .line 19
    .line 20
    if-lt p0, p1, :cond_0

    .line 21
    .line 22
    const-string/jumbo v4, "setPrototypeOf"

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    const/16 v3, -0x12

    .line 27
    .line 28
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    const-string v4, "entries"

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    const/16 v3, -0x13

    .line 35
    .line 36
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    const-string v4, "fromEntries"

    .line 40
    .line 41
    const/16 v3, -0x14

    .line 42
    .line 43
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    const-string/jumbo v4, "values"

    .line 47
    .line 48
    .line 49
    const/16 v3, -0x15

    .line 50
    .line 51
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    const-string v4, "hasOwn"

    .line 55
    .line 56
    const/16 v3, -0x16

    .line 57
    .line 58
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    :cond_0
    const-string v4, "keys"

    .line 62
    .line 63
    const/4 v5, 0x1

    .line 64
    const/4 v3, -0x2

    .line 65
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    const-string v4, "getOwnPropertyNames"

    .line 69
    .line 70
    const/4 v3, -0x3

    .line 71
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    const-string v4, "getOwnPropertySymbols"

    .line 75
    .line 76
    const/16 v3, -0xf

    .line 77
    .line 78
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    const-string v4, "getOwnPropertyDescriptor"

    .line 82
    .line 83
    const/4 v5, 0x2

    .line 84
    const/4 v3, -0x4

    .line 85
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    const-string v4, "getOwnPropertyDescriptors"

    .line 89
    .line 90
    const/4 v5, 0x1

    .line 91
    const/4 v3, -0x5

    .line 92
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    const-string v4, "defineProperty"

    .line 96
    .line 97
    const/4 v5, 0x3

    .line 98
    const/4 v3, -0x6

    .line 99
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    const-string v4, "isExtensible"

    .line 103
    .line 104
    const/4 v5, 0x1

    .line 105
    const/4 v3, -0x7

    .line 106
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    const-string v4, "preventExtensions"

    .line 110
    .line 111
    const/4 v3, -0x8

    .line 112
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    const-string v4, "defineProperties"

    .line 116
    .line 117
    const/4 v5, 0x2

    .line 118
    const/16 v3, -0x9

    .line 119
    .line 120
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    const-string v4, "create"

    .line 124
    .line 125
    const/16 v3, -0xa

    .line 126
    .line 127
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    const-string v4, "isSealed"

    .line 131
    .line 132
    const/4 v5, 0x1

    .line 133
    const/16 v3, -0xb

    .line 134
    .line 135
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    const-string v4, "isFrozen"

    .line 139
    .line 140
    const/16 v3, -0xc

    .line 141
    .line 142
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    const-string v4, "seal"

    .line 146
    .line 147
    const/16 v3, -0xd

    .line 148
    .line 149
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 150
    .line 151
    .line 152
    const-string v4, "freeze"

    .line 153
    .line 154
    const/16 v3, -0xe

    .line 155
    .line 156
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 157
    .line 158
    .line 159
    const-string v4, "assign"

    .line 160
    .line 161
    const/4 v5, 0x2

    .line 162
    const/16 v3, -0x10

    .line 163
    .line 164
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    const-string v4, "is"

    .line 168
    .line 169
    const/16 v3, -0x11

    .line 170
    .line 171
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 172
    .line 173
    .line 174
    const-string v4, "groupBy"

    .line 175
    .line 176
    const/16 v3, -0x17

    .line 177
    .line 178
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    invoke-super {v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public findPrototypeId(Ljava/lang/String;)I
    .locals 13

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
    const/16 v0, 0xb

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    const/16 v2, 0x9

    .line 13
    .line 14
    const/16 v3, 0x8

    .line 15
    .line 16
    const/4 v4, 0x7

    .line 17
    const/4 v5, 0x6

    .line 18
    const/4 v6, 0x5

    .line 19
    const/4 v7, 0x4

    .line 20
    const/4 v8, 0x3

    .line 21
    const/4 v9, 0x2

    .line 22
    const/4 v10, 0x1

    .line 23
    const/4 v11, 0x0

    .line 24
    const/4 v12, -0x1

    .line 25
    sparse-switch p0, :sswitch_data_0

    .line 26
    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :sswitch_0
    const-string p0, "__defineGetter__"

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_0

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_0
    move v12, v0

    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :sswitch_1
    const-string p0, "__defineSetter__"

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_1

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_1
    move v12, v1

    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :sswitch_2
    const-string p0, "__lookupGetter__"

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-nez p0, :cond_2

    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :cond_2
    move v12, v2

    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :sswitch_3
    const-string p0, "__lookupSetter__"

    .line 70
    .line 71
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_3

    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :cond_3
    move v12, v3

    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :sswitch_4
    const-string/jumbo p0, "valueOf"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-nez p0, :cond_4

    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :cond_4
    move v12, v4

    .line 94
    goto :goto_0

    .line 95
    :sswitch_5
    const-string p0, "propertyIsEnumerable"

    .line 96
    .line 97
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-nez p0, :cond_5

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    move v12, v5

    .line 105
    goto :goto_0

    .line 106
    :sswitch_6
    const-string p0, "isPrototypeOf"

    .line 107
    .line 108
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-nez p0, :cond_6

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_6
    move v12, v6

    .line 116
    goto :goto_0

    .line 117
    :sswitch_7
    const-string p0, "constructor"

    .line 118
    .line 119
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-nez p0, :cond_7

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_7
    move v12, v7

    .line 127
    goto :goto_0

    .line 128
    :sswitch_8
    const-string/jumbo p0, "toString"

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-nez p0, :cond_8

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_8
    move v12, v8

    .line 139
    goto :goto_0

    .line 140
    :sswitch_9
    const-string/jumbo p0, "toSource"

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    if-nez p0, :cond_9

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_9
    move v12, v9

    .line 151
    goto :goto_0

    .line 152
    :sswitch_a
    const-string p0, "hasOwnProperty"

    .line 153
    .line 154
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    if-nez p0, :cond_a

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_a
    move v12, v10

    .line 162
    goto :goto_0

    .line 163
    :sswitch_b
    const-string/jumbo p0, "toLocaleString"

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    if-nez p0, :cond_b

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_b
    move v12, v11

    .line 174
    :goto_0
    packed-switch v12, :pswitch_data_0

    .line 175
    .line 176
    .line 177
    return v11

    .line 178
    :pswitch_0
    return v2

    .line 179
    :pswitch_1
    return v1

    .line 180
    :pswitch_2
    return v0

    .line 181
    :pswitch_3
    const/16 p0, 0xc

    .line 182
    .line 183
    return p0

    .line 184
    :pswitch_4
    return v7

    .line 185
    :pswitch_5
    return v5

    .line 186
    :pswitch_6
    return v4

    .line 187
    :pswitch_7
    return v10

    .line 188
    :pswitch_8
    return v9

    .line 189
    :pswitch_9
    return v3

    .line 190
    :pswitch_a
    return v6

    .line 191
    :pswitch_b
    return v8

    .line 192
    nop

    .line 193
    :sswitch_data_0
    .sparse-switch
        -0x7866ceda -> :sswitch_b
        -0x6aaca37f -> :sswitch_a
        -0x6a2ea58a -> :sswitch_9
        -0x69e9ad94 -> :sswitch_8
        -0x5ead2806 -> :sswitch_7
        -0x4ef0f4f1 -> :sswitch_6
        -0x22bb54f9 -> :sswitch_5
        0xdce0328 -> :sswitch_4
        0x3068b019 -> :sswitch_3
        0x51da95a5 -> :sswitch_2
        0x54610f5a -> :sswitch_1
        0x75d2f4e6 -> :sswitch_0
    .end sparse-switch

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
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
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public getClassName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Object"

    .line 2
    .line 3
    return-object p0
.end method

.method public initPrototypeId(I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    const-string v0, "__lookupSetter__"

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :pswitch_1
    const-string v0, "__lookupGetter__"

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :pswitch_2
    const-string v1, "__defineSetter__"

    .line 22
    .line 23
    :goto_0
    move v2, v0

    .line 24
    move-object v0, v1

    .line 25
    goto :goto_2

    .line 26
    :pswitch_3
    const-string v1, "__defineGetter__"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_4
    const-string/jumbo v0, "toSource"

    .line 30
    .line 31
    .line 32
    :goto_1
    move v2, v1

    .line 33
    goto :goto_2

    .line 34
    :pswitch_5
    const-string v0, "isPrototypeOf"

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :pswitch_6
    const-string v0, "propertyIsEnumerable"

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :pswitch_7
    const-string v0, "hasOwnProperty"

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :pswitch_8
    const-string/jumbo v0, "valueOf"

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :pswitch_9
    const-string/jumbo v0, "toLocaleString"

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :pswitch_a
    const-string/jumbo v0, "toString"

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :pswitch_b
    const-string v0, "constructor"

    .line 56
    .line 57
    :goto_2
    sget-object v1, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    .line 58
    .line 59
    invoke-virtual {p0, v1, p1, v0, v2}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/mozilla/javascript/NativeObject$KeySet;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/mozilla/javascript/NativeObject$KeySet;-><init>(Lorg/mozilla/javascript/NativeObject;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, p1, Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast p1, Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->delete(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    check-cast p1, Ljava/lang/Number;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->delete(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->defaultObjectToString(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/mozilla/javascript/NativeObject$ValueCollection;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/mozilla/javascript/NativeObject$ValueCollection;-><init>(Lorg/mozilla/javascript/NativeObject;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
