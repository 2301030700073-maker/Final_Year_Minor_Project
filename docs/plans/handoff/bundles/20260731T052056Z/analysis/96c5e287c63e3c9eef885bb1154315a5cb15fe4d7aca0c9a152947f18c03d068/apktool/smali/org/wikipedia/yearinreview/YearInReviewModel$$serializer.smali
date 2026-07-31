.class public final synthetic Lorg/wikipedia/yearinreview/YearInReviewModel$$serializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final INSTANCE:Lorg/wikipedia/yearinreview/YearInReviewModel$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/yearinreview/YearInReviewModel$$serializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/yearinreview/YearInReviewModel$$serializer;->INSTANCE:Lorg/wikipedia/yearinreview/YearInReviewModel$$serializer;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "org.wikipedia.yearinreview.YearInReviewModel"

    .line 11
    .line 12
    const/16 v3, 0x14

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "totalReadingTimeMinutes"

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const-string v0, "localReadingArticlesCount"

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    const-string v0, "localSavedArticlesCount"

    .line 30
    .line 31
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    const-string v0, "localSavedArticles"

    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    const-string v0, "localTopVisitedArticles"

    .line 40
    .line 41
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    const-string v0, "localTopCategories"

    .line 45
    .line 46
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const-string v0, "favoriteTimeToRead"

    .line 50
    .line 51
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    const-string v0, "favoriteDayToRead"

    .line 55
    .line 56
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    const-string v0, "favoriteMonthDidMostReading"

    .line 60
    .line 61
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    const-string v0, "largestClusterLocation"

    .line 65
    .line 66
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    const-string v0, "largestClusterTopLeft"

    .line 70
    .line 71
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    const-string v0, "largestClusterBottomRight"

    .line 75
    .line 76
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    const-string v0, "largestClusterCountryName"

    .line 80
    .line 81
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    const-string v0, "largestClusterArticles"

    .line 85
    .line 86
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 87
    .line 88
    .line 89
    const-string/jumbo v0, "userEditsCount"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    const-string/jumbo v0, "userEditsViewedTimes"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    const-string v0, "isCustomIconUnlocked"

    .line 102
    .line 103
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    const-string v0, "slideViewedCount"

    .line 107
    .line 108
    const/4 v2, 0x1

    .line 109
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 110
    .line 111
    .line 112
    const-string v0, "isReadingListDialogShown"

    .line 113
    .line 114
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 115
    .line 116
    .line 117
    const-string v0, "isReadingListCreated"

    .line 118
    .line 119
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 120
    .line 121
    .line 122
    sput-object v1, Lorg/wikipedia/yearinreview/YearInReviewModel$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 123
    .line 124
    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 5

    .line 1
    sget-object p0, Lorg/wikipedia/yearinreview/YearInReviewModel;->$childSerializers:[Lkotlin/Lazy;

    .line 2
    .line 3
    const/16 v0, 0x14

    .line 4
    .line 5
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 6
    .line 7
    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v1, v0, v2

    .line 11
    .line 12
    sget-object v2, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

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
    aget-object v4, p0, v3

    .line 22
    .line 23
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    aput-object v4, v0, v3

    .line 28
    .line 29
    const/4 v3, 0x4

    .line 30
    aget-object v4, p0, v3

    .line 31
    .line 32
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    aput-object v4, v0, v3

    .line 37
    .line 38
    const/4 v3, 0x5

    .line 39
    aget-object v4, p0, v3

    .line 40
    .line 41
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    aput-object v4, v0, v3

    .line 46
    .line 47
    const/4 v3, 0x6

    .line 48
    aput-object v2, v0, v3

    .line 49
    .line 50
    const/4 v3, 0x7

    .line 51
    aput-object v2, v0, v3

    .line 52
    .line 53
    const/16 v3, 0x8

    .line 54
    .line 55
    aput-object v2, v0, v3

    .line 56
    .line 57
    const/16 v3, 0x9

    .line 58
    .line 59
    aget-object v4, p0, v3

    .line 60
    .line 61
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    aput-object v4, v0, v3

    .line 66
    .line 67
    const/16 v3, 0xa

    .line 68
    .line 69
    aget-object v4, p0, v3

    .line 70
    .line 71
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    aput-object v4, v0, v3

    .line 76
    .line 77
    const/16 v3, 0xb

    .line 78
    .line 79
    aget-object v4, p0, v3

    .line 80
    .line 81
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    aput-object v4, v0, v3

    .line 86
    .line 87
    const/16 v3, 0xc

    .line 88
    .line 89
    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 90
    .line 91
    aput-object v4, v0, v3

    .line 92
    .line 93
    const/16 v3, 0xd

    .line 94
    .line 95
    aget-object p0, p0, v3

    .line 96
    .line 97
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    aput-object p0, v0, v3

    .line 102
    .line 103
    const/16 p0, 0xe

    .line 104
    .line 105
    aput-object v2, v0, p0

    .line 106
    .line 107
    const/16 p0, 0xf

    .line 108
    .line 109
    aput-object v1, v0, p0

    .line 110
    .line 111
    sget-object p0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 112
    .line 113
    const/16 v1, 0x10

    .line 114
    .line 115
    aput-object p0, v0, v1

    .line 116
    .line 117
    const/16 v1, 0x11

    .line 118
    .line 119
    aput-object v2, v0, v1

    .line 120
    .line 121
    const/16 v1, 0x12

    .line 122
    .line 123
    aput-object p0, v0, v1

    .line 124
    .line 125
    const/16 v1, 0x13

    .line 126
    .line 127
    aput-object p0, v0, v1

    .line 128
    .line 129
    return-object v0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 32

    .line 1
    sget-object v0, Lorg/wikipedia/yearinreview/YearInReviewModel$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    sget-object v2, Lorg/wikipedia/yearinreview/YearInReviewModel;->$childSerializers:[Lkotlin/Lazy;

    .line 10
    .line 11
    const-wide/16 v5, 0x0

    .line 12
    .line 13
    move-wide v10, v5

    .line 14
    move-wide/from16 v26, v10

    .line 15
    .line 16
    const/16 p0, 0x0

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v8, 0x0

    .line 24
    const/4 v9, 0x0

    .line 25
    const/4 v12, 0x0

    .line 26
    const/4 v13, 0x0

    .line 27
    const/4 v14, 0x0

    .line 28
    const/4 v15, 0x0

    .line 29
    const/16 v17, 0x0

    .line 30
    .line 31
    const/16 v18, 0x0

    .line 32
    .line 33
    const/16 v19, 0x0

    .line 34
    .line 35
    const/16 v23, 0x0

    .line 36
    .line 37
    const/16 v25, 0x0

    .line 38
    .line 39
    const/16 v28, 0x0

    .line 40
    .line 41
    const/16 v29, 0x0

    .line 42
    .line 43
    const/16 v30, 0x0

    .line 44
    .line 45
    const/16 v31, 0x0

    .line 46
    .line 47
    :goto_0
    if-eqz v5, :cond_0

    .line 48
    .line 49
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 50
    .line 51
    .line 52
    move-result v20

    .line 53
    packed-switch v20, :pswitch_data_0

    .line 54
    .line 55
    .line 56
    invoke-static/range {v20 .. v20}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(I)V

    .line 57
    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_0
    move-object/from16 v20, v2

    .line 61
    .line 62
    const/16 v2, 0x13

    .line 63
    .line 64
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 65
    .line 66
    .line 67
    move-result v31

    .line 68
    const/high16 v2, 0x80000

    .line 69
    .line 70
    :goto_1
    or-int/2addr v9, v2

    .line 71
    :goto_2
    move-object/from16 v2, v20

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_1
    move-object/from16 v20, v2

    .line 75
    .line 76
    const/16 v2, 0x12

    .line 77
    .line 78
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 79
    .line 80
    .line 81
    move-result v30

    .line 82
    const/high16 v2, 0x40000

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :pswitch_2
    move-object/from16 v20, v2

    .line 86
    .line 87
    const/16 v2, 0x11

    .line 88
    .line 89
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 90
    .line 91
    .line 92
    move-result v29

    .line 93
    const/high16 v2, 0x20000

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :pswitch_3
    move-object/from16 v20, v2

    .line 97
    .line 98
    const/16 v2, 0x10

    .line 99
    .line 100
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 101
    .line 102
    .line 103
    move-result v28

    .line 104
    const/high16 v2, 0x10000

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :pswitch_4
    move-object/from16 v20, v2

    .line 108
    .line 109
    const/16 v2, 0xf

    .line 110
    .line 111
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 112
    .line 113
    .line 114
    move-result-wide v26

    .line 115
    const v2, 0x8000

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :pswitch_5
    move-object/from16 v20, v2

    .line 120
    .line 121
    const/16 v2, 0xe

    .line 122
    .line 123
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 124
    .line 125
    .line 126
    move-result v25

    .line 127
    or-int/lit16 v9, v9, 0x4000

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :pswitch_6
    move-object/from16 v20, v2

    .line 131
    .line 132
    const/16 v2, 0xd

    .line 133
    .line 134
    aget-object v21, v20, v2

    .line 135
    .line 136
    invoke-interface/range {v21 .. v21}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v21

    .line 140
    move/from16 v22, v5

    .line 141
    .line 142
    move-object/from16 v5, v21

    .line 143
    .line 144
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 145
    .line 146
    invoke-interface {v1, v0, v2, v5, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    move-object v3, v2

    .line 151
    check-cast v3, Ljava/util/List;

    .line 152
    .line 153
    or-int/lit16 v9, v9, 0x2000

    .line 154
    .line 155
    :goto_3
    move-object/from16 v2, v20

    .line 156
    .line 157
    move/from16 v5, v22

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :pswitch_7
    move-object/from16 v20, v2

    .line 161
    .line 162
    move/from16 v22, v5

    .line 163
    .line 164
    const/16 v2, 0xc

    .line 165
    .line 166
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v23

    .line 170
    or-int/lit16 v9, v9, 0x1000

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :pswitch_8
    move-object/from16 v20, v2

    .line 174
    .line 175
    move/from16 v22, v5

    .line 176
    .line 177
    const/16 v2, 0xb

    .line 178
    .line 179
    aget-object v5, v20, v2

    .line 180
    .line 181
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 186
    .line 187
    invoke-interface {v1, v0, v2, v5, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    move-object v4, v2

    .line 192
    check-cast v4, Lkotlin/Pair;

    .line 193
    .line 194
    or-int/lit16 v9, v9, 0x800

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :pswitch_9
    move-object/from16 v20, v2

    .line 198
    .line 199
    move/from16 v22, v5

    .line 200
    .line 201
    const/16 v2, 0xa

    .line 202
    .line 203
    aget-object v5, v20, v2

    .line 204
    .line 205
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 210
    .line 211
    invoke-interface {v1, v0, v2, v5, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    move-object v7, v2

    .line 216
    check-cast v7, Lkotlin/Pair;

    .line 217
    .line 218
    or-int/lit16 v9, v9, 0x400

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :pswitch_a
    move-object/from16 v20, v2

    .line 222
    .line 223
    move/from16 v22, v5

    .line 224
    .line 225
    const/16 v2, 0x9

    .line 226
    .line 227
    aget-object v5, v20, v2

    .line 228
    .line 229
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 234
    .line 235
    invoke-interface {v1, v0, v2, v5, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    move-object v8, v2

    .line 240
    check-cast v8, Lkotlin/Pair;

    .line 241
    .line 242
    or-int/lit16 v9, v9, 0x200

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :pswitch_b
    move-object/from16 v20, v2

    .line 246
    .line 247
    move/from16 v22, v5

    .line 248
    .line 249
    const/16 v2, 0x8

    .line 250
    .line 251
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 252
    .line 253
    .line 254
    move-result v19

    .line 255
    or-int/lit16 v9, v9, 0x100

    .line 256
    .line 257
    goto/16 :goto_2

    .line 258
    .line 259
    :pswitch_c
    move-object/from16 v20, v2

    .line 260
    .line 261
    move/from16 v22, v5

    .line 262
    .line 263
    const/4 v2, 0x7

    .line 264
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 265
    .line 266
    .line 267
    move-result v18

    .line 268
    or-int/lit16 v9, v9, 0x80

    .line 269
    .line 270
    goto/16 :goto_2

    .line 271
    .line 272
    :pswitch_d
    move-object/from16 v20, v2

    .line 273
    .line 274
    move/from16 v22, v5

    .line 275
    .line 276
    const/4 v2, 0x6

    .line 277
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 278
    .line 279
    .line 280
    move-result v17

    .line 281
    or-int/lit8 v9, v9, 0x40

    .line 282
    .line 283
    goto/16 :goto_2

    .line 284
    .line 285
    :pswitch_e
    move-object/from16 v20, v2

    .line 286
    .line 287
    move/from16 v22, v5

    .line 288
    .line 289
    const/4 v2, 0x5

    .line 290
    aget-object v5, v20, v2

    .line 291
    .line 292
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 297
    .line 298
    invoke-interface {v1, v0, v2, v5, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    move-object v6, v2

    .line 303
    check-cast v6, Ljava/util/List;

    .line 304
    .line 305
    or-int/lit8 v9, v9, 0x20

    .line 306
    .line 307
    goto/16 :goto_3

    .line 308
    .line 309
    :pswitch_f
    move-object/from16 v20, v2

    .line 310
    .line 311
    move/from16 v22, v5

    .line 312
    .line 313
    const/4 v2, 0x4

    .line 314
    aget-object v5, v20, v2

    .line 315
    .line 316
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v5

    .line 320
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 321
    .line 322
    invoke-interface {v1, v0, v2, v5, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    move-object v15, v2

    .line 327
    check-cast v15, Ljava/util/List;

    .line 328
    .line 329
    or-int/lit8 v9, v9, 0x10

    .line 330
    .line 331
    goto/16 :goto_3

    .line 332
    .line 333
    :pswitch_10
    move-object/from16 v20, v2

    .line 334
    .line 335
    move/from16 v22, v5

    .line 336
    .line 337
    const/4 v2, 0x3

    .line 338
    aget-object v5, v20, v2

    .line 339
    .line 340
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 345
    .line 346
    invoke-interface {v1, v0, v2, v5, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    move-object v14, v2

    .line 351
    check-cast v14, Ljava/util/List;

    .line 352
    .line 353
    or-int/lit8 v9, v9, 0x8

    .line 354
    .line 355
    goto/16 :goto_3

    .line 356
    .line 357
    :pswitch_11
    move-object/from16 v20, v2

    .line 358
    .line 359
    move/from16 v22, v5

    .line 360
    .line 361
    const/4 v2, 0x2

    .line 362
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 363
    .line 364
    .line 365
    move-result v13

    .line 366
    or-int/lit8 v9, v9, 0x4

    .line 367
    .line 368
    goto/16 :goto_2

    .line 369
    .line 370
    :pswitch_12
    move-object/from16 v20, v2

    .line 371
    .line 372
    move/from16 v22, v5

    .line 373
    .line 374
    const/4 v2, 0x1

    .line 375
    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    .line 376
    .line 377
    .line 378
    move-result v12

    .line 379
    or-int/lit8 v9, v9, 0x2

    .line 380
    .line 381
    goto/16 :goto_2

    .line 382
    .line 383
    :pswitch_13
    move-object/from16 v20, v2

    .line 384
    .line 385
    move/from16 v22, v5

    .line 386
    .line 387
    const/4 v2, 0x1

    .line 388
    const/4 v5, 0x0

    .line 389
    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    .line 390
    .line 391
    .line 392
    move-result-wide v10

    .line 393
    or-int/lit8 v9, v9, 0x1

    .line 394
    .line 395
    goto/16 :goto_3

    .line 396
    .line 397
    :pswitch_14
    const/4 v5, 0x0

    .line 398
    goto/16 :goto_0

    .line 399
    .line 400
    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 401
    .line 402
    .line 403
    move-object/from16 v20, v8

    .line 404
    .line 405
    new-instance v8, Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 406
    .line 407
    move-object/from16 v24, v3

    .line 408
    .line 409
    move-object/from16 v22, v4

    .line 410
    .line 411
    move-object/from16 v16, v6

    .line 412
    .line 413
    move-object/from16 v21, v7

    .line 414
    .line 415
    invoke-direct/range {v8 .. v31}, Lorg/wikipedia/yearinreview/YearInReviewModel;-><init>(IJIILjava/util/List;Ljava/util/List;Ljava/util/List;IIILkotlin/Pair;Lkotlin/Pair;Lkotlin/Pair;Ljava/lang/String;Ljava/util/List;IJZIZZ)V

    .line 416
    .line 417
    .line 418
    return-object v8

    .line 419
    :pswitch_data_0
    .packed-switch -0x1
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
    sget-object p0, Lorg/wikipedia/yearinreview/YearInReviewModel$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p2, Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lorg/wikipedia/yearinreview/YearInReviewModel$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/uuid/UuidKt;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->$childSerializers:[Lkotlin/Lazy;

    .line 13
    .line 14
    iget-wide v1, p2, Lorg/wikipedia/yearinreview/YearInReviewModel;->totalReadingTimeMinutes:J

    .line 15
    .line 16
    iget-boolean v3, p2, Lorg/wikipedia/yearinreview/YearInReviewModel;->isReadingListCreated:Z

    .line 17
    .line 18
    iget-boolean v4, p2, Lorg/wikipedia/yearinreview/YearInReviewModel;->isReadingListDialogShown:Z

    .line 19
    .line 20
    iget v5, p2, Lorg/wikipedia/yearinreview/YearInReviewModel;->slideViewedCount:I

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    invoke-virtual {p1, p0, v6, v1, v2}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    iget v2, p2, Lorg/wikipedia/yearinreview/YearInReviewModel;->localReadingArticlesCount:I

    .line 28
    .line 29
    invoke-virtual {p1, v1, v2, p0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    iget v2, p2, Lorg/wikipedia/yearinreview/YearInReviewModel;->localSavedArticlesCount:I

    .line 34
    .line 35
    invoke-virtual {p1, v1, v2, p0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    aget-object v2, v0, v1

    .line 40
    .line 41
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 46
    .line 47
    iget-object v6, p2, Lorg/wikipedia/yearinreview/YearInReviewModel;->localSavedArticles:Ljava/util/List;

    .line 48
    .line 49
    invoke-virtual {p1, p0, v1, v2, v6}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x4

    .line 53
    aget-object v2, v0, v1

    .line 54
    .line 55
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 60
    .line 61
    iget-object v6, p2, Lorg/wikipedia/yearinreview/YearInReviewModel;->localTopVisitedArticles:Ljava/util/List;

    .line 62
    .line 63
    invoke-virtual {p1, p0, v1, v2, v6}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const/4 v1, 0x5

    .line 67
    aget-object v2, v0, v1

    .line 68
    .line 69
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 74
    .line 75
    iget-object v6, p2, Lorg/wikipedia/yearinreview/YearInReviewModel;->localTopCategories:Ljava/util/List;

    .line 76
    .line 77
    invoke-virtual {p1, p0, v1, v2, v6}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const/4 v1, 0x6

    .line 81
    iget v2, p2, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteTimeToRead:I

    .line 82
    .line 83
    invoke-virtual {p1, v1, v2, p0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 84
    .line 85
    .line 86
    const/4 v1, 0x7

    .line 87
    iget v2, p2, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteDayToRead:I

    .line 88
    .line 89
    invoke-virtual {p1, v1, v2, p0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 90
    .line 91
    .line 92
    const/16 v1, 0x8

    .line 93
    .line 94
    iget v2, p2, Lorg/wikipedia/yearinreview/YearInReviewModel;->favoriteMonthDidMostReading:I

    .line 95
    .line 96
    invoke-virtual {p1, v1, v2, p0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 97
    .line 98
    .line 99
    const/16 v1, 0x9

    .line 100
    .line 101
    aget-object v2, v0, v1

    .line 102
    .line 103
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 108
    .line 109
    iget-object v6, p2, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterLocation:Lkotlin/Pair;

    .line 110
    .line 111
    invoke-virtual {p1, p0, v1, v2, v6}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    const/16 v1, 0xa

    .line 115
    .line 116
    aget-object v2, v0, v1

    .line 117
    .line 118
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 123
    .line 124
    iget-object v6, p2, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterTopLeft:Lkotlin/Pair;

    .line 125
    .line 126
    invoke-virtual {p1, p0, v1, v2, v6}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    const/16 v1, 0xb

    .line 130
    .line 131
    aget-object v2, v0, v1

    .line 132
    .line 133
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 138
    .line 139
    iget-object v6, p2, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterBottomRight:Lkotlin/Pair;

    .line 140
    .line 141
    invoke-virtual {p1, p0, v1, v2, v6}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    const/16 v1, 0xc

    .line 145
    .line 146
    iget-object v2, p2, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterCountryName:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {p1, p0, v1, v2}, Lkotlin/uuid/UuidKt;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const/16 v1, 0xd

    .line 152
    .line 153
    aget-object v0, v0, v1

    .line 154
    .line 155
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 160
    .line 161
    iget-object v2, p2, Lorg/wikipedia/yearinreview/YearInReviewModel;->largestClusterArticles:Ljava/util/List;

    .line 162
    .line 163
    invoke-virtual {p1, p0, v1, v0, v2}, Lkotlin/uuid/UuidKt;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    const/16 v0, 0xe

    .line 167
    .line 168
    iget v1, p2, Lorg/wikipedia/yearinreview/YearInReviewModel;->userEditsCount:I

    .line 169
    .line 170
    invoke-virtual {p1, v0, v1, p0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 171
    .line 172
    .line 173
    const/16 v0, 0xf

    .line 174
    .line 175
    iget-wide v1, p2, Lorg/wikipedia/yearinreview/YearInReviewModel;->userEditsViewedTimes:J

    .line 176
    .line 177
    invoke-virtual {p1, p0, v0, v1, v2}, Lkotlin/uuid/UuidKt;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 178
    .line 179
    .line 180
    const/16 v0, 0x10

    .line 181
    .line 182
    iget-boolean p2, p2, Lorg/wikipedia/yearinreview/YearInReviewModel;->isCustomIconUnlocked:Z

    .line 183
    .line 184
    invoke-virtual {p1, p0, v0, p2}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    if-eqz p2, :cond_0

    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_0
    if-eqz v5, :cond_1

    .line 195
    .line 196
    :goto_0
    const/16 p2, 0x11

    .line 197
    .line 198
    invoke-virtual {p1, p2, v5, p0}, Lkotlin/uuid/UuidKt;->encodeIntElement(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 199
    .line 200
    .line 201
    :cond_1
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    if-eqz p2, :cond_2

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_2
    if-eqz v4, :cond_3

    .line 209
    .line 210
    :goto_1
    const/16 p2, 0x12

    .line 211
    .line 212
    invoke-virtual {p1, p0, p2, v4}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 213
    .line 214
    .line 215
    :cond_3
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 216
    .line 217
    .line 218
    move-result p2

    .line 219
    if-eqz p2, :cond_4

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_4
    if-eqz v3, :cond_5

    .line 223
    .line 224
    :goto_2
    const/16 p2, 0x13

    .line 225
    .line 226
    invoke-virtual {p1, p0, p2, v3}, Lkotlin/uuid/UuidKt;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 227
    .line 228
    .line 229
    :cond_5
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 230
    .line 231
    .line 232
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
