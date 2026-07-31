.class public final synthetic Lorg/wikimedia/testkitchen/context/PerformerData$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikimedia/testkitchen/context/PerformerData$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikimedia/testkitchen/context/PerformerData$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikimedia/testkitchen/context/PerformerData$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/context/PerformerData$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikimedia.testkitchen.context.PerformerData"

    .line 11
    .line 12
    const/16 v3, 0xa

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "id"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v0, "name"

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string v0, "is_logged_in"

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-string v0, "is_temp"

    .line 34
    .line 35
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const-string v0, "session_id"

    .line 39
    .line 40
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    const-string v0, "pageview_id"

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    const-string v0, "groups"

    .line 49
    .line 50
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    const-string v0, "language_groups"

    .line 54
    .line 55
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    const-string v0, "language_primary"

    .line 59
    .line 60
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    const-string v0, "registration_dt"

    .line 64
    .line 65
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    sput-object v1, Lorg/wikimedia/testkitchen/context/PerformerData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 12

    .line 1
    sget-object p0, Lorg/wikimedia/testkitchen/context/PerformerData;->$childSerializers:[Lkotlin/Lazy;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 16
    .line 17
    invoke-static {v3}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-static {v3}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const/4 v7, 0x6

    .line 34
    aget-object p0, p0, v7

    .line 35
    .line 36
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Lkotlinx/serialization/KSerializer;

    .line 41
    .line 42
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    sget-object v9, Lorg/wikimedia/testkitchen/context/InstantSerializer;->INSTANCE:Lorg/wikimedia/testkitchen/context/InstantSerializer;

    .line 55
    .line 56
    invoke-static {v9}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    const/16 v10, 0xa

    .line 61
    .line 62
    new-array v10, v10, [Lkotlinx/serialization/KSerializer;

    .line 63
    .line 64
    const/4 v11, 0x0

    .line 65
    aput-object v0, v10, v11

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    aput-object v2, v10, v0

    .line 69
    .line 70
    const/4 v0, 0x2

    .line 71
    aput-object v4, v10, v0

    .line 72
    .line 73
    const/4 v0, 0x3

    .line 74
    aput-object v3, v10, v0

    .line 75
    .line 76
    const/4 v0, 0x4

    .line 77
    aput-object v5, v10, v0

    .line 78
    .line 79
    const/4 v0, 0x5

    .line 80
    aput-object v6, v10, v0

    .line 81
    .line 82
    aput-object p0, v10, v7

    .line 83
    .line 84
    const/4 p0, 0x7

    .line 85
    aput-object v8, v10, p0

    .line 86
    .line 87
    const/16 p0, 0x8

    .line 88
    .line 89
    aput-object v1, v10, p0

    .line 90
    .line 91
    const/16 p0, 0x9

    .line 92
    .line 93
    aput-object v9, v10, p0

    .line 94
    .line 95
    return-object v10
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 18

    .line 1
    sget-object v0, Lorg/wikimedia/testkitchen/context/PerformerData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    sget-object v2, Lorg/wikimedia/testkitchen/context/PerformerData;->$childSerializers:[Lkotlin/Lazy;

    .line 10
    .line 11
    const/16 p0, 0x0

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x1

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v10, 0x0

    .line 20
    const/4 v11, 0x0

    .line 21
    const/4 v12, 0x0

    .line 22
    const/4 v13, 0x0

    .line 23
    const/4 v14, 0x0

    .line 24
    const/4 v15, 0x0

    .line 25
    :goto_0
    if-eqz v6, :cond_0

    .line 26
    .line 27
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 28
    .line 29
    .line 30
    move-result v16

    .line 31
    packed-switch v16, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    invoke-static/range {v16 .. v16}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_0
    sget-object v3, Lorg/wikimedia/testkitchen/context/InstantSerializer;->INSTANCE:Lorg/wikimedia/testkitchen/context/InstantSerializer;

    .line 39
    .line 40
    move-object/from16 v17, v2

    .line 41
    .line 42
    const/16 v2, 0x9

    .line 43
    .line 44
    invoke-interface {v1, v0, v2, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    move-object v4, v2

    .line 49
    check-cast v4, Lj$/time/Instant;

    .line 50
    .line 51
    or-int/lit16 v7, v7, 0x200

    .line 52
    .line 53
    :goto_1
    move-object/from16 v2, v17

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_1
    move-object/from16 v17, v2

    .line 57
    .line 58
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 59
    .line 60
    const/16 v3, 0x8

    .line 61
    .line 62
    invoke-interface {v1, v0, v3, v2, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    move-object v5, v2

    .line 67
    check-cast v5, Ljava/lang/String;

    .line 68
    .line 69
    or-int/lit16 v7, v7, 0x100

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    move-object/from16 v17, v2

    .line 73
    .line 74
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 75
    .line 76
    const/4 v3, 0x7

    .line 77
    invoke-interface {v1, v0, v3, v2, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    move-object v15, v2

    .line 82
    check-cast v15, Ljava/lang/String;

    .line 83
    .line 84
    or-int/lit16 v7, v7, 0x80

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :pswitch_3
    move-object/from16 v17, v2

    .line 88
    .line 89
    const/4 v2, 0x6

    .line 90
    aget-object v3, v17, v2

    .line 91
    .line 92
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 97
    .line 98
    invoke-interface {v1, v0, v2, v3, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    move-object v14, v2

    .line 103
    check-cast v14, Ljava/util/Collection;

    .line 104
    .line 105
    or-int/lit8 v7, v7, 0x40

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :pswitch_4
    move-object/from16 v17, v2

    .line 109
    .line 110
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 111
    .line 112
    const/4 v3, 0x5

    .line 113
    invoke-interface {v1, v0, v3, v2, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    move-object v13, v2

    .line 118
    check-cast v13, Ljava/lang/String;

    .line 119
    .line 120
    or-int/lit8 v7, v7, 0x20

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :pswitch_5
    move-object/from16 v17, v2

    .line 124
    .line 125
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 126
    .line 127
    const/4 v3, 0x4

    .line 128
    invoke-interface {v1, v0, v3, v2, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    move-object v12, v2

    .line 133
    check-cast v12, Ljava/lang/String;

    .line 134
    .line 135
    or-int/lit8 v7, v7, 0x10

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :pswitch_6
    move-object/from16 v17, v2

    .line 139
    .line 140
    sget-object v2, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 141
    .line 142
    const/4 v3, 0x3

    .line 143
    invoke-interface {v1, v0, v3, v2, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    move-object v11, v2

    .line 148
    check-cast v11, Ljava/lang/Boolean;

    .line 149
    .line 150
    or-int/lit8 v7, v7, 0x8

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :pswitch_7
    move-object/from16 v17, v2

    .line 154
    .line 155
    sget-object v2, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 156
    .line 157
    const/4 v3, 0x2

    .line 158
    invoke-interface {v1, v0, v3, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    move-object v10, v2

    .line 163
    check-cast v10, Ljava/lang/Boolean;

    .line 164
    .line 165
    or-int/lit8 v7, v7, 0x4

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :pswitch_8
    move-object/from16 v17, v2

    .line 169
    .line 170
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 171
    .line 172
    const/4 v3, 0x1

    .line 173
    invoke-interface {v1, v0, v3, v2, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    move-object v9, v2

    .line 178
    check-cast v9, Ljava/lang/String;

    .line 179
    .line 180
    or-int/lit8 v7, v7, 0x2

    .line 181
    .line 182
    goto/16 :goto_1

    .line 183
    .line 184
    :pswitch_9
    move-object/from16 v17, v2

    .line 185
    .line 186
    const/4 v3, 0x1

    .line 187
    sget-object v2, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 188
    .line 189
    const/4 v3, 0x0

    .line 190
    invoke-interface {v1, v0, v3, v2, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    move-object v8, v2

    .line 195
    check-cast v8, Ljava/lang/Integer;

    .line 196
    .line 197
    or-int/lit8 v7, v7, 0x1

    .line 198
    .line 199
    goto/16 :goto_1

    .line 200
    .line 201
    :pswitch_a
    const/4 v3, 0x0

    .line 202
    move v6, v3

    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 206
    .line 207
    .line 208
    new-instance v0, Lorg/wikimedia/testkitchen/context/PerformerData;

    .line 209
    .line 210
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 211
    .line 212
    .line 213
    and-int/lit8 v1, v7, 0x1

    .line 214
    .line 215
    if-nez v1, :cond_1

    .line 216
    .line 217
    move-object/from16 v1, p0

    .line 218
    .line 219
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->id:Ljava/lang/Integer;

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_1
    move-object/from16 v1, p0

    .line 223
    .line 224
    iput-object v8, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->id:Ljava/lang/Integer;

    .line 225
    .line 226
    :goto_2
    and-int/lit8 v2, v7, 0x2

    .line 227
    .line 228
    if-nez v2, :cond_2

    .line 229
    .line 230
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->name:Ljava/lang/String;

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_2
    iput-object v9, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->name:Ljava/lang/String;

    .line 234
    .line 235
    :goto_3
    and-int/lit8 v2, v7, 0x4

    .line 236
    .line 237
    if-nez v2, :cond_3

    .line 238
    .line 239
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->isLoggedIn:Ljava/lang/Boolean;

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_3
    iput-object v10, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->isLoggedIn:Ljava/lang/Boolean;

    .line 243
    .line 244
    :goto_4
    and-int/lit8 v2, v7, 0x8

    .line 245
    .line 246
    if-nez v2, :cond_4

    .line 247
    .line 248
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->isTemp:Ljava/lang/Boolean;

    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_4
    iput-object v11, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->isTemp:Ljava/lang/Boolean;

    .line 252
    .line 253
    :goto_5
    and-int/lit8 v2, v7, 0x10

    .line 254
    .line 255
    if-nez v2, :cond_5

    .line 256
    .line 257
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->sessionId:Ljava/lang/String;

    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_5
    iput-object v12, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->sessionId:Ljava/lang/String;

    .line 261
    .line 262
    :goto_6
    and-int/lit8 v2, v7, 0x20

    .line 263
    .line 264
    if-nez v2, :cond_6

    .line 265
    .line 266
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->pageviewId:Ljava/lang/String;

    .line 267
    .line 268
    goto :goto_7

    .line 269
    :cond_6
    iput-object v13, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->pageviewId:Ljava/lang/String;

    .line 270
    .line 271
    :goto_7
    and-int/lit8 v2, v7, 0x40

    .line 272
    .line 273
    if-nez v2, :cond_7

    .line 274
    .line 275
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->groups:Ljava/util/Collection;

    .line 276
    .line 277
    goto :goto_8

    .line 278
    :cond_7
    iput-object v14, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->groups:Ljava/util/Collection;

    .line 279
    .line 280
    :goto_8
    and-int/lit16 v2, v7, 0x80

    .line 281
    .line 282
    if-nez v2, :cond_8

    .line 283
    .line 284
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->languageGroups:Ljava/lang/String;

    .line 285
    .line 286
    goto :goto_9

    .line 287
    :cond_8
    iput-object v15, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->languageGroups:Ljava/lang/String;

    .line 288
    .line 289
    :goto_9
    and-int/lit16 v2, v7, 0x100

    .line 290
    .line 291
    if-nez v2, :cond_9

    .line 292
    .line 293
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->languagePrimary:Ljava/lang/String;

    .line 294
    .line 295
    goto :goto_a

    .line 296
    :cond_9
    iput-object v5, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->languagePrimary:Ljava/lang/String;

    .line 297
    .line 298
    :goto_a
    and-int/lit16 v2, v7, 0x200

    .line 299
    .line 300
    if-nez v2, :cond_a

    .line 301
    .line 302
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->registrationDt:Lj$/time/Instant;

    .line 303
    .line 304
    return-object v0

    .line 305
    :cond_a
    iput-object v4, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->registrationDt:Lj$/time/Instant;

    .line 306
    .line 307
    return-object v0

    .line 308
    nop

    .line 309
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
    sget-object p0, Lorg/wikimedia/testkitchen/context/PerformerData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lorg/wikimedia/testkitchen/context/PerformerData;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lorg/wikimedia/testkitchen/context/PerformerData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Lorg/wikimedia/testkitchen/context/PerformerData;->$childSerializers:[Lkotlin/Lazy;

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/PerformerData;->id:Ljava/lang/Integer;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 26
    .line 27
    iget-object v2, p2, Lorg/wikimedia/testkitchen/context/PerformerData;->id:Ljava/lang/Integer;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {p1, p0, v3, v1, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/PerformerData;->name:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    :goto_1
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 45
    .line 46
    iget-object v2, p2, Lorg/wikimedia/testkitchen/context/PerformerData;->name:Ljava/lang/String;

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    invoke-virtual {p1, p0, v3, v1, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/PerformerData;->isLoggedIn:Ljava/lang/Boolean;

    .line 60
    .line 61
    if-eqz v1, :cond_5

    .line 62
    .line 63
    :goto_2
    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 64
    .line 65
    iget-object v2, p2, Lorg/wikimedia/testkitchen/context/PerformerData;->isLoggedIn:Ljava/lang/Boolean;

    .line 66
    .line 67
    const/4 v3, 0x2

    .line 68
    invoke-virtual {p1, p0, v3, v1, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_5
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_6
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/PerformerData;->isTemp:Ljava/lang/Boolean;

    .line 79
    .line 80
    if-eqz v1, :cond_7

    .line 81
    .line 82
    :goto_3
    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 83
    .line 84
    iget-object v2, p2, Lorg/wikimedia/testkitchen/context/PerformerData;->isTemp:Ljava/lang/Boolean;

    .line 85
    .line 86
    const/4 v3, 0x3

    .line 87
    invoke-virtual {p1, p0, v3, v1, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_7
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_8

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_8
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/PerformerData;->sessionId:Ljava/lang/String;

    .line 98
    .line 99
    if-eqz v1, :cond_9

    .line 100
    .line 101
    :goto_4
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 102
    .line 103
    iget-object v2, p2, Lorg/wikimedia/testkitchen/context/PerformerData;->sessionId:Ljava/lang/String;

    .line 104
    .line 105
    const/4 v3, 0x4

    .line 106
    invoke-virtual {p1, p0, v3, v1, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_9
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_a

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_a
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/PerformerData;->pageviewId:Ljava/lang/String;

    .line 117
    .line 118
    if-eqz v1, :cond_b

    .line 119
    .line 120
    :goto_5
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 121
    .line 122
    iget-object v2, p2, Lorg/wikimedia/testkitchen/context/PerformerData;->pageviewId:Ljava/lang/String;

    .line 123
    .line 124
    const/4 v3, 0x5

    .line 125
    invoke-virtual {p1, p0, v3, v1, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_b
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_c

    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_c
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/PerformerData;->groups:Ljava/util/Collection;

    .line 136
    .line 137
    if-eqz v1, :cond_d

    .line 138
    .line 139
    :goto_6
    const/4 v1, 0x6

    .line 140
    aget-object v0, v0, v1

    .line 141
    .line 142
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 147
    .line 148
    iget-object v2, p2, Lorg/wikimedia/testkitchen/context/PerformerData;->groups:Ljava/util/Collection;

    .line 149
    .line 150
    invoke-virtual {p1, p0, v1, v0, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_d
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_e

    .line 158
    .line 159
    goto :goto_7

    .line 160
    :cond_e
    iget-object v0, p2, Lorg/wikimedia/testkitchen/context/PerformerData;->languageGroups:Ljava/lang/String;

    .line 161
    .line 162
    if-eqz v0, :cond_f

    .line 163
    .line 164
    :goto_7
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 165
    .line 166
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/PerformerData;->languageGroups:Ljava/lang/String;

    .line 167
    .line 168
    const/4 v2, 0x7

    .line 169
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :cond_f
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_10

    .line 177
    .line 178
    goto :goto_8

    .line 179
    :cond_10
    iget-object v0, p2, Lorg/wikimedia/testkitchen/context/PerformerData;->languagePrimary:Ljava/lang/String;

    .line 180
    .line 181
    if-eqz v0, :cond_11

    .line 182
    .line 183
    :goto_8
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 184
    .line 185
    iget-object v1, p2, Lorg/wikimedia/testkitchen/context/PerformerData;->languagePrimary:Ljava/lang/String;

    .line 186
    .line 187
    const/16 v2, 0x8

    .line 188
    .line 189
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    :cond_11
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_12

    .line 197
    .line 198
    goto :goto_9

    .line 199
    :cond_12
    iget-object v0, p2, Lorg/wikimedia/testkitchen/context/PerformerData;->registrationDt:Lj$/time/Instant;

    .line 200
    .line 201
    if-eqz v0, :cond_13

    .line 202
    .line 203
    :goto_9
    sget-object v0, Lorg/wikimedia/testkitchen/context/InstantSerializer;->INSTANCE:Lorg/wikimedia/testkitchen/context/InstantSerializer;

    .line 204
    .line 205
    iget-object p2, p2, Lorg/wikimedia/testkitchen/context/PerformerData;->registrationDt:Lj$/time/Instant;

    .line 206
    .line 207
    const/16 v1, 0x9

    .line 208
    .line 209
    invoke-virtual {p1, p0, v1, v0, p2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    :cond_13
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 213
    .line 214
    .line 215
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
