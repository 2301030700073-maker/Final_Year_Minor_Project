.class public final Lorg/wikipedia/dataclient/mwapi/MwQueryPage;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Companion;


# instance fields
.field public final actions:Ljava/util/Map;

.field public final categories:Ljava/util/List;

.field public convertedFrom:Ljava/lang/String;

.field public convertedTo:Ljava/lang/String;

.field public final coordinates:Ljava/util/List;

.field public final description:Ljava/lang/String;

.field public final descriptionSource:Ljava/lang/String;

.field public final difficulty:Ljava/lang/String;

.field public final editintro:Lkotlinx/serialization/json/JsonElement;

.field public final entityTerms:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$EntityTerms;

.field public final extract:Ljava/lang/String;

.field public final growthimagesuggestiondata:Ljava/util/List;

.field public final imageInfo:Ljava/util/List;

.field public final imagerepository:Ljava/lang/String;

.field public final index:I

.field public final langlinks:Ljava/util/List;

.field public final lastrevid:J

.field public final ns:I

.field public final pageId:I

.field public final pageProps:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;

.field public final pageViewsMap:Ljava/util/Map;

.field public final protection:Ljava/util/List;

.field public final qualityGateIds:Ljava/util/List;

.field public redirectFrom:Ljava/lang/String;

.field public final revisions:Ljava/util/List;

.field public final sectionTitle:Ljava/lang/String;

.field public final snippet:Ljava/lang/String;

.field public final tasktype:Ljava/lang/String;

.field public final thumbnail:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Thumbnail;

.field public title:Ljava/lang/String;

.field public final varianttitles:Ljava/util/Map;

.field public final videoInfo:Ljava/util/List;

.field public final watched:Z

