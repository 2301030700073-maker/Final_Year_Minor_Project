.class public final synthetic Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.dataclient.mwapi.MwQueryResult.RecentChange"

    .line 11
    .line 12
    const/16 v3, 0x12

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "type"

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const-string v0, "ns"

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    const-string v0, "title"

    .line 30
    .line 31
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    const-string v0, "pageid"

    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    const-string v0, "revid"

    .line 40
    .line 41
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    const-string v0, "old_revid"

    .line 45
    .line 46
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const-string v0, "rcid"

    .line 50
    .line 51
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    const-string/jumbo v0, "user"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    const-string v0, "anon"

    .line 61
    .line 62
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    const-string v0, "bot"

    .line 66
    .line 67
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    const-string v0, "new"

    .line 71
    .line 72
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 73
    .line 74
    .line 75
    const-string v0, "minor"

    .line 76
    .line 77
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    const-string v0, "oldlen"

    .line 81
    .line 82
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 83
    .line 84
    .line 85
    const-string v0, "newlen"

    .line 86
    .line 87
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 88
    .line 89
    .line 90
    const-string v0, "timestamp"

    .line 91
    .line 92
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    const-string v0, "parsedcomment"

    .line 96
    .line 97
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    const-string v0, "tags"

    .line 101
    .line 102
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 103
    .line 104
    .line 105
    const-string v0, "oresscores"

    .line 106
    .line 107
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    sput-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 111
    .line 112
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 7

    .line 1
    sget-object p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->$childSerializers:[Lkotlin/Lazy;

    .line 2
    .line 3
    const/16 v0, 0x10

    .line 4
    .line 5
    aget-object p0, p0, v0

    .line 6
    .line 7
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lkotlinx/serialization/KSerializer;

    .line 12
    .line 13
    invoke-static {p0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object v1, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/16 v2, 0x12

    .line 24
    .line 25
    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    .line 26
    .line 27
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    aput-object v3, v2, v4

    .line 31
    .line 32
    sget-object v4, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    aput-object v4, v2, v5

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    aput-object v3, v2, v5

    .line 39
    .line 40
    const/4 v5, 0x3

    .line 41
    aput-object v4, v2, v5

    .line 42
    .line 43
    sget-object v5, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    aput-object v5, v2, v6

    .line 47
    .line 48
    const/4 v6, 0x5

    .line 49
    aput-object v5, v2, v6

    .line 50
    .line 51
    const/4 v6, 0x6

    .line 52
    aput-object v5, v2, v6

    .line 53
    .line 54
    const/4 v5, 0x7

    .line 55
    aput-object v3, v2, v5

    .line 56
    .line 57
    sget-object v5, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 58
    .line 59
    const/16 v6, 0x8

    .line 60
    .line 61
    aput-object v5, v2, v6

    .line 62
    .line 63
    const/16 v6, 0x9

    .line 64
    .line 65
    aput-object v5, v2, v6

    .line 66
    .line 67
    const/16 v6, 0xa

    .line 68
    .line 69
    aput-object v5, v2, v6

    .line 70
    .line 71
    const/16 v6, 0xb

    .line 72
    .line 73
    aput-object v5, v2, v6

    .line 74
    .line 75
    const/16 v5, 0xc

    .line 76
    .line 77
    aput-object v4, v2, v5

    .line 78
    .line 79
    const/16 v5, 0xd

    .line 80
    .line 81
    aput-object v4, v2, v5

    .line 82
    .line 83
    const/16 v4, 0xe

    .line 84
    .line 85
    aput-object v3, v2, v4

    .line 86
    .line 87
    const/16 v4, 0xf

    .line 88
    .line 89
    aput-object v3, v2, v4

    .line 90
    .line 91
    aput-object p0, v2, v0

    .line 92
    .line 93
    const/16 p0, 0x11

    .line 94
    .line 95
    aput-object v1, v2, p0

    .line 96
    .line 97
    return-object v2
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 31

    .line 1
    sget-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    sget-object v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->$childSerializers:[Lkotlin/Lazy;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    const-wide/16 v6, 0x0

    .line 14
    .line 15
    move-object v8, v5

    .line 16
    move-object v10, v8

    .line 17
    move-object v12, v10

    .line 18
    move-object/from16 v20, v12

    .line 19
    .line 20
    move-object/from16 v27, v20

    .line 21
    .line 22
    move-object/from16 v28, v27

    .line 23
    .line 24
    move-wide v14, v6

    .line 25
    move-wide/from16 v16, v14

    .line 26
    .line 27
    move-wide/from16 v18, v16

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v11, 0x0

    .line 31
    const/4 v13, 0x0

    .line 32
    const/16 v21, 0x0

    .line 33
    .line 34
    const/16 v22, 0x0

    .line 35
    .line 36
    const/16 v23, 0x0

    .line 37
    .line 38
    const/16 v24, 0x0

    .line 39
    .line 40
    const/16 v25, 0x0

    .line 41
    .line 42
    const/16 v26, 0x0

    .line 43
    .line 44
    move v6, v3

    .line 45
    move-object/from16 v7, v28

    .line 46
    .line 47
    :goto_0
    if-eqz v6, :cond_0

    .line 48
    .line 49
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 50
    .line 51
    .line 52
    move-result v29

    .line 53
    packed-switch v29, :pswitch_data_0

    .line 54
    .line 55
    .line 56
    invoke-static/range {v29 .. v29}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 57
    .line 58
    .line 59
    return-object v5

    .line 60
    :pswitch_0
    sget-object v5, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 61
    .line 62
    const/16 v4, 0x11

    .line 63
    .line 64
    invoke-interface {v1, v0, v4, v5, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    move-object v8, v4

    .line 69
    check-cast v8, Lkotlinx/serialization/json/JsonElement;

    .line 70
    .line 71
    const/high16 v4, 0x20000

    .line 72
    .line 73
    :goto_1
    or-int/2addr v9, v4

    .line 74
    :goto_2
    const/4 v5, 0x0

    .line 75
    goto :goto_0

    .line 76
    :pswitch_1
    const/16 v4, 0x10

    .line 77
    .line 78
    aget-object v5, v2, v4

    .line 79
    .line 80
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 85
    .line 86
    invoke-interface {v1, v0, v4, v5, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    move-object v7, v4

    .line 91
    check-cast v7, Ljava/util/List;

    .line 92
    .line 93
    const/high16 v4, 0x10000

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :pswitch_2
    const/16 v4, 0xf

    .line 97
    .line 98
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v28

    .line 102
    const v4, 0x8000

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :pswitch_3
    const/16 v4, 0xe

    .line 107
    .line 108
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v27

    .line 112
    or-int/lit16 v9, v9, 0x4000

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :pswitch_4
    const/16 v4, 0xd

    .line 116
    .line 117
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 118
    .line 119
    .line 120
    move-result v26

    .line 121
    or-int/lit16 v9, v9, 0x2000

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :pswitch_5
    const/16 v4, 0xc

    .line 125
    .line 126
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 127
    .line 128
    .line 129
    move-result v25

    .line 130
    or-int/lit16 v9, v9, 0x1000

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :pswitch_6
    const/16 v4, 0xb

    .line 134
    .line 135
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 136
    .line 137
    .line 138
    move-result v24

    .line 139
    or-int/lit16 v9, v9, 0x800

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :pswitch_7
    const/16 v4, 0xa

    .line 143
    .line 144
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 145
    .line 146
    .line 147
    move-result v23

    .line 148
    or-int/lit16 v9, v9, 0x400

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :pswitch_8
    const/16 v4, 0x9

    .line 152
    .line 153
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 154
    .line 155
    .line 156
    move-result v22

    .line 157
    or-int/lit16 v9, v9, 0x200

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :pswitch_9
    const/16 v4, 0x8

    .line 161
    .line 162
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 163
    .line 164
    .line 165
    move-result v21

    .line 166
    or-int/lit16 v9, v9, 0x100

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :pswitch_a
    const/4 v4, 0x7

    .line 170
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v20

    .line 174
    or-int/lit16 v9, v9, 0x80

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :pswitch_b
    const/4 v4, 0x6

    .line 178
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 179
    .line 180
    .line 181
    move-result-wide v18

    .line 182
    or-int/lit8 v9, v9, 0x40

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :pswitch_c
    const/4 v4, 0x5

    .line 186
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 187
    .line 188
    .line 189
    move-result-wide v16

    .line 190
    or-int/lit8 v9, v9, 0x20

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :pswitch_d
    const/4 v4, 0x4

    .line 194
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 195
    .line 196
    .line 197
    move-result-wide v14

    .line 198
    or-int/lit8 v9, v9, 0x10

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :pswitch_e
    const/4 v4, 0x3

    .line 202
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 203
    .line 204
    .line 205
    move-result v13

    .line 206
    or-int/lit8 v9, v9, 0x8

    .line 207
    .line 208
    goto/16 :goto_2

    .line 209
    .line 210
    :pswitch_f
    const/4 v4, 0x2

    .line 211
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v12

    .line 215
    or-int/lit8 v9, v9, 0x4

    .line 216
    .line 217
    goto/16 :goto_2

    .line 218
    .line 219
    :pswitch_10
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 220
    .line 221
    .line 222
    move-result v11

    .line 223
    or-int/lit8 v9, v9, 0x2

    .line 224
    .line 225
    goto/16 :goto_2

    .line 226
    .line 227
    :pswitch_11
    const/4 v4, 0x0

    .line 228
    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    or-int/lit8 v9, v9, 0x1

    .line 233
    .line 234
    goto/16 :goto_2

    .line 235
    .line 236
    :pswitch_12
    const/4 v4, 0x0

    .line 237
    move v6, v4

    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 241
    .line 242
    .line 243
    move-object/from16 v30, v8

    .line 244
    .line 245
    new-instance v8, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 246
    .line 247
    move-object/from16 v29, v7

    .line 248
    .line 249
    invoke-direct/range {v8 .. v30}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;-><init>(ILjava/lang/String;ILjava/lang/String;IJJJLjava/lang/String;ZZZZIILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/json/JsonElement;)V

    .line 250
    .line 251
    .line 252
    return-object v8

    .line 253
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    .line 1
    sget-object p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 24

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->oresscores:Lkotlinx/serialization/json/JsonElement;

    .line 9
    .line 10
    iget-object v2, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->tags:Ljava/util/List;

    .line 11
    .line 12
    iget-object v3, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->parsedComment:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v4, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->timestamp:Ljava/lang/String;

    .line 15
    .line 16
    iget v5, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->newlen:I

    .line 17
    .line 18
    iget v6, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->oldlen:I

    .line 19
    .line 20
    iget-boolean v7, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->minor:Z

    .line 21
    .line 22
    iget-boolean v8, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->isNew:Z

    .line 23
    .line 24
    iget-boolean v9, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->bot:Z

    .line 25
    .line 26
    iget-boolean v10, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->anon:Z

    .line 27
    .line 28
    iget-object v11, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->user:Ljava/lang/String;

    .line 29
    .line 30
    iget-wide v12, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->rcid:J

    .line 31
    .line 32
    iget-wide v14, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->revFrom:J

    .line 33
    .line 34
    move-object/from16 p0, v1

    .line 35
    .line 36
    move-object/from16 p2, v2

    .line 37
    .line 38
    iget-wide v1, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->curRev:J

    .line 39
    .line 40
    move-object/from16 v16, v3

    .line 41
    .line 42
    iget v3, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->pageid:I

    .line 43
    .line 44
    move-object/from16 v17, v4

    .line 45
    .line 46
    iget-object v4, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->title:Ljava/lang/String;

    .line 47
    .line 48
    move/from16 v18, v5

    .line 49
    .line 50
    iget v5, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->ns:I

    .line 51
    .line 52
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->type:Ljava/lang/String;

    .line 53
    .line 54
    move/from16 v19, v6

    .line 55
    .line 56
    sget-object v6, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 57
    .line 58
    move/from16 v20, v7

    .line 59
    .line 60
    move-object/from16 v7, p1

    .line 61
    .line 62
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    sget-object v21, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->$childSerializers:[Lkotlin/Lazy;

    .line 67
    .line 68
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 69
    .line 70
    .line 71
    move-result v22

    .line 72
    move/from16 v23, v8

    .line 73
    .line 74
    const-string v8, ""

    .line 75
    .line 76
    if-eqz v22, :cond_0

    .line 77
    .line 78
    :goto_0
    move/from16 v22, v9

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_0
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v22

    .line 85
    if-nez v22, :cond_1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :goto_1
    const/4 v9, 0x0

    .line 89
    invoke-virtual {v7, v6, v9, v0}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_1
    move/from16 v22, v9

    .line 94
    .line 95
    :goto_2
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_2
    if-eqz v5, :cond_3

    .line 103
    .line 104
    :goto_3
    const/4 v0, 0x1

    .line 105
    invoke-virtual {v7, v0, v5, v6}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_4
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_5

    .line 120
    .line 121
    :goto_4
    const/4 v0, 0x2

    .line 122
    invoke-virtual {v7, v6, v0, v4}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_5
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_6

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_6
    if-eqz v3, :cond_7

    .line 133
    .line 134
    :goto_5
    const/4 v0, 0x3

    .line 135
    invoke-virtual {v7, v0, v3, v6}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 136
    .line 137
    .line 138
    :cond_7
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    const-wide/16 v3, 0x0

    .line 143
    .line 144
    if-eqz v0, :cond_8

    .line 145
    .line 146
    goto :goto_6

    .line 147
    :cond_8
    cmp-long v0, v1, v3

    .line 148
    .line 149
    if-eqz v0, :cond_9

    .line 150
    .line 151
    :goto_6
    const/4 v0, 0x4

    .line 152
    invoke-virtual {v7, v6, v0, v1, v2}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 153
    .line 154
    .line 155
    :cond_9
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_a

    .line 160
    .line 161
    goto :goto_7

    .line 162
    :cond_a
    cmp-long v0, v14, v3

    .line 163
    .line 164
    if-eqz v0, :cond_b

    .line 165
    .line 166
    :goto_7
    const/4 v0, 0x5

    .line 167
    invoke-virtual {v7, v6, v0, v14, v15}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 168
    .line 169
    .line 170
    :cond_b
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_c

    .line 175
    .line 176
    goto :goto_8

    .line 177
    :cond_c
    cmp-long v0, v12, v3

    .line 178
    .line 179
    if-eqz v0, :cond_d

    .line 180
    .line 181
    :goto_8
    const/4 v0, 0x6

    .line 182
    invoke-virtual {v7, v6, v0, v12, v13}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 183
    .line 184
    .line 185
    :cond_d
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_e

    .line 190
    .line 191
    goto :goto_9

    .line 192
    :cond_e
    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_f

    .line 197
    .line 198
    :goto_9
    const/4 v0, 0x7

    .line 199
    invoke-virtual {v7, v6, v0, v11}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :cond_f
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_10

    .line 207
    .line 208
    goto :goto_a

    .line 209
    :cond_10
    if-eqz v10, :cond_11

    .line 210
    .line 211
    :goto_a
    const/16 v0, 0x8

    .line 212
    .line 213
    invoke-virtual {v7, v6, v0, v10}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 214
    .line 215
    .line 216
    :cond_11
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_12

    .line 221
    .line 222
    goto :goto_b

    .line 223
    :cond_12
    if-eqz v22, :cond_13

    .line 224
    .line 225
    :goto_b
    const/16 v0, 0x9

    .line 226
    .line 227
    move/from16 v1, v22

    .line 228
    .line 229
    invoke-virtual {v7, v6, v0, v1}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 230
    .line 231
    .line 232
    :cond_13
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_14

    .line 237
    .line 238
    goto :goto_c

    .line 239
    :cond_14
    if-eqz v23, :cond_15

    .line 240
    .line 241
    :goto_c
    const/16 v0, 0xa

    .line 242
    .line 243
    move/from16 v1, v23

    .line 244
    .line 245
    invoke-virtual {v7, v6, v0, v1}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 246
    .line 247
    .line 248
    :cond_15
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_16

    .line 253
    .line 254
    goto :goto_d

    .line 255
    :cond_16
    if-eqz v20, :cond_17

    .line 256
    .line 257
    :goto_d
    const/16 v0, 0xb

    .line 258
    .line 259
    move/from16 v1, v20

    .line 260
    .line 261
    invoke-virtual {v7, v6, v0, v1}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 262
    .line 263
    .line 264
    :cond_17
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_18

    .line 269
    .line 270
    goto :goto_e

    .line 271
    :cond_18
    if-eqz v19, :cond_19

    .line 272
    .line 273
    :goto_e
    const/16 v0, 0xc

    .line 274
    .line 275
    move/from16 v1, v19

    .line 276
    .line 277
    invoke-virtual {v7, v0, v1, v6}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 278
    .line 279
    .line 280
    :cond_19
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-eqz v0, :cond_1a

    .line 285
    .line 286
    goto :goto_f

    .line 287
    :cond_1a
    if-eqz v18, :cond_1b

    .line 288
    .line 289
    :goto_f
    const/16 v0, 0xd

    .line 290
    .line 291
    move/from16 v1, v18

    .line 292
    .line 293
    invoke-virtual {v7, v0, v1, v6}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 294
    .line 295
    .line 296
    :cond_1b
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-eqz v0, :cond_1c

    .line 301
    .line 302
    move-object/from16 v0, v17

    .line 303
    .line 304
    goto :goto_10

    .line 305
    :cond_1c
    move-object/from16 v0, v17

    .line 306
    .line 307
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-nez v1, :cond_1d

    .line 312
    .line 313
    :goto_10
    const/16 v1, 0xe

    .line 314
    .line 315
    invoke-virtual {v7, v6, v1, v0}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 316
    .line 317
    .line 318
    :cond_1d
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-eqz v0, :cond_1e

    .line 323
    .line 324
    move-object/from16 v0, v16

    .line 325
    .line 326
    goto :goto_11

    .line 327
    :cond_1e
    move-object/from16 v0, v16

    .line 328
    .line 329
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-nez v1, :cond_1f

    .line 334
    .line 335
    :goto_11
    const/16 v1, 0xf

    .line 336
    .line 337
    invoke-virtual {v7, v6, v1, v0}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 338
    .line 339
    .line 340
    :cond_1f
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-eqz v0, :cond_20

    .line 345
    .line 346
    goto :goto_12

    .line 347
    :cond_20
    if-eqz p2, :cond_21

    .line 348
    .line 349
    :goto_12
    const/16 v0, 0x10

    .line 350
    .line 351
    aget-object v1, v21, v0

    .line 352
    .line 353
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 358
    .line 359
    move-object/from16 v2, p2

    .line 360
    .line 361
    invoke-virtual {v7, v6, v0, v1, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    :cond_21
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    if-eqz v0, :cond_22

    .line 369
    .line 370
    goto :goto_13

    .line 371
    :cond_22
    if-eqz p0, :cond_23

    .line 372
    .line 373
    :goto_13
    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 374
    .line 375
    const/16 v1, 0x11

    .line 376
    .line 377
    move-object/from16 v2, p0

    .line 378
    .line 379
    invoke-virtual {v7, v6, v1, v0, v2}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    :cond_23
    invoke-virtual {v7, v6}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 383
    .line 384
    .line 385
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
