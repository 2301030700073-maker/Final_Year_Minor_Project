.class public final synthetic Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.dataclient.mwapi.TemplateDataResponse.TemplateDataParam"

    .line 11
    .line 12
    const/16 v3, 0xb

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "label"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v0, "description"

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string v0, "default"

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-string v0, "example"

    .line 34
    .line 35
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v0, "type"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    const-string v0, "required"

    .line 45
    .line 46
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const-string v0, "suggested"

    .line 50
    .line 51
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    const-string v0, "autovalue"

    .line 55
    .line 56
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    const-string v0, "suggestedvalues"

    .line 60
    .line 61
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    const-string v0, "aliases"

    .line 65
    .line 66
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    const-string v0, "deprecated"

    .line 70
    .line 71
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    sput-object v1, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 4

    .line 1
    sget-object p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->$childSerializers:[Lkotlin/Lazy;

    .line 2
    .line 3
    const/16 v0, 0xb

    .line 4
    .line 5
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 6
    .line 7
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 8
    .line 9
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    aput-object v2, v0, v3

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    aput-object v3, v0, v2

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    aput-object v3, v0, v2

    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    aput-object v3, v0, v2

    .line 36
    .line 37
    const/4 v2, 0x4

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v2, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 41
    .line 42
    const/4 v3, 0x5

    .line 43
    aput-object v2, v0, v3

    .line 44
    .line 45
    const/4 v3, 0x6

    .line 46
    aput-object v2, v0, v3

    .line 47
    .line 48
    const/4 v2, 0x7

    .line 49
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    aput-object v1, v0, v2

    .line 54
    .line 55
    const/16 v1, 0x8

    .line 56
    .line 57
    aget-object v2, p0, v1

    .line 58
    .line 59
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    aput-object v2, v0, v1

    .line 64
    .line 65
    const/16 v1, 0x9

    .line 66
    .line 67
    aget-object p0, p0, v1

    .line 68
    .line 69
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    aput-object p0, v0, v1

    .line 74
    .line 75
    sget-object p0, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 76
    .line 77
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const/16 v1, 0xa

    .line 82
    .line 83
    aput-object p0, v0, v1

    .line 84
    .line 85
    return-object v0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 20

    .line 1
    sget-object v0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    sget-object v2, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->$childSerializers:[Lkotlin/Lazy;

    .line 10
    .line 11
    const/16 p0, 0x0

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x1

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x0

    .line 21
    const/4 v11, 0x0

    .line 22
    const/4 v12, 0x0

    .line 23
    const/4 v13, 0x0

    .line 24
    const/4 v14, 0x0

    .line 25
    const/4 v15, 0x0

    .line 26
    :goto_0
    if-eqz v6, :cond_0

    .line 27
    .line 28
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 29
    .line 30
    .line 31
    move-result v17

    .line 32
    packed-switch v17, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    invoke-static/range {v17 .. v17}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_0
    move-object/from16 v17, v2

    .line 40
    .line 41
    sget-object v2, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 42
    .line 43
    move/from16 v18, v6

    .line 44
    .line 45
    const/16 v6, 0xa

    .line 46
    .line 47
    invoke-interface {v1, v0, v6, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    move-object v3, v2

    .line 52
    check-cast v3, Lkotlinx/serialization/json/JsonElement;

    .line 53
    .line 54
    or-int/lit16 v8, v8, 0x400

    .line 55
    .line 56
    :goto_1
    move-object/from16 v2, v17

    .line 57
    .line 58
    move/from16 v6, v18

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :pswitch_1
    move-object/from16 v17, v2

    .line 62
    .line 63
    move/from16 v18, v6

    .line 64
    .line 65
    const/16 v2, 0x9

    .line 66
    .line 67
    aget-object v6, v17, v2

    .line 68
    .line 69
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Lkotlinx/serialization/KSerializer;

    .line 74
    .line 75
    invoke-interface {v1, v0, v2, v6, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    move-object v4, v2

    .line 80
    check-cast v4, Ljava/util/List;

    .line 81
    .line 82
    or-int/lit16 v8, v8, 0x200

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :pswitch_2
    move-object/from16 v17, v2

    .line 86
    .line 87
    move/from16 v18, v6

    .line 88
    .line 89
    const/16 v2, 0x8

    .line 90
    .line 91
    aget-object v6, v17, v2

    .line 92
    .line 93
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Lkotlinx/serialization/KSerializer;

    .line 98
    .line 99
    invoke-interface {v1, v0, v2, v6, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    move-object v5, v2

    .line 104
    check-cast v5, Ljava/util/List;

    .line 105
    .line 106
    or-int/lit16 v8, v8, 0x100

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :pswitch_3
    move-object/from16 v17, v2

    .line 110
    .line 111
    move/from16 v18, v6

    .line 112
    .line 113
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 114
    .line 115
    const/4 v6, 0x7

    .line 116
    invoke-interface {v1, v0, v6, v2, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    move-object v7, v2

    .line 121
    check-cast v7, Ljava/lang/String;

    .line 122
    .line 123
    or-int/lit16 v8, v8, 0x80

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :pswitch_4
    move-object/from16 v17, v2

    .line 127
    .line 128
    move/from16 v18, v6

    .line 129
    .line 130
    const/4 v2, 0x6

    .line 131
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 132
    .line 133
    .line 134
    move-result v15

    .line 135
    or-int/lit8 v8, v8, 0x40

    .line 136
    .line 137
    :goto_2
    move-object/from16 v2, v17

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :pswitch_5
    move-object/from16 v17, v2

    .line 141
    .line 142
    move/from16 v18, v6

    .line 143
    .line 144
    const/4 v2, 0x5

    .line 145
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 146
    .line 147
    .line 148
    move-result v14

    .line 149
    or-int/lit8 v8, v8, 0x20

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :pswitch_6
    move-object/from16 v17, v2

    .line 153
    .line 154
    move/from16 v18, v6

    .line 155
    .line 156
    const/4 v2, 0x4

    .line 157
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v13

    .line 161
    or-int/lit8 v8, v8, 0x10

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :pswitch_7
    move-object/from16 v17, v2

    .line 165
    .line 166
    move/from16 v18, v6

    .line 167
    .line 168
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 169
    .line 170
    const/4 v6, 0x3

    .line 171
    invoke-interface {v1, v0, v6, v2, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    move-object v12, v2

    .line 176
    check-cast v12, Ljava/lang/String;

    .line 177
    .line 178
    or-int/lit8 v8, v8, 0x8

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :pswitch_8
    move-object/from16 v17, v2

    .line 182
    .line 183
    move/from16 v18, v6

    .line 184
    .line 185
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 186
    .line 187
    const/4 v6, 0x2

    .line 188
    invoke-interface {v1, v0, v6, v2, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    move-object v11, v2

    .line 193
    check-cast v11, Ljava/lang/String;

    .line 194
    .line 195
    or-int/lit8 v8, v8, 0x4

    .line 196
    .line 197
    goto/16 :goto_1

    .line 198
    .line 199
    :pswitch_9
    move-object/from16 v17, v2

    .line 200
    .line 201
    move/from16 v18, v6

    .line 202
    .line 203
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 204
    .line 205
    const/4 v6, 0x1

    .line 206
    invoke-interface {v1, v0, v6, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    move-object v10, v2

    .line 211
    check-cast v10, Ljava/lang/String;

    .line 212
    .line 213
    or-int/lit8 v8, v8, 0x2

    .line 214
    .line 215
    goto/16 :goto_1

    .line 216
    .line 217
    :pswitch_a
    move-object/from16 v17, v2

    .line 218
    .line 219
    move/from16 v18, v6

    .line 220
    .line 221
    const/4 v6, 0x1

    .line 222
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 223
    .line 224
    const/4 v6, 0x0

    .line 225
    invoke-interface {v1, v0, v6, v2, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    move-object v9, v2

    .line 230
    check-cast v9, Ljava/lang/String;

    .line 231
    .line 232
    or-int/lit8 v8, v8, 0x1

    .line 233
    .line 234
    goto/16 :goto_1

    .line 235
    .line 236
    :pswitch_b
    const/4 v6, 0x0

    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 240
    .line 241
    .line 242
    move-object/from16 v16, v7

    .line 243
    .line 244
    new-instance v7, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;

    .line 245
    .line 246
    move-object/from16 v19, v3

    .line 247
    .line 248
    move-object/from16 v18, v4

    .line 249
    .line 250
    move-object/from16 v17, v5

    .line 251
    .line 252
    invoke-direct/range {v7 .. v19}, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlinx/serialization/json/JsonElement;)V

    .line 253
    .line 254
    .line 255
    return-object v7

    .line 256
    nop

    .line 257
    :pswitch_data_0
    .packed-switch -0x1
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

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    .line 1
    sget-object p0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 13

    .line 1
    check-cast p2, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p2, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->deprecated:Lkotlinx/serialization/json/JsonElement;

    .line 7
    .line 8
    iget-object v0, p2, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->aliases:Ljava/util/List;

    .line 9
    .line 10
    iget-object v1, p2, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->suggestedValues:Ljava/util/List;

    .line 11
    .line 12
    iget-object v2, p2, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->autoValue:Ljava/lang/String;

    .line 13
    .line 14
    iget-boolean v3, p2, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->suggested:Z

    .line 15
    .line 16
    iget-boolean v4, p2, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->required:Z

    .line 17
    .line 18
    iget-object v5, p2, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->type:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v6, p2, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->example:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v7, p2, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->default:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v8, p2, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->description:Ljava/lang/String;

    .line 25
    .line 26
    iget-object p2, p2, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->label:Ljava/lang/String;

    .line 27
    .line 28
    sget-object v9, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 29
    .line 30
    invoke-virtual {p1, v9}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object v10, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateDataParam;->$childSerializers:[Lkotlin/Lazy;

    .line 35
    .line 36
    invoke-virtual {p1, v9}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    if-eqz v11, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    if-eqz p2, :cond_1

    .line 44
    .line 45
    :goto_0
    sget-object v11, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 46
    .line 47
    const/4 v12, 0x0

    .line 48
    invoke-virtual {p1, v9, v12, v11, p2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p1, v9}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    if-eqz v8, :cond_3

    .line 59
    .line 60
    :goto_1
    sget-object p2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 61
    .line 62
    const/4 v11, 0x1

    .line 63
    invoke-virtual {p1, v9, v11, p2, v8}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-virtual {p1, v9}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    if-eqz v7, :cond_5

    .line 74
    .line 75
    :goto_2
    sget-object p2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 76
    .line 77
    const/4 v8, 0x2

    .line 78
    invoke-virtual {p1, v9, v8, p2, v7}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_5
    invoke-virtual {p1, v9}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-eqz p2, :cond_6

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_6
    if-eqz v6, :cond_7

    .line 89
    .line 90
    :goto_3
    sget-object p2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 91
    .line 92
    const/4 v7, 0x3

    .line 93
    invoke-virtual {p1, v9, v7, p2, v6}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_7
    invoke-virtual {p1, v9}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-eqz p2, :cond_8

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_8
    const-string p2, ""

    .line 104
    .line 105
    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-nez p2, :cond_9

    .line 110
    .line 111
    :goto_4
    const/4 p2, 0x4

    .line 112
    invoke-virtual {p1, v9, p2, v5}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_9
    invoke-virtual {p1, v9}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    if-eqz p2, :cond_a

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_a
    if-eqz v4, :cond_b

    .line 123
    .line 124
    :goto_5
    const/4 p2, 0x5

    .line 125
    invoke-virtual {p1, v9, p2, v4}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 126
    .line 127
    .line 128
    :cond_b
    invoke-virtual {p1, v9}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-eqz p2, :cond_c

    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_c
    if-eqz v3, :cond_d

    .line 136
    .line 137
    :goto_6
    const/4 p2, 0x6

    .line 138
    invoke-virtual {p1, v9, p2, v3}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 139
    .line 140
    .line 141
    :cond_d
    invoke-virtual {p1, v9}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    if-eqz p2, :cond_e

    .line 146
    .line 147
    goto :goto_7

    .line 148
    :cond_e
    if-eqz v2, :cond_f

    .line 149
    .line 150
    :goto_7
    sget-object p2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 151
    .line 152
    const/4 v3, 0x7

    .line 153
    invoke-virtual {p1, v9, v3, p2, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_f
    invoke-virtual {p1, v9}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 161
    .line 162
    if-eqz p2, :cond_10

    .line 163
    .line 164
    goto :goto_8

    .line 165
    :cond_10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    if-nez p2, :cond_11

    .line 170
    .line 171
    :goto_8
    const/16 p2, 0x8

    .line 172
    .line 173
    aget-object v3, v10, p2

    .line 174
    .line 175
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 180
    .line 181
    invoke-virtual {p1, v9, p2, v3, v1}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_11
    invoke-virtual {p1, v9}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    if-eqz p2, :cond_12

    .line 189
    .line 190
    goto :goto_9

    .line 191
    :cond_12
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    if-nez p2, :cond_13

    .line 196
    .line 197
    :goto_9
    const/16 p2, 0x9

    .line 198
    .line 199
    aget-object v1, v10, p2

    .line 200
    .line 201
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 206
    .line 207
    invoke-virtual {p1, v9, p2, v1, v0}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :cond_13
    invoke-virtual {p1, v9}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    if-eqz p2, :cond_14

    .line 215
    .line 216
    goto :goto_a

    .line 217
    :cond_14
    if-eqz p0, :cond_15

    .line 218
    .line 219
    :goto_a
    sget-object p2, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 220
    .line 221
    const/16 v0, 0xa

    .line 222
    .line 223
    invoke-virtual {p1, v9, v0, p2, p0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    :cond_15
    invoke-virtual {p1, v9}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 227
    .line 228
    .line 229
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
