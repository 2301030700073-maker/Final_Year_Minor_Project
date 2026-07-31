.class public final Lorg/schabi/newpipe/util/StreamItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final hasAnyVideoOnlyStreamWithNoSecondaryStream:Z

.field public final secondaryStreams:Landroidx/collection/SparseArrayCompat;

.field public final streamsWrapper:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;)V
    .locals 2

    .line 56
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/util/StreamItemAdapter;-><init>(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;Landroidx/collection/SparseArrayCompat;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;Landroidx/collection/SparseArrayCompat;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/util/StreamItemAdapter;->streamsWrapper:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/util/StreamItemAdapter;->secondaryStreams:Landroidx/collection/SparseArrayCompat;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    move v0, p2

    .line 10
    :goto_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ge v0, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 29
    .line 30
    instance-of v2, v1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 35
    .line 36
    iget-boolean v1, v1, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    iget-object v1, p0, Lorg/schabi/newpipe/util/StreamItemAdapter;->secondaryStreams:Landroidx/collection/SparseArrayCompat;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    const/4 p2, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    :goto_1
    iput-boolean p2, p0, Lorg/schabi/newpipe/util/StreamItemAdapter;->hasAnyVideoOnlyStreamWithNoSecondaryStream:Z

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter;->streamsWrapper:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const v5, 0x7f0d0103

    .line 17
    .line 18
    .line 19
    move-object/from16 v6, p3

    .line 20
    .line 21
    invoke-virtual {v4, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object/from16 v4, p2

    .line 27
    .line 28
    :goto_0
    const v5, 0x7f0a043a

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Landroid/widget/ImageView;

    .line 36
    .line 37
    const v6, 0x7f0a03a2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Landroid/widget/TextView;

    .line 45
    .line 46
    const v7, 0x7f0a03a3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    check-cast v7, Landroid/widget/TextView;

    .line 54
    .line 55
    const v8, 0x7f0a03a4

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    check-cast v8, Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual/range {p0 .. p1}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    iget-object v10, v0, Lorg/schabi/newpipe/util/StreamItemAdapter;->streamsWrapper:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 69
    .line 70
    invoke-virtual {v10, v1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getFormat(I)Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    instance-of v12, v9, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 75
    .line 76
    iget-object v13, v0, Lorg/schabi/newpipe/util/StreamItemAdapter;->secondaryStreams:Landroidx/collection/SparseArrayCompat;

    .line 77
    .line 78
    const/16 v14, 0x8

    .line 79
    .line 80
    if-eqz v12, :cond_3

    .line 81
    .line 82
    move-object v12, v9

    .line 83
    check-cast v12, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 84
    .line 85
    iget-object v15, v12, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    .line 86
    .line 87
    iget-boolean v0, v0, Lorg/schabi/newpipe/util/StreamItemAdapter;->hasAnyVideoOnlyStreamWithNoSecondaryStream:Z

    .line 88
    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    iget-boolean v0, v12, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    .line 92
    .line 93
    const/4 v12, 0x4

    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    invoke-virtual {v13, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_1

    .line 101
    .line 102
    if-eqz p4, :cond_5

    .line 103
    .line 104
    goto/16 :goto_3

    .line 105
    .line 106
    :cond_1
    move v12, v3

    .line 107
    goto/16 :goto_3

    .line 108
    .line 109
    :cond_2
    if-eqz p4, :cond_5

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_3
    instance-of v0, v9, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 113
    .line 114
    const v12, 0x7f130510

    .line 115
    .line 116
    .line 117
    if-eqz v0, :cond_6

    .line 118
    .line 119
    move-object v0, v9

    .line 120
    check-cast v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 121
    .line 122
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAverageBitrate()I

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    if-lez v15, :cond_4

    .line 127
    .line 128
    new-instance v12, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAverageBitrate()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v0, "kbps"

    .line 141
    .line 142
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    :goto_1
    move-object v15, v0

    .line 150
    goto :goto_2

    .line 151
    :cond_4
    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    goto :goto_1

    .line 156
    :cond_5
    :goto_2
    move v12, v14

    .line 157
    goto :goto_3

    .line 158
    :cond_6
    instance-of v0, v9, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    .line 159
    .line 160
    if-eqz v0, :cond_7

    .line 161
    .line 162
    move-object v0, v9

    .line 163
    check-cast v0, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    .line 164
    .line 165
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->getDisplayLanguageName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v15

    .line 169
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->isAutoGenerated()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_5

    .line 174
    .line 175
    const-string v0, " ("

    .line 176
    .line 177
    invoke-static {v15, v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const v12, 0x7f130077

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v12

    .line 188
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v12, ")"

    .line 192
    .line 193
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v15

    .line 200
    goto :goto_2

    .line 201
    :cond_7
    if-nez v11, :cond_8

    .line 202
    .line 203
    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v15

    .line 207
    goto :goto_2

    .line 208
    :cond_8
    iget-object v15, v11, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :goto_3
    invoke-virtual {v10, v1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getSizeInBytes(I)J

    .line 212
    .line 213
    .line 214
    move-result-wide v16

    .line 215
    const-wide/16 v18, 0x0

    .line 216
    .line 217
    cmp-long v0, v16, v18

    .line 218
    .line 219
    if-lez v0, :cond_a

    .line 220
    .line 221
    invoke-virtual {v13, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    check-cast v0, Lorg/schabi/newpipe/util/SecondaryStreamHelper;

    .line 226
    .line 227
    if-eqz v0, :cond_9

    .line 228
    .line 229
    iget-object v13, v0, Lorg/schabi/newpipe/util/SecondaryStreamHelper;->streams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 230
    .line 231
    iget v0, v0, Lorg/schabi/newpipe/util/SecondaryStreamHelper;->position:I

    .line 232
    .line 233
    invoke-virtual {v13, v0}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getSizeInBytes(I)J

    .line 234
    .line 235
    .line 236
    move-result-wide v13

    .line 237
    invoke-virtual {v10, v1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getSizeInBytes(I)J

    .line 238
    .line 239
    .line 240
    move-result-wide v0

    .line 241
    add-long/2addr v0, v13

    .line 242
    invoke-static {v0, v1}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_9
    invoke-virtual {v10, v1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getFormattedSize(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    .line 256
    .line 257
    :goto_4
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 258
    .line 259
    .line 260
    goto :goto_5

    .line 261
    :cond_a
    invoke-virtual {v8, v14}, Landroid/view/View;->setVisibility(I)V

    .line 262
    .line 263
    .line 264
    :goto_5
    instance-of v0, v9, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    .line 265
    .line 266
    if-eqz v0, :cond_b

    .line 267
    .line 268
    check-cast v9, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    .line 269
    .line 270
    invoke-virtual {v9}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->getLanguageTag()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_b
    if-nez v11, :cond_c

    .line 279
    .line 280
    const v0, 0x7f13050f

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_c
    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 292
    .line 293
    if-ne v11, v0, :cond_d

    .line 294
    .line 295
    const-string v0, "opus"

    .line 296
    .line 297
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_d
    iget-object v0, v11, Lorg/schabi/newpipe/extractor/MediaFormat;->name:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    .line 305
    .line 306
    :goto_6
    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    .line 311
    .line 312
    return-object v4
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public final getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter;->streamsWrapper:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 12
    .line 13
    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    int-to-long p0, p1

    .line 2
    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    move-object p1, p3

    .line 2
    check-cast p1, Landroid/widget/Spinner;

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