.field public final watchlistExpiry:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    const/4 v4, 0x5

    .line 23
    invoke-direct {v3, v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v3}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    new-instance v5, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    const/4 v6, 0x6

    .line 33
    invoke-direct {v5, v6}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v5}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    new-instance v7, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    const/4 v8, 0x7

    .line 43
    invoke-direct {v7, v8}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v7}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    new-instance v9, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    const/16 v10, 0x8

    .line 53
    .line 54
    invoke-direct {v9, v10}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v9}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    new-instance v11, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    const/16 v12, 0x9

    .line 64
    .line 65
    invoke-direct {v11, v12}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v11}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    new-instance v13, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 73
    .line 74
    const/16 v14, 0xa

    .line 75
    .line 76
    invoke-direct {v13, v14}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v13}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 80
    .line 81
    .line 82
    move-result-object v13

    .line 83
    new-instance v15, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 84
    .line 85
    move/from16 v16, v2

    .line 86
    .line 87
    const/16 v2, 0xb

    .line 88
    .line 89
    invoke-direct {v15, v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v15}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 93
    .line 94
    .line 95
    move-result-object v15

    .line 96
    move/from16 v17, v2

    .line 97
    .line 98
    new-instance v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    move/from16 v18, v4

    .line 101
    .line 102
    const/4 v4, 0x1

    .line 103
    invoke-direct {v2, v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    move/from16 v19, v4

    .line 111
    .line 112
    new-instance v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 113
    .line 114
    move/from16 v20, v6

    .line 115
    .line 116
    const/4 v6, 0x2

    .line 117
    invoke-direct {v4, v6}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 118
    .line 119
    .line 120
    invoke-static {v0, v4}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    move/from16 v21, v6

    .line 125
    .line 126
    new-instance v6, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 127
    .line 128
    move/from16 v22, v8

    .line 129
    .line 130
    const/4 v8, 0x3

    .line 131
    invoke-direct {v6, v8}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 132
    .line 133
    .line 134
    invoke-static {v0, v6}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    move/from16 v23, v8

    .line 139
    .line 140
    new-instance v8, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;

    .line 141
    .line 142
    move/from16 v24, v10

    .line 143
    .line 144
    const/4 v10, 0x4

    .line 145
    invoke-direct {v8, v10}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$$ExternalSyntheticLambda0;-><init>(I)V

    .line 146
    .line 147
    .line 148
    invoke-static {v0, v8}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const/16 v8, 0x22

    .line 153
    .line 154
    new-array v8, v8, [Lkotlin/Lazy;

    .line 155
    .line 156
    const/16 v25, 0x0

    .line 157
    .line 158
    aput-object v25, v8, v16

    .line 159
    .line 160
    aput-object v1, v8, v19

    .line 161
    .line 162
    aput-object v3, v8, v21

    .line 163
    .line 164
    aput-object v25, v8, v23

    .line 165
    .line 166
    aput-object v5, v8, v10

    .line 167
    .line 168
    aput-object v25, v8, v18

    .line 169
    .line 170
    aput-object v25, v8, v20

    .line 171
    .line 172
    aput-object v25, v8, v22

    .line 173
    .line 174
    aput-object v7, v8, v24

    .line 175
    .line 176
    aput-object v25, v8, v12

    .line 177
    .line 178
    aput-object v9, v8, v14

    .line 179
    .line 180
    aput-object v25, v8, v17

    .line 181
    .line 182
    const/16 v1, 0xc

    .line 183
    .line 184
    aput-object v11, v8, v1

    .line 185
    .line 186
    const/16 v1, 0xd

    .line 187
    .line 188
    aput-object v13, v8, v1

    .line 189
    .line 190
    const/16 v1, 0xe

    .line 191
    .line 192
    aput-object v25, v8, v1

    .line 193
    .line 194
    const/16 v1, 0xf

    .line 195
    .line 196
    aput-object v25, v8, v1

    .line 197
    .line 198
    const/16 v1, 0x10

    .line 199
    .line 200
    aput-object v25, v8, v1

    .line 201
    .line 202
    const/16 v1, 0x11

    .line 203
    .line 204
    aput-object v15, v8, v1

    .line 205
    .line 206
    const/16 v1, 0x12

    .line 207
    .line 208
    aput-object v2, v8, v1

    .line 209
    .line 210
    const/16 v1, 0x13

    .line 211
    .line 212
    aput-object v4, v8, v1

    .line 213
    .line 214
    const/16 v1, 0x14

    .line 215
    .line 216
    aput-object v25, v8, v1

    .line 217
    .line 218
    const/16 v1, 0x15

    .line 219
    .line 220
    aput-object v25, v8, v1

    .line 221
    .line 222
    const/16 v1, 0x16

    .line 223
    .line 224
    aput-object v25, v8, v1

    .line 225
    .line 226
    const/16 v1, 0x17

    .line 227
    .line 228
    aput-object v25, v8, v1

    .line 229
    .line 230
    const/16 v1, 0x18

    .line 231
    .line 232
    aput-object v25, v8, v1

    .line 233
    .line 234
    const/16 v1, 0x19

    .line 235
    .line 236
    aput-object v25, v8, v1

    .line 237
    .line 238
    const/16 v1, 0x1a

    .line 239
    .line 240
    aput-object v25, v8, v1

    .line 241
    .line 242
    const/16 v1, 0x1b

    .line 243
    .line 244
    aput-object v25, v8, v1

    .line 245
    .line 246
    const/16 v1, 0x1c

    .line 247
    .line 248
    aput-object v25, v8, v1

    .line 249
    .line 250
    const/16 v1, 0x1d

    .line 251
    .line 252
    aput-object v25, v8, v1

    .line 253
    .line 254
    const/16 v1, 0x1e

    .line 255
    .line 256
    aput-object v25, v8, v1

    .line 257
    .line 258
    const/16 v1, 0x1f

    .line 259
    .line 260
    aput-object v25, v8, v1

    .line 261
    .line 262
    const/16 v1, 0x20

    .line 263
    .line 264
    aput-object v6, v8, v1

    .line 265
    .line 266
    const/16 v1, 0x21

    .line 267
    .line 268
    aput-object v0, v8, v1

    .line 269
    .line 270
    sput-object v8, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->$childSerializers:[Lkotlin/Lazy;

    .line 271
    .line 272
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageViewsMap:Ljava/util/Map;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 9
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->langlinks:Ljava/util/List;

    .line 10
    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->revisions:Ljava/util/List;

    .line 11
    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->protection:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ILorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;Lorg/wikipedia/dataclient/mwapi/MwQueryPage$EntityTerms;Ljava/util/List;ILjava/util/List;Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Thumbnail;Ljava/util/Map;Ljava/util/Map;Lkotlinx/serialization/json/JsonElement;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->descriptionSource:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->descriptionSource:Ljava/lang/String;

    :goto_0
    and-int/lit8 p3, p1, 0x2

    if-nez p3, :cond_1

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo:Ljava/util/List;

    goto :goto_1

    :cond_1
    iput-object p4, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo:Ljava/util/List;

    :goto_1
    and-int/lit8 p3, p1, 0x4

    if-nez p3, :cond_2

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->videoInfo:Ljava/util/List;

    goto :goto_2

    :cond_2
    iput-object p5, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->videoInfo:Ljava/util/List;

    :goto_2
    and-int/lit8 p3, p1, 0x8

    if-nez p3, :cond_3

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->watchlistExpiry:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iput-object p6, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->watchlistExpiry:Ljava/lang/String;

    :goto_3
    and-int/lit8 p3, p1, 0x10

    if-nez p3, :cond_4

    .line 2
    sget-object p3, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 3
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageViewsMap:Ljava/util/Map;

    goto :goto_4

    :cond_4
    iput-object p7, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageViewsMap:Ljava/util/Map;

    :goto_4
    and-int/lit8 p3, p1, 0x20

    const/4 p4, 0x0

    if-nez p3, :cond_5

    iput p4, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageId:I

    goto :goto_5

    :cond_5
    iput p8, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageId:I

    :goto_5
    and-int/lit8 p3, p1, 0x40

    if-nez p3, :cond_6

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageProps:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;

    goto :goto_6

    :cond_6
    iput-object p9, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageProps:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;

    :goto_6
    and-int/lit16 p3, p1, 0x80

    if-nez p3, :cond_7

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->entityTerms:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$EntityTerms;

    goto :goto_7

    :cond_7
    iput-object p10, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->entityTerms:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$EntityTerms;

    :goto_7
    and-int/lit16 p3, p1, 0x100

    if-nez p3, :cond_8

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->categories:Ljava/util/List;

    goto :goto_8

    :cond_8
    iput-object p11, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->categories:Ljava/util/List;

    :goto_8
    and-int/lit16 p3, p1, 0x200

    if-nez p3, :cond_9

    iput p4, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->ns:I

    goto :goto_9

    :cond_9
    iput p12, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->ns:I

    :goto_9
    and-int/lit16 p3, p1, 0x400

    if-nez p3, :cond_a

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->coordinates:Ljava/util/List;

    goto :goto_a

    :cond_a
    iput-object p13, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->coordinates:Ljava/util/List;

    :goto_a
    and-int/lit16 p3, p1, 0x800

    if-nez p3, :cond_b

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbnail:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Thumbnail;

    goto :goto_b

    :cond_b
    move-object/from16 p3, p14

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbnail:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Thumbnail;

    :goto_b
    and-int/lit16 p3, p1, 0x1000

    if-nez p3, :cond_c

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->varianttitles:Ljava/util/Map;

    goto :goto_c

    :cond_c
    move-object/from16 p3, p15

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->varianttitles:Ljava/util/Map;

    :goto_c
    and-int/lit16 p3, p1, 0x2000

    if-nez p3, :cond_d

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->actions:Ljava/util/Map;

    goto :goto_d

    :cond_d
    move-object/from16 p3, p16

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->actions:Ljava/util/Map;

    :goto_d
    and-int/lit16 p3, p1, 0x4000

    if-nez p3, :cond_e

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->editintro:Lkotlinx/serialization/json/JsonElement;

    goto :goto_e

    :cond_e
    move-object/from16 p3, p17

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->editintro:Lkotlinx/serialization/json/JsonElement;

    :goto_e
    const p3, 0x8000

    and-int/2addr p3, p1

    if-nez p3, :cond_f

    iput p4, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->index:I

    goto :goto_f

    :cond_f
    move/from16 p3, p18

    iput p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->index:I

    :goto_f
    const/high16 p3, 0x10000

    and-int/2addr p3, p1

    if-nez p3, :cond_10

    .line 4
    const-string p3, ""

    .line 5
    :goto_10
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    goto :goto_11

    :cond_10
    move-object/from16 p3, p19

    goto :goto_10

    :goto_11
    const/high16 p3, 0x20000

    and-int/2addr p3, p1

    sget-object p5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    if-nez p3, :cond_11

    iput-object p5, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->langlinks:Ljava/util/List;

    goto :goto_12

    :cond_11
    move-object/from16 p3, p20

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->langlinks:Ljava/util/List;

    :goto_12
    const/high16 p3, 0x40000

    and-int/2addr p3, p1

    if-nez p3, :cond_12

    iput-object p5, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->revisions:Ljava/util/List;

    goto :goto_13

    :cond_12
    move-object/from16 p3, p21

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->revisions:Ljava/util/List;

    :goto_13
    const/high16 p3, 0x80000

    and-int/2addr p3, p1

    if-nez p3, :cond_13

    iput-object p5, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->protection:Ljava/util/List;

    goto :goto_14

    :cond_13
    move-object/from16 p3, p22

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->protection:Ljava/util/List;

    :goto_14
    const/high16 p3, 0x100000

    and-int/2addr p3, p1

    if-nez p3, :cond_14

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->extract:Ljava/lang/String;

    goto :goto_15

    :cond_14
    move-object/from16 p3, p23

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->extract:Ljava/lang/String;

    :goto_15
    const/high16 p3, 0x200000

    and-int/2addr p3, p1

    if-nez p3, :cond_15

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->snippet:Ljava/lang/String;

    goto :goto_16

    :cond_15
    move-object/from16 p3, p24

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->snippet:Ljava/lang/String;

    :goto_16
    const/high16 p3, 0x400000

    and-int/2addr p3, p1

    if-nez p3, :cond_16

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->sectionTitle:Ljava/lang/String;

    goto :goto_17

    :cond_16
    move-object/from16 p3, p25

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->sectionTitle:Ljava/lang/String;

    :goto_17
    const/high16 p3, 0x800000

    and-int/2addr p3, p1

    if-nez p3, :cond_17

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    goto :goto_18

    :cond_17
    move-object/from16 p3, p26

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    :goto_18
    const/high16 p3, 0x1000000

    and-int/2addr p3, p1

    if-nez p3, :cond_18

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imagerepository:Ljava/lang/String;

    goto :goto_19

    :cond_18
    move-object/from16 p3, p27

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imagerepository:Ljava/lang/String;

    :goto_19
    const/high16 p3, 0x2000000

    and-int/2addr p3, p1

    if-nez p3, :cond_19

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->redirectFrom:Ljava/lang/String;

    goto :goto_1a

    :cond_19
    move-object/from16 p3, p28

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->redirectFrom:Ljava/lang/String;

    :goto_1a
    const/high16 p3, 0x4000000

    and-int/2addr p3, p1

    if-nez p3, :cond_1a

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->convertedFrom:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object/from16 p3, p29

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->convertedFrom:Ljava/lang/String;

    :goto_1b
    const/high16 p3, 0x8000000

    and-int/2addr p3, p1

    if-nez p3, :cond_1b

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->convertedTo:Ljava/lang/String;

    goto :goto_1c

    :cond_1b
    move-object/from16 p3, p30

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->convertedTo:Ljava/lang/String;

    :goto_1c
    const/high16 p3, 0x10000000

    and-int/2addr p3, p1

    if-nez p3, :cond_1c

    iput-boolean p4, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->watched:Z

    goto :goto_1d

    :cond_1c
    move/from16 p3, p31

    iput-boolean p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->watched:Z

    :goto_1d
    const/high16 p3, 0x20000000

    and-int/2addr p3, p1

    if-nez p3, :cond_1d

    const-wide/16 p3, 0x0

    :goto_1e
    iput-wide p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->lastrevid:J

    goto :goto_1f

    :cond_1d
    move-wide/from16 p3, p32

    goto :goto_1e

    :goto_1f
    const/high16 p3, 0x40000000    # 2.0f

    and-int/2addr p3, p1

    if-nez p3, :cond_1e

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->tasktype:Ljava/lang/String;

    goto :goto_20

    :cond_1e
    move-object/from16 p3, p34

    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->tasktype:Ljava/lang/String;

    :goto_20
    const/high16 p3, -0x80000000

    and-int/2addr p1, p3

    if-nez p1, :cond_1f

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->difficulty:Ljava/lang/String;

    goto :goto_21

    :cond_1f
    move-object/from16 p1, p35

    iput-object p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->difficulty:Ljava/lang/String;

    :goto_21
    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_20

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->qualityGateIds:Ljava/util/List;

    goto :goto_22

    :cond_20
    move-object/from16 p1, p36

    iput-object p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->qualityGateIds:Ljava/util/List;

    :goto_22
    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_21

    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->growthimagesuggestiondata:Ljava/util/List;

    return-void

    :cond_21
    move-object/from16 p1, p37

    iput-object p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->growthimagesuggestiondata:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final displayTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->varianttitles:Ljava/util/Map;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    const-string p1, ""

    .line 19
    .line 20
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_2
    return-object p1
.end method

.method public final getErrorForAction()Ljava/util/List;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->actions:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    const-string v0, "edit"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/util/List;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-object p0

    .line 17
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 18
    .line 19
    return-object p0
.end method

.method public final imageInfo()Lorg/wikipedia/gallery/ImageInfo;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lorg/wikipedia/gallery/ImageInfo;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-object v1

    .line 16
    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->videoInfo:Ljava/util/List;

    .line 17
    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lorg/wikipedia/gallery/ImageInfo;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_2
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public final thumbUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbnail:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Thumbnail;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Thumbnail;->source:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method
