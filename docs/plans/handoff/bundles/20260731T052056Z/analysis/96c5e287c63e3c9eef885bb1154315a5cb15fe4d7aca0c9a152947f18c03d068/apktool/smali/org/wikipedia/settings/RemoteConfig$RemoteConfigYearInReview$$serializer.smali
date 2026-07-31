.class public final synthetic Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview$$serializer;->INSTANCE:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.settings.RemoteConfig.RemoteConfigYearInReview"

    .line 11
    .line 12
    const/16 v3, 0x15

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "year"

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const-string v0, "activeStartDate"

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    const-string v0, "activeEndDate"

    .line 30
    .line 31
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    const-string v0, "dataStartDate"

    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    const-string v0, "dataEndDate"

    .line 40
    .line 41
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    const-string v0, "languages"

    .line 45
    .line 46
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const-string v0, "articles"

    .line 50
    .line 51
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    const-string v0, "savedArticlesApps"

    .line 55
    .line 56
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    const-string/jumbo v0, "viewsApps"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    const-string v0, "editsApps"

    .line 66
    .line 67
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    const-string v0, "editsPerMinute"

    .line 71
    .line 72
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 73
    .line 74
    .line 75
    const-string v0, "averageArticlesReadPerYear"

    .line 76
    .line 77
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    const-string v0, "edits"

    .line 81
    .line 82
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 83
    .line 84
    .line 85
    const-string v0, "editsEN"

    .line 86
    .line 87
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 88
    .line 89
    .line 90
    const-string v0, "bytesAddedEN"

    .line 91
    .line 92
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    const-string v0, "hoursReadEN"

    .line 96
    .line 97
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    const-string/jumbo v0, "yearsReadEN"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    const-string/jumbo v0, "topReadEN"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 110
    .line 111
    .line 112
    const-string/jumbo v0, "topReadPercentages"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 116
    .line 117
    .line 118
    const-string v0, "hideCountryCodes"

    .line 119
    .line 120
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 121
    .line 122
    .line 123
    const-string v0, "hideDonateCountryCodes"

    .line 124
    .line 125
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 126
    .line 127
    .line 128
    sput-object v1, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 129
    .line 130
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 4

    .line 1
    sget-object p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->$childSerializers:[Lkotlin/Lazy;

    .line 2
    .line 3
    const/16 v0, 0x15

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
    sget-object v2, Lorg/wikipedia/json/LocalDateTimeSerializer;->INSTANCE:Lorg/wikipedia/json/LocalDateTimeSerializer;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    aput-object v2, v0, v3

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    aput-object v2, v0, v3

    .line 19
    .line 20
    const/4 v3, 0x3

    .line 21
    aput-object v2, v0, v3

    .line 22
    .line 23
    const/4 v3, 0x4

    .line 24
    aput-object v2, v0, v3

    .line 25
    .line 26
    const/4 v2, 0x5

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v2, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    .line 30
    .line 31
    const/4 v3, 0x6

    .line 32
    aput-object v2, v0, v3

    .line 33
    .line 34
    const/4 v3, 0x7

    .line 35
    aput-object v2, v0, v3

    .line 36
    .line 37
    const/16 v3, 0x8

    .line 38
    .line 39
    aput-object v2, v0, v3

    .line 40
    .line 41
    const/16 v3, 0x9

    .line 42
    .line 43
    aput-object v2, v0, v3

    .line 44
    .line 45
    const/16 v3, 0xa

    .line 46
    .line 47
    aput-object v1, v0, v3

    .line 48
    .line 49
    const/16 v3, 0xb

    .line 50
    .line 51
    aput-object v1, v0, v3

    .line 52
    .line 53
    const/16 v3, 0xc

    .line 54
    .line 55
    aput-object v2, v0, v3

    .line 56
    .line 57
    const/16 v3, 0xd

    .line 58
    .line 59
    aput-object v2, v0, v3

    .line 60
    .line 61
    const/16 v3, 0xe

    .line 62
    .line 63
    aput-object v2, v0, v3

    .line 64
    .line 65
    const/16 v3, 0xf

    .line 66
    .line 67
    aput-object v2, v0, v3

    .line 68
    .line 69
    const/16 v2, 0x10

    .line 70
    .line 71
    aput-object v1, v0, v2

    .line 72
    .line 73
    const/16 v1, 0x11

    .line 74
    .line 75
    aget-object v2, p0, v1

    .line 76
    .line 77
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    aput-object v2, v0, v1

    .line 82
    .line 83
    const/16 v1, 0x12

    .line 84
    .line 85
    aget-object v2, p0, v1

    .line 86
    .line 87
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    aput-object v2, v0, v1

    .line 92
    .line 93
    const/16 v1, 0x13

    .line 94
    .line 95
    aget-object v2, p0, v1

    .line 96
    .line 97
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    aput-object v2, v0, v1

    .line 102
    .line 103
    const/16 v1, 0x14

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
    .locals 39

    .line 1
    sget-object v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    sget-object v2, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->$childSerializers:[Lkotlin/Lazy;

    .line 10
    .line 11
    const-wide/16 v6, 0x0

    .line 12
    .line 13
    move-wide/from16 v16, v6

    .line 14
    .line 15
    move-wide/from16 v18, v16

    .line 16
    .line 17
    move-wide/from16 v20, v18

    .line 18
    .line 19
    move-wide/from16 v22, v20

    .line 20
    .line 21
    move-wide/from16 v26, v22

    .line 22
    .line 23
    move-wide/from16 v28, v26

    .line 24
    .line 25
    move-wide/from16 v30, v28

    .line 26
    .line 27
    move-wide/from16 v32, v30

    .line 28
    .line 29
    const/16 p0, 0x0

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x1

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v9, 0x0

    .line 36
    const/4 v10, 0x0

    .line 37
    const/4 v11, 0x0

    .line 38
    const/4 v12, 0x0

    .line 39
    const/4 v13, 0x0

    .line 40
    const/4 v14, 0x0

    .line 41
    const/4 v15, 0x0

    .line 42
    const/16 v24, 0x0

    .line 43
    .line 44
    const/16 v25, 0x0

    .line 45
    .line 46
    const/16 v34, 0x0

    .line 47
    .line 48
    const/16 v35, 0x0

    .line 49
    .line 50
    :goto_0
    if-eqz v6, :cond_0

    .line 51
    .line 52
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 53
    .line 54
    .line 55
    move-result v36

    .line 56
    packed-switch v36, :pswitch_data_0

    .line 57
    .line 58
    .line 59
    invoke-static/range {v36 .. v36}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 60
    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_0
    const/16 v4, 0x14

    .line 64
    .line 65
    aget-object v36, v2, v4

    .line 66
    .line 67
    invoke-interface/range {v36 .. v36}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v36

    .line 71
    move-object/from16 v3, v36

    .line 72
    .line 73
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 74
    .line 75
    invoke-interface {v1, v0, v4, v3, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    move-object v9, v3

    .line 80
    check-cast v9, Ljava/util/List;

    .line 81
    .line 82
    const/high16 v3, 0x100000

    .line 83
    .line 84
    :goto_1
    or-int/2addr v10, v3

    .line 85
    goto :goto_0

    .line 86
    :pswitch_1
    const/16 v3, 0x13

    .line 87
    .line 88
    aget-object v4, v2, v3

    .line 89
    .line 90
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 95
    .line 96
    invoke-interface {v1, v0, v3, v4, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    move-object v8, v3

    .line 101
    check-cast v8, Ljava/util/List;

    .line 102
    .line 103
    const/high16 v3, 0x80000

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :pswitch_2
    const/16 v3, 0x12

    .line 107
    .line 108
    aget-object v4, v2, v3

    .line 109
    .line 110
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 115
    .line 116
    invoke-interface {v1, v0, v3, v4, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    move-object v7, v3

    .line 121
    check-cast v7, Ljava/util/List;

    .line 122
    .line 123
    const/high16 v3, 0x40000

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :pswitch_3
    const/16 v3, 0x11

    .line 127
    .line 128
    aget-object v4, v2, v3

    .line 129
    .line 130
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 135
    .line 136
    invoke-interface {v1, v0, v3, v4, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    move-object v5, v3

    .line 141
    check-cast v5, Ljava/util/List;

    .line 142
    .line 143
    const/high16 v3, 0x20000

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :pswitch_4
    const/16 v3, 0x10

    .line 147
    .line 148
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 149
    .line 150
    .line 151
    move-result v35

    .line 152
    const/high16 v3, 0x10000

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :pswitch_5
    const/16 v3, 0xf

    .line 156
    .line 157
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 158
    .line 159
    .line 160
    move-result-wide v32

    .line 161
    const v3, 0x8000

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :pswitch_6
    const/16 v3, 0xe

    .line 166
    .line 167
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 168
    .line 169
    .line 170
    move-result-wide v30

    .line 171
    or-int/lit16 v10, v10, 0x4000

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :pswitch_7
    const/16 v3, 0xd

    .line 175
    .line 176
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 177
    .line 178
    .line 179
    move-result-wide v28

    .line 180
    or-int/lit16 v10, v10, 0x2000

    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :pswitch_8
    const/16 v3, 0xc

    .line 185
    .line 186
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 187
    .line 188
    .line 189
    move-result-wide v26

    .line 190
    or-int/lit16 v10, v10, 0x1000

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :pswitch_9
    const/16 v3, 0xb

    .line 195
    .line 196
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 197
    .line 198
    .line 199
    move-result v34

    .line 200
    or-int/lit16 v10, v10, 0x800

    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :pswitch_a
    const/16 v3, 0xa

    .line 205
    .line 206
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 207
    .line 208
    .line 209
    move-result v25

    .line 210
    or-int/lit16 v10, v10, 0x400

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :pswitch_b
    const/16 v3, 0x9

    .line 215
    .line 216
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 217
    .line 218
    .line 219
    move-result-wide v22

    .line 220
    or-int/lit16 v10, v10, 0x200

    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :pswitch_c
    const/16 v3, 0x8

    .line 225
    .line 226
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 227
    .line 228
    .line 229
    move-result-wide v20

    .line 230
    or-int/lit16 v10, v10, 0x100

    .line 231
    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :pswitch_d
    const/4 v3, 0x7

    .line 235
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 236
    .line 237
    .line 238
    move-result-wide v18

    .line 239
    or-int/lit16 v10, v10, 0x80

    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :pswitch_e
    const/4 v3, 0x6

    .line 244
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 245
    .line 246
    .line 247
    move-result-wide v16

    .line 248
    or-int/lit8 v10, v10, 0x40

    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :pswitch_f
    const/4 v3, 0x5

    .line 253
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 254
    .line 255
    .line 256
    move-result v24

    .line 257
    or-int/lit8 v10, v10, 0x20

    .line 258
    .line 259
    goto/16 :goto_0

    .line 260
    .line 261
    :pswitch_10
    sget-object v3, Lorg/wikipedia/json/LocalDateTimeSerializer;->INSTANCE:Lorg/wikipedia/json/LocalDateTimeSerializer;

    .line 262
    .line 263
    const/4 v4, 0x4

    .line 264
    invoke-interface {v1, v0, v4, v3, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    move-object v15, v3

    .line 269
    check-cast v15, Lj$/time/LocalDateTime;

    .line 270
    .line 271
    or-int/lit8 v10, v10, 0x10

    .line 272
    .line 273
    goto/16 :goto_0

    .line 274
    .line 275
    :pswitch_11
    sget-object v3, Lorg/wikipedia/json/LocalDateTimeSerializer;->INSTANCE:Lorg/wikipedia/json/LocalDateTimeSerializer;

    .line 276
    .line 277
    const/4 v4, 0x3

    .line 278
    invoke-interface {v1, v0, v4, v3, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    move-object v14, v3

    .line 283
    check-cast v14, Lj$/time/LocalDateTime;

    .line 284
    .line 285
    or-int/lit8 v10, v10, 0x8

    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :pswitch_12
    sget-object v3, Lorg/wikipedia/json/LocalDateTimeSerializer;->INSTANCE:Lorg/wikipedia/json/LocalDateTimeSerializer;

    .line 290
    .line 291
    const/4 v4, 0x2

    .line 292
    invoke-interface {v1, v0, v4, v3, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    move-object v13, v3

    .line 297
    check-cast v13, Lj$/time/LocalDateTime;

    .line 298
    .line 299
    or-int/lit8 v10, v10, 0x4

    .line 300
    .line 301
    goto/16 :goto_0

    .line 302
    .line 303
    :pswitch_13
    sget-object v3, Lorg/wikipedia/json/LocalDateTimeSerializer;->INSTANCE:Lorg/wikipedia/json/LocalDateTimeSerializer;

    .line 304
    .line 305
    const/4 v4, 0x1

    .line 306
    invoke-interface {v1, v0, v4, v3, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    move-object v12, v3

    .line 311
    check-cast v12, Lj$/time/LocalDateTime;

    .line 312
    .line 313
    or-int/lit8 v10, v10, 0x2

    .line 314
    .line 315
    goto/16 :goto_0

    .line 316
    .line 317
    :pswitch_14
    const/4 v3, 0x0

    .line 318
    const/4 v4, 0x1

    .line 319
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 320
    .line 321
    .line 322
    move-result v11

    .line 323
    or-int/lit8 v10, v10, 0x1

    .line 324
    .line 325
    goto/16 :goto_0

    .line 326
    .line 327
    :pswitch_15
    const/4 v3, 0x0

    .line 328
    const/4 v4, 0x1

    .line 329
    move v6, v3

    .line 330
    goto/16 :goto_0

    .line 331
    .line 332
    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 333
    .line 334
    .line 335
    move-object/from16 v37, v8

    .line 336
    .line 337
    new-instance v8, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;

    .line 338
    .line 339
    move-object/from16 v36, v7

    .line 340
    .line 341
    move-object/from16 v38, v9

    .line 342
    .line 343
    move v9, v10

    .line 344
    move v10, v11

    .line 345
    move-object v11, v12

    .line 346
    move-object v12, v13

    .line 347
    move-object v13, v14

    .line 348
    move-object v14, v15

    .line 349
    move/from16 v15, v24

    .line 350
    .line 351
    move/from16 v24, v25

    .line 352
    .line 353
    move/from16 v25, v34

    .line 354
    .line 355
    move/from16 v34, v35

    .line 356
    .line 357
    move-object/from16 v35, v5

    .line 358
    .line 359
    invoke-direct/range {v8 .. v38}, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;-><init>(IILj$/time/LocalDateTime;Lj$/time/LocalDateTime;Lj$/time/LocalDateTime;Lj$/time/LocalDateTime;IJJJJIIJJJJILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 360
    .line 361
    .line 362
    return-object v8

    .line 363
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_15
        :pswitch_14
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
    sget-object p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 33

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->hideDonateCountryCodes:Ljava/util/List;

    .line 9
    .line 10
    iget-object v2, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->hideCountryCodes:Ljava/util/List;

    .line 11
    .line 12
    iget-object v3, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->topReadPercentages:Ljava/util/List;

    .line 13
    .line 14
    iget-object v4, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->topReadEN:Ljava/util/List;

    .line 15
    .line 16
    iget v5, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->yearsReadEN:I

    .line 17
    .line 18
    iget-wide v6, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->hoursReadEN:J

    .line 19
    .line 20
    iget-wide v8, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->bytesAddedEN:J

    .line 21
    .line 22
    iget-wide v10, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->editsEN:J

    .line 23
    .line 24
    iget-wide v12, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->edits:J

    .line 25
    .line 26
    iget v14, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->averageArticlesReadPerYear:I

    .line 27
    .line 28
    iget v15, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->editsPerMinute:I

    .line 29
    .line 30
    move-object/from16 p0, v1

    .line 31
    .line 32
    move-object/from16 p2, v2

    .line 33
    .line 34
    iget-wide v1, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->editsApps:J

    .line 35
    .line 36
    move-object/from16 v16, v3

    .line 37
    .line 38
    move-object/from16 v17, v4

    .line 39
    .line 40
    iget-wide v3, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->viewsApps:J

    .line 41
    .line 42
    move/from16 v18, v5

    .line 43
    .line 44
    move-wide/from16 v19, v6

    .line 45
    .line 46
    iget-wide v5, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->savedArticlesApps:J

    .line 47
    .line 48
    move-wide/from16 v21, v8

    .line 49
    .line 50
    iget-wide v7, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->articles:J

    .line 51
    .line 52
    iget v9, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->languages:I

    .line 53
    .line 54
    move-wide/from16 v23, v10

    .line 55
    .line 56
    iget-object v10, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->dataEndDate:Lj$/time/LocalDateTime;

    .line 57
    .line 58
    iget-object v11, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->dataStartDate:Lj$/time/LocalDateTime;

    .line 59
    .line 60
    move-wide/from16 v25, v12

    .line 61
    .line 62
    iget-object v12, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->activeEndDate:Lj$/time/LocalDateTime;

    .line 63
    .line 64
    iget-object v13, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->activeStartDate:Lj$/time/LocalDateTime;

    .line 65
    .line 66
    iget v0, v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->year:I

    .line 67
    .line 68
    move/from16 v27, v14

    .line 69
    .line 70
    sget-object v14, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 71
    .line 72
    move/from16 v28, v15

    .line 73
    .line 74
    move-object/from16 v15, p1

    .line 75
    .line 76
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 77
    .line 78
    .line 79
    move-result-object v15

    .line 80
    sget-object v29, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigYearInReview;->$childSerializers:[Lkotlin/Lazy;

    .line 81
    .line 82
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 83
    .line 84
    .line 85
    move-result v30

    .line 86
    if-eqz v30, :cond_0

    .line 87
    .line 88
    :goto_0
    move-wide/from16 v31, v1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_0
    if-eqz v0, :cond_1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :goto_1
    const/4 v1, 0x0

    .line 95
    invoke-virtual {v15, v1, v0, v14}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_1
    move-wide/from16 v31, v1

    .line 100
    .line 101
    :goto_2
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_2
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_3

    .line 120
    .line 121
    :goto_3
    sget-object v0, Lorg/wikipedia/json/LocalDateTimeSerializer;->INSTANCE:Lorg/wikipedia/json/LocalDateTimeSerializer;

    .line 122
    .line 123
    const/4 v1, 0x1

    .line 124
    invoke-virtual {v15, v14, v1, v0, v13}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_4

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_4
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_5

    .line 146
    .line 147
    :goto_4
    sget-object v0, Lorg/wikipedia/json/LocalDateTimeSerializer;->INSTANCE:Lorg/wikipedia/json/LocalDateTimeSerializer;

    .line 148
    .line 149
    const/4 v1, 0x2

    .line 150
    invoke-virtual {v15, v14, v1, v0, v12}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_5
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_6

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_6
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-nez v0, :cond_7

    .line 172
    .line 173
    :goto_5
    sget-object v0, Lorg/wikipedia/json/LocalDateTimeSerializer;->INSTANCE:Lorg/wikipedia/json/LocalDateTimeSerializer;

    .line 174
    .line 175
    const/4 v1, 0x3

    .line 176
    invoke-virtual {v15, v14, v1, v0, v11}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_7
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_8

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_8
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-nez v0, :cond_9

    .line 198
    .line 199
    :goto_6
    sget-object v0, Lorg/wikipedia/json/LocalDateTimeSerializer;->INSTANCE:Lorg/wikipedia/json/LocalDateTimeSerializer;

    .line 200
    .line 201
    const/4 v1, 0x4

    .line 202
    invoke-virtual {v15, v14, v1, v0, v10}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    :cond_9
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_a

    .line 210
    .line 211
    goto :goto_7

    .line 212
    :cond_a
    if-eqz v9, :cond_b

    .line 213
    .line 214
    :goto_7
    const/4 v0, 0x5

    .line 215
    invoke-virtual {v15, v0, v9, v14}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 216
    .line 217
    .line 218
    :cond_b
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    const-wide/16 v1, 0x0

    .line 223
    .line 224
    if-eqz v0, :cond_c

    .line 225
    .line 226
    goto :goto_8

    .line 227
    :cond_c
    cmp-long v0, v7, v1

    .line 228
    .line 229
    if-eqz v0, :cond_d

    .line 230
    .line 231
    :goto_8
    const/4 v0, 0x6

    .line 232
    invoke-virtual {v15, v14, v0, v7, v8}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 233
    .line 234
    .line 235
    :cond_d
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_e

    .line 240
    .line 241
    goto :goto_9

    .line 242
    :cond_e
    cmp-long v0, v5, v1

    .line 243
    .line 244
    if-eqz v0, :cond_f

    .line 245
    .line 246
    :goto_9
    const/4 v0, 0x7

    .line 247
    invoke-virtual {v15, v14, v0, v5, v6}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 248
    .line 249
    .line 250
    :cond_f
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_10

    .line 255
    .line 256
    goto :goto_a

    .line 257
    :cond_10
    cmp-long v0, v3, v1

    .line 258
    .line 259
    if-eqz v0, :cond_11

    .line 260
    .line 261
    :goto_a
    const/16 v0, 0x8

    .line 262
    .line 263
    invoke-virtual {v15, v14, v0, v3, v4}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 264
    .line 265
    .line 266
    :cond_11
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_12

    .line 271
    .line 272
    goto :goto_b

    .line 273
    :cond_12
    cmp-long v0, v31, v1

    .line 274
    .line 275
    if-eqz v0, :cond_13

    .line 276
    .line 277
    :goto_b
    const/16 v0, 0x9

    .line 278
    .line 279
    move-wide/from16 v3, v31

    .line 280
    .line 281
    invoke-virtual {v15, v14, v0, v3, v4}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 282
    .line 283
    .line 284
    :cond_13
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_14

    .line 289
    .line 290
    goto :goto_c

    .line 291
    :cond_14
    if-eqz v28, :cond_15

    .line 292
    .line 293
    :goto_c
    const/16 v0, 0xa

    .line 294
    .line 295
    move/from16 v3, v28

    .line 296
    .line 297
    invoke-virtual {v15, v0, v3, v14}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 298
    .line 299
    .line 300
    :cond_15
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_16

    .line 305
    .line 306
    goto :goto_d

    .line 307
    :cond_16
    if-eqz v27, :cond_17

    .line 308
    .line 309
    :goto_d
    const/16 v0, 0xb

    .line 310
    .line 311
    move/from16 v3, v27

    .line 312
    .line 313
    invoke-virtual {v15, v0, v3, v14}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 314
    .line 315
    .line 316
    :cond_17
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-eqz v0, :cond_18

    .line 321
    .line 322
    goto :goto_e

    .line 323
    :cond_18
    cmp-long v0, v25, v1

    .line 324
    .line 325
    if-eqz v0, :cond_19

    .line 326
    .line 327
    :goto_e
    const/16 v0, 0xc

    .line 328
    .line 329
    move-wide/from16 v3, v25

    .line 330
    .line 331
    invoke-virtual {v15, v14, v0, v3, v4}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 332
    .line 333
    .line 334
    :cond_19
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-eqz v0, :cond_1a

    .line 339
    .line 340
    goto :goto_f

    .line 341
    :cond_1a
    cmp-long v0, v23, v1

    .line 342
    .line 343
    if-eqz v0, :cond_1b

    .line 344
    .line 345
    :goto_f
    const/16 v0, 0xd

    .line 346
    .line 347
    move-wide/from16 v3, v23

    .line 348
    .line 349
    invoke-virtual {v15, v14, v0, v3, v4}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 350
    .line 351
    .line 352
    :cond_1b
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-eqz v0, :cond_1c

    .line 357
    .line 358
    goto :goto_10

    .line 359
    :cond_1c
    cmp-long v0, v21, v1

    .line 360
    .line 361
    if-eqz v0, :cond_1d

    .line 362
    .line 363
    :goto_10
    const/16 v0, 0xe

    .line 364
    .line 365
    move-wide/from16 v3, v21

    .line 366
    .line 367
    invoke-virtual {v15, v14, v0, v3, v4}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 368
    .line 369
    .line 370
    :cond_1d
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-eqz v0, :cond_1e

    .line 375
    .line 376
    goto :goto_11

    .line 377
    :cond_1e
    cmp-long v0, v19, v1

    .line 378
    .line 379
    if-eqz v0, :cond_1f

    .line 380
    .line 381
    :goto_11
    const/16 v0, 0xf

    .line 382
    .line 383
    move-wide/from16 v1, v19

    .line 384
    .line 385
    invoke-virtual {v15, v14, v0, v1, v2}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 386
    .line 387
    .line 388
    :cond_1f
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_20

    .line 393
    .line 394
    goto :goto_12

    .line 395
    :cond_20
    if-eqz v18, :cond_21

    .line 396
    .line 397
    :goto_12
    const/16 v0, 0x10

    .line 398
    .line 399
    move/from16 v1, v18

    .line 400
    .line 401
    invoke-virtual {v15, v0, v1, v14}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 402
    .line 403
    .line 404
    :cond_21
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 409
    .line 410
    if-eqz v0, :cond_22

    .line 411
    .line 412
    move-object/from16 v0, v17

    .line 413
    .line 414
    goto :goto_13

    .line 415
    :cond_22
    move-object/from16 v0, v17

    .line 416
    .line 417
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    if-nez v2, :cond_23

    .line 422
    .line 423
    :goto_13
    const/16 v2, 0x11

    .line 424
    .line 425
    aget-object v3, v29, v2

    .line 426
    .line 427
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 432
    .line 433
    invoke-virtual {v15, v14, v2, v3, v0}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    :cond_23
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    if-eqz v0, :cond_24

    .line 441
    .line 442
    move-object/from16 v0, v16

    .line 443
    .line 444
    goto :goto_14

    .line 445
    :cond_24
    move-object/from16 v0, v16

    .line 446
    .line 447
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    if-nez v2, :cond_25

    .line 452
    .line 453
    :goto_14
    const/16 v2, 0x12

    .line 454
    .line 455
    aget-object v3, v29, v2

    .line 456
    .line 457
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 462
    .line 463
    invoke-virtual {v15, v14, v2, v3, v0}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    :cond_25
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    if-eqz v0, :cond_26

    .line 471
    .line 472
    move-object/from16 v0, p2

    .line 473
    .line 474
    goto :goto_15

    .line 475
    :cond_26
    move-object/from16 v0, p2

    .line 476
    .line 477
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    if-nez v2, :cond_27

    .line 482
    .line 483
    :goto_15
    const/16 v2, 0x13

    .line 484
    .line 485
    aget-object v3, v29, v2

    .line 486
    .line 487
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 492
    .line 493
    invoke-virtual {v15, v14, v2, v3, v0}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 494
    .line 495
    .line 496
    :cond_27
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 497
    .line 498
    .line 499
    move-result v0

    .line 500
    if-eqz v0, :cond_28

    .line 501
    .line 502
    move-object/from16 v0, p0

    .line 503
    .line 504
    goto :goto_16

    .line 505
    :cond_28
    move-object/from16 v0, p0

    .line 506
    .line 507
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    if-nez v1, :cond_29

    .line 512
    .line 513
    :goto_16
    const/16 v1, 0x14

    .line 514
    .line 515
    aget-object v2, v29, v1

    .line 516
    .line 517
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 522
    .line 523
    invoke-virtual {v15, v14, v1, v2, v0}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    :cond_29
    invoke-virtual {v15, v14}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 527
    .line 528
    .line 529
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
