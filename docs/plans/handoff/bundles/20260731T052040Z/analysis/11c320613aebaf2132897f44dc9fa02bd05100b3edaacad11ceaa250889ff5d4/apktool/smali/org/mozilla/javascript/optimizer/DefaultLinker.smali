.class Lorg/mozilla/javascript/optimizer/DefaultLinker;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljdk/dynalink/linker/GuardingDynamicLinker;


# static fields
.field static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "RHINO_DEBUG_LINKER"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput-boolean v0, Lorg/mozilla/javascript/optimizer/DefaultLinker;->DEBUG:Z

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static bindStringParameter(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/invoke/MethodHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            "Ljava/lang/invoke/MethodType;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const-class v3, Ljava/lang/String;

    .line 6
    .line 7
    aput-object v3, v1, v2

    .line 8
    .line 9
    invoke-virtual {p1, p4, v1}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p2, p3, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-array p1, v0, [Ljava/lang/Object;

    .line 18
    .line 19
    aput-object p5, p1, v2

    .line 20
    .line 21
    invoke-static {p0, p4, p1}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method private getInvocation(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Lorg/mozilla/javascript/optimizer/ParsedOperation;)Ljdk/dynalink/linker/GuardedInvocation;
    .locals 1

    .line 1
    sget-object v0, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    .line 2
    .line 3
    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isNamespace(Ljdk/dynalink/Namespace;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->getPropertyInvocation(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Lorg/mozilla/javascript/optimizer/ParsedOperation;)Ljdk/dynalink/linker/GuardedInvocation;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 15
    .line 16
    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isNamespace(Ljdk/dynalink/Namespace;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->getNameInvocation(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Lorg/mozilla/javascript/optimizer/ParsedOperation;)Ljdk/dynalink/linker/GuardedInvocation;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 28
    .line 29
    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isNamespace(Ljdk/dynalink/Namespace;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->getMathInvocation(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Lorg/mozilla/javascript/optimizer/ParsedOperation;)Ljdk/dynalink/linker/GuardedInvocation;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 41
    .line 42
    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method private getMathInvocation(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Lorg/mozilla/javascript/optimizer/ParsedOperation;)Ljdk/dynalink/linker/GuardedInvocation;
    .locals 2

    .line 1
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->ADD:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 2
    .line 3
    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-class v1, Lorg/mozilla/javascript/ScriptRuntime;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p0, "add"

    .line 12
    .line 13
    invoke-virtual {p1, v1, p0, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TONUMBER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 20
    .line 21
    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string/jumbo p0, "toNumber"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1, p0, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_1
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TONUMERIC:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 37
    .line 38
    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    const-string/jumbo p0, "toNumeric"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1, p0, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_2
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TOBOOLEAN:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 54
    .line 55
    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    const-string/jumbo p0, "toBoolean"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1, p0, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :cond_3
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TOINT32:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 71
    .line 72
    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    const-string/jumbo p0, "toInt32"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1, p0, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :cond_4
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TOUINT32:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 88
    .line 89
    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    const-string/jumbo p0, "toUint32"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1, p0, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    goto :goto_0

    .line 103
    :cond_5
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->EQ:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 104
    .line 105
    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    const-string p0, "eq"

    .line 112
    .line 113
    invoke-virtual {p1, v1, p0, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    goto :goto_0

    .line 118
    :cond_6
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SHALLOWEQ:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 119
    .line 120
    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_7

    .line 125
    .line 126
    const-string/jumbo p0, "shallowEq"

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v1, p0, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    goto :goto_0

    .line 134
    :cond_7
    sget-object p2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_GT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 135
    .line 136
    invoke-virtual {p3, p2}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    if-eqz p2, :cond_8

    .line 141
    .line 142
    const/16 p2, 0x10

    .line 143
    .line 144
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->makeCompare(Ljava/lang/invoke/MethodHandles$Lookup;I)Ljava/lang/invoke/MethodHandle;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    goto :goto_0

    .line 149
    :cond_8
    sget-object p2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_LT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 150
    .line 151
    invoke-virtual {p3, p2}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    if-eqz p2, :cond_9

    .line 156
    .line 157
    const/16 p2, 0xe

    .line 158
    .line 159
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->makeCompare(Ljava/lang/invoke/MethodHandles$Lookup;I)Ljava/lang/invoke/MethodHandle;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    goto :goto_0

    .line 164
    :cond_9
    sget-object p2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_GE:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 165
    .line 166
    invoke-virtual {p3, p2}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    if-eqz p2, :cond_a

    .line 171
    .line 172
    const/16 p2, 0x11

    .line 173
    .line 174
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->makeCompare(Ljava/lang/invoke/MethodHandles$Lookup;I)Ljava/lang/invoke/MethodHandle;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    goto :goto_0

    .line 179
    :cond_a
    sget-object p2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_LE:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 180
    .line 181
    invoke-virtual {p3, p2}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    if-eqz p2, :cond_b

    .line 186
    .line 187
    const/16 p2, 0xf

    .line 188
    .line 189
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->makeCompare(Ljava/lang/invoke/MethodHandles$Lookup;I)Ljava/lang/invoke/MethodHandle;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    goto :goto_0

    .line 194
    :cond_b
    const/4 p0, 0x0

    .line 195
    :goto_0
    if-eqz p0, :cond_c

    .line 196
    .line 197
    new-instance p1, Ljdk/dynalink/linker/GuardedInvocation;

    .line 198
    .line 199
    invoke-direct {p1, p0}, Ljdk/dynalink/linker/GuardedInvocation;-><init>(Ljava/lang/invoke/MethodHandle;)V

    .line 200
    .line 201
    .line 202
    return-object p1

    .line 203
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 204
    .line 205
    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p0
.end method

.method private getNameInvocation(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Lorg/mozilla/javascript/optimizer/ParsedOperation;)Ljdk/dynalink/linker/GuardedInvocation;
    .locals 9

    .line 1
    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v5

    .line 5
    sget-object p0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->BIND:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 6
    .line 7
    invoke-virtual {p3, p0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v0, 0x2

    .line 12
    const/4 v1, 0x1

    .line 13
    const-class v2, Lorg/mozilla/javascript/ScriptRuntime;

    .line 14
    .line 15
    const-class v3, Ljava/lang/String;

    .line 16
    .line 17
    const-class v4, Lorg/mozilla/javascript/Context;

    .line 18
    .line 19
    const-class v6, Lorg/mozilla/javascript/Scriptable;

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    new-array p0, v0, [Ljava/lang/Class;

    .line 25
    .line 26
    aput-object v6, p0, v7

    .line 27
    .line 28
    aput-object v3, p0, v1

    .line 29
    .line 30
    invoke-static {v6, v4, p0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v3, "bind"

    .line 35
    .line 36
    invoke-virtual {p1, v2, v3, p0}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    new-array p1, v1, [Ljava/lang/Object;

    .line 41
    .line 42
    aput-object v5, p1, v7

    .line 43
    .line 44
    invoke-static {p0, v0, p1}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    filled-new-array {v1, v7}, [I

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p0, p2, p1}, Ljava/lang/invoke/MethodHandles;->permuteArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;[I)Ljava/lang/invoke/MethodHandle;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_0
    sget-object p0, Ljdk/dynalink/StandardOperation;->GET:Ljdk/dynalink/StandardOperation;

    .line 59
    .line 60
    invoke-virtual {p3, p0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_1

    .line 65
    .line 66
    new-array p0, v0, [Ljava/lang/Class;

    .line 67
    .line 68
    aput-object v6, p0, v7

    .line 69
    .line 70
    aput-object v3, p0, v1

    .line 71
    .line 72
    const-class v3, Ljava/lang/Object;

    .line 73
    .line 74
    invoke-static {v3, v4, p0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string v3, "name"

    .line 79
    .line 80
    invoke-virtual {p1, v2, v3, p0}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    new-array p1, v1, [Ljava/lang/Object;

    .line 85
    .line 86
    aput-object v5, p1, v7

    .line 87
    .line 88
    invoke-static {p0, v0, p1}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    filled-new-array {v1, v7}, [I

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p0, p2, p1}, Ljava/lang/invoke/MethodHandles;->permuteArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;[I)Ljava/lang/invoke/MethodHandle;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :cond_1
    sget-object p0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETWITHTHIS:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 103
    .line 104
    invoke-virtual {p3, p0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    const-class v8, Lorg/mozilla/javascript/Callable;

    .line 109
    .line 110
    if-eqz p0, :cond_2

    .line 111
    .line 112
    new-array p0, v0, [Ljava/lang/Class;

    .line 113
    .line 114
    aput-object v4, p0, v7

    .line 115
    .line 116
    aput-object v6, p0, v1

    .line 117
    .line 118
    invoke-static {v8, v3, p0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    const-string v0, "getNameFunctionAndThis"

    .line 123
    .line 124
    invoke-virtual {p1, v2, v0, p0}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    new-array p1, v1, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object v5, p1, v7

    .line 131
    .line 132
    invoke-static {p0, v7, p1}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    filled-new-array {v1, v7}, [I

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {p0, p2, p1}, Ljava/lang/invoke/MethodHandles;->permuteArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;[I)Ljava/lang/invoke/MethodHandle;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    goto :goto_0

    .line 145
    :cond_2
    sget-object p0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETWITHTHISOPTIONAL:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 146
    .line 147
    invoke-virtual {p3, p0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    if-eqz p0, :cond_3

    .line 152
    .line 153
    new-array p0, v0, [Ljava/lang/Class;

    .line 154
    .line 155
    aput-object v4, p0, v7

    .line 156
    .line 157
    aput-object v6, p0, v1

    .line 158
    .line 159
    invoke-static {v8, v3, p0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    const-string v0, "getNameFunctionAndThisOptional"

    .line 164
    .line 165
    invoke-virtual {p1, v2, v0, p0}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    new-array p1, v1, [Ljava/lang/Object;

    .line 170
    .line 171
    aput-object v5, p1, v7

    .line 172
    .line 173
    invoke-static {p0, v7, p1}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    filled-new-array {v1, v7}, [I

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-static {p0, p2, p1}, Ljava/lang/invoke/MethodHandles;->permuteArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;[I)Ljava/lang/invoke/MethodHandle;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    goto :goto_0

    .line 186
    :cond_3
    sget-object p0, Ljdk/dynalink/StandardOperation;->SET:Ljdk/dynalink/StandardOperation;

    .line 187
    .line 188
    invoke-virtual {p3, p0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 189
    .line 190
    .line 191
    move-result p0

    .line 192
    if-eqz p0, :cond_4

    .line 193
    .line 194
    const-string/jumbo v3, "setName"

    .line 195
    .line 196
    .line 197
    const/4 v4, 0x4

    .line 198
    const-class v2, Lorg/mozilla/javascript/ScriptRuntime;

    .line 199
    .line 200
    move-object v0, p1

    .line 201
    move-object v1, p2

    .line 202
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->bindStringParameter(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/invoke/MethodHandle;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    goto :goto_0

    .line 207
    :cond_4
    move-object v0, p1

    .line 208
    move-object v1, p2

    .line 209
    sget-object p0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETSTRICT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 210
    .line 211
    invoke-virtual {p3, p0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    if-eqz p0, :cond_5

    .line 216
    .line 217
    const-string/jumbo v3, "strictSetName"

    .line 218
    .line 219
    .line 220
    const/4 v4, 0x4

    .line 221
    const-class v2, Lorg/mozilla/javascript/ScriptRuntime;

    .line 222
    .line 223
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->bindStringParameter(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/invoke/MethodHandle;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    goto :goto_0

    .line 228
    :cond_5
    sget-object p0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETCONST:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 229
    .line 230
    invoke-virtual {p3, p0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 231
    .line 232
    .line 233
    move-result p0

    .line 234
    if-eqz p0, :cond_6

    .line 235
    .line 236
    const-string v3, "setConst"

    .line 237
    .line 238
    const/4 v4, 0x3

    .line 239
    const-class v2, Lorg/mozilla/javascript/ScriptRuntime;

    .line 240
    .line 241
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->bindStringParameter(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/invoke/MethodHandle;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    goto :goto_0

    .line 246
    :cond_6
    const/4 p0, 0x0

    .line 247
    :goto_0
    if-eqz p0, :cond_7

    .line 248
    .line 249
    new-instance p1, Ljdk/dynalink/linker/GuardedInvocation;

    .line 250
    .line 251
    invoke-direct {p1, p0}, Ljdk/dynalink/linker/GuardedInvocation;-><init>(Ljava/lang/invoke/MethodHandle;)V

    .line 252
    .line 253
    .line 254
    return-object p1

    .line 255
    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 256
    .line 257
    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw p0
.end method

.method private getPropertyInvocation(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Lorg/mozilla/javascript/optimizer/ParsedOperation;)Ljdk/dynalink/linker/GuardedInvocation;
    .locals 6

    .line 1
    sget-object p0, Ljdk/dynalink/StandardOperation;->GET:Ljdk/dynalink/StandardOperation;

    .line 2
    .line 3
    invoke-virtual {p3, p0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    const-class v2, Lorg/mozilla/javascript/ScriptRuntime;

    .line 15
    .line 16
    const-string v3, "getObjectProp"

    .line 17
    .line 18
    move-object v0, p1

    .line 19
    move-object v1, p2

    .line 20
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->bindStringParameter(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/invoke/MethodHandle;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_0
    move-object v0, p1

    .line 27
    move-object v1, p2

    .line 28
    sget-object p0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETNOWARN:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 29
    .line 30
    invoke-virtual {p3, p0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const-class v2, Lorg/mozilla/javascript/ScriptRuntime;

    .line 42
    .line 43
    const-string v3, "getObjectPropNoWarn"

    .line 44
    .line 45
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->bindStringParameter(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/invoke/MethodHandle;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_1
    sget-object p0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 52
    .line 53
    invoke-virtual {p3, p0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    const/4 v4, 0x1

    .line 60
    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    const-class v2, Lorg/mozilla/javascript/ScriptRuntime;

    .line 65
    .line 66
    const-string v3, "getSuperProp"

    .line 67
    .line 68
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->bindStringParameter(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/invoke/MethodHandle;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :cond_2
    sget-object p0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETWITHTHIS:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 75
    .line 76
    invoke-virtual {p3, p0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_3

    .line 81
    .line 82
    const/4 v4, 0x1

    .line 83
    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    const-class v2, Lorg/mozilla/javascript/ScriptRuntime;

    .line 88
    .line 89
    const-string v3, "getPropFunctionAndThis"

    .line 90
    .line 91
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->bindStringParameter(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/invoke/MethodHandle;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :cond_3
    sget-object p0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETWITHTHISOPTIONAL:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 98
    .line 99
    invoke-virtual {p3, p0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_4

    .line 104
    .line 105
    const/4 v4, 0x1

    .line 106
    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->getName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    const-class v2, Lorg/mozilla/javascript/ScriptRuntime;

    .line 111
    .line 112
    const-string v3, "getPropFunctionAndThisOptional"

    .line 113
    .line 114
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->bindStringParameter(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/invoke/MethodHandle;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    goto/16 :goto_0

    .line 119
    .line 120
    :cond_4
    sget-object p0, Ljdk/dynalink/StandardOperation;->SET:Ljdk/dynalink/StandardOperation;

    .line 121
    .line 122
    invoke-virtual {p3, p0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    if-eqz p0, :cond_5

    .line 127
    .line 128
    const/4 v4, 0x1

    .line 129
    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->getName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    const-class v2, Lorg/mozilla/javascript/ScriptRuntime;

    .line 134
    .line 135
    const-string/jumbo v3, "setObjectProp"

    .line 136
    .line 137
    .line 138
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->bindStringParameter(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/invoke/MethodHandle;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :cond_5
    sget-object p0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 145
    .line 146
    invoke-virtual {p3, p0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    if-eqz p0, :cond_6

    .line 151
    .line 152
    const/4 v4, 0x1

    .line 153
    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->getName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    const-class v2, Lorg/mozilla/javascript/ScriptRuntime;

    .line 158
    .line 159
    const-string/jumbo v3, "setSuperProp"

    .line 160
    .line 161
    .line 162
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->bindStringParameter(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/invoke/MethodHandle;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    goto :goto_0

    .line 167
    :cond_6
    sget-object p0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETELEMENT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 168
    .line 169
    invoke-virtual {p3, p0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    const-class p1, Lorg/mozilla/javascript/ScriptRuntime;

    .line 174
    .line 175
    if-eqz p0, :cond_7

    .line 176
    .line 177
    const-string p0, "getObjectElem"

    .line 178
    .line 179
    invoke-virtual {v0, p1, p0, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    goto :goto_0

    .line 184
    :cond_7
    sget-object p0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETELEMENTSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 185
    .line 186
    invoke-virtual {p3, p0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 187
    .line 188
    .line 189
    move-result p0

    .line 190
    if-eqz p0, :cond_8

    .line 191
    .line 192
    const-string p0, "getSuperElem"

    .line 193
    .line 194
    invoke-virtual {v0, p1, p0, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    goto :goto_0

    .line 199
    :cond_8
    sget-object p0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETINDEX:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 200
    .line 201
    invoke-virtual {p3, p0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    if-eqz p0, :cond_9

    .line 206
    .line 207
    const-string p0, "getObjectIndex"

    .line 208
    .line 209
    invoke-virtual {v0, p1, p0, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    goto :goto_0

    .line 214
    :cond_9
    sget-object p0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETELEMENT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 215
    .line 216
    invoke-virtual {p3, p0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    if-eqz p0, :cond_a

    .line 221
    .line 222
    const-string/jumbo p0, "setObjectElem"

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, p1, p0, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    goto :goto_0

    .line 230
    :cond_a
    sget-object p0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETELEMENTSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 231
    .line 232
    invoke-virtual {p3, p0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 233
    .line 234
    .line 235
    move-result p0

    .line 236
    if-eqz p0, :cond_b

    .line 237
    .line 238
    const-string/jumbo p0, "setSuperElem"

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, p1, p0, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    goto :goto_0

    .line 246
    :cond_b
    sget-object p0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETINDEX:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 247
    .line 248
    invoke-virtual {p3, p0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    .line 249
    .line 250
    .line 251
    move-result p0

    .line 252
    if-eqz p0, :cond_c

    .line 253
    .line 254
    const-string/jumbo p0, "setObjectIndex"

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, p1, p0, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    goto :goto_0

    .line 262
    :cond_c
    const/4 p0, 0x0

    .line 263
    :goto_0
    if-eqz p0, :cond_d

    .line 264
    .line 265
    new-instance p1, Ljdk/dynalink/linker/GuardedInvocation;

    .line 266
    .line 267
    invoke-direct {p1, p0}, Ljdk/dynalink/linker/GuardedInvocation;-><init>(Ljava/lang/invoke/MethodHandle;)V

    .line 268
    .line 269
    .line 270
    return-object p1

    .line 271
    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 272
    .line 273
    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw p0
.end method

.method private makeCompare(Ljava/lang/invoke/MethodHandles$Lookup;I)Ljava/lang/invoke/MethodHandle;
    .locals 5

    .line 1
    const/4 p0, 0x2

    .line 2
    new-array v0, p0, [Ljava/lang/Class;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const-class v2, Ljava/lang/Object;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 11
    .line 12
    aput-object v4, v0, v3

    .line 13
    .line 14
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    invoke-static {v4, v2, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-class v2, Lorg/mozilla/javascript/ScriptRuntime;

    .line 21
    .line 22
    const-string v4, "compare"

    .line 23
    .line 24
    invoke-virtual {p1, v2, v4, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    new-array v0, v3, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object p2, v0, v1

    .line 35
    .line 36
    invoke-static {p1, p0, v0}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method


# virtual methods
.method public getGuardedInvocation(Ljdk/dynalink/linker/LinkRequest;Ljdk/dynalink/linker/LinkerServices;)Ljdk/dynalink/linker/GuardedInvocation;
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getCallSiteDescriptor()Ljdk/dynalink/CallSiteDescriptor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljdk/dynalink/CallSiteDescriptor;->getMethodType()Ljava/lang/invoke/MethodType;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lorg/mozilla/javascript/optimizer/ParsedOperation;

    .line 14
    .line 15
    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getCallSiteDescriptor()Ljdk/dynalink/CallSiteDescriptor;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljdk/dynalink/CallSiteDescriptor;->getOperation()Ljdk/dynalink/Operation;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/optimizer/ParsedOperation;-><init>(Ljdk/dynalink/Operation;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p2, v0, v1}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->getInvocation(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Lorg/mozilla/javascript/optimizer/ParsedOperation;)Ljdk/dynalink/linker/GuardedInvocation;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget-boolean p2, Lorg/mozilla/javascript/optimizer/DefaultLinker;->DEBUG:Z

    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getReceiver()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-nez p2, :cond_0

    .line 39
    .line 40
    const-string p2, "null"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getReceiver()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    :goto_0
    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getArguments()[Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    array-length v0, v0

    .line 60
    const/4 v2, 0x1

    .line 61
    if-le v0, v2, :cond_1

    .line 62
    .line 63
    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getArguments()[Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    aget-object v0, v0, v2

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getArguments()[Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    aget-object p1, p1, v2

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    const-string p1, ""

    .line 87
    .line 88
    :goto_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v1, "("

    .line 103
    .line 104
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string p2, ", "

    .line 111
    .line 112
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p1, "): default link"

    .line 119
    .line 120
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_2
    return-object p0
.end method
