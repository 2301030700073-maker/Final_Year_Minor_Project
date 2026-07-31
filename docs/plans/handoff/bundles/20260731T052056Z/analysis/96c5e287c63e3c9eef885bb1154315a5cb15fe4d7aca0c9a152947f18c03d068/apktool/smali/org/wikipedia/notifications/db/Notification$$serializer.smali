.class public final synthetic Lorg/wikipedia/notifications/db/Notification$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/notifications/db/Notification$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/notifications/db/Notification$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/notifications/db/Notification$$serializer;->INSTANCE:Lorg/wikipedia/notifications/db/Notification$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.notifications.db.Notification"

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
    const-string/jumbo v0, "wiki"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    const-string v0, "read"

    .line 30
    .line 31
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    const-string v0, "category"

    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    const-string/jumbo v0, "type"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    const-string v0, "revid"

    .line 46
    .line 47
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    const-string v0, "title"

    .line 51
    .line 52
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    const-string v0, "agent"

    .line 56
    .line 57
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    const-string v0, "timestamp"

    .line 61
    .line 62
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    const-string v0, "*"

    .line 66
    .line 67
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    sput-object v1, Lorg/wikipedia/notifications/db/Notification$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 8

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
    sget-object v1, Lorg/wikipedia/notifications/db/Notification$Title$$serializer;->INSTANCE:Lorg/wikipedia/notifications/db/Notification$Title$$serializer;

    .line 8
    .line 9
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lorg/wikipedia/notifications/db/Notification$Agent$$serializer;->INSTANCE:Lorg/wikipedia/notifications/db/Notification$Agent$$serializer;

    .line 14
    .line 15
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget-object v3, Lorg/wikipedia/notifications/db/Notification$Timestamp$$serializer;->INSTANCE:Lorg/wikipedia/notifications/db/Notification$Timestamp$$serializer;

    .line 20
    .line 21
    invoke-static {v3}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    sget-object v4, Lorg/wikipedia/notifications/db/Notification$Contents$$serializer;->INSTANCE:Lorg/wikipedia/notifications/db/Notification$Contents$$serializer;

    .line 26
    .line 27
    invoke-static {v4}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const/16 v5, 0xa

    .line 32
    .line 33
    new-array v5, v5, [Lkotlinx/serialization/KSerializer;

    .line 34
    .line 35
    sget-object v6, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    aput-object v6, v5, v7

    .line 39
    .line 40
    const/4 v7, 0x1

    .line 41
    aput-object p0, v5, v7

    .line 42
    .line 43
    const/4 v7, 0x2

    .line 44
    aput-object v0, v5, v7

    .line 45
    .line 46
    const/4 v0, 0x3

    .line 47
    aput-object p0, v5, v0

    .line 48
    .line 49
    const/4 v0, 0x4

    .line 50
    aput-object p0, v5, v0

    .line 51
    .line 52
    const/4 p0, 0x5

    .line 53
    aput-object v6, v5, p0

    .line 54
    .line 55
    const/4 p0, 0x6

    .line 56
    aput-object v1, v5, p0

    .line 57
    .line 58
    const/4 p0, 0x7

    .line 59
    aput-object v2, v5, p0

    .line 60
    .line 61
    const/16 p0, 0x8

    .line 62
    .line 63
    aput-object v3, v5, p0

    .line 64
    .line 65
    const/16 p0, 0x9

    .line 66
    .line 67
    aput-object v4, v5, p0

    .line 68
    .line 69
    return-object v5
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 19

    .line 1
    sget-object v0, Lorg/wikipedia/notifications/db/Notification$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x1

    .line 16
    const/4 v8, 0x0

    .line 17
    const-wide/16 v9, 0x0

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v12, 0x0

    .line 21
    const/4 v13, 0x0

    .line 22
    const/4 v14, 0x0

    .line 23
    const-wide/16 v15, 0x0

    .line 24
    .line 25
    :goto_0
    if-eqz v7, :cond_0

    .line 26
    .line 27
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 28
    .line 29
    .line 30
    move-result v17

    .line 31
    packed-switch v17, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    invoke-static/range {v17 .. v17}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_0
    sget-object v2, Lorg/wikipedia/notifications/db/Notification$Contents$$serializer;->INSTANCE:Lorg/wikipedia/notifications/db/Notification$Contents$$serializer;

    .line 39
    .line 40
    move/from16 v18, v7

    .line 41
    .line 42
    const/16 v7, 0x9

    .line 43
    .line 44
    invoke-interface {v1, v0, v7, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    move-object v3, v2

    .line 49
    check-cast v3, Lorg/wikipedia/notifications/db/Notification$Contents;

    .line 50
    .line 51
    or-int/lit16 v8, v8, 0x200

    .line 52
    .line 53
    :goto_1
    move/from16 v7, v18

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_1
    move/from16 v18, v7

    .line 57
    .line 58
    sget-object v2, Lorg/wikipedia/notifications/db/Notification$Timestamp$$serializer;->INSTANCE:Lorg/wikipedia/notifications/db/Notification$Timestamp$$serializer;

    .line 59
    .line 60
    const/16 v7, 0x8

    .line 61
    .line 62
    invoke-interface {v1, v0, v7, v2, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    move-object v5, v2

    .line 67
    check-cast v5, Lorg/wikipedia/notifications/db/Notification$Timestamp;

    .line 68
    .line 69
    or-int/lit16 v8, v8, 0x100

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    move/from16 v18, v7

    .line 73
    .line 74
    sget-object v2, Lorg/wikipedia/notifications/db/Notification$Agent$$serializer;->INSTANCE:Lorg/wikipedia/notifications/db/Notification$Agent$$serializer;

    .line 75
    .line 76
    const/4 v7, 0x7

    .line 77
    invoke-interface {v1, v0, v7, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    move-object v4, v2

    .line 82
    check-cast v4, Lorg/wikipedia/notifications/db/Notification$Agent;

    .line 83
    .line 84
    or-int/lit16 v8, v8, 0x80

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :pswitch_3
    move/from16 v18, v7

    .line 88
    .line 89
    sget-object v2, Lorg/wikipedia/notifications/db/Notification$Title$$serializer;->INSTANCE:Lorg/wikipedia/notifications/db/Notification$Title$$serializer;

    .line 90
    .line 91
    const/4 v7, 0x6

    .line 92
    invoke-interface {v1, v0, v7, v2, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    move-object v6, v2

    .line 97
    check-cast v6, Lorg/wikipedia/notifications/db/Notification$Title;

    .line 98
    .line 99
    or-int/lit8 v8, v8, 0x40

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :pswitch_4
    move/from16 v18, v7

    .line 103
    .line 104
    const/4 v2, 0x5

    .line 105
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 106
    .line 107
    .line 108
    move-result-wide v15

    .line 109
    or-int/lit8 v8, v8, 0x20

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :pswitch_5
    move/from16 v18, v7

    .line 113
    .line 114
    const/4 v2, 0x4

    .line 115
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v14

    .line 119
    or-int/lit8 v8, v8, 0x10

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :pswitch_6
    move/from16 v18, v7

    .line 123
    .line 124
    const/4 v2, 0x3

    .line 125
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v13

    .line 129
    or-int/lit8 v8, v8, 0x8

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :pswitch_7
    move/from16 v18, v7

    .line 133
    .line 134
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 135
    .line 136
    const/4 v7, 0x2

    .line 137
    invoke-interface {v1, v0, v7, v2, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    move-object v12, v2

    .line 142
    check-cast v12, Ljava/lang/String;

    .line 143
    .line 144
    or-int/lit8 v8, v8, 0x4

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :pswitch_8
    move/from16 v18, v7

    .line 148
    .line 149
    const/4 v2, 0x1

    .line 150
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    or-int/lit8 v8, v8, 0x2

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :pswitch_9
    move/from16 v18, v7

    .line 159
    .line 160
    const/4 v2, 0x1

    .line 161
    const/4 v7, 0x0

    .line 162
    invoke-interface {v1, v0, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 163
    .line 164
    .line 165
    move-result-wide v9

    .line 166
    or-int/lit8 v8, v8, 0x1

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :pswitch_a
    const/4 v2, 0x1

    .line 170
    const/4 v7, 0x0

    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 174
    .line 175
    .line 176
    new-instance v0, Lorg/wikipedia/notifications/db/Notification;

    .line 177
    .line 178
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 179
    .line 180
    .line 181
    and-int/lit8 v1, v8, 0x1

    .line 182
    .line 183
    if-nez v1, :cond_1

    .line 184
    .line 185
    const-wide/16 v1, 0x0

    .line 186
    .line 187
    iput-wide v1, v0, Lorg/wikipedia/notifications/db/Notification;->id:J

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_1
    iput-wide v9, v0, Lorg/wikipedia/notifications/db/Notification;->id:J

    .line 191
    .line 192
    :goto_2
    and-int/lit8 v1, v8, 0x2

    .line 193
    .line 194
    const-string v2, ""

    .line 195
    .line 196
    if-nez v1, :cond_2

    .line 197
    .line 198
    iput-object v2, v0, Lorg/wikipedia/notifications/db/Notification;->wiki:Ljava/lang/String;

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_2
    iput-object v11, v0, Lorg/wikipedia/notifications/db/Notification;->wiki:Ljava/lang/String;

    .line 202
    .line 203
    :goto_3
    and-int/lit8 v1, v8, 0x4

    .line 204
    .line 205
    if-nez v1, :cond_3

    .line 206
    .line 207
    move-object/from16 v1, p0

    .line 208
    .line 209
    iput-object v1, v0, Lorg/wikipedia/notifications/db/Notification;->read:Ljava/lang/String;

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_3
    iput-object v12, v0, Lorg/wikipedia/notifications/db/Notification;->read:Ljava/lang/String;

    .line 213
    .line 214
    :goto_4
    and-int/lit8 v1, v8, 0x8

    .line 215
    .line 216
    if-nez v1, :cond_4

    .line 217
    .line 218
    iput-object v2, v0, Lorg/wikipedia/notifications/db/Notification;->category:Ljava/lang/String;

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_4
    iput-object v13, v0, Lorg/wikipedia/notifications/db/Notification;->category:Ljava/lang/String;

    .line 222
    .line 223
    :goto_5
    and-int/lit8 v1, v8, 0x10

    .line 224
    .line 225
    if-nez v1, :cond_5

    .line 226
    .line 227
    iput-object v2, v0, Lorg/wikipedia/notifications/db/Notification;->type:Ljava/lang/String;

    .line 228
    .line 229
    goto :goto_6

    .line 230
    :cond_5
    iput-object v14, v0, Lorg/wikipedia/notifications/db/Notification;->type:Ljava/lang/String;

    .line 231
    .line 232
    :goto_6
    and-int/lit8 v1, v8, 0x20

    .line 233
    .line 234
    if-nez v1, :cond_6

    .line 235
    .line 236
    const-wide/16 v1, 0x0

    .line 237
    .line 238
    :goto_7
    iput-wide v1, v0, Lorg/wikipedia/notifications/db/Notification;->revid:J

    .line 239
    .line 240
    goto :goto_8

    .line 241
    :cond_6
    move-wide v1, v15

    .line 242
    goto :goto_7

    .line 243
    :goto_8
    and-int/lit8 v1, v8, 0x40

    .line 244
    .line 245
    if-nez v1, :cond_7

    .line 246
    .line 247
    const/4 v1, 0x0

    .line 248
    iput-object v1, v0, Lorg/wikipedia/notifications/db/Notification;->title:Lorg/wikipedia/notifications/db/Notification$Title;

    .line 249
    .line 250
    goto :goto_9

    .line 251
    :cond_7
    const/4 v1, 0x0

    .line 252
    iput-object v6, v0, Lorg/wikipedia/notifications/db/Notification;->title:Lorg/wikipedia/notifications/db/Notification$Title;

    .line 253
    .line 254
    :goto_9
    and-int/lit16 v2, v8, 0x80

    .line 255
    .line 256
    if-nez v2, :cond_8

    .line 257
    .line 258
    iput-object v1, v0, Lorg/wikipedia/notifications/db/Notification;->agent:Lorg/wikipedia/notifications/db/Notification$Agent;

    .line 259
    .line 260
    goto :goto_a

    .line 261
    :cond_8
    iput-object v4, v0, Lorg/wikipedia/notifications/db/Notification;->agent:Lorg/wikipedia/notifications/db/Notification$Agent;

    .line 262
    .line 263
    :goto_a
    and-int/lit16 v2, v8, 0x100

    .line 264
    .line 265
    if-nez v2, :cond_9

    .line 266
    .line 267
    iput-object v1, v0, Lorg/wikipedia/notifications/db/Notification;->timestamp:Lorg/wikipedia/notifications/db/Notification$Timestamp;

    .line 268
    .line 269
    goto :goto_b

    .line 270
    :cond_9
    iput-object v5, v0, Lorg/wikipedia/notifications/db/Notification;->timestamp:Lorg/wikipedia/notifications/db/Notification$Timestamp;

    .line 271
    .line 272
    :goto_b
    and-int/lit16 v2, v8, 0x200

    .line 273
    .line 274
    if-nez v2, :cond_a

    .line 275
    .line 276
    iput-object v1, v0, Lorg/wikipedia/notifications/db/Notification;->contents:Lorg/wikipedia/notifications/db/Notification$Contents;

    .line 277
    .line 278
    return-object v0

    .line 279
    :cond_a
    iput-object v3, v0, Lorg/wikipedia/notifications/db/Notification;->contents:Lorg/wikipedia/notifications/db/Notification$Contents;

    .line 280
    .line 281
    return-object v0

    .line 282
    nop

    .line 283
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
    sget-object p0, Lorg/wikipedia/notifications/db/Notification$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/notifications/db/Notification;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lorg/wikipedia/notifications/db/Notification;->contents:Lorg/wikipedia/notifications/db/Notification$Contents;

    .line 9
    .line 10
    iget-object v2, v0, Lorg/wikipedia/notifications/db/Notification;->timestamp:Lorg/wikipedia/notifications/db/Notification$Timestamp;

    .line 11
    .line 12
    iget-object v3, v0, Lorg/wikipedia/notifications/db/Notification;->agent:Lorg/wikipedia/notifications/db/Notification$Agent;

    .line 13
    .line 14
    iget-object v4, v0, Lorg/wikipedia/notifications/db/Notification;->title:Lorg/wikipedia/notifications/db/Notification$Title;

    .line 15
    .line 16
    iget-wide v5, v0, Lorg/wikipedia/notifications/db/Notification;->revid:J

    .line 17
    .line 18
    iget-object v7, v0, Lorg/wikipedia/notifications/db/Notification;->type:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v8, v0, Lorg/wikipedia/notifications/db/Notification;->category:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v9, v0, Lorg/wikipedia/notifications/db/Notification;->wiki:Ljava/lang/String;

    .line 23
    .line 24
    iget-wide v10, v0, Lorg/wikipedia/notifications/db/Notification;->id:J

    .line 25
    .line 26
    sget-object v12, Lorg/wikipedia/notifications/db/Notification$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 27
    .line 28
    move-object/from16 v13, p1

    .line 29
    .line 30
    invoke-virtual {v13, v12}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 31
    .line 32
    .line 33
    move-result-object v13

    .line 34
    invoke-virtual {v13, v12}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 35
    .line 36
    .line 37
    move-result v14

    .line 38
    const-wide/16 v15, 0x0

    .line 39
    .line 40
    if-eqz v14, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    cmp-long v14, v10, v15

    .line 44
    .line 45
    if-eqz v14, :cond_1

    .line 46
    .line 47
    :goto_0
    const/4 v14, 0x0

    .line 48
    invoke-virtual {v13, v12, v14, v10, v11}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {v13, v12}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    const-string v11, ""

    .line 56
    .line 57
    if-eqz v10, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    if-nez v10, :cond_3

    .line 65
    .line 66
    :goto_1
    const/4 v10, 0x1

    .line 67
    invoke-virtual {v13, v12, v10, v9}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-virtual {v13, v12}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    if-eqz v9, :cond_4

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    iget-object v9, v0, Lorg/wikipedia/notifications/db/Notification;->read:Ljava/lang/String;

    .line 78
    .line 79
    if-eqz v9, :cond_5

    .line 80
    .line 81
    :goto_2
    sget-object v9, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 82
    .line 83
    iget-object v0, v0, Lorg/wikipedia/notifications/db/Notification;->read:Ljava/lang/String;

    .line 84
    .line 85
    const/4 v10, 0x2

    .line 86
    invoke-virtual {v13, v12, v10, v9, v0}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    invoke-virtual {v13, v12}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_6
    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_7

    .line 101
    .line 102
    :goto_3
    const/4 v0, 0x3

    .line 103
    invoke-virtual {v13, v12, v0, v8}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_7
    invoke-virtual {v13, v12}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_8

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_8
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_9

    .line 118
    .line 119
    :goto_4
    const/4 v0, 0x4

    .line 120
    invoke-virtual {v13, v12, v0, v7}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_9
    invoke-virtual {v13, v12}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_a

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_a
    cmp-long v0, v5, v15

    .line 131
    .line 132
    if-eqz v0, :cond_b

    .line 133
    .line 134
    :goto_5
    const/4 v0, 0x5

    .line 135
    invoke-virtual {v13, v12, v0, v5, v6}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 136
    .line 137
    .line 138
    :cond_b
    invoke-virtual {v13, v12}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_c

    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_c
    if-eqz v4, :cond_d

    .line 146
    .line 147
    :goto_6
    sget-object v0, Lorg/wikipedia/notifications/db/Notification$Title$$serializer;->INSTANCE:Lorg/wikipedia/notifications/db/Notification$Title$$serializer;

    .line 148
    .line 149
    const/4 v5, 0x6

    .line 150
    invoke-virtual {v13, v12, v5, v0, v4}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_d
    invoke-virtual {v13, v12}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

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
    if-eqz v3, :cond_f

    .line 161
    .line 162
    :goto_7
    sget-object v0, Lorg/wikipedia/notifications/db/Notification$Agent$$serializer;->INSTANCE:Lorg/wikipedia/notifications/db/Notification$Agent$$serializer;

    .line 163
    .line 164
    const/4 v4, 0x7

    .line 165
    invoke-virtual {v13, v12, v4, v0, v3}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    :cond_f
    invoke-virtual {v13, v12}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_10

    .line 173
    .line 174
    goto :goto_8

    .line 175
    :cond_10
    if-eqz v2, :cond_11

    .line 176
    .line 177
    :goto_8
    sget-object v0, Lorg/wikipedia/notifications/db/Notification$Timestamp$$serializer;->INSTANCE:Lorg/wikipedia/notifications/db/Notification$Timestamp$$serializer;

    .line 178
    .line 179
    const/16 v3, 0x8

    .line 180
    .line 181
    invoke-virtual {v13, v12, v3, v0, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_11
    invoke-virtual {v13, v12}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

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
    if-eqz v1, :cond_13

    .line 192
    .line 193
    :goto_9
    sget-object v0, Lorg/wikipedia/notifications/db/Notification$Contents$$serializer;->INSTANCE:Lorg/wikipedia/notifications/db/Notification$Contents$$serializer;

    .line 194
    .line 195
    const/16 v2, 0x9

    .line 196
    .line 197
    invoke-virtual {v13, v12, v2, v0, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :cond_13
    invoke-virtual {v13, v12}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 201
    .line 202
    .line 203
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
