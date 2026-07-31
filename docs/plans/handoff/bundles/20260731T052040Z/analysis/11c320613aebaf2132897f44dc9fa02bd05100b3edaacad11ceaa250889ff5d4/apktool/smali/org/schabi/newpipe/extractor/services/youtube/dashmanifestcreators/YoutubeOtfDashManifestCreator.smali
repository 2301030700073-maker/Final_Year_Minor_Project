.class public abstract Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeOtfDashManifestCreator;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final OTF_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeOtfDashManifestCreator;->OTF_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    .line 7
    .line 8
    return-void
.end method

.method public static fromOtfStreamingUrl(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;J)Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "\\(r="

    .line 6
    .line 7
    sget-object v4, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeOtfDashManifestCreator;->OTF_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    .line 8
    .line 9
    invoke-virtual {v4, v1}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->containsKey(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v4, v1}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/String;

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_0
    const/4 v5, 0x2

    .line 30
    invoke-static {v1, v2, v5}, Lkotlin/ranges/RangesKt;->getInitializationResponse(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;I)Landroidx/recyclerview/widget/ChildHelper;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v6, v0, Landroidx/recyclerview/widget/ChildHelper;->mViewInRemoveView:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v6, Ljava/lang/String;

    .line 37
    .line 38
    const-string v7, "&sq=0"

    .line 39
    .line 40
    const-string v8, ""

    .line 41
    .line 42
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const-string v7, "&rn=0"

    .line 47
    .line 48
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    const-string v7, "&alr=yes"

    .line 53
    .line 54
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    iget v7, v0, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    .line 59
    .line 60
    const/16 v8, 0xc8

    .line 61
    .line 62
    if-ne v7, v8, :cond_6

    .line 63
    .line 64
    :try_start_0
    iget-object v0, v0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/io/Serializable;

    .line 65
    .line 66
    check-cast v0, Ljava/lang/String;

    .line 67
    .line 68
    const-string v7, "Segment-Durations-Ms: "

    .line 69
    .line 70
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const/4 v7, 0x1

    .line 75
    aget-object v0, v0, v7

    .line 76
    .line 77
    const-string v8, "\n"

    .line 78
    .line 79
    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const/4 v8, 0x0

    .line 84
    aget-object v0, v0, v8

    .line 85
    .line 86
    const-string v9, ","

    .line 87
    .line 88
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    array-length v9, v0

    .line 93
    sub-int/2addr v9, v7

    .line 94
    aget-object v10, v0, v9

    .line 95
    .line 96
    invoke-static {v10}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    if-eqz v10, :cond_1

    .line 101
    .line 102
    invoke-static {v0, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 107
    .line 108
    :cond_1
    move-object v9, v0

    .line 109
    :try_start_1
    array-length v0, v9

    .line 110
    move v12, v8

    .line 111
    const-wide/16 v13, 0x0

    .line 112
    .line 113
    :goto_0
    if-ge v12, v0, :cond_3

    .line 114
    .line 115
    aget-object v15, v9, v12

    .line 116
    .line 117
    invoke-virtual {v15, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v15

    .line 121
    array-length v10, v15

    .line 122
    if-le v10, v7, :cond_2

    .line 123
    .line 124
    aget-object v10, v15, v7

    .line 125
    .line 126
    invoke-static {v10}, Lorg/schabi/newpipe/extractor/utils/Utils;->removeNonDigitCharacters(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 131
    .line 132
    .line 133
    move-result-wide v10

    .line 134
    goto :goto_1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    goto :goto_2

    .line 137
    :cond_2
    const-wide/16 v10, 0x0

    .line 138
    .line 139
    :goto_1
    aget-object v15, v15, v8

    .line 140
    .line 141
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v15
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    int-to-long v7, v15

    .line 146
    mul-long/2addr v10, v7

    .line 147
    add-long/2addr v10, v7

    .line 148
    add-long/2addr v13, v10

    .line 149
    add-int/lit8 v12, v12, 0x1

    .line 150
    .line 151
    const/4 v7, 0x1

    .line 152
    const/4 v8, 0x0

    .line 153
    goto :goto_0

    .line 154
    :goto_2
    :try_start_2
    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 155
    .line 156
    const-string v8, "Could not get stream length from sequences list"

    .line 157
    .line 158
    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    throw v7
    :try_end_2
    .catch Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 162
    :catch_1
    const-wide/16 v7, 0x3e8

    .line 163
    .line 164
    mul-long v13, p2, v7

    .line 165
    .line 166
    :cond_3
    invoke-static {v2, v13, v14}, Lkotlin/ranges/RangesKt;->generateDocumentAndDoCommonElementsGeneration(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;J)Lorg/w3c/dom/Document;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {v0, v6, v5}, Lkotlin/ranges/RangesKt;->generateSegmentTemplateElement(Lorg/w3c/dom/Document;Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    invoke-static {v0}, Lkotlin/ranges/RangesKt;->generateSegmentTimelineElement(Lorg/w3c/dom/Document;)V

    .line 174
    .line 175
    .line 176
    :try_start_3
    const-string v2, "SegmentTimeline"

    .line 177
    .line 178
    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    const/4 v5, 0x0

    .line 183
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    check-cast v2, Lorg/w3c/dom/Element;

    .line 188
    .line 189
    array-length v5, v9

    .line 190
    const/4 v6, 0x0

    .line 191
    :goto_3
    if-ge v6, v5, :cond_5

    .line 192
    .line 193
    aget-object v7, v9, v6

    .line 194
    .line 195
    const-string v8, "S"

    .line 196
    .line 197
    invoke-interface {v0, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    invoke-virtual {v7, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    const/16 v16, 0x0

    .line 206
    .line 207
    aget-object v10, v7, v16

    .line 208
    .line 209
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    array-length v10, v7

    .line 213
    const/4 v11, 0x1

    .line 214
    if-le v10, v11, :cond_4

    .line 215
    .line 216
    aget-object v10, v7, v11

    .line 217
    .line 218
    invoke-static {v10}, Lorg/schabi/newpipe/extractor/utils/Utils;->removeNonDigitCharacters(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v10

    .line 222
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v10

    .line 226
    const-string v12, "r"

    .line 227
    .line 228
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    invoke-static {v8, v0, v12, v10}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :cond_4
    const-string v10, "d"

    .line 236
    .line 237
    const/16 v16, 0x0

    .line 238
    .line 239
    aget-object v7, v7, v16

    .line 240
    .line 241
    invoke-static {v8, v0, v10, v7}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-interface {v2, v8}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_3
    .catch Lorg/w3c/dom/DOMException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 245
    .line 246
    .line 247
    add-int/lit8 v6, v6, 0x1

    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_5
    invoke-static {v1, v0, v4}, Lkotlin/ranges/RangesKt;->buildAndCacheResult(Ljava/lang/String;Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    return-object v0

    .line 255
    :catch_2
    move-exception v0

    .line 256
    const-string v1, "segment (S)"

    .line 257
    .line 258
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/RuntimeException;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    throw v0

    .line 263
    :catch_3
    move-exception v0

    .line 264
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 265
    .line 266
    const-string v2, "Could not get segment durations"

    .line 267
    .line 268
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    .line 270
    .line 271
    throw v1

    .line 272
    :cond_6
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 273
    .line 274
    const-string v1, "Could not get the initialization URL: response code "

    .line 275
    .line 276
    invoke-static {v7, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    throw v0
.end method
