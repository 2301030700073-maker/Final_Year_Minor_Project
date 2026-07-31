.class public final synthetic Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.dataclient.growthtasks.GrowthUserImpact"

    .line 11
    .line 12
    const/16 v3, 0x13

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "@version"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string/jumbo v0, "userId"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v0, "userName"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    const-string v0, "receivedThanksCount"

    .line 36
    .line 37
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    const-string v0, "givenThanksCount"

    .line 41
    .line 42
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    const-string v0, "editCountByNamespace"

    .line 46
    .line 47
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    const-string v0, "editCountByDay"

    .line 51
    .line 52
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    const-string v0, "editCountByTaskType"

    .line 56
    .line 57
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    const-string/jumbo v0, "totalUserEditCount"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    const-string/jumbo v0, "totalEditsCount"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    const-string v0, "newcomerTaskEditCount"

    .line 73
    .line 74
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    const-string v0, "revertedEditCount"

    .line 78
    .line 79
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 80
    .line 81
    .line 82
    const-string v0, "lastEditTimestamp"

    .line 83
    .line 84
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 85
    .line 86
    .line 87
    const-string/jumbo v0, "totalArticlesCreatedCount"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 91
    .line 92
    .line 93
    const-string v0, "longestEditingStreak"

    .line 94
    .line 95
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 96
    .line 97
    .line 98
    const-string v0, "dailyTotalViews"

    .line 99
    .line 100
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    const-string/jumbo v0, "totalPageviewsCount"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 107
    .line 108
    .line 109
    const-string/jumbo v0, "topViewedArticles"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 113
    .line 114
    .line 115
    const-string/jumbo v0, "topViewedArticlesWithPageTitle"

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 119
    .line 120
    .line 121
    sput-object v1, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 122
    .line 123
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 5

    .line 1
    sget-object p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->$childSerializers:[Lkotlin/Lazy;

    .line 2
    .line 3
    const/16 v0, 0x13

    .line 4
    .line 5
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 6
    .line 7
    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v1, v0, v2

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 17
    .line 18
    aput-object v3, v0, v2

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    aput-object v1, v0, v2

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    aput-object v1, v0, v2

    .line 25
    .line 26
    sget-object v2, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 27
    .line 28
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v4, 0x5

    .line 33
    aput-object v3, v0, v4

    .line 34
    .line 35
    const/4 v3, 0x6

    .line 36
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    aput-object v4, v0, v3

    .line 41
    .line 42
    const/4 v3, 0x7

    .line 43
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    aput-object v4, v0, v3

    .line 48
    .line 49
    const/16 v3, 0x8

    .line 50
    .line 51
    aput-object v1, v0, v3

    .line 52
    .line 53
    const/16 v3, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v3

    .line 56
    .line 57
    const/16 v3, 0xa

    .line 58
    .line 59
    aput-object v1, v0, v3

    .line 60
    .line 61
    const/16 v3, 0xb

    .line 62
    .line 63
    aput-object v1, v0, v3

    .line 64
    .line 65
    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    .line 66
    .line 67
    const/16 v4, 0xc

    .line 68
    .line 69
    aput-object v3, v0, v4

    .line 70
    .line 71
    const/16 v4, 0xd

    .line 72
    .line 73
    aput-object v1, v0, v4

    .line 74
    .line 75
    const/16 v1, 0xe

    .line 76
    .line 77
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    aput-object v4, v0, v1

    .line 82
    .line 83
    const/16 v1, 0xf

    .line 84
    .line 85
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    aput-object v4, v0, v1

    .line 90
    .line 91
    const/16 v1, 0x10

    .line 92
    .line 93
    aput-object v3, v0, v1

    .line 94
    .line 95
    const/16 v1, 0x11

    .line 96
    .line 97
    invoke-static {v2}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    aput-object v2, v0, v1

    .line 102
    .line 103
    const/16 v1, 0x12

    .line 104
    .line 105
    aget-object p0, p0, v1

    .line 106
    .line 107
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    aput-object p0, v0, v1

    .line 112
    .line 113
    return-object v0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 31

    .line 1
    sget-object v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    sget-object v2, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->$childSerializers:[Lkotlin/Lazy;

    .line 10
    .line 11
    const-wide/16 v6, 0x0

    .line 12
    .line 13
    move-object/from16 v17, v2

    .line 14
    .line 15
    move-wide/from16 v22, v6

    .line 16
    .line 17
    move-wide/from16 v27, v22

    .line 18
    .line 19
    const/16 p0, 0x0

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x1

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x0

    .line 31
    const/4 v12, 0x0

    .line 32
    const/4 v13, 0x0

    .line 33
    const/4 v14, 0x0

    .line 34
    const/4 v15, 0x0

    .line 35
    const/16 v18, 0x0

    .line 36
    .line 37
    const/16 v19, 0x0

    .line 38
    .line 39
    const/16 v20, 0x0

    .line 40
    .line 41
    const/16 v21, 0x0

    .line 42
    .line 43
    const/16 v24, 0x0

    .line 44
    .line 45
    :goto_0
    if-eqz v6, :cond_0

    .line 46
    .line 47
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 48
    .line 49
    .line 50
    move-result v25

    .line 51
    packed-switch v25, :pswitch_data_0

    .line 52
    .line 53
    .line 54
    invoke-static/range {v25 .. v25}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 55
    .line 56
    .line 57
    return-object p0

    .line 58
    :pswitch_0
    move/from16 v25, v6

    .line 59
    .line 60
    const/16 v6, 0x12

    .line 61
    .line 62
    aget-object v26, v17, v6

    .line 63
    .line 64
    invoke-interface/range {v26 .. v26}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v26

    .line 68
    move/from16 v29, v10

    .line 69
    .line 70
    move-object/from16 v10, v26

    .line 71
    .line 72
    check-cast v10, Lkotlinx/serialization/KSerializer;

    .line 73
    .line 74
    invoke-interface {v1, v0, v6, v10, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Ljava/util/Map;

    .line 79
    .line 80
    const/high16 v6, 0x40000

    .line 81
    .line 82
    :goto_1
    or-int/2addr v9, v6

    .line 83
    :goto_2
    move/from16 v6, v25

    .line 84
    .line 85
    :goto_3
    move/from16 v10, v29

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :pswitch_1
    move/from16 v25, v6

    .line 89
    .line 90
    move/from16 v29, v10

    .line 91
    .line 92
    sget-object v6, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 93
    .line 94
    const/16 v10, 0x11

    .line 95
    .line 96
    invoke-interface {v1, v0, v10, v6, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Lkotlinx/serialization/json/JsonElement;

    .line 101
    .line 102
    const/high16 v6, 0x20000

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :pswitch_2
    move/from16 v25, v6

    .line 106
    .line 107
    move/from16 v29, v10

    .line 108
    .line 109
    const/16 v6, 0x10

    .line 110
    .line 111
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 112
    .line 113
    .line 114
    move-result-wide v27

    .line 115
    const/high16 v6, 0x10000

    .line 116
    .line 117
    or-int/2addr v9, v6

    .line 118
    :goto_4
    move/from16 v6, v25

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :pswitch_3
    move/from16 v25, v6

    .line 122
    .line 123
    move/from16 v29, v10

    .line 124
    .line 125
    sget-object v6, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 126
    .line 127
    const/16 v10, 0xf

    .line 128
    .line 129
    invoke-interface {v1, v0, v10, v6, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    check-cast v4, Lkotlinx/serialization/json/JsonElement;

    .line 134
    .line 135
    const v6, 0x8000

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :pswitch_4
    move/from16 v25, v6

    .line 140
    .line 141
    move/from16 v29, v10

    .line 142
    .line 143
    sget-object v6, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 144
    .line 145
    const/16 v10, 0xe

    .line 146
    .line 147
    invoke-interface {v1, v0, v10, v6, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    check-cast v5, Lkotlinx/serialization/json/JsonElement;

    .line 152
    .line 153
    or-int/lit16 v9, v9, 0x4000

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :pswitch_5
    move/from16 v25, v6

    .line 157
    .line 158
    move/from16 v29, v10

    .line 159
    .line 160
    const/16 v6, 0xd

    .line 161
    .line 162
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 163
    .line 164
    .line 165
    move-result v24

    .line 166
    or-int/lit16 v9, v9, 0x2000

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :pswitch_6
    move/from16 v25, v6

    .line 170
    .line 171
    move/from16 v29, v10

    .line 172
    .line 173
    const/16 v6, 0xc

    .line 174
    .line 175
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 176
    .line 177
    .line 178
    move-result-wide v22

    .line 179
    or-int/lit16 v9, v9, 0x1000

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :pswitch_7
    move/from16 v25, v6

    .line 183
    .line 184
    move/from16 v29, v10

    .line 185
    .line 186
    const/16 v6, 0xb

    .line 187
    .line 188
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 189
    .line 190
    .line 191
    move-result v21

    .line 192
    or-int/lit16 v9, v9, 0x800

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :pswitch_8
    move/from16 v25, v6

    .line 196
    .line 197
    move/from16 v29, v10

    .line 198
    .line 199
    const/16 v6, 0xa

    .line 200
    .line 201
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 202
    .line 203
    .line 204
    move-result v20

    .line 205
    or-int/lit16 v9, v9, 0x400

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :pswitch_9
    move/from16 v25, v6

    .line 209
    .line 210
    move/from16 v29, v10

    .line 211
    .line 212
    const/16 v6, 0x9

    .line 213
    .line 214
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 215
    .line 216
    .line 217
    move-result v19

    .line 218
    or-int/lit16 v9, v9, 0x200

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :pswitch_a
    move/from16 v25, v6

    .line 222
    .line 223
    move/from16 v29, v10

    .line 224
    .line 225
    const/16 v6, 0x8

    .line 226
    .line 227
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 228
    .line 229
    .line 230
    move-result v18

    .line 231
    or-int/lit16 v9, v9, 0x100

    .line 232
    .line 233
    goto :goto_4

    .line 234
    :pswitch_b
    move/from16 v25, v6

    .line 235
    .line 236
    move/from16 v29, v10

    .line 237
    .line 238
    sget-object v6, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 239
    .line 240
    const/4 v10, 0x7

    .line 241
    invoke-interface {v1, v0, v10, v6, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    move-object v8, v6

    .line 246
    check-cast v8, Lkotlinx/serialization/json/JsonElement;

    .line 247
    .line 248
    or-int/lit16 v9, v9, 0x80

    .line 249
    .line 250
    goto/16 :goto_2

    .line 251
    .line 252
    :pswitch_c
    move/from16 v25, v6

    .line 253
    .line 254
    move/from16 v29, v10

    .line 255
    .line 256
    sget-object v6, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 257
    .line 258
    const/4 v10, 0x6

    .line 259
    invoke-interface {v1, v0, v10, v6, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    move-object v7, v6

    .line 264
    check-cast v7, Lkotlinx/serialization/json/JsonElement;

    .line 265
    .line 266
    or-int/lit8 v9, v9, 0x40

    .line 267
    .line 268
    goto/16 :goto_2

    .line 269
    .line 270
    :pswitch_d
    move/from16 v25, v6

    .line 271
    .line 272
    move/from16 v29, v10

    .line 273
    .line 274
    sget-object v6, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 275
    .line 276
    const/4 v10, 0x5

    .line 277
    invoke-interface {v1, v0, v10, v6, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    move-object v15, v6

    .line 282
    check-cast v15, Lkotlinx/serialization/json/JsonElement;

    .line 283
    .line 284
    or-int/lit8 v9, v9, 0x20

    .line 285
    .line 286
    goto/16 :goto_2

    .line 287
    .line 288
    :pswitch_e
    move/from16 v25, v6

    .line 289
    .line 290
    move/from16 v29, v10

    .line 291
    .line 292
    const/4 v6, 0x4

    .line 293
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 294
    .line 295
    .line 296
    move-result v14

    .line 297
    or-int/lit8 v9, v9, 0x10

    .line 298
    .line 299
    goto/16 :goto_4

    .line 300
    .line 301
    :pswitch_f
    move/from16 v25, v6

    .line 302
    .line 303
    move/from16 v29, v10

    .line 304
    .line 305
    const/4 v6, 0x3

    .line 306
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 307
    .line 308
    .line 309
    move-result v13

    .line 310
    or-int/lit8 v9, v9, 0x8

    .line 311
    .line 312
    goto/16 :goto_4

    .line 313
    .line 314
    :pswitch_10
    move/from16 v25, v6

    .line 315
    .line 316
    move/from16 v29, v10

    .line 317
    .line 318
    const/4 v6, 0x2

    .line 319
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v12

    .line 323
    or-int/lit8 v9, v9, 0x4

    .line 324
    .line 325
    goto/16 :goto_4

    .line 326
    .line 327
    :pswitch_11
    move/from16 v25, v6

    .line 328
    .line 329
    move/from16 v29, v10

    .line 330
    .line 331
    const/4 v6, 0x1

    .line 332
    invoke-interface {v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 333
    .line 334
    .line 335
    move-result v11

    .line 336
    or-int/lit8 v9, v9, 0x2

    .line 337
    .line 338
    goto/16 :goto_4

    .line 339
    .line 340
    :pswitch_12
    move/from16 v25, v6

    .line 341
    .line 342
    const/4 v6, 0x1

    .line 343
    const/4 v10, 0x0

    .line 344
    invoke-interface {v1, v0, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 345
    .line 346
    .line 347
    move-result v16

    .line 348
    or-int/lit8 v9, v9, 0x1

    .line 349
    .line 350
    move/from16 v10, v16

    .line 351
    .line 352
    goto/16 :goto_4

    .line 353
    .line 354
    :pswitch_13
    move/from16 v29, v10

    .line 355
    .line 356
    const/4 v10, 0x0

    .line 357
    move v6, v10

    .line 358
    goto/16 :goto_3

    .line 359
    .line 360
    :cond_0
    move/from16 v29, v10

    .line 361
    .line 362
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 363
    .line 364
    .line 365
    move-object/from16 v17, v8

    .line 366
    .line 367
    new-instance v8, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;

    .line 368
    .line 369
    move-object/from16 v30, v2

    .line 370
    .line 371
    move-object/from16 v26, v4

    .line 372
    .line 373
    move-object/from16 v25, v5

    .line 374
    .line 375
    move-object/from16 v16, v7

    .line 376
    .line 377
    move-object/from16 v29, v3

    .line 378
    .line 379
    invoke-direct/range {v8 .. v30}, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;-><init>(IIILjava/lang/String;IILkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/json/JsonElement;IIIIJILkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/json/JsonElement;JLkotlinx/serialization/json/JsonElement;Ljava/util/Map;)V

    .line 380
    .line 381
    .line 382
    return-object v8

    .line 383
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
    sget-object p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 25

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mTopViewedArticles:Lkotlinx/serialization/json/JsonElement;

    .line 9
    .line 10
    iget-wide v2, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->totalPageviewsCount:J

    .line 11
    .line 12
    iget-object v4, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mDailyTotalViews:Lkotlinx/serialization/json/JsonElement;

    .line 13
    .line 14
    iget-object v5, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mLongestEditingStreak:Lkotlinx/serialization/json/JsonElement;

    .line 15
    .line 16
    iget v6, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->totalArticlesCreatedCount:I

    .line 17
    .line 18
    iget-wide v7, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->lastEditTimestamp:J

    .line 19
    .line 20
    iget v9, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->revertedEditCount:I

    .line 21
    .line 22
    iget v10, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->newcomerTaskEditCount:I

    .line 23
    .line 24
    iget v11, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->totalEditsCount:I

    .line 25
    .line 26
    iget v12, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->totalUserEditCount:I

    .line 27
    .line 28
    iget-object v13, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mEditCountByTaskType:Lkotlinx/serialization/json/JsonElement;

    .line 29
    .line 30
    iget-object v14, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mEditCountByDay:Lkotlinx/serialization/json/JsonElement;

    .line 31
    .line 32
    iget-object v15, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mEditCountByNamespace:Lkotlinx/serialization/json/JsonElement;

    .line 33
    .line 34
    move-object/from16 p0, v1

    .line 35
    .line 36
    iget v1, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->givenThanksCount:I

    .line 37
    .line 38
    move-wide/from16 v16, v2

    .line 39
    .line 40
    iget v2, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->receivedThanksCount:I

    .line 41
    .line 42
    iget-object v3, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->userName:Ljava/lang/String;

    .line 43
    .line 44
    move-object/from16 p2, v4

    .line 45
    .line 46
    iget v4, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->userId:I

    .line 47
    .line 48
    move-object/from16 v18, v5

    .line 49
    .line 50
    iget v5, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->version:I

    .line 51
    .line 52
    move-object/from16 v19, v0

    .line 53
    .line 54
    sget-object v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 55
    .line 56
    move/from16 v20, v6

    .line 57
    .line 58
    move-object/from16 v6, p1

    .line 59
    .line 60
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    sget-object v21, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->$childSerializers:[Lkotlin/Lazy;

    .line 65
    .line 66
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 67
    .line 68
    .line 69
    move-result v22

    .line 70
    if-eqz v22, :cond_0

    .line 71
    .line 72
    :goto_0
    move-wide/from16 v23, v7

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
    invoke-virtual {v6, v7, v5, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    move-wide/from16 v23, v7

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
    invoke-virtual {v6, v5, v4, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

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
    const-string v4, ""

    .line 106
    .line 107
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-nez v4, :cond_5

    .line 112
    .line 113
    :goto_4
    const/4 v4, 0x2

    .line 114
    invoke-virtual {v6, v0, v4, v3}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_5
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_6

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_6
    if-eqz v2, :cond_7

    .line 125
    .line 126
    :goto_5
    const/4 v3, 0x3

    .line 127
    invoke-virtual {v6, v3, v2, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 128
    .line 129
    .line 130
    :cond_7
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_8

    .line 135
    .line 136
    goto :goto_6

    .line 137
    :cond_8
    if-eqz v1, :cond_9

    .line 138
    .line 139
    :goto_6
    const/4 v2, 0x4

    .line 140
    invoke-virtual {v6, v2, v1, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 141
    .line 142
    .line 143
    :cond_9
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_a

    .line 148
    .line 149
    goto :goto_7

    .line 150
    :cond_a
    if-eqz v15, :cond_b

    .line 151
    .line 152
    :goto_7
    sget-object v1, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 153
    .line 154
    const/4 v2, 0x5

    .line 155
    invoke-virtual {v6, v0, v2, v1, v15}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_b
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_c

    .line 163
    .line 164
    goto :goto_8

    .line 165
    :cond_c
    if-eqz v14, :cond_d

    .line 166
    .line 167
    :goto_8
    sget-object v1, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 168
    .line 169
    const/4 v2, 0x6

    .line 170
    invoke-virtual {v6, v0, v2, v1, v14}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_d
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_e

    .line 178
    .line 179
    goto :goto_9

    .line 180
    :cond_e
    if-eqz v13, :cond_f

    .line 181
    .line 182
    :goto_9
    sget-object v1, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 183
    .line 184
    const/4 v2, 0x7

    .line 185
    invoke-virtual {v6, v0, v2, v1, v13}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    :cond_f
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_10

    .line 193
    .line 194
    goto :goto_a

    .line 195
    :cond_10
    if-eqz v12, :cond_11

    .line 196
    .line 197
    :goto_a
    const/16 v1, 0x8

    .line 198
    .line 199
    invoke-virtual {v6, v1, v12, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 200
    .line 201
    .line 202
    :cond_11
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_12

    .line 207
    .line 208
    goto :goto_b

    .line 209
    :cond_12
    if-eqz v11, :cond_13

    .line 210
    .line 211
    :goto_b
    const/16 v1, 0x9

    .line 212
    .line 213
    invoke-virtual {v6, v1, v11, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 214
    .line 215
    .line 216
    :cond_13
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-eqz v1, :cond_14

    .line 221
    .line 222
    goto :goto_c

    .line 223
    :cond_14
    if-eqz v10, :cond_15

    .line 224
    .line 225
    :goto_c
    const/16 v1, 0xa

    .line 226
    .line 227
    invoke-virtual {v6, v1, v10, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 228
    .line 229
    .line 230
    :cond_15
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-eqz v1, :cond_16

    .line 235
    .line 236
    goto :goto_d

    .line 237
    :cond_16
    if-eqz v9, :cond_17

    .line 238
    .line 239
    :goto_d
    const/16 v1, 0xb

    .line 240
    .line 241
    invoke-virtual {v6, v1, v9, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 242
    .line 243
    .line 244
    :cond_17
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    const-wide/16 v2, 0x0

    .line 249
    .line 250
    if-eqz v1, :cond_18

    .line 251
    .line 252
    goto :goto_e

    .line 253
    :cond_18
    cmp-long v1, v23, v2

    .line 254
    .line 255
    if-eqz v1, :cond_19

    .line 256
    .line 257
    :goto_e
    const/16 v1, 0xc

    .line 258
    .line 259
    move-wide/from16 v4, v23

    .line 260
    .line 261
    invoke-virtual {v6, v0, v1, v4, v5}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 262
    .line 263
    .line 264
    :cond_19
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-eqz v1, :cond_1a

    .line 269
    .line 270
    goto :goto_f

    .line 271
    :cond_1a
    if-eqz v20, :cond_1b

    .line 272
    .line 273
    :goto_f
    const/16 v1, 0xd

    .line 274
    .line 275
    move/from16 v4, v20

    .line 276
    .line 277
    invoke-virtual {v6, v1, v4, v0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 278
    .line 279
    .line 280
    :cond_1b
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-eqz v1, :cond_1c

    .line 285
    .line 286
    goto :goto_10

    .line 287
    :cond_1c
    if-eqz v18, :cond_1d

    .line 288
    .line 289
    :goto_10
    sget-object v1, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 290
    .line 291
    const/16 v4, 0xe

    .line 292
    .line 293
    move-object/from16 v5, v18

    .line 294
    .line 295
    invoke-virtual {v6, v0, v4, v1, v5}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    :cond_1d
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-eqz v1, :cond_1e

    .line 303
    .line 304
    goto :goto_11

    .line 305
    :cond_1e
    if-eqz p2, :cond_1f

    .line 306
    .line 307
    :goto_11
    sget-object v1, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 308
    .line 309
    const/16 v4, 0xf

    .line 310
    .line 311
    move-object/from16 v5, p2

    .line 312
    .line 313
    invoke-virtual {v6, v0, v4, v1, v5}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    :cond_1f
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-eqz v1, :cond_20

    .line 321
    .line 322
    goto :goto_12

    .line 323
    :cond_20
    cmp-long v1, v16, v2

    .line 324
    .line 325
    if-eqz v1, :cond_21

    .line 326
    .line 327
    :goto_12
    const/16 v1, 0x10

    .line 328
    .line 329
    move-wide/from16 v2, v16

    .line 330
    .line 331
    invoke-virtual {v6, v0, v1, v2, v3}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 332
    .line 333
    .line 334
    :cond_21
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-eqz v1, :cond_22

    .line 339
    .line 340
    goto :goto_13

    .line 341
    :cond_22
    if-eqz p0, :cond_23

    .line 342
    .line 343
    :goto_13
    sget-object v1, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 344
    .line 345
    const/16 v2, 0x11

    .line 346
    .line 347
    move-object/from16 v3, p0

    .line 348
    .line 349
    invoke-virtual {v6, v0, v2, v1, v3}, Lkotlin/uuid/UuidKt;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    :cond_23
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    if-eqz v1, :cond_24

    .line 357
    .line 358
    move-object/from16 v1, v19

    .line 359
    .line 360
    goto :goto_14

    .line 361
    :cond_24
    move-object/from16 v1, v19

    .line 362
    .line 363
    iget-object v2, v1, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->topViewedArticlesWithPageTitle:Ljava/util/Map;

    .line 364
    .line 365
    sget-object v3, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 366
    .line 367
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    if-nez v2, :cond_25

    .line 372
    .line 373
    :goto_14
    const/16 v2, 0x12

    .line 374
    .line 375
    aget-object v3, v21, v2

    .line 376
    .line 377
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 382
    .line 383
    iget-object v1, v1, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->topViewedArticlesWithPageTitle:Ljava/util/Map;

    .line 384
    .line 385
    invoke-virtual {v6, v0, v2, v3, v1}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    :cond_25
    invoke-virtual {v6, v0}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 389
    .line 390
    .line 391
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
