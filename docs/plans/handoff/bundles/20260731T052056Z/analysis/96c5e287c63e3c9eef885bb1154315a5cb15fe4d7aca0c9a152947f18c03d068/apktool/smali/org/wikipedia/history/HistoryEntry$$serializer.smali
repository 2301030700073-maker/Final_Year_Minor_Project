.class public final synthetic Lorg/wikipedia/history/HistoryEntry$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/history/HistoryEntry$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/history/HistoryEntry$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/history/HistoryEntry$$serializer;->INSTANCE:Lorg/wikipedia/history/HistoryEntry$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.history.HistoryEntry"

    .line 11
    .line 12
    const/16 v3, 0x9

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "authority"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v0, "lang"

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string v0, "apiTitle"

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-string v0, "displayTitle"

    .line 34
    .line 35
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const-string v0, "id"

    .line 39
    .line 40
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    const-string v0, "namespace"

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    const-string v0, "timestamp"

    .line 49
    .line 50
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    const-string v0, "source"

    .line 54
    .line 55
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    const-string v0, "prevId"

    .line 59
    .line 60
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    sput-object v1, Lorg/wikipedia/history/HistoryEntry$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 3

    .line 1
    const/16 p0, 0x9

    .line 2
    .line 3
    new-array p0, p0, [Lkotlinx/serialization/KSerializer;

    .line 4
    .line 5
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    aput-object v0, p0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    aput-object v0, p0, v1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    aput-object v0, p0, v1

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    aput-object v0, p0, v1

    .line 18
    .line 19
    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    aput-object v1, p0, v2

    .line 23
    .line 24
    const/4 v2, 0x5

    .line 25
    aput-object v0, p0, v2

    .line 26
    .line 27
    sget-object v0, Lorg/wikipedia/json/DateSerializer;->INSTANCE:Lorg/wikipedia/json/DateSerializer;

    .line 28
    .line 29
    const/4 v2, 0x6

    .line 30
    aput-object v0, p0, v2

    .line 31
    .line 32
    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 33
    .line 34
    const/4 v2, 0x7

    .line 35
    aput-object v0, p0, v2

    .line 36
    .line 37
    const/16 v0, 0x8

    .line 38
    .line 39
    aput-object v1, p0, v0

    .line 40
    .line 41
    return-object p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 19

    .line 1
    sget-object v0, Lorg/wikipedia/history/HistoryEntry$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    move v7, v2

    .line 12
    move v8, v3

    .line 13
    move/from16 v16, v8

    .line 14
    .line 15
    const/16 p0, 0x0

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v10, 0x0

    .line 20
    const/4 v11, 0x0

    .line 21
    const/4 v12, 0x0

    .line 22
    const-wide/16 v13, 0x0

    .line 23
    .line 24
    const/4 v15, 0x0

    .line 25
    const-wide/16 v17, 0x0

    .line 26
    .line 27
    :goto_0
    const/4 v5, 0x2

    .line 28
    if-eqz v7, :cond_0

    .line 29
    .line 30
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    packed-switch v6, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_0
    const/16 v5, 0x8

    .line 42
    .line 43
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 44
    .line 45
    .line 46
    move-result-wide v17

    .line 47
    or-int/lit16 v8, v8, 0x100

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_1
    const/4 v5, 0x7

    .line 51
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 52
    .line 53
    .line 54
    move-result v16

    .line 55
    or-int/lit16 v8, v8, 0x80

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_2
    sget-object v5, Lorg/wikipedia/json/DateSerializer;->INSTANCE:Lorg/wikipedia/json/DateSerializer;

    .line 59
    .line 60
    const/4 v6, 0x6

    .line 61
    invoke-interface {v1, v0, v6, v5, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Ljava/util/Date;

    .line 66
    .line 67
    or-int/lit8 v8, v8, 0x40

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_3
    const/4 v5, 0x5

    .line 71
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v15

    .line 75
    or-int/lit8 v8, v8, 0x20

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :pswitch_4
    const/4 v5, 0x4

    .line 79
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 80
    .line 81
    .line 82
    move-result-wide v13

    .line 83
    or-int/lit8 v8, v8, 0x10

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :pswitch_5
    const/4 v5, 0x3

    .line 87
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    or-int/lit8 v8, v8, 0x8

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :pswitch_6
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    or-int/lit8 v8, v8, 0x4

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :pswitch_7
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    or-int/lit8 v8, v8, 0x2

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :pswitch_8
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    or-int/lit8 v8, v8, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :pswitch_9
    move v7, v3

    .line 116
    goto :goto_0

    .line 117
    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 118
    .line 119
    .line 120
    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    .line 121
    .line 122
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 123
    .line 124
    .line 125
    and-int/lit8 v1, v8, 0x1

    .line 126
    .line 127
    const-string v2, ""

    .line 128
    .line 129
    if-nez v1, :cond_1

    .line 130
    .line 131
    iput-object v2, v0, Lorg/wikipedia/history/HistoryEntry;->authority:Ljava/lang/String;

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_1
    iput-object v9, v0, Lorg/wikipedia/history/HistoryEntry;->authority:Ljava/lang/String;

    .line 135
    .line 136
    :goto_1
    and-int/lit8 v1, v8, 0x2

    .line 137
    .line 138
    if-nez v1, :cond_2

    .line 139
    .line 140
    iput-object v2, v0, Lorg/wikipedia/history/HistoryEntry;->lang:Ljava/lang/String;

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_2
    iput-object v10, v0, Lorg/wikipedia/history/HistoryEntry;->lang:Ljava/lang/String;

    .line 144
    .line 145
    :goto_2
    and-int/lit8 v1, v8, 0x4

    .line 146
    .line 147
    if-nez v1, :cond_3

    .line 148
    .line 149
    iput-object v2, v0, Lorg/wikipedia/history/HistoryEntry;->apiTitle:Ljava/lang/String;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_3
    iput-object v11, v0, Lorg/wikipedia/history/HistoryEntry;->apiTitle:Ljava/lang/String;

    .line 153
    .line 154
    :goto_3
    and-int/lit8 v1, v8, 0x8

    .line 155
    .line 156
    if-nez v1, :cond_4

    .line 157
    .line 158
    iput-object v2, v0, Lorg/wikipedia/history/HistoryEntry;->displayTitle:Ljava/lang/String;

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_4
    iput-object v12, v0, Lorg/wikipedia/history/HistoryEntry;->displayTitle:Ljava/lang/String;

    .line 162
    .line 163
    :goto_4
    and-int/lit8 v1, v8, 0x10

    .line 164
    .line 165
    if-nez v1, :cond_5

    .line 166
    .line 167
    const-wide/16 v6, 0x0

    .line 168
    .line 169
    iput-wide v6, v0, Lorg/wikipedia/history/HistoryEntry;->id:J

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_5
    iput-wide v13, v0, Lorg/wikipedia/history/HistoryEntry;->id:J

    .line 173
    .line 174
    :goto_5
    and-int/lit8 v1, v8, 0x20

    .line 175
    .line 176
    if-nez v1, :cond_6

    .line 177
    .line 178
    iput-object v2, v0, Lorg/wikipedia/history/HistoryEntry;->namespace:Ljava/lang/String;

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_6
    iput-object v15, v0, Lorg/wikipedia/history/HistoryEntry;->namespace:Ljava/lang/String;

    .line 182
    .line 183
    :goto_6
    and-int/lit8 v1, v8, 0x40

    .line 184
    .line 185
    if-nez v1, :cond_7

    .line 186
    .line 187
    new-instance v1, Ljava/util/Date;

    .line 188
    .line 189
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 190
    .line 191
    .line 192
    iput-object v1, v0, Lorg/wikipedia/history/HistoryEntry;->timestamp:Ljava/util/Date;

    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_7
    iput-object v4, v0, Lorg/wikipedia/history/HistoryEntry;->timestamp:Ljava/util/Date;

    .line 196
    .line 197
    :goto_7
    and-int/lit16 v1, v8, 0x80

    .line 198
    .line 199
    if-nez v1, :cond_8

    .line 200
    .line 201
    iput v5, v0, Lorg/wikipedia/history/HistoryEntry;->source:I

    .line 202
    .line 203
    goto :goto_8

    .line 204
    :cond_8
    move/from16 v3, v16

    .line 205
    .line 206
    iput v3, v0, Lorg/wikipedia/history/HistoryEntry;->source:I

    .line 207
    .line 208
    :goto_8
    and-int/lit16 v1, v8, 0x100

    .line 209
    .line 210
    if-nez v1, :cond_9

    .line 211
    .line 212
    const-wide/16 v1, -0x1

    .line 213
    .line 214
    iput-wide v1, v0, Lorg/wikipedia/history/HistoryEntry;->prevId:J

    .line 215
    .line 216
    :goto_9
    move-object/from16 v1, p0

    .line 217
    .line 218
    goto :goto_a

    .line 219
    :cond_9
    move-wide/from16 v5, v17

    .line 220
    .line 221
    iput-wide v5, v0, Lorg/wikipedia/history/HistoryEntry;->prevId:J

    .line 222
    .line 223
    goto :goto_9

    .line 224
    :goto_a
    iput-object v1, v0, Lorg/wikipedia/history/HistoryEntry;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 225
    .line 226
    iput-object v1, v0, Lorg/wikipedia/history/HistoryEntry;->referrer:Ljava/lang/String;

    .line 227
    .line 228
    return-object v0

    .line 229
    :pswitch_data_0
    .packed-switch -0x1
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
    sget-object p0, Lorg/wikipedia/history/HistoryEntry$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p2, Lorg/wikipedia/history/HistoryEntry;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget p0, p2, Lorg/wikipedia/history/HistoryEntry;->source:I

    .line 7
    .line 8
    iget-object v0, p2, Lorg/wikipedia/history/HistoryEntry;->timestamp:Ljava/util/Date;

    .line 9
    .line 10
    iget-object v1, p2, Lorg/wikipedia/history/HistoryEntry;->namespace:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p2, Lorg/wikipedia/history/HistoryEntry;->apiTitle:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v3, p2, Lorg/wikipedia/history/HistoryEntry;->lang:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v4, p2, Lorg/wikipedia/history/HistoryEntry;->authority:Ljava/lang/String;

    .line 17
    .line 18
    sget-object v5, Lorg/wikipedia/history/HistoryEntry$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 19
    .line 20
    invoke-virtual {p1, v5}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, v5}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    const-string v7, ""

    .line 29
    .line 30
    if-eqz v6, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-nez v6, :cond_1

    .line 38
    .line 39
    :goto_0
    const/4 v6, 0x0

    .line 40
    invoke-virtual {p1, v5, v6, v4}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p1, v5}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_3

    .line 55
    .line 56
    :goto_1
    const/4 v4, 0x1

    .line 57
    invoke-virtual {p1, v5, v4, v3}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {p1, v5}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/4 v4, 0x2

    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_5

    .line 73
    .line 74
    :goto_2
    invoke-virtual {p1, v5, v4, v2}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_5
    invoke-virtual {p1, v5}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_6

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_6
    iget-object v2, p2, Lorg/wikipedia/history/HistoryEntry;->displayTitle:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_7

    .line 91
    .line 92
    :goto_3
    iget-object v2, p2, Lorg/wikipedia/history/HistoryEntry;->displayTitle:Ljava/lang/String;

    .line 93
    .line 94
    const/4 v3, 0x3

    .line 95
    invoke-virtual {p1, v5, v3, v2}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_7
    invoke-virtual {p1, v5}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_8

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_8
    iget-wide v2, p2, Lorg/wikipedia/history/HistoryEntry;->id:J

    .line 106
    .line 107
    const-wide/16 v8, 0x0

    .line 108
    .line 109
    cmp-long v2, v2, v8

    .line 110
    .line 111
    if-eqz v2, :cond_9

    .line 112
    .line 113
    :goto_4
    iget-wide v2, p2, Lorg/wikipedia/history/HistoryEntry;->id:J

    .line 114
    .line 115
    const/4 v6, 0x4

    .line 116
    invoke-virtual {p1, v5, v6, v2, v3}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 117
    .line 118
    .line 119
    :cond_9
    invoke-virtual {p1, v5}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_a

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_a
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_b

    .line 131
    .line 132
    :goto_5
    const/4 v2, 0x5

    .line 133
    invoke-virtual {p1, v5, v2, v1}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_b
    invoke-virtual {p1, v5}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_c

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_c
    new-instance v1, Ljava/util/Date;

    .line 144
    .line 145
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_d

    .line 153
    .line 154
    :goto_6
    sget-object v1, Lorg/wikipedia/json/DateSerializer;->INSTANCE:Lorg/wikipedia/json/DateSerializer;

    .line 155
    .line 156
    const/4 v2, 0x6

    .line 157
    invoke-virtual {p1, v5, v2, v1, v0}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_d
    invoke-virtual {p1, v5}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_e

    .line 165
    .line 166
    goto :goto_7

    .line 167
    :cond_e
    if-eq p0, v4, :cond_f

    .line 168
    .line 169
    :goto_7
    const/4 v0, 0x7

    .line 170
    invoke-virtual {p1, v0, p0, v5}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 171
    .line 172
    .line 173
    :cond_f
    invoke-virtual {p1, v5}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    if-eqz p0, :cond_10

    .line 178
    .line 179
    goto :goto_8

    .line 180
    :cond_10
    iget-wide v0, p2, Lorg/wikipedia/history/HistoryEntry;->prevId:J

    .line 181
    .line 182
    const-wide/16 v2, -0x1

    .line 183
    .line 184
    cmp-long p0, v0, v2

    .line 185
    .line 186
    if-eqz p0, :cond_11

    .line 187
    .line 188
    :goto_8
    iget-wide v0, p2, Lorg/wikipedia/history/HistoryEntry;->prevId:J

    .line 189
    .line 190
    const/16 p0, 0x8

    .line 191
    .line 192
    invoke-virtual {p1, v5, p0, v0, v1}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 193
    .line 194
    .line 195
    :cond_11
    invoke-virtual {p1, v5}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 196
    .line 197
    .line 198
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
