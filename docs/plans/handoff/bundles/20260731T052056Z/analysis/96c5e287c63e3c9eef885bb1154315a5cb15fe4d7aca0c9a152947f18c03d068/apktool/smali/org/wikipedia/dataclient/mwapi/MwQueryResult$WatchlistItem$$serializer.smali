.class public final synthetic Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.dataclient.mwapi.MwQueryResult.WatchlistItem"

    .line 11
    .line 12
    const/16 v3, 0x13

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "new"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v0, "anon"

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string v0, "minor"

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-string v0, "bot"

    .line 34
    .line 35
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const-string v0, "old_revid"

    .line 39
    .line 40
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    const-string v0, "timestamp"

    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    const-string v0, "comment"

    .line 49
    .line 50
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    const-string/jumbo v0, "type"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    const-string v0, "pageid"

    .line 60
    .line 61
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    const-string v0, "revid"

    .line 65
    .line 66
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    const-string v0, "ns"

    .line 70
    .line 71
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    const-string v0, "title"

    .line 75
    .line 76
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    const-string/jumbo v0, "user"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 83
    .line 84
    .line 85
    const-string v0, "logtype"

    .line 86
    .line 87
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 88
    .line 89
    .line 90
    const-string v0, "logdisplay"

    .line 91
    .line 92
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    const-string v0, "oldlen"

    .line 96
    .line 97
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    const-string v0, "newlen"

    .line 101
    .line 102
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 103
    .line 104
    .line 105
    const-string/jumbo v0, "wiki"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    const-string v0, "parsedcomment"

    .line 112
    .line 113
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 114
    .line 115
    .line 116
    sput-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 117
    .line 118
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 6

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
    sget-object v2, Lorg/wikipedia/dataclient/WikiSite$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/WikiSite$$serializer;

    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/16 v3, 0x13

    .line 18
    .line 19
    new-array v3, v3, [Lkotlinx/serialization/KSerializer;

    .line 20
    .line 21
    sget-object v4, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    aput-object v4, v3, v5

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    aput-object v4, v3, v5

    .line 28
    .line 29
    const/4 v5, 0x2

    .line 30
    aput-object v4, v3, v5

    .line 31
    .line 32
    const/4 v5, 0x3

    .line 33
    aput-object v4, v3, v5

    .line 34
    .line 35
    sget-object v4, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    .line 36
    .line 37
    const/4 v5, 0x4

    .line 38
    aput-object v4, v3, v5

    .line 39
    .line 40
    const/4 v5, 0x5

    .line 41
    aput-object v0, v3, v5

    .line 42
    .line 43
    const/4 v0, 0x6

    .line 44
    aput-object v1, v3, v0

    .line 45
    .line 46
    const/4 v0, 0x7

    .line 47
    aput-object p0, v3, v0

    .line 48
    .line 49
    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 50
    .line 51
    const/16 v1, 0x8

    .line 52
    .line 53
    aput-object v0, v3, v1

    .line 54
    .line 55
    const/16 v1, 0x9

    .line 56
    .line 57
    aput-object v4, v3, v1

    .line 58
    .line 59
    const/16 v1, 0xa

    .line 60
    .line 61
    aput-object v0, v3, v1

    .line 62
    .line 63
    const/16 v1, 0xb

    .line 64
    .line 65
    aput-object p0, v3, v1

    .line 66
    .line 67
    const/16 v1, 0xc

    .line 68
    .line 69
    aput-object p0, v3, v1

    .line 70
    .line 71
    const/16 v1, 0xd

    .line 72
    .line 73
    aput-object p0, v3, v1

    .line 74
    .line 75
    const/16 v1, 0xe

    .line 76
    .line 77
    aput-object p0, v3, v1

    .line 78
    .line 79
    const/16 v1, 0xf

    .line 80
    .line 81
    aput-object v0, v3, v1

    .line 82
    .line 83
    const/16 v1, 0x10

    .line 84
    .line 85
    aput-object v0, v3, v1

    .line 86
    .line 87
    const/16 v0, 0x11

    .line 88
    .line 89
    aput-object v2, v3, v0

    .line 90
    .line 91
    const/16 v0, 0x12

    .line 92
    .line 93
    aput-object p0, v3, v0

    .line 94
    .line 95
    return-object v3
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 30

    .line 1
    sget-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    move-wide v13, v4

    .line 14
    move-wide/from16 v19, v13

    .line 15
    .line 16
    move-object v5, v6

    .line 17
    move-object v7, v5

    .line 18
    move-object v15, v7

    .line 19
    move-object/from16 v17, v15

    .line 20
    .line 21
    move-object/from16 v22, v17

    .line 22
    .line 23
    move-object/from16 v23, v22

    .line 24
    .line 25
    move-object/from16 v24, v23

    .line 26
    .line 27
    move-object/from16 v25, v24

    .line 28
    .line 29
    move-object/from16 v29, v25

    .line 30
    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v9, 0x0

    .line 33
    const/4 v10, 0x0

    .line 34
    const/4 v11, 0x0

    .line 35
    const/4 v12, 0x0

    .line 36
    const/16 v18, 0x0

    .line 37
    .line 38
    const/16 v21, 0x0

    .line 39
    .line 40
    const/16 v26, 0x0

    .line 41
    .line 42
    const/16 v27, 0x0

    .line 43
    .line 44
    move v4, v2

    .line 45
    :goto_0
    if-eqz v4, :cond_0

    .line 46
    .line 47
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 48
    .line 49
    .line 50
    move-result v16

    .line 51
    packed-switch v16, :pswitch_data_0

    .line 52
    .line 53
    .line 54
    invoke-static/range {v16 .. v16}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 55
    .line 56
    .line 57
    return-object v6

    .line 58
    :pswitch_0
    const/16 v6, 0x12

    .line 59
    .line 60
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v29

    .line 64
    const/high16 v6, 0x40000

    .line 65
    .line 66
    or-int/2addr v8, v6

    .line 67
    :goto_1
    const/4 v6, 0x0

    .line 68
    goto :goto_0

    .line 69
    :pswitch_1
    sget-object v6, Lorg/wikipedia/dataclient/WikiSite$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/WikiSite$$serializer;

    .line 70
    .line 71
    const/16 v3, 0x11

    .line 72
    .line 73
    invoke-interface {v1, v0, v3, v6, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    move-object v7, v3

    .line 78
    check-cast v7, Lorg/wikipedia/dataclient/WikiSite;

    .line 79
    .line 80
    const/high16 v3, 0x20000

    .line 81
    .line 82
    :goto_2
    or-int/2addr v8, v3

    .line 83
    goto :goto_1

    .line 84
    :pswitch_2
    const/16 v3, 0x10

    .line 85
    .line 86
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 87
    .line 88
    .line 89
    move-result v27

    .line 90
    const/high16 v3, 0x10000

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :pswitch_3
    const/16 v3, 0xf

    .line 94
    .line 95
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 96
    .line 97
    .line 98
    move-result v26

    .line 99
    const v3, 0x8000

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :pswitch_4
    const/16 v3, 0xe

    .line 104
    .line 105
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v25

    .line 109
    or-int/lit16 v8, v8, 0x4000

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :pswitch_5
    const/16 v3, 0xd

    .line 113
    .line 114
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v24

    .line 118
    or-int/lit16 v8, v8, 0x2000

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :pswitch_6
    const/16 v3, 0xc

    .line 122
    .line 123
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v23

    .line 127
    or-int/lit16 v8, v8, 0x1000

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :pswitch_7
    const/16 v3, 0xb

    .line 131
    .line 132
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v22

    .line 136
    or-int/lit16 v8, v8, 0x800

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :pswitch_8
    const/16 v3, 0xa

    .line 140
    .line 141
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 142
    .line 143
    .line 144
    move-result v21

    .line 145
    or-int/lit16 v8, v8, 0x400

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :pswitch_9
    const/16 v3, 0x9

    .line 149
    .line 150
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 151
    .line 152
    .line 153
    move-result-wide v19

    .line 154
    or-int/lit16 v8, v8, 0x200

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :pswitch_a
    const/16 v3, 0x8

    .line 158
    .line 159
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 160
    .line 161
    .line 162
    move-result v18

    .line 163
    or-int/lit16 v8, v8, 0x100

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :pswitch_b
    const/4 v3, 0x7

    .line 167
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v17

    .line 171
    or-int/lit16 v8, v8, 0x80

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :pswitch_c
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 175
    .line 176
    const/4 v6, 0x6

    .line 177
    invoke-interface {v1, v0, v6, v3, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    move-object v5, v3

    .line 182
    check-cast v5, Ljava/lang/String;

    .line 183
    .line 184
    or-int/lit8 v8, v8, 0x40

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :pswitch_d
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 188
    .line 189
    const/4 v6, 0x5

    .line 190
    invoke-interface {v1, v0, v6, v3, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    move-object v15, v3

    .line 195
    check-cast v15, Ljava/lang/String;

    .line 196
    .line 197
    or-int/lit8 v8, v8, 0x20

    .line 198
    .line 199
    goto/16 :goto_1

    .line 200
    .line 201
    :pswitch_e
    const/4 v3, 0x4

    .line 202
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 203
    .line 204
    .line 205
    move-result-wide v13

    .line 206
    or-int/lit8 v8, v8, 0x10

    .line 207
    .line 208
    goto/16 :goto_1

    .line 209
    .line 210
    :pswitch_f
    const/4 v3, 0x3

    .line 211
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 212
    .line 213
    .line 214
    move-result v12

    .line 215
    or-int/lit8 v8, v8, 0x8

    .line 216
    .line 217
    goto/16 :goto_1

    .line 218
    .line 219
    :pswitch_10
    const/4 v3, 0x2

    .line 220
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 221
    .line 222
    .line 223
    move-result v11

    .line 224
    or-int/lit8 v8, v8, 0x4

    .line 225
    .line 226
    goto/16 :goto_1

    .line 227
    .line 228
    :pswitch_11
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    or-int/lit8 v8, v8, 0x2

    .line 233
    .line 234
    goto/16 :goto_1

    .line 235
    .line 236
    :pswitch_12
    const/4 v3, 0x0

    .line 237
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    or-int/lit8 v8, v8, 0x1

    .line 242
    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :pswitch_13
    const/4 v3, 0x0

    .line 246
    move v4, v3

    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 250
    .line 251
    .line 252
    move-object/from16 v28, v7

    .line 253
    .line 254
    new-instance v7, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;

    .line 255
    .line 256
    move-object/from16 v16, v5

    .line 257
    .line 258
    invoke-direct/range {v7 .. v29}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;-><init>(IZZZZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    return-object v7

    .line 262
    nop

    .line 263
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_13
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
    sget-object p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 22

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->parsedComment:Ljava/lang/String;

    .line 9
    .line 10
    iget v2, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->newlen:I

    .line 11
    .line 12
    iget v3, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->oldlen:I

    .line 13
    .line 14
    iget-object v4, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->logdisplay:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v5, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->logtype:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v6, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->user:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v7, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->title:Ljava/lang/String;

    .line 21
    .line 22
    iget v8, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->ns:I

    .line 23
    .line 24
    iget-wide v9, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->revid:J

    .line 25
    .line 26
    iget v11, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->pageId:I

    .line 27
    .line 28
    iget-object v12, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->type:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v13, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->comment:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v14, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->timestamp:Ljava/lang/String;

    .line 33
    .line 34
    move-object/from16 p0, v1

    .line 35
    .line 36
    move/from16 p2, v2

    .line 37
    .line 38
    iget-wide v1, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->oldRevid:J

    .line 39
    .line 40
    iget-boolean v15, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->isBot:Z

    .line 41
    .line 42
    move/from16 v16, v3

    .line 43
    .line 44
    iget-boolean v3, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->isMinor:Z

    .line 45
    .line 46
    move-object/from16 v17, v4

    .line 47
    .line 48
    iget-boolean v4, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->isAnon:Z

    .line 49
    .line 50
    move-object/from16 v18, v5

    .line 51
    .line 52
    iget-boolean v5, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->isNew:Z

    .line 53
    .line 54
    move-object/from16 v19, v0

    .line 55
    .line 56
    sget-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 57
    .line 58
    move-object/from16 v20, v6

    .line 59
    .line 60
    move-object/from16 v6, p1

    .line 61
    .line 62
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 67
    .line 68
    .line 69
    move-result v21

    .line 70
    if-eqz v21, :cond_0

    .line 71
    .line 72
    :goto_0
    move-object/from16 v21, v7

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_0
    if-eqz v5, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :goto_1
    const/4 v7, 0x0

    .line 79
    invoke-virtual {v6, v0, v7, v5}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    move-object/from16 v21, v7

    .line 84
    .line 85
    :goto_2
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_2

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_2
    if-eqz v4, :cond_3

    .line 93
    .line 94
    :goto_3
    const/4 v5, 0x1

    .line 95
    invoke-virtual {v6, v0, v5, v4}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_4

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_4
    if-eqz v3, :cond_5

    .line 106
    .line 107
    :goto_4
    const/4 v4, 0x2

    .line 108
    invoke-virtual {v6, v0, v4, v3}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 109
    .line 110
    .line 111
    :cond_5
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_6

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_6
    if-eqz v15, :cond_7

    .line 119
    .line 120
    :goto_5
    const/4 v3, 0x3

    .line 121
    invoke-virtual {v6, v0, v3, v15}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 122
    .line 123
    .line 124
    :cond_7
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    const-wide/16 v4, 0x0

    .line 129
    .line 130
    if-eqz v3, :cond_8

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_8
    cmp-long v3, v1, v4

    .line 134
    .line 135
    if-eqz v3, :cond_9

    .line 136
    .line 137
    :goto_6
    const/4 v3, 0x4

    .line 138
    invoke-virtual {v6, v0, v3, v1, v2}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 139
    .line 140
    .line 141
    :cond_9
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_a

    .line 146
    .line 147
    goto :goto_7

    .line 148
    :cond_a
    if-eqz v14, :cond_b

    .line 149
    .line 150
    :goto_7
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 151
    .line 152
    const/4 v2, 0x5

    .line 153
    invoke-virtual {v6, v0, v2, v1, v14}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_b
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_c

    .line 161
    .line 162
    goto :goto_8

    .line 163
    :cond_c
    if-eqz v13, :cond_d

    .line 164
    .line 165
    :goto_8
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 166
    .line 167
    const/4 v2, 0x6

    .line 168
    invoke-virtual {v6, v0, v2, v1, v13}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :cond_d
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    const-string v2, ""

    .line 176
    .line 177
    if-eqz v1, :cond_e

    .line 178
    .line 179
    goto :goto_9

    .line 180
    :cond_e
    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-nez v1, :cond_f

    .line 185
    .line 186
    :goto_9
    const/4 v1, 0x7

    .line 187
    invoke-virtual {v6, v0, v1, v12}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_f
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_10

    .line 195
    .line 196
    goto :goto_a

    .line 197
    :cond_10
    if-eqz v11, :cond_11

    .line 198
    .line 199
    :goto_a
    const/16 v1, 0x8

    .line 200
    .line 201
    invoke-virtual {v6, v1, v11, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 202
    .line 203
    .line 204
    :cond_11
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_12

    .line 209
    .line 210
    goto :goto_b

    .line 211
    :cond_12
    cmp-long v1, v9, v4

    .line 212
    .line 213
    if-eqz v1, :cond_13

    .line 214
    .line 215
    :goto_b
    const/16 v1, 0x9

    .line 216
    .line 217
    invoke-virtual {v6, v0, v1, v9, v10}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 218
    .line 219
    .line 220
    :cond_13
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_14

    .line 225
    .line 226
    goto :goto_c

    .line 227
    :cond_14
    if-eqz v8, :cond_15

    .line 228
    .line 229
    :goto_c
    const/16 v1, 0xa

    .line 230
    .line 231
    invoke-virtual {v6, v1, v8, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 232
    .line 233
    .line 234
    :cond_15
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_16

    .line 239
    .line 240
    move-object/from16 v1, v21

    .line 241
    .line 242
    goto :goto_d

    .line 243
    :cond_16
    move-object/from16 v1, v21

    .line 244
    .line 245
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-nez v3, :cond_17

    .line 250
    .line 251
    :goto_d
    const/16 v3, 0xb

    .line 252
    .line 253
    invoke-virtual {v6, v0, v3, v1}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 254
    .line 255
    .line 256
    :cond_17
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-eqz v1, :cond_18

    .line 261
    .line 262
    move-object/from16 v1, v20

    .line 263
    .line 264
    goto :goto_e

    .line 265
    :cond_18
    move-object/from16 v1, v20

    .line 266
    .line 267
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    if-nez v3, :cond_19

    .line 272
    .line 273
    :goto_e
    const/16 v3, 0xc

    .line 274
    .line 275
    invoke-virtual {v6, v0, v3, v1}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 276
    .line 277
    .line 278
    :cond_19
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-eqz v1, :cond_1a

    .line 283
    .line 284
    move-object/from16 v1, v18

    .line 285
    .line 286
    goto :goto_f

    .line 287
    :cond_1a
    move-object/from16 v1, v18

    .line 288
    .line 289
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    if-nez v3, :cond_1b

    .line 294
    .line 295
    :goto_f
    const/16 v3, 0xd

    .line 296
    .line 297
    invoke-virtual {v6, v0, v3, v1}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 298
    .line 299
    .line 300
    :cond_1b
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-eqz v1, :cond_1c

    .line 305
    .line 306
    move-object/from16 v1, v17

    .line 307
    .line 308
    goto :goto_10

    .line 309
    :cond_1c
    move-object/from16 v1, v17

    .line 310
    .line 311
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    if-nez v3, :cond_1d

    .line 316
    .line 317
    :goto_10
    const/16 v3, 0xe

    .line 318
    .line 319
    invoke-virtual {v6, v0, v3, v1}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 320
    .line 321
    .line 322
    :cond_1d
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-eqz v1, :cond_1e

    .line 327
    .line 328
    goto :goto_11

    .line 329
    :cond_1e
    if-eqz v16, :cond_1f

    .line 330
    .line 331
    :goto_11
    const/16 v1, 0xf

    .line 332
    .line 333
    move/from16 v3, v16

    .line 334
    .line 335
    invoke-virtual {v6, v1, v3, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 336
    .line 337
    .line 338
    :cond_1f
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    if-eqz v1, :cond_20

    .line 343
    .line 344
    goto :goto_12

    .line 345
    :cond_20
    if-eqz p2, :cond_21

    .line 346
    .line 347
    :goto_12
    const/16 v1, 0x10

    .line 348
    .line 349
    move/from16 v3, p2

    .line 350
    .line 351
    invoke-virtual {v6, v1, v3, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 352
    .line 353
    .line 354
    :cond_21
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_22

    .line 359
    .line 360
    move-object/from16 v1, v19

    .line 361
    .line 362
    goto :goto_13

    .line 363
    :cond_22
    move-object/from16 v1, v19

    .line 364
    .line 365
    iget-object v3, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 366
    .line 367
    if-eqz v3, :cond_23

    .line 368
    .line 369
    :goto_13
    sget-object v3, Lorg/wikipedia/dataclient/WikiSite$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/WikiSite$$serializer;

    .line 370
    .line 371
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 372
    .line 373
    const/16 v4, 0x11

    .line 374
    .line 375
    invoke-virtual {v6, v0, v4, v3, v1}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    :cond_23
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-eqz v1, :cond_24

    .line 383
    .line 384
    move-object/from16 v1, p0

    .line 385
    .line 386
    goto :goto_14

    .line 387
    :cond_24
    move-object/from16 v1, p0

    .line 388
    .line 389
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    if-nez v2, :cond_25

    .line 394
    .line 395
    :goto_14
    const/16 v2, 0x12

    .line 396
    .line 397
    invoke-virtual {v6, v0, v2, v1}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 398
    .line 399
    .line 400
    :cond_25
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 401
    .line 402
    .line 403
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
