.class public abstract Lorg/schabi/newpipe/util/image/ImageStrategy;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static preferredImageQuality:Lorg/schabi/newpipe/util/image/PreferredImageQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->MEDIUM:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    .line 2
    .line 3
    sput-object v0, Lorg/schabi/newpipe/util/image/ImageStrategy;->preferredImageQuality:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    .line 4
    .line 5
    return-void
.end method

.method public static final choosePreferredImage(Ljava/util/List;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    sget-object v0, Lorg/schabi/newpipe/util/image/ImageStrategy;->preferredImageQuality:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    sget-object v1, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->NONE:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 260
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/util/image/ImageStrategy;->preferredImageQuality:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;Lorg/schabi/newpipe/util/image/PreferredImageQuality;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final choosePreferredImage(Ljava/util/List;Lorg/schabi/newpipe/util/image/PreferredImageQuality;)Ljava/lang/String;
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    move-object v3, v2

    .line 27
    check-cast v3, Lorg/schabi/newpipe/extractor/Image;

    .line 28
    .line 29
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/Image;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const/4 v5, -0x1

    .line 34
    if-eq v4, v5, :cond_0

    .line 35
    .line 36
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/Image;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eq v3, v5, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    const/16 v2, 0xa

    .line 49
    .line 50
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lorg/schabi/newpipe/extractor/Image;

    .line 72
    .line 73
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/Image;->getWidth()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    int-to-double v3, v3

    .line 78
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/Image;->getHeight()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    int-to-double v5, v2

    .line 83
    div-double/2addr v3, v5

    .line 84
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    const/4 v0, 0x0

    .line 93
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Ljava/lang/Double;

    .line 98
    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 102
    .line 103
    .line 104
    move-result-wide v1

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 107
    .line 108
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    const/4 v4, 0x0

    .line 113
    const/4 v5, 0x3

    .line 114
    const/4 v6, 0x2

    .line 115
    const/4 v7, 0x1

    .line 116
    if-eqz v3, :cond_7

    .line 117
    .line 118
    if-eq v3, v7, :cond_6

    .line 119
    .line 120
    if-eq v3, v6, :cond_5

    .line 121
    .line 122
    if-ne v3, v5, :cond_4

    .line 123
    .line 124
    sget-object v3, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->HIGH:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_4
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 128
    .line 129
    .line 130
    return-object v4

    .line 131
    :cond_5
    sget-object v3, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->MEDIUM:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    sget-object v3, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->LOW:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_7
    sget-object v3, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->UNKNOWN:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    .line 138
    .line 139
    :goto_3
    new-instance v8, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;

    .line 140
    .line 141
    const/16 v9, 0xf

    .line 142
    .line 143
    invoke-direct {v8, v3, v9}, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 144
    .line 145
    .line 146
    new-instance v3, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda4;

    .line 147
    .line 148
    invoke-direct {v3, v8, v6}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    .line 149
    .line 150
    .line 151
    invoke-static {v3}, Lj$/util/Comparator$-CC;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    new-instance v8, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;

    .line 156
    .line 157
    const/16 v9, 0xd

    .line 158
    .line 159
    invoke-direct {v8, v9}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;-><init>(I)V

    .line 160
    .line 161
    .line 162
    new-instance v9, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;

    .line 163
    .line 164
    const/16 v10, 0xe

    .line 165
    .line 166
    invoke-direct {v9, v8, v10}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;-><init>(Ljava/lang/Object;I)V

    .line 167
    .line 168
    .line 169
    invoke-static {v3, v9}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_b

    .line 178
    .line 179
    if-eq p1, v7, :cond_a

    .line 180
    .line 181
    if-eq p1, v6, :cond_9

    .line 182
    .line 183
    if-ne p1, v5, :cond_8

    .line 184
    .line 185
    new-instance p1, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda5;

    .line 186
    .line 187
    invoke-direct {p1, v1, v2, v6}, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda5;-><init>(DI)V

    .line 188
    .line 189
    .line 190
    new-instance v0, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda6;

    .line 191
    .line 192
    invoke-direct {v0, p1, v6}, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    .line 193
    .line 194
    .line 195
    invoke-static {v3, v0}, Lj$/util/Comparator$-EL;->thenComparingDouble(Ljava/util/Comparator;Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    goto :goto_4

    .line 200
    :cond_8
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 201
    .line 202
    .line 203
    return-object v4

    .line 204
    :cond_9
    new-instance p1, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda5;

    .line 205
    .line 206
    invoke-direct {p1, v1, v2, v7}, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda5;-><init>(DI)V

    .line 207
    .line 208
    .line 209
    new-instance v0, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda6;

    .line 210
    .line 211
    invoke-direct {v0, p1, v5}, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    .line 212
    .line 213
    .line 214
    invoke-static {v3, v0}, Lj$/util/Comparator$-EL;->thenComparingDouble(Ljava/util/Comparator;Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    goto :goto_4

    .line 219
    :cond_a
    new-instance p1, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda5;

    .line 220
    .line 221
    invoke-direct {p1, v1, v2, v0}, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda5;-><init>(DI)V

    .line 222
    .line 223
    .line 224
    new-instance v1, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda6;

    .line 225
    .line 226
    invoke-direct {v1, p1, v0}, Lorg/schabi/newpipe/util/image/ImageStrategy$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    .line 227
    .line 228
    .line 229
    invoke-static {v3, v1}, Lj$/util/Comparator$-EL;->thenComparingDouble(Ljava/util/Comparator;Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    :cond_b
    :goto_4
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-interface {p0, v3}, Lj$/util/stream/Stream;->min(Ljava/util/Comparator;)Lj$/util/Optional;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    sget-object p1, Lorg/schabi/newpipe/util/image/ImageStrategy$choosePreferredImage$1;->INSTANCE:Lorg/schabi/newpipe/util/image/ImageStrategy$choosePreferredImage$1;

    .line 242
    .line 243
    new-instance p1, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda3;

    .line 244
    .line 245
    invoke-direct {p1, v7}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda3;-><init>(I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, p1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    invoke-virtual {p0, v4}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    check-cast p0, Ljava/lang/String;

    .line 257
    .line 258
    return-object p0
.end method

.method public static final dbUrlToImageList(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/Image;

    .line 7
    .line 8
    sget-object v1, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->UNKNOWN:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    invoke-direct {v0, p0, v2, v2, v1}, Lorg/schabi/newpipe/extractor/Image;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final estimatePixelCount(Lorg/schabi/newpipe/extractor/Image;D)D
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getHeight()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const-wide/16 p0, 0x0

    .line 18
    .line 19
    return-wide p0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    mul-int/2addr p0, v0

    .line 29
    int-to-double v0, p0

    .line 30
    div-double/2addr v0, p1

    .line 31
    return-wide v0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-ne v0, v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    mul-int/2addr p0, v0

    .line 47
    int-to-double v0, p0

    .line 48
    mul-double/2addr v0, p1

    .line 49
    return-wide v0

    .line 50
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getHeight()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getWidth()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    mul-int/2addr p0, p1

    .line 59
    int-to-double p0, p0

    .line 60
    return-wide p0
.end method

.method public static final imageListToDbUrl(Ljava/util/List;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/schabi/newpipe/util/image/ImageStrategy;->preferredImageQuality:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    .line 5
    .line 6
    sget-object v1, Lorg/schabi/newpipe/util/image/ImageStrategy$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    aget v0, v1, v0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    sget-object v0, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->MEDIUM:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/util/image/ImageStrategy;->preferredImageQuality:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    .line 21
    .line 22
    :goto_0
    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;Lorg/schabi/newpipe/util/image/PreferredImageQuality;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static final shouldLoadImages()Z
    .locals 2

    .line 1
    sget-object v0, Lorg/schabi/newpipe/util/image/ImageStrategy;->preferredImageQuality:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    .line 2
    .line 3
    sget-object v1, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->NONE:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method
