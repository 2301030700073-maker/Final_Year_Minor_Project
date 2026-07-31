.class public final synthetic Lorg/wikimedia/testkitchen/context/AgentData$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikimedia/testkitchen/context/AgentData$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikimedia/testkitchen/context/AgentData$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikimedia/testkitchen/context/AgentData$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/context/AgentData$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikimedia.testkitchen.context.AgentData"

    .line 11
    .line 12
    const/16 v3, 0xa

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "app_flavor"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v0, "app_install_id"

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string v0, "app_theme"

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-string v0, "app_version"

    .line 34
    .line 35
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const-string v0, "app_version_name"

    .line 39
    .line 40
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    const-string v0, "client_platform"

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    const-string v0, "client_platform_family"

    .line 49
    .line 50
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    const-string v0, "device_family"

    .line 54
    .line 55
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    const-string v0, "device_language"

    .line 59
    .line 60
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    const-string v0, "release_status"

    .line 64
    .line 65
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    sput-object v1, Lorg/wikimedia/testkitchen/context/AgentData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 11

    .line 1
    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 16
    .line 17
    invoke-static {v3}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const/16 v9, 0xa

    .line 46
    .line 47
    new-array v9, v9, [Lkotlinx/serialization/KSerializer;

    .line 48
    .line 49
    const/4 v10, 0x0

    .line 50
    aput-object v0, v9, v10

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    aput-object v1, v9, v0

    .line 54
    .line 55
    const/4 v0, 0x2

    .line 56
    aput-object v2, v9, v0

    .line 57
    .line 58
    const/4 v0, 0x3

    .line 59
    aput-object v3, v9, v0

    .line 60
    .line 61
    const/4 v0, 0x4

    .line 62
    aput-object v4, v9, v0

    .line 63
    .line 64
    const/4 v0, 0x5

    .line 65
    aput-object v5, v9, v0

    .line 66
    .line 67
    const/4 v0, 0x6

    .line 68
    aput-object v6, v9, v0

    .line 69
    .line 70
    const/4 v0, 0x7

    .line 71
    aput-object v7, v9, v0

    .line 72
    .line 73
    const/16 v0, 0x8

    .line 74
    .line 75
    aput-object v8, v9, v0

    .line 76
    .line 77
    const/16 v0, 0x9

    .line 78
    .line 79
    aput-object p0, v9, v0

    .line 80
    .line 81
    return-object v9
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 17

    .line 1
    sget-object v0, Lorg/wikimedia/testkitchen/context/AgentData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/16 p0, 0x0

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v11, 0x0

    .line 19
    const/4 v12, 0x0

    .line 20
    const/4 v13, 0x0

    .line 21
    const/4 v14, 0x0

    .line 22
    const/4 v15, 0x0

    .line 23
    :goto_0
    if-eqz v5, :cond_0

    .line 24
    .line 25
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 26
    .line 27
    .line 28
    move-result v16

    .line 29
    packed-switch v16, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    invoke-static/range {v16 .. v16}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_0
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 37
    .line 38
    const/16 v2, 0x9

    .line 39
    .line 40
    invoke-interface {v1, v0, v2, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    move-object v4, v2

    .line 45
    check-cast v4, Ljava/lang/String;

    .line 46
    .line 47
    or-int/lit16 v6, v6, 0x200

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_1
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 51
    .line 52
    const/16 v3, 0x8

    .line 53
    .line 54
    invoke-interface {v1, v0, v3, v2, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    move-object v15, v2

    .line 59
    check-cast v15, Ljava/lang/String;

    .line 60
    .line 61
    or-int/lit16 v6, v6, 0x100

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :pswitch_2
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 65
    .line 66
    const/4 v3, 0x7

    .line 67
    invoke-interface {v1, v0, v3, v2, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    move-object v14, v2

    .line 72
    check-cast v14, Ljava/lang/String;

    .line 73
    .line 74
    or-int/lit16 v6, v6, 0x80

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_3
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 78
    .line 79
    const/4 v3, 0x6

    .line 80
    invoke-interface {v1, v0, v3, v2, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    move-object v13, v2

    .line 85
    check-cast v13, Ljava/lang/String;

    .line 86
    .line 87
    or-int/lit8 v6, v6, 0x40

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :pswitch_4
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 91
    .line 92
    const/4 v3, 0x5

    .line 93
    invoke-interface {v1, v0, v3, v2, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    move-object v12, v2

    .line 98
    check-cast v12, Ljava/lang/String;

    .line 99
    .line 100
    or-int/lit8 v6, v6, 0x20

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :pswitch_5
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 104
    .line 105
    const/4 v3, 0x4

    .line 106
    invoke-interface {v1, v0, v3, v2, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    move-object v11, v2

    .line 111
    check-cast v11, Ljava/lang/String;

    .line 112
    .line 113
    or-int/lit8 v6, v6, 0x10

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :pswitch_6
    sget-object v2, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 117
    .line 118
    const/4 v3, 0x3

    .line 119
    invoke-interface {v1, v0, v3, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    move-object v10, v2

    .line 124
    check-cast v10, Ljava/lang/Integer;

    .line 125
    .line 126
    or-int/lit8 v6, v6, 0x8

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :pswitch_7
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 130
    .line 131
    const/4 v3, 0x2

    .line 132
    invoke-interface {v1, v0, v3, v2, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    move-object v9, v2

    .line 137
    check-cast v9, Ljava/lang/String;

    .line 138
    .line 139
    or-int/lit8 v6, v6, 0x4

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :pswitch_8
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 143
    .line 144
    const/4 v3, 0x1

    .line 145
    invoke-interface {v1, v0, v3, v2, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    move-object v8, v2

    .line 150
    check-cast v8, Ljava/lang/String;

    .line 151
    .line 152
    or-int/lit8 v6, v6, 0x2

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :pswitch_9
    const/4 v3, 0x1

    .line 157
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 158
    .line 159
    const/4 v3, 0x0

    .line 160
    invoke-interface {v1, v0, v3, v2, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    move-object v7, v2

    .line 165
    check-cast v7, Ljava/lang/String;

    .line 166
    .line 167
    or-int/lit8 v6, v6, 0x1

    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :pswitch_a
    const/4 v3, 0x0

    .line 172
    move v5, v3

    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 176
    .line 177
    .line 178
    new-instance v0, Lorg/wikimedia/testkitchen/context/AgentData;

    .line 179
    .line 180
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 181
    .line 182
    .line 183
    and-int/lit8 v1, v6, 0x1

    .line 184
    .line 185
    if-nez v1, :cond_1

    .line 186
    .line 187
    move-object/from16 v1, p0

    .line 188
    .line 189
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/AgentData;->appFlavor:Ljava/lang/String;

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_1
    move-object/from16 v1, p0

    .line 193
    .line 194
    iput-object v7, v0, Lorg/wikimedia/testkitchen/context/AgentData;->appFlavor:Ljava/lang/String;

    .line 195
    .line 196
    :goto_1
    and-int/lit8 v2, v6, 0x2

    .line 197
    .line 198
    if-nez v2, :cond_2

    .line 199
    .line 200
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/AgentData;->appInstallId:Ljava/lang/String;

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_2
    iput-object v8, v0, Lorg/wikimedia/testkitchen/context/AgentData;->appInstallId:Ljava/lang/String;

    .line 204
    .line 205
    :goto_2
    and-int/lit8 v2, v6, 0x4

    .line 206
    .line 207
    if-nez v2, :cond_3

    .line 208
    .line 209
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/AgentData;->appTheme:Ljava/lang/String;

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_3
    iput-object v9, v0, Lorg/wikimedia/testkitchen/context/AgentData;->appTheme:Ljava/lang/String;

    .line 213
    .line 214
    :goto_3
    and-int/lit8 v2, v6, 0x8

    .line 215
    .line 216
    if-nez v2, :cond_4

    .line 217
    .line 218
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/AgentData;->appVersion:Ljava/lang/Integer;

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_4
    iput-object v10, v0, Lorg/wikimedia/testkitchen/context/AgentData;->appVersion:Ljava/lang/Integer;

    .line 222
    .line 223
    :goto_4
    and-int/lit8 v2, v6, 0x10

    .line 224
    .line 225
    if-nez v2, :cond_5

    .line 226
    .line 227
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/AgentData;->appVersionName:Ljava/lang/String;

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_5
    iput-object v11, v0, Lorg/wikimedia/testkitchen/context/AgentData;->appVersionName:Ljava/lang/String;

    .line 231
    .line 232
    :goto_5
    and-int/lit8 v2, v6, 0x20

    .line 233
    .line 234
    if-nez v2, :cond_6

    .line 235
    .line 236
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/AgentData;->clientPlatform:Ljava/lang/String;

    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_6
    iput-object v12, v0, Lorg/wikimedia/testkitchen/context/AgentData;->clientPlatform:Ljava/lang/String;

    .line 240
    .line 241
    :goto_6
    and-int/lit8 v2, v6, 0x40

    .line 242
    .line 243
    if-nez v2, :cond_7

    .line 244
    .line 245
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/AgentData;->clientPlatformFamily:Ljava/lang/String;

    .line 246
    .line 247
    goto :goto_7

    .line 248
    :cond_7
    iput-object v13, v0, Lorg/wikimedia/testkitchen/context/AgentData;->clientPlatformFamily:Ljava/lang/String;

    .line 249
    .line 250
    :goto_7
    and-int/lit16 v2, v6, 0x80

    .line 251
    .line 252
    if-nez v2, :cond_8

    .line 253
    .line 254
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/AgentData;->deviceFamily:Ljava/lang/String;

    .line 255
    .line 256
    goto :goto_8

    .line 257
    :cond_8
    iput-object v14, v0, Lorg/wikimedia/testkitchen/context/AgentData;->deviceFamily:Ljava/lang/String;

    .line 258
    .line 259
    :goto_8
    and-int/lit16 v2, v6, 0x100

    .line 260
    .line 261
    if-nez v2, :cond_9

    .line 262
    .line 263
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/AgentData;->deviceLanguage:Ljava/lang/String;

    .line 264
    .line 265
    goto :goto_9

    .line 266
    :cond_9
    iput-object v15, v0, Lorg/wikimedia/testkitchen/context/AgentData;->deviceLanguage:Ljava/lang/String;

    .line 267
    .line 268
    :goto_9
    and-int/lit16 v2, v6, 0x200

    .line 269
    .line 270
    if-nez v2, :cond_a

    .line 271
    .line 272
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/AgentData;->releaseStatus:Ljava/lang/String;

    .line 273
    .line 274
    return-object v0

    .line 275
    :cond_a
    iput-object v4, v0, Lorg/wikimedia/testkitchen/context/AgentData;->releaseStatus:Ljava/lang/String;

    .line 276
    .line 277
    return-object v0

    .line 278
    nop

    .line 279
    :pswitch_data_0
    .packed-switch -0x1
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

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    .line 1
    sget-object p0, Lorg/wikimedia/testkitchen/context/AgentData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lorg/wikimedia/testkitchen/context/AgentData;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lorg/wikimedia/testkitchen/context/AgentData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p2, Lorg/wikimedia/testkitchen/context/AgentData;->appFlavor:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    :goto_0
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 24
    .line 25
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/AgentData;->appFlavor:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget-object v0, p2, Lorg/wikimedia/testkitchen/context/AgentData;->appInstallId:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    :goto_1
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 43
    .line 44
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/AgentData;->appInstallId:Ljava/lang/String;

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    iget-object v0, p2, Lorg/wikimedia/testkitchen/context/AgentData;->appTheme:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    :goto_2
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 62
    .line 63
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/AgentData;->appTheme:Ljava/lang/String;

    .line 64
    .line 65
    const/4 v2, 0x2

    .line 66
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_5
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_6
    iget-object v0, p2, Lorg/wikimedia/testkitchen/context/AgentData;->appVersion:Ljava/lang/Integer;

    .line 77
    .line 78
    if-eqz v0, :cond_7

    .line 79
    .line 80
    :goto_3
    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 81
    .line 82
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/AgentData;->appVersion:Ljava/lang/Integer;

    .line 83
    .line 84
    const/4 v2, 0x3

    .line 85
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_7
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_8

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_8
    iget-object v0, p2, Lorg/wikimedia/testkitchen/context/AgentData;->appVersionName:Ljava/lang/String;

    .line 96
    .line 97
    if-eqz v0, :cond_9

    .line 98
    .line 99
    :goto_4
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 100
    .line 101
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/AgentData;->appVersionName:Ljava/lang/String;

    .line 102
    .line 103
    const/4 v2, 0x4

    .line 104
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_9
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_a

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_a
    iget-object v0, p2, Lorg/wikimedia/testkitchen/context/AgentData;->clientPlatform:Ljava/lang/String;

    .line 115
    .line 116
    if-eqz v0, :cond_b

    .line 117
    .line 118
    :goto_5
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 119
    .line 120
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/AgentData;->clientPlatform:Ljava/lang/String;

    .line 121
    .line 122
    const/4 v2, 0x5

    .line 123
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_b
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_c

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_c
    iget-object v0, p2, Lorg/wikimedia/testkitchen/context/AgentData;->clientPlatformFamily:Ljava/lang/String;

    .line 134
    .line 135
    if-eqz v0, :cond_d

    .line 136
    .line 137
    :goto_6
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 138
    .line 139
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/AgentData;->clientPlatformFamily:Ljava/lang/String;

    .line 140
    .line 141
    const/4 v2, 0x6

    .line 142
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_d
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_e

    .line 150
    .line 151
    goto :goto_7

    .line 152
    :cond_e
    iget-object v0, p2, Lorg/wikimedia/testkitchen/context/AgentData;->deviceFamily:Ljava/lang/String;

    .line 153
    .line 154
    if-eqz v0, :cond_f

    .line 155
    .line 156
    :goto_7
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 157
    .line 158
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/AgentData;->deviceFamily:Ljava/lang/String;

    .line 159
    .line 160
    const/4 v2, 0x7

    .line 161
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    :cond_f
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_10

    .line 169
    .line 170
    goto :goto_8

    .line 171
    :cond_10
    iget-object v0, p2, Lorg/wikimedia/testkitchen/context/AgentData;->deviceLanguage:Ljava/lang/String;

    .line 172
    .line 173
    if-eqz v0, :cond_11

    .line 174
    .line 175
    :goto_8
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 176
    .line 177
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/AgentData;->deviceLanguage:Ljava/lang/String;

    .line 178
    .line 179
    const/16 v2, 0x8

    .line 180
    .line 181
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_11
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_12

    .line 189
    .line 190
    goto :goto_9

    .line 191
    :cond_12
    iget-object v0, p2, Lorg/wikimedia/testkitchen/context/AgentData;->releaseStatus:Ljava/lang/String;

    .line 192
    .line 193
    if-eqz v0, :cond_13

    .line 194
    .line 195
    :goto_9
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 196
    .line 197
    iget-object p2, p2, Lorg/wikimedia/testkitchen/context/AgentData;->releaseStatus:Ljava/lang/String;

    .line 198
    .line 199
    const/16 v1, 0x9

    .line 200
    .line 201
    invoke-virtual {p1, p0, v1, v0, p2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :cond_13
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method public final typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 0

    .line 1
    sget-object p0, Lkotlinx/serialization/internal/TuplesKt;->EMPTY_SERIALIZER_ARRAY:[Lkotlinx/serialization/KSerializer;

    .line 2
    .line 3
    return-object p0
.end method
