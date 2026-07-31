.class public Lorg/mozilla/javascript/optimizer/Bootstrapper;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final BOOTSTRAP_HANDLE:Lorg/mozilla/classfile/ClassFileWriter$MHandle;

.field private static final SEPARATOR:Ljava/util/regex/Pattern;

.field private static final linker:Ljdk/dynalink/DynamicLinker;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/mozilla/javascript/optimizer/Bootstrapper;->SEPARATOR:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    new-instance v0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/mozilla/javascript/optimizer/Bootstrapper;->BOOTSTRAP_HANDLE:Lorg/mozilla/classfile/ClassFileWriter$MHandle;

    .line 15
    .line 16
    new-instance v0, Ljdk/dynalink/DynamicLinkerFactory;

    .line 17
    .line 18
    invoke-direct {v0}, Ljdk/dynalink/DynamicLinkerFactory;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljdk/dynalink/linker/support/CompositeTypeBasedGuardingDynamicLinker;

    .line 22
    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    new-array v2, v2, [Ljdk/dynalink/linker/TypeBasedGuardingDynamicLinker;

    .line 26
    .line 27
    new-instance v3, Lorg/mozilla/javascript/optimizer/ConstAwareLinker;

    .line 28
    .line 29
    invoke-direct {v3}, Lorg/mozilla/javascript/optimizer/ConstAwareLinker;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    aput-object v3, v2, v4

    .line 34
    .line 35
    new-instance v3, Lorg/mozilla/javascript/optimizer/BooleanLinker;

    .line 36
    .line 37
    invoke-direct {v3}, Lorg/mozilla/javascript/optimizer/BooleanLinker;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v5, 0x1

    .line 41
    aput-object v3, v2, v5

    .line 42
    .line 43
    new-instance v3, Lorg/mozilla/javascript/optimizer/IntegerLinker;

    .line 44
    .line 45
    invoke-direct {v3}, Lorg/mozilla/javascript/optimizer/IntegerLinker;-><init>()V

    .line 46
    .line 47
    .line 48
    const/4 v6, 0x2

    .line 49
    aput-object v3, v2, v6

    .line 50
    .line 51
    new-instance v3, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    .line 52
    .line 53
    invoke-direct {v3}, Lorg/mozilla/javascript/optimizer/DoubleLinker;-><init>()V

    .line 54
    .line 55
    .line 56
    const/4 v7, 0x3

    .line 57
    aput-object v3, v2, v7

    .line 58
    .line 59
    new-instance v3, Lorg/mozilla/javascript/optimizer/StringLinker;

    .line 60
    .line 61
    invoke-direct {v3}, Lorg/mozilla/javascript/optimizer/StringLinker;-><init>()V

    .line 62
    .line 63
    .line 64
    const/4 v7, 0x4

    .line 65
    aput-object v3, v2, v7

    .line 66
    .line 67
    new-instance v3, Lorg/mozilla/javascript/optimizer/ConsStringLinker;

    .line 68
    .line 69
    invoke-direct {v3}, Lorg/mozilla/javascript/optimizer/ConsStringLinker;-><init>()V

    .line 70
    .line 71
    .line 72
    const/4 v7, 0x5

    .line 73
    aput-object v3, v2, v7

    .line 74
    .line 75
    new-instance v3, Lorg/mozilla/javascript/optimizer/NativeArrayLinker;

    .line 76
    .line 77
    invoke-direct {v3}, Lorg/mozilla/javascript/optimizer/NativeArrayLinker;-><init>()V

    .line 78
    .line 79
    .line 80
    const/4 v7, 0x6

    .line 81
    aput-object v3, v2, v7

    .line 82
    .line 83
    new-instance v3, Lorg/mozilla/javascript/optimizer/BaseFunctionLinker;

    .line 84
    .line 85
    invoke-direct {v3}, Lorg/mozilla/javascript/optimizer/BaseFunctionLinker;-><init>()V

    .line 86
    .line 87
    .line 88
    const/4 v7, 0x7

    .line 89
    aput-object v3, v2, v7

    .line 90
    .line 91
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-direct {v1, v2}, Ljdk/dynalink/linker/support/CompositeTypeBasedGuardingDynamicLinker;-><init>(Ljava/lang/Iterable;)V

    .line 96
    .line 97
    .line 98
    new-array v2, v6, [Ljdk/dynalink/linker/GuardingDynamicLinker;

    .line 99
    .line 100
    aput-object v1, v2, v4

    .line 101
    .line 102
    new-instance v1, Lorg/mozilla/javascript/optimizer/DefaultLinker;

    .line 103
    .line 104
    invoke-direct {v1}, Lorg/mozilla/javascript/optimizer/DefaultLinker;-><init>()V

    .line 105
    .line 106
    .line 107
    aput-object v1, v2, v5

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljdk/dynalink/DynamicLinkerFactory;->setPrioritizedLinkers([Ljdk/dynalink/linker/GuardingDynamicLinker;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljdk/dynalink/DynamicLinkerFactory;->createLinker()Ljdk/dynalink/DynamicLinker;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sput-object v0, Lorg/mozilla/javascript/optimizer/Bootstrapper;->linker:Ljdk/dynalink/DynamicLinker;

    .line 117
    .line 118
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

.method public static bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;
    .locals 3

    .line 1
    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->parseOperation(Ljava/lang/String;)Ljdk/dynalink/Operation;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lorg/mozilla/javascript/optimizer/Bootstrapper;->linker:Ljdk/dynalink/DynamicLinker;

    .line 6
    .line 7
    new-instance v1, Ljdk/dynalink/support/ChainedCallSite;

    .line 8
    .line 9
    new-instance v2, Ljdk/dynalink/CallSiteDescriptor;

    .line 10
    .line 11
    invoke-direct {v2, p0, p1, p2}, Ljdk/dynalink/CallSiteDescriptor;-><init>(Ljava/lang/invoke/MethodHandles$Lookup;Ljdk/dynalink/Operation;Ljava/lang/invoke/MethodType;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljdk/dynalink/support/ChainedCallSite;-><init>(Ljdk/dynalink/CallSiteDescriptor;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljdk/dynalink/DynamicLinker;->link(Ljdk/dynalink/RelinkableCallSite;)Ljdk/dynalink/RelinkableCallSite;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/invoke/CallSite;

    .line 22
    .line 23
    return-object p0
.end method

.method private static getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    array-length p1, p0

    .line 2
    if-lt p2, p1, :cond_0

    .line 3
    .line 4
    const-string p0, ""

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    aget-object p0, p0, p2

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static parseOperation(Ljava/lang/String;)Ljdk/dynalink/Operation;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lorg/mozilla/javascript/optimizer/Bootstrapper;->SEPARATOR:Ljava/util/regex/Pattern;

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const/4 v5, 0x1

    .line 16
    invoke-static {v1, v0, v5}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    const-string v7, "PROP"

    .line 21
    .line 22
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    const/16 v8, 0xb

    .line 27
    .line 28
    const-string v9, "GETWITHTHISOPTIONAL"

    .line 29
    .line 30
    const/16 v10, 0xa

    .line 31
    .line 32
    const/16 v11, 0x9

    .line 33
    .line 34
    const/16 v12, 0x8

    .line 35
    .line 36
    const-string v13, "SET"

    .line 37
    .line 38
    const/4 v14, 0x7

    .line 39
    const-string v15, "GET"

    .line 40
    .line 41
    const-string v2, "GETWITHTHIS"

    .line 42
    .line 43
    const/16 v16, 0x6

    .line 44
    .line 45
    const/16 v17, 0x5

    .line 46
    .line 47
    const/16 v18, 0x4

    .line 48
    .line 49
    const/16 v19, 0x3

    .line 50
    .line 51
    const/4 v3, 0x2

    .line 52
    if-eqz v7, :cond_d

    .line 53
    .line 54
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    sparse-switch v4, :sswitch_data_0

    .line 62
    .line 63
    .line 64
    :goto_0
    const/4 v2, -0x1

    .line 65
    goto/16 :goto_1

    .line 66
    .line 67
    :sswitch_0
    const-string v2, "GETELEMENTSUPER"

    .line 68
    .line 69
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_0

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const/16 v2, 0xc

    .line 77
    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :sswitch_1
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    move v2, v8

    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :sswitch_2
    const-string v2, "SETELEMENT"

    .line 91
    .line 92
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_2

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    move v2, v10

    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :sswitch_3
    const-string v2, "GETNOWARN"

    .line 103
    .line 104
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-nez v2, :cond_3

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    move v2, v11

    .line 112
    goto/16 :goto_1

    .line 113
    .line 114
    :sswitch_4
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-nez v2, :cond_4

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    move v2, v12

    .line 122
    goto/16 :goto_1

    .line 123
    .line 124
    :sswitch_5
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_5

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_5
    move v2, v14

    .line 132
    goto :goto_1

    .line 133
    :sswitch_6
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-nez v2, :cond_6

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_6
    move/from16 v2, v16

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :sswitch_7
    const-string v2, "SETELEMENTSUPER"

    .line 144
    .line 145
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-nez v2, :cond_7

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_7
    move/from16 v2, v17

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :sswitch_8
    const-string v2, "GETSUPER"

    .line 156
    .line 157
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-nez v2, :cond_8

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_8
    move/from16 v2, v18

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :sswitch_9
    const-string v2, "GETINDEX"

    .line 168
    .line 169
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-nez v2, :cond_9

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_9
    move/from16 v2, v19

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :sswitch_a
    const-string v2, "GETELEMENT"

    .line 180
    .line 181
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-nez v2, :cond_a

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_a
    move v2, v3

    .line 189
    goto :goto_1

    .line 190
    :sswitch_b
    const-string v2, "SETSUPER"

    .line 191
    .line 192
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-nez v2, :cond_b

    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_b
    move v2, v5

    .line 201
    goto :goto_1

    .line 202
    :sswitch_c
    const-string v2, "SETINDEX"

    .line 203
    .line 204
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-nez v2, :cond_c

    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_c
    const/4 v2, 0x0

    .line 213
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 214
    .line 215
    .line 216
    goto/16 :goto_6

    .line 217
    .line 218
    :pswitch_0
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETELEMENTSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 219
    .line 220
    sget-object v1, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    return-object v0

    .line 227
    :pswitch_1
    sget-object v2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETWITHTHISOPTIONAL:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 228
    .line 229
    sget-object v4, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    .line 230
    .line 231
    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    return-object v0

    .line 244
    :pswitch_2
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETELEMENT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 245
    .line 246
    sget-object v1, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    return-object v0

    .line 253
    :pswitch_3
    sget-object v2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETNOWARN:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 254
    .line 255
    sget-object v4, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    .line 256
    .line 257
    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    return-object v0

    .line 270
    :pswitch_4
    sget-object v2, Ljdk/dynalink/StandardOperation;->SET:Ljdk/dynalink/StandardOperation;

    .line 271
    .line 272
    sget-object v4, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    .line 273
    .line 274
    invoke-virtual {v2, v4}, Ljdk/dynalink/StandardOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    return-object v0

    .line 287
    :pswitch_5
    sget-object v2, Ljdk/dynalink/StandardOperation;->GET:Ljdk/dynalink/StandardOperation;

    .line 288
    .line 289
    sget-object v4, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    .line 290
    .line 291
    invoke-virtual {v2, v4}, Ljdk/dynalink/StandardOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    return-object v0

    .line 304
    :pswitch_6
    sget-object v2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETWITHTHIS:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 305
    .line 306
    sget-object v4, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    .line 307
    .line 308
    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    return-object v0

    .line 321
    :pswitch_7
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETELEMENTSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 322
    .line 323
    sget-object v1, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    .line 324
    .line 325
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    return-object v0

    .line 330
    :pswitch_8
    sget-object v2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 331
    .line 332
    sget-object v4, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    .line 333
    .line 334
    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    return-object v0

    .line 347
    :pswitch_9
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETINDEX:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 348
    .line 349
    sget-object v1, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    .line 350
    .line 351
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    return-object v0

    .line 356
    :pswitch_a
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETELEMENT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 357
    .line 358
    sget-object v1, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    return-object v0

    .line 365
    :pswitch_b
    sget-object v2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 366
    .line 367
    sget-object v4, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    .line 368
    .line 369
    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    return-object v0

    .line 382
    :pswitch_c
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETINDEX:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 383
    .line 384
    sget-object v1, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    .line 385
    .line 386
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    return-object v0

    .line 391
    :cond_d
    const-string v7, "NAME"

    .line 392
    .line 393
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v7

    .line 397
    if-eqz v7, :cond_15

    .line 398
    .line 399
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 403
    .line 404
    .line 405
    move-result v4

    .line 406
    sparse-switch v4, :sswitch_data_1

    .line 407
    .line 408
    .line 409
    :goto_2
    const/4 v2, -0x1

    .line 410
    goto :goto_3

    .line 411
    :sswitch_d
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-nez v2, :cond_e

    .line 416
    .line 417
    goto :goto_2

    .line 418
    :cond_e
    move/from16 v2, v16

    .line 419
    .line 420
    goto :goto_3

    .line 421
    :sswitch_e
    const-string v2, "BIND"

    .line 422
    .line 423
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    if-nez v2, :cond_f

    .line 428
    .line 429
    goto :goto_2

    .line 430
    :cond_f
    move/from16 v2, v17

    .line 431
    .line 432
    goto :goto_3

    .line 433
    :sswitch_f
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    if-nez v2, :cond_10

    .line 438
    .line 439
    goto :goto_2

    .line 440
    :cond_10
    move/from16 v2, v18

    .line 441
    .line 442
    goto :goto_3

    .line 443
    :sswitch_10
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    if-nez v2, :cond_11

    .line 448
    .line 449
    goto :goto_2

    .line 450
    :cond_11
    move/from16 v2, v19

    .line 451
    .line 452
    goto :goto_3

    .line 453
    :sswitch_11
    const-string v2, "SETSTRICT"

    .line 454
    .line 455
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    if-nez v2, :cond_12

    .line 460
    .line 461
    goto :goto_2

    .line 462
    :cond_12
    move v2, v3

    .line 463
    goto :goto_3

    .line 464
    :sswitch_12
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v2

    .line 468
    if-nez v2, :cond_13

    .line 469
    .line 470
    goto :goto_2

    .line 471
    :cond_13
    move v2, v5

    .line 472
    goto :goto_3

    .line 473
    :sswitch_13
    const-string v2, "SETCONST"

    .line 474
    .line 475
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    if-nez v2, :cond_14

    .line 480
    .line 481
    goto :goto_2

    .line 482
    :cond_14
    const/4 v2, 0x0

    .line 483
    :goto_3
    packed-switch v2, :pswitch_data_1

    .line 484
    .line 485
    .line 486
    goto/16 :goto_6

    .line 487
    .line 488
    :pswitch_d
    sget-object v2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETWITHTHISOPTIONAL:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 489
    .line 490
    sget-object v4, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 491
    .line 492
    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    return-object v0

    .line 505
    :pswitch_e
    sget-object v2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->BIND:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 506
    .line 507
    sget-object v4, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 508
    .line 509
    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    return-object v0

    .line 522
    :pswitch_f
    sget-object v2, Ljdk/dynalink/StandardOperation;->SET:Ljdk/dynalink/StandardOperation;

    .line 523
    .line 524
    sget-object v4, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 525
    .line 526
    invoke-virtual {v2, v4}, Ljdk/dynalink/StandardOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    return-object v0

    .line 539
    :pswitch_10
    sget-object v2, Ljdk/dynalink/StandardOperation;->GET:Ljdk/dynalink/StandardOperation;

    .line 540
    .line 541
    sget-object v4, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 542
    .line 543
    invoke-virtual {v2, v4}, Ljdk/dynalink/StandardOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    return-object v0

    .line 556
    :pswitch_11
    sget-object v2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETSTRICT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 557
    .line 558
    sget-object v4, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 559
    .line 560
    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    return-object v0

    .line 573
    :pswitch_12
    sget-object v2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETWITHTHIS:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 574
    .line 575
    sget-object v4, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 576
    .line 577
    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    return-object v0

    .line 590
    :pswitch_13
    sget-object v2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETCONST:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 591
    .line 592
    sget-object v4, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 593
    .line 594
    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    return-object v0

    .line 607
    :cond_15
    const-string v1, "MATH"

    .line 608
    .line 609
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result v1

    .line 613
    if-eqz v1, :cond_22

    .line 614
    .line 615
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 619
    .line 620
    .line 621
    move-result v1

    .line 622
    sparse-switch v1, :sswitch_data_2

    .line 623
    .line 624
    .line 625
    :goto_4
    const/4 v2, -0x1

    .line 626
    goto/16 :goto_5

    .line 627
    .line 628
    :sswitch_14
    const-string v1, "TONUMERIC"

    .line 629
    .line 630
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    move-result v1

    .line 634
    if-nez v1, :cond_16

    .line 635
    .line 636
    goto :goto_4

    .line 637
    :cond_16
    move v2, v8

    .line 638
    goto/16 :goto_5

    .line 639
    .line 640
    :sswitch_15
    const-string v1, "COMPARELT"

    .line 641
    .line 642
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 643
    .line 644
    .line 645
    move-result v1

    .line 646
    if-nez v1, :cond_17

    .line 647
    .line 648
    goto :goto_4

    .line 649
    :cond_17
    move v2, v10

    .line 650
    goto/16 :goto_5

    .line 651
    .line 652
    :sswitch_16
    const-string v1, "COMPARELE"

    .line 653
    .line 654
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    move-result v1

    .line 658
    if-nez v1, :cond_18

    .line 659
    .line 660
    goto :goto_4

    .line 661
    :cond_18
    move v2, v11

    .line 662
    goto/16 :goto_5

    .line 663
    .line 664
    :sswitch_17
    const-string v1, "COMPAREGT"

    .line 665
    .line 666
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 667
    .line 668
    .line 669
    move-result v1

    .line 670
    if-nez v1, :cond_19

    .line 671
    .line 672
    goto :goto_4

    .line 673
    :cond_19
    move v2, v12

    .line 674
    goto/16 :goto_5

    .line 675
    .line 676
    :sswitch_18
    const-string v1, "COMPAREGE"

    .line 677
    .line 678
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    move-result v1

    .line 682
    if-nez v1, :cond_1a

    .line 683
    .line 684
    goto :goto_4

    .line 685
    :cond_1a
    move v2, v14

    .line 686
    goto :goto_5

    .line 687
    :sswitch_19
    const-string v1, "SHALLOWEQ"

    .line 688
    .line 689
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    move-result v1

    .line 693
    if-nez v1, :cond_1b

    .line 694
    .line 695
    goto :goto_4

    .line 696
    :cond_1b
    move/from16 v2, v16

    .line 697
    .line 698
    goto :goto_5

    .line 699
    :sswitch_1a
    const-string v1, "ADD"

    .line 700
    .line 701
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 702
    .line 703
    .line 704
    move-result v1

    .line 705
    if-nez v1, :cond_1c

    .line 706
    .line 707
    goto :goto_4

    .line 708
    :cond_1c
    move/from16 v2, v17

    .line 709
    .line 710
    goto :goto_5

    .line 711
    :sswitch_1b
    const-string v1, "EQ"

    .line 712
    .line 713
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 714
    .line 715
    .line 716
    move-result v1

    .line 717
    if-nez v1, :cond_1d

    .line 718
    .line 719
    goto :goto_4

    .line 720
    :cond_1d
    move/from16 v2, v18

    .line 721
    .line 722
    goto :goto_5

    .line 723
    :sswitch_1c
    const-string v1, "TOUINT32"

    .line 724
    .line 725
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 726
    .line 727
    .line 728
    move-result v1

    .line 729
    if-nez v1, :cond_1e

    .line 730
    .line 731
    goto :goto_4

    .line 732
    :cond_1e
    move/from16 v2, v19

    .line 733
    .line 734
    goto :goto_5

    .line 735
    :sswitch_1d
    const-string v1, "TONUMBER"

    .line 736
    .line 737
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 738
    .line 739
    .line 740
    move-result v1

    .line 741
    if-nez v1, :cond_1f

    .line 742
    .line 743
    goto :goto_4

    .line 744
    :cond_1f
    move v2, v3

    .line 745
    goto :goto_5

    .line 746
    :sswitch_1e
    const-string v1, "TOINT32"

    .line 747
    .line 748
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 749
    .line 750
    .line 751
    move-result v1

    .line 752
    if-nez v1, :cond_20

    .line 753
    .line 754
    goto/16 :goto_4

    .line 755
    .line 756
    :cond_20
    move v2, v5

    .line 757
    goto :goto_5

    .line 758
    :sswitch_1f
    const-string v1, "TOBOOLEAN"

    .line 759
    .line 760
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 761
    .line 762
    .line 763
    move-result v1

    .line 764
    if-nez v1, :cond_21

    .line 765
    .line 766
    goto/16 :goto_4

    .line 767
    .line 768
    :cond_21
    const/4 v2, 0x0

    .line 769
    :goto_5
    packed-switch v2, :pswitch_data_2

    .line 770
    .line 771
    .line 772
    goto :goto_6

    .line 773
    :pswitch_14
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TONUMERIC:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 774
    .line 775
    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 776
    .line 777
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 778
    .line 779
    .line 780
    move-result-object v0

    .line 781
    return-object v0

    .line 782
    :pswitch_15
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_LT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 783
    .line 784
    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 785
    .line 786
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    return-object v0

    .line 791
    :pswitch_16
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_LE:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 792
    .line 793
    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 794
    .line 795
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    return-object v0

    .line 800
    :pswitch_17
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_GT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 801
    .line 802
    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 803
    .line 804
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 805
    .line 806
    .line 807
    move-result-object v0

    .line 808
    return-object v0

    .line 809
    :pswitch_18
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_GE:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 810
    .line 811
    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 812
    .line 813
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    return-object v0

    .line 818
    :pswitch_19
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SHALLOWEQ:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 819
    .line 820
    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 821
    .line 822
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    return-object v0

    .line 827
    :pswitch_1a
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->ADD:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 828
    .line 829
    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 830
    .line 831
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    return-object v0

    .line 836
    :pswitch_1b
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->EQ:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 837
    .line 838
    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 839
    .line 840
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 841
    .line 842
    .line 843
    move-result-object v0

    .line 844
    return-object v0

    .line 845
    :pswitch_1c
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TOUINT32:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 846
    .line 847
    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 848
    .line 849
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    return-object v0

    .line 854
    :pswitch_1d
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TONUMBER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 855
    .line 856
    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 857
    .line 858
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 859
    .line 860
    .line 861
    move-result-object v0

    .line 862
    return-object v0

    .line 863
    :pswitch_1e
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TOINT32:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 864
    .line 865
    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 866
    .line 867
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 868
    .line 869
    .line 870
    move-result-object v0

    .line 871
    return-object v0

    .line 872
    :pswitch_1f
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TOBOOLEAN:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    .line 873
    .line 874
    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 875
    .line 876
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    return-object v0

    .line 881
    :cond_22
    :goto_6
    new-instance v1, Ljava/lang/NoSuchMethodException;

    .line 882
    .line 883
    invoke-direct {v1, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 884
    .line 885
    .line 886
    throw v1

    .line 887
    :sswitch_data_0
    .sparse-switch
        -0x7c703650 -> :sswitch_c
        -0x7bdfefa7 -> :sswitch_b
        -0x6b9e511a -> :sswitch_a
        -0x5afe50c4 -> :sswitch_9
        -0x5a6e0a1b -> :sswitch_8
        -0x5107dcbf -> :sswitch_7
        -0x3fb06666 -> :sswitch_6
        0x11336 -> :sswitch_5
        0x14042 -> :sswitch_4
        0x3d31e7d -> :sswitch_3
        0x7d2fc5a -> :sswitch_2
        0x42c19afa -> :sswitch_1
        0x78af2835 -> :sswitch_0
    .end sparse-switch

    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
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

    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    :sswitch_data_1
    .sparse-switch
        -0x7cc427bf -> :sswitch_13
        -0x3fb06666 -> :sswitch_12
        -0x2b2675 -> :sswitch_11
        0x11336 -> :sswitch_10
        0x14042 -> :sswitch_f
        0x1f1c3d -> :sswitch_e
        0x42c19afa -> :sswitch_d
    .end sparse-switch

    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    :sswitch_data_2
    .sparse-switch
        -0x1c67c2d3 -> :sswitch_1f
        -0x197c4b2d -> :sswitch_1e
        -0xd252e7c -> :sswitch_1d
        -0x1dba68c -> :sswitch_1c
        0x8ac -> :sswitch_1b
        0xfc81 -> :sswitch_1a
        0x3dfe29a0 -> :sswitch_19
        0x51e3b463 -> :sswitch_18
        0x51e3b472 -> :sswitch_17
        0x51e3b4fe -> :sswitch_16
        0x51e3b50d -> :sswitch_15
        0x6880ec12 -> :sswitch_14
    .end sparse-switch

    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method
