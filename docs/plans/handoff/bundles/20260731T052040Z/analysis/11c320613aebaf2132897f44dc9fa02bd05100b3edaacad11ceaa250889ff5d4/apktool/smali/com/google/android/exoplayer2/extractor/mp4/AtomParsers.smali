.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$UdtaInfo;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$MvhdInfo;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_GAPLESS_TRIM_SIZE_SAMPLES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AtomParsers"

.field private static final TYPE_clcp:I = 0x636c6370

.field private static final TYPE_mdta:I = 0x6d647461

.field private static final TYPE_meta:I = 0x6d657461

.field private static final TYPE_nclc:I = 0x6e636c63

.field private static final TYPE_nclx:I = 0x6e636c78

.field private static final TYPE_sbtl:I = 0x7362746c

.field private static final TYPE_soun:I = 0x736f756e

.field private static final TYPE_subt:I = 0x73756274

.field private static final TYPE_text:I = 0x74657874

.field private static final TYPE_vide:I = 0x76696465

.field private static final opusMagic:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "OpusHead"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static allocateHdrStaticInfo()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private static canApplyEditWithGaplessInfo([JJJJ)Z
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    sub-int/2addr v0, v1

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    array-length v5, p0

    .line 11
    sub-int/2addr v5, v2

    .line 12
    invoke-static {v5, v3, v0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget-wide v5, p0, v3

    .line 17
    .line 18
    cmp-long v2, v5, p3

    .line 19
    .line 20
    if-gtz v2, :cond_0

    .line 21
    .line 22
    aget-wide v4, p0, v4

    .line 23
    .line 24
    cmp-long p3, p3, v4

    .line 25
    .line 26
    if-gez p3, :cond_0

    .line 27
    .line 28
    aget-wide p3, p0, v0

    .line 29
    .line 30
    cmp-long p0, p3, p5

    .line 31
    .line 32
    if-gez p0, :cond_0

    .line 33
    .line 34
    cmp-long p0, p5, p1

    .line 35
    .line 36
    if-gtz p0, :cond_0

    .line 37
    .line 38
    return v1

    .line 39
    :cond_0
    return v3
.end method

.method private static canTrimSamplesWithTimestampChange(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    return p0
.end method

.method private static findBoxPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;III)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-lt v0, p2, :cond_0

    .line 8
    .line 9
    move v3, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v1

    .line 12
    :goto_0
    const/4 v4, 0x0

    .line 13
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_1
    sub-int v3, v0, p2

    .line 17
    .line 18
    if-ge v3, p3, :cond_3

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-lez v3, :cond_1

    .line 28
    .line 29
    move v4, v2

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    move v4, v1

    .line 32
    :goto_2
    const-string v5, "childAtomSize must be positive"

    .line 33
    .line 34
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-ne v4, p1, :cond_2

    .line 42
    .line 43
    return v0

    .line 44
    :cond_2
    add-int/2addr v0, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    const/4 p0, -0x1

    .line 47
    return p0
.end method

.method private static getTrackTypeForHdlr(I)I
    .locals 1

    .line 1
    const v0, 0x736f756e

    .line 2
    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const v0, 0x76696465

    .line 9
    .line 10
    .line 11
    if-ne p0, v0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x2

    .line 14
    return p0

    .line 15
    :cond_1
    const v0, 0x74657874

    .line 16
    .line 17
    .line 18
    if-eq p0, v0, :cond_4

    .line 19
    .line 20
    const v0, 0x7362746c

    .line 21
    .line 22
    .line 23
    if-eq p0, v0, :cond_4

    .line 24
    .line 25
    const v0, 0x73756274

    .line 26
    .line 27
    .line 28
    if-eq p0, v0, :cond_4

    .line 29
    .line 30
    const v0, 0x636c6370

    .line 31
    .line 32
    .line 33
    if-ne p0, v0, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const v0, 0x6d657461

    .line 37
    .line 38
    .line 39
    if-ne p0, v0, :cond_3

    .line 40
    .line 41
    const/4 p0, 0x5

    .line 42
    return p0

    .line 43
    :cond_3
    const/4 p0, -0x1

    .line 44
    return p0

    .line 45
    :cond_4
    :goto_0
    const/4 p0, 0x3

    .line 46
    return p0
.end method

.method public static maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const v2, 0x68646c72    # 4.3148E24f

    .line 14
    .line 15
    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x4

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static parseAudioSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    move-object/from16 v5, p7

    .line 12
    .line 13
    move-object/from16 v6, p8

    .line 14
    .line 15
    add-int/lit8 v7, v1, 0x10

    .line 16
    .line 17
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 18
    .line 19
    .line 20
    const/4 v7, 0x6

    .line 21
    if-eqz p6, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/16 v9, 0x8

    .line 32
    .line 33
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 34
    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    :goto_0
    const/4 v10, 0x4

    .line 38
    const/4 v11, 0x2

    .line 39
    const/4 v12, 0x1

    .line 40
    const/16 v13, 0x10

    .line 41
    .line 42
    if-eqz v9, :cond_2

    .line 43
    .line 44
    if-ne v9, v12, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    if-ne v9, v11, :cond_31

    .line 48
    .line 49
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readDouble()D

    .line 53
    .line 54
    .line 55
    move-result-wide v13

    .line 56
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    .line 57
    .line 58
    .line 59
    move-result-wide v13

    .line 60
    long-to-int v7, v13

    .line 61
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    const/16 v13, 0x14

    .line 66
    .line 67
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 68
    .line 69
    .line 70
    const/4 v15, 0x0

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    .line 73
    .line 74
    .line 75
    move-result v14

    .line 76
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 84
    .line 85
    .line 86
    move-result v15

    .line 87
    sub-int/2addr v15, v10

    .line 88
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 92
    .line 93
    .line 94
    move-result v15

    .line 95
    if-ne v9, v12, :cond_3

    .line 96
    .line 97
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 98
    .line 99
    .line 100
    :cond_3
    move v9, v14

    .line 101
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    const v14, 0x656e6361

    .line 106
    .line 107
    .line 108
    move/from16 v16, v11

    .line 109
    .line 110
    move/from16 v17, v12

    .line 111
    .line 112
    move/from16 v12, p1

    .line 113
    .line 114
    if-ne v12, v14, :cond_6

    .line 115
    .line 116
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    .line 117
    .line 118
    .line 119
    move-result-object v14

    .line 120
    if-eqz v14, :cond_5

    .line 121
    .line 122
    iget-object v12, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v12, Ljava/lang/Integer;

    .line 125
    .line 126
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result v12

    .line 130
    if-nez v5, :cond_4

    .line 131
    .line 132
    const/4 v5, 0x0

    .line 133
    goto :goto_3

    .line 134
    :cond_4
    iget-object v10, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 137
    .line 138
    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v5, v10}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    :goto_3
    iget-object v10, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 145
    .line 146
    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v14, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 149
    .line 150
    aput-object v14, v10, p9

    .line 151
    .line 152
    :cond_5
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 153
    .line 154
    .line 155
    :cond_6
    const v10, 0x61632d33

    .line 156
    .line 157
    .line 158
    const v14, 0x616c6163

    .line 159
    .line 160
    .line 161
    if-ne v12, v10, :cond_7

    .line 162
    .line 163
    const-string v10, "audio/ac3"

    .line 164
    .line 165
    :goto_4
    move-object/from16 v19, v10

    .line 166
    .line 167
    const/4 v10, -0x1

    .line 168
    goto/16 :goto_8

    .line 169
    .line 170
    :cond_7
    const v10, 0x65632d33

    .line 171
    .line 172
    .line 173
    if-ne v12, v10, :cond_8

    .line 174
    .line 175
    const-string v10, "audio/eac3"

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_8
    const v10, 0x61632d34

    .line 179
    .line 180
    .line 181
    if-ne v12, v10, :cond_9

    .line 182
    .line 183
    const-string v10, "audio/ac4"

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_9
    const v10, 0x64747363

    .line 187
    .line 188
    .line 189
    if-ne v12, v10, :cond_a

    .line 190
    .line 191
    const-string v10, "audio/vnd.dts"

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_a
    const v10, 0x64747368

    .line 195
    .line 196
    .line 197
    if-eq v12, v10, :cond_1d

    .line 198
    .line 199
    const v10, 0x6474736c

    .line 200
    .line 201
    .line 202
    if-ne v12, v10, :cond_b

    .line 203
    .line 204
    goto/16 :goto_7

    .line 205
    .line 206
    :cond_b
    const v10, 0x64747365

    .line 207
    .line 208
    .line 209
    if-ne v12, v10, :cond_c

    .line 210
    .line 211
    const-string v10, "audio/vnd.dts.hd;profile=lbr"

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_c
    const v10, 0x64747378

    .line 215
    .line 216
    .line 217
    if-ne v12, v10, :cond_d

    .line 218
    .line 219
    const-string v10, "audio/vnd.dts.uhd;profile=p2"

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_d
    const v10, 0x73616d72

    .line 223
    .line 224
    .line 225
    if-ne v12, v10, :cond_e

    .line 226
    .line 227
    const-string v10, "audio/3gpp"

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_e
    const v10, 0x73617762

    .line 231
    .line 232
    .line 233
    if-ne v12, v10, :cond_f

    .line 234
    .line 235
    const-string v10, "audio/amr-wb"

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_f
    const v10, 0x6c70636d

    .line 239
    .line 240
    .line 241
    const-string v19, "audio/raw"

    .line 242
    .line 243
    if-eq v12, v10, :cond_1c

    .line 244
    .line 245
    const v10, 0x736f7774

    .line 246
    .line 247
    .line 248
    if-ne v12, v10, :cond_10

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_10
    const v10, 0x74776f73

    .line 252
    .line 253
    .line 254
    if-ne v12, v10, :cond_11

    .line 255
    .line 256
    const/high16 v10, 0x10000000

    .line 257
    .line 258
    goto :goto_8

    .line 259
    :cond_11
    const v10, 0x2e6d7032

    .line 260
    .line 261
    .line 262
    if-eq v12, v10, :cond_1b

    .line 263
    .line 264
    const v10, 0x2e6d7033

    .line 265
    .line 266
    .line 267
    if-ne v12, v10, :cond_12

    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_12
    const v10, 0x6d686131

    .line 271
    .line 272
    .line 273
    if-ne v12, v10, :cond_13

    .line 274
    .line 275
    const-string v10, "audio/mha1"

    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_13
    const v10, 0x6d686d31

    .line 279
    .line 280
    .line 281
    if-ne v12, v10, :cond_14

    .line 282
    .line 283
    const-string v10, "audio/mhm1"

    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_14
    if-ne v12, v14, :cond_15

    .line 287
    .line 288
    const-string v10, "audio/alac"

    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_15
    const v10, 0x616c6177

    .line 292
    .line 293
    .line 294
    if-ne v12, v10, :cond_16

    .line 295
    .line 296
    const-string v10, "audio/g711-alaw"

    .line 297
    .line 298
    goto/16 :goto_4

    .line 299
    .line 300
    :cond_16
    const v10, 0x756c6177

    .line 301
    .line 302
    .line 303
    if-ne v12, v10, :cond_17

    .line 304
    .line 305
    const-string v10, "audio/g711-mlaw"

    .line 306
    .line 307
    goto/16 :goto_4

    .line 308
    .line 309
    :cond_17
    const v10, 0x4f707573

    .line 310
    .line 311
    .line 312
    if-ne v12, v10, :cond_18

    .line 313
    .line 314
    const-string v10, "audio/opus"

    .line 315
    .line 316
    goto/16 :goto_4

    .line 317
    .line 318
    :cond_18
    const v10, 0x664c6143

    .line 319
    .line 320
    .line 321
    if-ne v12, v10, :cond_19

    .line 322
    .line 323
    const-string v10, "audio/flac"

    .line 324
    .line 325
    goto/16 :goto_4

    .line 326
    .line 327
    :cond_19
    const v10, 0x6d6c7061

    .line 328
    .line 329
    .line 330
    if-ne v12, v10, :cond_1a

    .line 331
    .line 332
    const-string v10, "audio/true-hd"

    .line 333
    .line 334
    goto/16 :goto_4

    .line 335
    .line 336
    :cond_1a
    const/4 v10, -0x1

    .line 337
    const/16 v19, 0x0

    .line 338
    .line 339
    goto :goto_8

    .line 340
    :cond_1b
    :goto_5
    const-string v10, "audio/mpeg"

    .line 341
    .line 342
    goto/16 :goto_4

    .line 343
    .line 344
    :cond_1c
    :goto_6
    move/from16 v10, v16

    .line 345
    .line 346
    goto :goto_8

    .line 347
    :cond_1d
    :goto_7
    const-string v10, "audio/vnd.dts.hd"

    .line 348
    .line 349
    goto/16 :goto_4

    .line 350
    .line 351
    :goto_8
    move-object/from16 v12, v19

    .line 352
    .line 353
    const/16 v19, 0x0

    .line 354
    .line 355
    const/16 v20, 0x0

    .line 356
    .line 357
    const/16 v21, 0x0

    .line 358
    .line 359
    :goto_9
    sub-int v11, v13, v1

    .line 360
    .line 361
    if-ge v11, v2, :cond_2f

    .line 362
    .line 363
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 367
    .line 368
    .line 369
    move-result v11

    .line 370
    if-lez v11, :cond_1e

    .line 371
    .line 372
    move/from16 v14, v17

    .line 373
    .line 374
    goto :goto_a

    .line 375
    :cond_1e
    const/4 v14, 0x0

    .line 376
    :goto_a
    const-string v8, "childAtomSize must be positive"

    .line 377
    .line 378
    invoke-static {v14, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 382
    .line 383
    .line 384
    move-result v8

    .line 385
    const v14, 0x6d686143

    .line 386
    .line 387
    .line 388
    if-ne v8, v14, :cond_1f

    .line 389
    .line 390
    add-int/lit8 v8, v11, -0xd

    .line 391
    .line 392
    new-array v14, v8, [B

    .line 393
    .line 394
    add-int/lit8 v1, v13, 0xd

    .line 395
    .line 396
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 397
    .line 398
    .line 399
    const/4 v1, 0x0

    .line 400
    invoke-virtual {v0, v14, v1, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 401
    .line 402
    .line 403
    sget v1, Lcom/google/common/collect/ImmutableList;->$r8$clinit:I

    .line 404
    .line 405
    new-instance v1, Lcom/google/common/collect/SingletonImmutableList;

    .line 406
    .line 407
    invoke-direct {v1, v14}, Lcom/google/common/collect/SingletonImmutableList;-><init>(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    move-object/from16 v21, v1

    .line 411
    .line 412
    :goto_b
    const/4 v2, -0x1

    .line 413
    const/4 v14, 0x4

    .line 414
    :goto_c
    const/16 v22, 0x0

    .line 415
    .line 416
    goto/16 :goto_13

    .line 417
    .line 418
    :cond_1f
    const v1, 0x65736473

    .line 419
    .line 420
    .line 421
    if-eq v8, v1, :cond_20

    .line 422
    .line 423
    if-eqz p6, :cond_21

    .line 424
    .line 425
    const v14, 0x77617665

    .line 426
    .line 427
    .line 428
    if-ne v8, v14, :cond_21

    .line 429
    .line 430
    :cond_20
    const/4 v14, 0x4

    .line 431
    const/16 v22, 0x0

    .line 432
    .line 433
    goto/16 :goto_10

    .line 434
    .line 435
    :cond_21
    const v1, 0x64616333

    .line 436
    .line 437
    .line 438
    if-ne v8, v1, :cond_22

    .line 439
    .line 440
    add-int/lit8 v1, v13, 0x8

    .line 441
    .line 442
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 443
    .line 444
    .line 445
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    invoke-static {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    iput-object v1, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 454
    .line 455
    :goto_d
    const/4 v8, 0x0

    .line 456
    const/4 v14, 0x4

    .line 457
    goto/16 :goto_f

    .line 458
    .line 459
    :cond_22
    const v1, 0x64656333

    .line 460
    .line 461
    .line 462
    if-ne v8, v1, :cond_23

    .line 463
    .line 464
    add-int/lit8 v1, v13, 0x8

    .line 465
    .line 466
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 467
    .line 468
    .line 469
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    invoke-static {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseEAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    iput-object v1, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 478
    .line 479
    goto :goto_d

    .line 480
    :cond_23
    const v1, 0x64616334

    .line 481
    .line 482
    .line 483
    if-ne v8, v1, :cond_24

    .line 484
    .line 485
    add-int/lit8 v1, v13, 0x8

    .line 486
    .line 487
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 488
    .line 489
    .line 490
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    invoke-static {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/audio/Ac4Util;->parseAc4AnnexEFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    iput-object v1, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 499
    .line 500
    goto :goto_d

    .line 501
    :cond_24
    const v1, 0x646d6c70

    .line 502
    .line 503
    .line 504
    if-ne v8, v1, :cond_26

    .line 505
    .line 506
    if-lez v15, :cond_25

    .line 507
    .line 508
    move v7, v15

    .line 509
    move/from16 v9, v16

    .line 510
    .line 511
    goto :goto_b

    .line 512
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 513
    .line 514
    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    .line 515
    .line 516
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    const/4 v14, 0x0

    .line 527
    invoke-static {v0, v14}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    throw v0

    .line 532
    :cond_26
    const/4 v14, 0x0

    .line 533
    const v1, 0x64647473

    .line 534
    .line 535
    .line 536
    if-eq v8, v1, :cond_27

    .line 537
    .line 538
    const v1, 0x75647473

    .line 539
    .line 540
    .line 541
    if-ne v8, v1, :cond_28

    .line 542
    .line 543
    :cond_27
    const/4 v8, 0x0

    .line 544
    const/4 v14, 0x4

    .line 545
    goto/16 :goto_e

    .line 546
    .line 547
    :cond_28
    const v1, 0x644f7073

    .line 548
    .line 549
    .line 550
    if-ne v8, v1, :cond_29

    .line 551
    .line 552
    add-int/lit8 v1, v11, -0x8

    .line 553
    .line 554
    sget-object v8, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    .line 555
    .line 556
    array-length v14, v8

    .line 557
    add-int/2addr v14, v1

    .line 558
    invoke-static {v8, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 559
    .line 560
    .line 561
    move-result-object v14

    .line 562
    add-int/lit8 v2, v13, 0x8

    .line 563
    .line 564
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 565
    .line 566
    .line 567
    array-length v2, v8

    .line 568
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 569
    .line 570
    .line 571
    invoke-static {v14}, Lcom/google/android/exoplayer2/audio/OpusUtil;->buildInitializationData([B)Ljava/util/List;

    .line 572
    .line 573
    .line 574
    move-result-object v21

    .line 575
    goto/16 :goto_b

    .line 576
    .line 577
    :cond_29
    const v1, 0x64664c61

    .line 578
    .line 579
    .line 580
    if-ne v8, v1, :cond_2a

    .line 581
    .line 582
    add-int/lit8 v1, v11, -0xc

    .line 583
    .line 584
    add-int/lit8 v2, v11, -0x8

    .line 585
    .line 586
    new-array v2, v2, [B

    .line 587
    .line 588
    const/16 v8, 0x66

    .line 589
    .line 590
    const/16 v22, 0x0

    .line 591
    .line 592
    aput-byte v8, v2, v22

    .line 593
    .line 594
    const/16 v8, 0x4c

    .line 595
    .line 596
    aput-byte v8, v2, v17

    .line 597
    .line 598
    const/16 v8, 0x61

    .line 599
    .line 600
    aput-byte v8, v2, v16

    .line 601
    .line 602
    const/4 v8, 0x3

    .line 603
    const/16 v14, 0x43

    .line 604
    .line 605
    aput-byte v14, v2, v8

    .line 606
    .line 607
    add-int/lit8 v8, v13, 0xc

    .line 608
    .line 609
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 610
    .line 611
    .line 612
    const/4 v14, 0x4

    .line 613
    invoke-virtual {v0, v2, v14, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 614
    .line 615
    .line 616
    sget v1, Lcom/google/common/collect/ImmutableList;->$r8$clinit:I

    .line 617
    .line 618
    new-instance v1, Lcom/google/common/collect/SingletonImmutableList;

    .line 619
    .line 620
    invoke-direct {v1, v2}, Lcom/google/common/collect/SingletonImmutableList;-><init>(Ljava/lang/Object;)V

    .line 621
    .line 622
    .line 623
    move-object/from16 v21, v1

    .line 624
    .line 625
    const/4 v2, -0x1

    .line 626
    goto/16 :goto_c

    .line 627
    .line 628
    :cond_2a
    const v2, 0x616c6163

    .line 629
    .line 630
    .line 631
    const/4 v14, 0x4

    .line 632
    if-ne v8, v2, :cond_2b

    .line 633
    .line 634
    add-int/lit8 v1, v11, -0xc

    .line 635
    .line 636
    new-array v7, v1, [B

    .line 637
    .line 638
    add-int/lit8 v8, v13, 0xc

    .line 639
    .line 640
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 641
    .line 642
    .line 643
    const/4 v8, 0x0

    .line 644
    invoke-virtual {v0, v7, v8, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 645
    .line 646
    .line 647
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->parseAlacAudioSpecificConfig([B)Landroid/util/Pair;

    .line 648
    .line 649
    .line 650
    move-result-object v1

    .line 651
    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 652
    .line 653
    check-cast v9, Ljava/lang/Integer;

    .line 654
    .line 655
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 656
    .line 657
    .line 658
    move-result v9

    .line 659
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 660
    .line 661
    check-cast v1, Ljava/lang/Integer;

    .line 662
    .line 663
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 664
    .line 665
    .line 666
    move-result v1

    .line 667
    sget v18, Lcom/google/common/collect/ImmutableList;->$r8$clinit:I

    .line 668
    .line 669
    new-instance v2, Lcom/google/common/collect/SingletonImmutableList;

    .line 670
    .line 671
    invoke-direct {v2, v7}, Lcom/google/common/collect/SingletonImmutableList;-><init>(Ljava/lang/Object;)V

    .line 672
    .line 673
    .line 674
    move-object/from16 v21, v2

    .line 675
    .line 676
    move/from16 v22, v8

    .line 677
    .line 678
    move v7, v9

    .line 679
    const/4 v2, -0x1

    .line 680
    move v9, v1

    .line 681
    goto :goto_13

    .line 682
    :cond_2b
    const/4 v8, 0x0

    .line 683
    goto :goto_f

    .line 684
    :goto_e
    new-instance v1, Lcom/google/android/exoplayer2/Format$Builder;

    .line 685
    .line 686
    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 694
    .line 695
    .line 696
    move-result-object v1

    .line 697
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 706
    .line 707
    .line 708
    move-result-object v1

    .line 709
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 710
    .line 711
    .line 712
    move-result-object v1

    .line 713
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    iput-object v1, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 718
    .line 719
    :goto_f
    move/from16 v22, v8

    .line 720
    .line 721
    const/4 v2, -0x1

    .line 722
    goto :goto_13

    .line 723
    :goto_10
    if-ne v8, v1, :cond_2c

    .line 724
    .line 725
    move v1, v13

    .line 726
    :goto_11
    const/4 v2, -0x1

    .line 727
    goto :goto_12

    .line 728
    :cond_2c
    invoke-static {v0, v1, v13, v11}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->findBoxPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;III)I

    .line 729
    .line 730
    .line 731
    move-result v1

    .line 732
    goto :goto_11

    .line 733
    :goto_12
    if-eq v1, v2, :cond_2e

    .line 734
    .line 735
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;

    .line 736
    .line 737
    .line 738
    move-result-object v19

    .line 739
    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$300(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v12

    .line 743
    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$400(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)[B

    .line 744
    .line 745
    .line 746
    move-result-object v1

    .line 747
    if-eqz v1, :cond_2e

    .line 748
    .line 749
    const-string v8, "audio/mp4a-latm"

    .line 750
    .line 751
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 752
    .line 753
    .line 754
    move-result v8

    .line 755
    if-eqz v8, :cond_2d

    .line 756
    .line 757
    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseAudioSpecificConfig([B)Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    .line 758
    .line 759
    .line 760
    move-result-object v7

    .line 761
    iget v8, v7, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->sampleRateHz:I

    .line 762
    .line 763
    iget v9, v7, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->channelCount:I

    .line 764
    .line 765
    iget-object v7, v7, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    .line 766
    .line 767
    move-object/from16 v20, v7

    .line 768
    .line 769
    move v7, v8

    .line 770
    :cond_2d
    sget v8, Lcom/google/common/collect/ImmutableList;->$r8$clinit:I

    .line 771
    .line 772
    new-instance v8, Lcom/google/common/collect/SingletonImmutableList;

    .line 773
    .line 774
    invoke-direct {v8, v1}, Lcom/google/common/collect/SingletonImmutableList;-><init>(Ljava/lang/Object;)V

    .line 775
    .line 776
    .line 777
    move-object/from16 v21, v8

    .line 778
    .line 779
    :cond_2e
    :goto_13
    add-int/2addr v13, v11

    .line 780
    move/from16 v1, p2

    .line 781
    .line 782
    move/from16 v2, p3

    .line 783
    .line 784
    const v14, 0x616c6163

    .line 785
    .line 786
    .line 787
    goto/16 :goto_9

    .line 788
    .line 789
    :cond_2f
    iget-object v0, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 790
    .line 791
    if-nez v0, :cond_31

    .line 792
    .line 793
    if-eqz v12, :cond_31

    .line 794
    .line 795
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    .line 796
    .line 797
    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 805
    .line 806
    .line 807
    move-result-object v0

    .line 808
    move-object/from16 v1, v20

    .line 809
    .line 810
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    move-object/from16 v1, v21

    .line 827
    .line 828
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 833
    .line 834
    .line 835
    move-result-object v0

    .line 836
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    if-eqz v19, :cond_30

    .line 841
    .line 842
    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$600(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)J

    .line 843
    .line 844
    .line 845
    move-result-wide v1

    .line 846
    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    .line 847
    .line 848
    .line 849
    move-result v1

    .line 850
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 851
    .line 852
    .line 853
    move-result-object v1

    .line 854
    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$500(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)J

    .line 855
    .line 856
    .line 857
    move-result-wide v2

    .line 858
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    .line 859
    .line 860
    .line 861
    move-result v2

    .line 862
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 863
    .line 864
    .line 865
    :cond_30
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    iput-object v0, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 870
    .line 871
    :cond_31
    return-void
.end method

.method public static parseCommonEncryptionSinfFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .line 1
    add-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    move v5, v1

    .line 7
    move v7, v2

    .line 8
    move-object v4, v3

    .line 9
    move-object v6, v4

    .line 10
    :goto_0
    sub-int v8, v0, p1

    .line 11
    .line 12
    if-ge v8, p2, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    const v10, 0x66726d61

    .line 26
    .line 27
    .line 28
    if-ne v9, v10, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const v10, 0x7363686d

    .line 40
    .line 41
    .line 42
    if-ne v9, v10, :cond_1

    .line 43
    .line 44
    const/4 v4, 0x4

    .line 45
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const v10, 0x73636869

    .line 54
    .line 55
    .line 56
    if-ne v9, v10, :cond_2

    .line 57
    .line 58
    move v5, v0

    .line 59
    move v7, v8

    .line 60
    :cond_2
    :goto_1
    add-int/2addr v0, v8

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const-string p1, "cenc"

    .line 63
    .line 64
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_5

    .line 69
    .line 70
    const-string p1, "cbc1"

    .line 71
    .line 72
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_5

    .line 77
    .line 78
    const-string p1, "cens"

    .line 79
    .line 80
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_5

    .line 85
    .line 86
    const-string p1, "cbcs"

    .line 87
    .line 88
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    return-object v3

    .line 96
    :cond_5
    :goto_2
    const/4 p1, 0x1

    .line 97
    if-eqz v6, :cond_6

    .line 98
    .line 99
    move p2, p1

    .line 100
    goto :goto_3

    .line 101
    :cond_6
    move p2, v2

    .line 102
    :goto_3
    const-string v0, "frma atom is mandatory"

    .line 103
    .line 104
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    if-eq v5, v1, :cond_7

    .line 108
    .line 109
    move p2, p1

    .line 110
    goto :goto_4

    .line 111
    :cond_7
    move p2, v2

    .line 112
    :goto_4
    const-string v0, "schi atom is mandatory"

    .line 113
    .line 114
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p0, v5, v7, v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSchiFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    if-eqz p0, :cond_8

    .line 122
    .line 123
    move v2, p1

    .line 124
    :cond_8
    const-string/jumbo p1, "tenc atom is mandatory"

    .line 125
    .line 126
    .line 127
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    check-cast p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 135
    .line 136
    invoke-static {v6, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    return-object p0
.end method

.method private static parseEdts(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    .line 1
    const v0, 0x656c7374

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    new-array v3, v2, [J

    .line 32
    .line 33
    new-array v4, v2, [J

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    :goto_0
    if-ge v5, v2, :cond_4

    .line 37
    .line 38
    const/4 v6, 0x1

    .line 39
    if-ne v1, v6, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    .line 47
    .line 48
    .line 49
    move-result-wide v7

    .line 50
    :goto_1
    aput-wide v7, v3, v5

    .line 51
    .line 52
    if-ne v1, v6, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    .line 55
    .line 56
    .line 57
    move-result-wide v7

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    int-to-long v7, v7

    .line 64
    :goto_2
    aput-wide v7, v4, v5

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-ne v7, v6, :cond_3

    .line 71
    .line 72
    const/4 v6, 0x2

    .line 73
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v5, v5, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    const-string p0, "Unsupported media rate."

    .line 80
    .line 81
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_4
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method

.method private static parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    .locals 10

    .line 1
    add-int/lit8 p1, p1, 0xc

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    and-int/lit16 v2, v1, 0x80

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    and-int/lit8 v2, v1, 0x40

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    and-int/lit8 v1, v1, 0x20

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v0, "audio/mpeg"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_6

    .line 67
    .line 68
    const-string v0, "audio/vnd.dts"

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_6

    .line 75
    .line 76
    const-string v0, "audio/vnd.dts.hd"

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    const/4 v0, 0x4

    .line 86
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    .line 94
    .line 95
    .line 96
    move-result-wide v3

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    move-wide v4, v3

    .line 105
    new-array v3, p1, [B

    .line 106
    .line 107
    const/4 v6, 0x0

    .line 108
    invoke-virtual {p0, v3, v6, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 109
    .line 110
    .line 111
    move-wide p0, v0

    .line 112
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;

    .line 113
    .line 114
    const-wide/16 v6, 0x0

    .line 115
    .line 116
    cmp-long v0, v4, v6

    .line 117
    .line 118
    const-wide/16 v8, -0x1

    .line 119
    .line 120
    if-lez v0, :cond_4

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    move-wide v4, v8

    .line 124
    :goto_0
    cmp-long v0, p0, v6

    .line 125
    .line 126
    if-lez v0, :cond_5

    .line 127
    .line 128
    move-wide v6, p0

    .line 129
    goto :goto_1

    .line 130
    :cond_5
    move-wide v6, v8

    .line 131
    :goto_1
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    .line 132
    .line 133
    .line 134
    return-object v1

    .line 135
    :cond_6
    :goto_2
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;

    .line 136
    .line 137
    const-wide/16 v4, -0x1

    .line 138
    .line 139
    const-wide/16 v6, -0x1

    .line 140
    .line 141
    const/4 v3, 0x0

    .line 142
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    .line 143
    .line 144
    .line 145
    return-object v1
.end method

.method private static parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, v0, 0x7f

    .line 6
    .line 7
    :goto_0
    const/16 v2, 0x80

    .line 8
    .line 9
    and-int/2addr v0, v2

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    shl-int/lit8 v1, v1, 0x7

    .line 17
    .line 18
    and-int/lit8 v2, v0, 0x7f

    .line 19
    .line 20
    or-int/2addr v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v1
.end method

.method private static parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private static parseIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v1, p1, :cond_1

    .line 16
    .line 17
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseIlstElement(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0

    .line 35
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 36
    .line 37
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    return-object p0
.end method

.method private static parseMdhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    move v2, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v2, 0x10

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, ""

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    shr-int/lit8 v1, p0, 0xa

    .line 45
    .line 46
    and-int/lit8 v1, v1, 0x1f

    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x60

    .line 49
    .line 50
    int-to-char v1, v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    shr-int/lit8 v1, p0, 0x5

    .line 55
    .line 56
    and-int/lit8 v1, v1, 0x1f

    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x60

    .line 59
    .line 60
    int-to-char v1, v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    and-int/lit8 p0, p0, 0x1f

    .line 65
    .line 66
    add-int/lit8 p0, p0, 0x60

    .line 67
    .line 68
    int-to-char p0, p0

    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0
.end method

.method public static parseMdtaFromMeta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 10

    .line 1
    const v0, 0x68646c72    # 4.3148E24f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x6b657973

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x696c7374

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_6

    .line 24
    .line 25
    if-eqz v1, :cond_6

    .line 26
    .line 27
    if-eqz p0, :cond_6

    .line 28
    .line 29
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const v3, 0x6d647461

    .line 36
    .line 37
    .line 38
    if-eq v0, v3, :cond_0

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_0
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 42
    .line 43
    const/16 v1, 0xc

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    new-array v3, v1, [Ljava/lang/String;

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    :goto_0
    const/16 v5, 0x8

    .line 56
    .line 57
    if-ge v4, v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    const/4 v7, 0x4

    .line 64
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 65
    .line 66
    .line 67
    sub-int/2addr v6, v5

    .line 68
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    aput-object v5, v3, v4

    .line 73
    .line 74
    add-int/lit8 v4, v4, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 78
    .line 79
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-le v4, v5, :cond_4

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    add-int/lit8 v7, v7, -0x1

    .line 106
    .line 107
    if-ltz v7, :cond_2

    .line 108
    .line 109
    if-ge v7, v1, :cond_2

    .line 110
    .line 111
    aget-object v7, v3, v7

    .line 112
    .line 113
    add-int v8, v4, v6

    .line 114
    .line 115
    invoke-static {p0, v8, v7}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseMdtaMetadataEntryFromIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    if-eqz v7, :cond_3

    .line 120
    .line 121
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_2
    const-string v8, "AtomParsers"

    .line 126
    .line 127
    const-string v9, "Skipped metadata with unknown key index: "

    .line 128
    .line 129
    invoke-static {v9, v7, v8}, Lcom/android/tools/r8/RecordTag;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_3
    :goto_2
    add-int/2addr v4, v6

    .line 133
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    if-eqz p0, :cond_5

    .line 142
    .line 143
    return-object v2

    .line 144
    :cond_5
    new-instance p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 145
    .line 146
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    .line 147
    .line 148
    .line 149
    return-object p0

    .line 150
    :cond_6
    :goto_3
    return-object v2
.end method

.method private static parseMetaDataSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIILcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V
    .locals 0

    .line 1
    add-int/lit8 p2, p2, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 4
    .line 5
    .line 6
    const p2, 0x6d657474

    .line 7
    .line 8
    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    new-instance p1, Lcom/google/android/exoplayer2/Format$Builder;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iput-object p0, p4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public static parseMvhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$MvhdInfo;
    .locals 6

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const/4 v2, 0x4

    .line 21
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 30
    .line 31
    .line 32
    move-wide v0, v1

    .line 33
    :goto_0
    const-wide/32 v2, 0x7c25b080

    .line 34
    .line 35
    .line 36
    sub-long/2addr v0, v2

    .line 37
    const-wide/16 v2, 0x3e8

    .line 38
    .line 39
    mul-long/2addr v0, v2

    .line 40
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$MvhdInfo;

    .line 45
    .line 46
    new-instance v4, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 47
    .line 48
    new-instance v5, Lcom/google/android/exoplayer2/container/CreationTime;

    .line 49
    .line 50
    invoke-direct {v5, v0, v1}, Lcom/google/android/exoplayer2/container/CreationTime;-><init>(J)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    aput-object v5, v0, v1

    .line 58
    .line 59
    invoke-direct {v4, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$MvhdInfo;-><init>(Lcom/google/android/exoplayer2/metadata/Metadata;J)V

    .line 63
    .line 64
    .line 65
    return-object p0
.end method

.method private static parsePaspFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)F
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    int-to-float p1, p1

    .line 15
    int-to-float p0, p0

    .line 16
    div-float/2addr p1, p0

    .line 17
    return p1
.end method

.method private static parseProjFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)[B
    .locals 4

    .line 1
    add-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    :goto_0
    sub-int v1, v0, p1

    .line 4
    .line 5
    if-ge v1, p2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const v3, 0x70726f6a

    .line 19
    .line 20
    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    add-int/2addr v1, v0

    .line 28
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    add-int/2addr v0, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method private static parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    sub-int v1, v0, p1

    .line 6
    .line 7
    if-ge v1, p2, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_1
    const-string v3, "childAtomSize must be positive"

    .line 22
    .line 23
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const v3, 0x73696e66

    .line 31
    .line 32
    .line 33
    if-ne v2, v3, :cond_1

    .line 34
    .line 35
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseCommonEncryptionSinfFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    return-object v2

    .line 42
    :cond_1
    add-int/2addr v0, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method private static parseSchiFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .locals 11

    .line 1
    add-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    :goto_0
    sub-int v1, v0, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v1, p2, :cond_4

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const v4, 0x74656e63

    .line 20
    .line 21
    .line 22
    if-ne v3, v4, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 p2, 0x1

    .line 33
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 40
    .line 41
    .line 42
    move v8, v0

    .line 43
    move v9, v8

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    and-int/lit16 v1, p1, 0xf0

    .line 50
    .line 51
    shr-int/lit8 v1, v1, 0x4

    .line 52
    .line 53
    and-int/lit8 p1, p1, 0xf

    .line 54
    .line 55
    move v9, p1

    .line 56
    move v8, v1

    .line 57
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-ne p1, p2, :cond_1

    .line 62
    .line 63
    move v4, p2

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    move v4, v0

    .line 66
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    const/16 p1, 0x10

    .line 71
    .line 72
    new-array v7, p1, [B

    .line 73
    .line 74
    invoke-virtual {p0, v7, v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 75
    .line 76
    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    if-nez v6, :cond_2

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    new-array v2, p1, [B

    .line 86
    .line 87
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 88
    .line 89
    .line 90
    :cond_2
    move-object v10, v2

    .line 91
    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 92
    .line 93
    move-object v5, p3

    .line 94
    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    .line 95
    .line 96
    .line 97
    return-object v3

    .line 98
    :cond_3
    move-object v5, p3

    .line 99
    add-int/2addr v0, v1

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    return-object v2
.end method

.method private static parseSmta(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 6

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-ge v1, p1, :cond_4

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const v5, 0x73617574

    .line 26
    .line 27
    .line 28
    if-ne v4, v5, :cond_3

    .line 29
    .line 30
    const/16 p1, 0xe

    .line 31
    .line 32
    if-ge v3, p1, :cond_0

    .line 33
    .line 34
    return-object v2

    .line 35
    :cond_0
    const/4 p1, 0x5

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eq p1, v0, :cond_1

    .line 44
    .line 45
    const/16 v1, 0xd

    .line 46
    .line 47
    if-eq p1, v1, :cond_1

    .line 48
    .line 49
    return-object v2

    .line 50
    :cond_1
    if-ne p1, v0, :cond_2

    .line 51
    .line 52
    const/high16 p1, 0x43700000    # 240.0f

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/high16 p1, 0x42f00000    # 120.0f

    .line 56
    .line 57
    :goto_1
    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 66
    .line 67
    new-instance v2, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;

    .line 68
    .line 69
    invoke-direct {v2, p1, p0}, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;-><init>(FI)V

    .line 70
    .line 71
    .line 72
    new-array p0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 73
    .line 74
    const/4 p1, 0x0

    .line 75
    aput-object v2, p0, p1

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 78
    .line 79
    .line 80
    return-object v1

    .line 81
    :cond_3
    add-int/2addr v1, v3

    .line 82
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    return-object v2
.end method

.method private static parseStbl(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    .locals 36

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const v3, 0x7374737a

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    new-instance v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;

    .line 15
    .line 16
    iget-object v6, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    .line 17
    .line 18
    invoke-direct {v5, v3, v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;Lcom/google/android/exoplayer2/Format;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const v3, 0x73747a32

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_2f

    .line 30
    .line 31
    new-instance v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    .line 32
    .line 33
    invoke-direct {v5, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-interface {v5}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v6, 0x0

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 44
    .line 45
    new-array v2, v6, [J

    .line 46
    .line 47
    new-array v3, v6, [I

    .line 48
    .line 49
    new-array v5, v6, [J

    .line 50
    .line 51
    new-array v6, v6, [I

    .line 52
    .line 53
    const-wide/16 v7, 0x0

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_1
    const v7, 0x7374636f

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    const/4 v8, 0x1

    .line 68
    if-nez v7, :cond_2

    .line 69
    .line 70
    const v7, 0x636f3634

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    check-cast v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 82
    .line 83
    move v9, v8

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    move v9, v6

    .line 86
    :goto_1
    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 87
    .line 88
    const v10, 0x73747363

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    check-cast v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 100
    .line 101
    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 102
    .line 103
    const v11, 0x73747473

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 107
    .line 108
    .line 109
    move-result-object v11

    .line 110
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    check-cast v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 115
    .line 116
    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 117
    .line 118
    const v12, 0x73747373

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    if-eqz v12, :cond_3

    .line 126
    .line 127
    iget-object v12, v12, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    const/4 v12, 0x0

    .line 131
    :goto_2
    const v13, 0x63747473

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-eqz v0, :cond_4

    .line 139
    .line 140
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_4
    const/4 v0, 0x0

    .line 144
    :goto_3
    new-instance v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;

    .line 145
    .line 146
    invoke-direct {v13, v10, v7, v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)V

    .line 147
    .line 148
    .line 149
    const/16 v7, 0xc

    .line 150
    .line 151
    invoke-virtual {v11, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    sub-int/2addr v9, v8

    .line 159
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 164
    .line 165
    .line 166
    move-result v14

    .line 167
    if-eqz v0, :cond_5

    .line 168
    .line 169
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 173
    .line 174
    .line 175
    move-result v15

    .line 176
    goto :goto_4

    .line 177
    :cond_5
    move v15, v6

    .line 178
    :goto_4
    const/4 v4, -0x1

    .line 179
    if-eqz v12, :cond_7

    .line 180
    .line 181
    invoke-virtual {v12, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    if-lez v7, :cond_6

    .line 189
    .line 190
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 191
    .line 192
    .line 193
    move-result v16

    .line 194
    add-int/lit8 v16, v16, -0x1

    .line 195
    .line 196
    move/from16 v17, v6

    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_6
    move/from16 v16, v4

    .line 200
    .line 201
    move/from16 v17, v6

    .line 202
    .line 203
    const/4 v12, 0x0

    .line 204
    goto :goto_5

    .line 205
    :cond_7
    move/from16 v16, v4

    .line 206
    .line 207
    move v7, v6

    .line 208
    move/from16 v17, v7

    .line 209
    .line 210
    :goto_5
    invoke-interface {v5}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getFixedSampleSize()I

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    move/from16 v18, v8

    .line 215
    .line 216
    iget-object v8, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    .line 217
    .line 218
    iget-object v8, v8, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 219
    .line 220
    if-eq v6, v4, :cond_9

    .line 221
    .line 222
    const-string v4, "audio/raw"

    .line 223
    .line 224
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-nez v4, :cond_8

    .line 229
    .line 230
    const-string v4, "audio/g711-mlaw"

    .line 231
    .line 232
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    if-nez v4, :cond_8

    .line 237
    .line 238
    const-string v4, "audio/g711-alaw"

    .line 239
    .line 240
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    if-eqz v4, :cond_9

    .line 245
    .line 246
    :cond_8
    if-nez v9, :cond_9

    .line 247
    .line 248
    if-nez v15, :cond_9

    .line 249
    .line 250
    if-nez v7, :cond_9

    .line 251
    .line 252
    move/from16 p1, v18

    .line 253
    .line 254
    :goto_6
    move-object v8, v5

    .line 255
    goto :goto_7

    .line 256
    :cond_9
    move/from16 p1, v17

    .line 257
    .line 258
    goto :goto_6

    .line 259
    :goto_7
    if-eqz p1, :cond_b

    .line 260
    .line 261
    iget v0, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    .line 262
    .line 263
    new-array v7, v0, [J

    .line 264
    .line 265
    new-array v0, v0, [I

    .line 266
    .line 267
    :goto_8
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    if-eqz v8, :cond_a

    .line 272
    .line 273
    iget v8, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    .line 274
    .line 275
    iget-wide v9, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    .line 276
    .line 277
    aput-wide v9, v7, v8

    .line 278
    .line 279
    iget v9, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    .line 280
    .line 281
    aput v9, v0, v8

    .line 282
    .line 283
    goto :goto_8

    .line 284
    :cond_a
    int-to-long v8, v14

    .line 285
    invoke-static {v6, v7, v0, v8, v9}, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 290
    .line 291
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 292
    .line 293
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 294
    .line 295
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 296
    .line 297
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .line 298
    .line 299
    iget-wide v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    .line 300
    .line 301
    move-object v2, v6

    .line 302
    move v4, v8

    .line 303
    move-object v5, v9

    .line 304
    move-object v6, v10

    .line 305
    const-wide/16 v19, 0x0

    .line 306
    .line 307
    :goto_9
    move-wide v8, v11

    .line 308
    goto/16 :goto_14

    .line 309
    .line 310
    :cond_b
    new-array v6, v3, [J

    .line 311
    .line 312
    const-wide/16 v19, 0x0

    .line 313
    .line 314
    new-array v4, v3, [I

    .line 315
    .line 316
    new-array v5, v3, [J

    .line 317
    .line 318
    move-object/from16 p1, v0

    .line 319
    .line 320
    new-array v0, v3, [I

    .line 321
    .line 322
    move-object/from16 v21, v8

    .line 323
    .line 324
    move-object/from16 v22, v11

    .line 325
    .line 326
    move-object/from16 v25, v12

    .line 327
    .line 328
    move/from16 v8, v16

    .line 329
    .line 330
    move/from16 v11, v17

    .line 331
    .line 332
    move v12, v11

    .line 333
    move/from16 v26, v12

    .line 334
    .line 335
    move/from16 v29, v26

    .line 336
    .line 337
    move-wide/from16 v23, v19

    .line 338
    .line 339
    move-wide/from16 v27, v23

    .line 340
    .line 341
    move/from16 v16, v15

    .line 342
    .line 343
    move v15, v14

    .line 344
    move v14, v10

    .line 345
    move v10, v9

    .line 346
    move/from16 v9, v29

    .line 347
    .line 348
    :goto_a
    const-string v2, "AtomParsers"

    .line 349
    .line 350
    if-ge v11, v3, :cond_14

    .line 351
    .line 352
    move-wide/from16 v30, v27

    .line 353
    .line 354
    move/from16 v27, v26

    .line 355
    .line 356
    move/from16 v26, v18

    .line 357
    .line 358
    :goto_b
    if-nez v27, :cond_c

    .line 359
    .line 360
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    .line 361
    .line 362
    .line 363
    move-result v26

    .line 364
    if-eqz v26, :cond_c

    .line 365
    .line 366
    move/from16 v28, v14

    .line 367
    .line 368
    move/from16 v32, v15

    .line 369
    .line 370
    iget-wide v14, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    .line 371
    .line 372
    move/from16 v33, v3

    .line 373
    .line 374
    iget v3, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    .line 375
    .line 376
    move/from16 v27, v3

    .line 377
    .line 378
    move-wide/from16 v30, v14

    .line 379
    .line 380
    move/from16 v14, v28

    .line 381
    .line 382
    move/from16 v15, v32

    .line 383
    .line 384
    move/from16 v3, v33

    .line 385
    .line 386
    goto :goto_b

    .line 387
    :cond_c
    move/from16 v33, v3

    .line 388
    .line 389
    move/from16 v28, v14

    .line 390
    .line 391
    move/from16 v32, v15

    .line 392
    .line 393
    if-nez v26, :cond_d

    .line 394
    .line 395
    const-string v3, "Unexpected end of chunk data"

    .line 396
    .line 397
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-static {v6, v11}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    invoke-static {v4, v11}, Ljava/util/Arrays;->copyOf([II)[I

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    invoke-static {v5, v11}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    invoke-static {v0, v11}, Ljava/util/Arrays;->copyOf([II)[I

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    move-object v6, v3

    .line 417
    move v3, v11

    .line 418
    move/from16 v8, v27

    .line 419
    .line 420
    goto/16 :goto_10

    .line 421
    .line 422
    :cond_d
    if-eqz p1, :cond_f

    .line 423
    .line 424
    move/from16 v2, v29

    .line 425
    .line 426
    :goto_c
    if-nez v2, :cond_e

    .line 427
    .line 428
    if-lez v16, :cond_e

    .line 429
    .line 430
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 435
    .line 436
    .line 437
    move-result v12

    .line 438
    add-int/lit8 v16, v16, -0x1

    .line 439
    .line 440
    goto :goto_c

    .line 441
    :cond_e
    add-int/lit8 v2, v2, -0x1

    .line 442
    .line 443
    move/from16 v29, v2

    .line 444
    .line 445
    :cond_f
    aput-wide v30, v6, v11

    .line 446
    .line 447
    invoke-interface/range {v21 .. v21}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    aput v2, v4, v11

    .line 452
    .line 453
    if-le v2, v9, :cond_10

    .line 454
    .line 455
    move v9, v2

    .line 456
    :cond_10
    int-to-long v2, v12

    .line 457
    add-long v2, v23, v2

    .line 458
    .line 459
    aput-wide v2, v5, v11

    .line 460
    .line 461
    if-nez v25, :cond_11

    .line 462
    .line 463
    move/from16 v2, v18

    .line 464
    .line 465
    goto :goto_d

    .line 466
    :cond_11
    move/from16 v2, v17

    .line 467
    .line 468
    :goto_d
    aput v2, v0, v11

    .line 469
    .line 470
    if-ne v11, v8, :cond_12

    .line 471
    .line 472
    aput v18, v0, v11

    .line 473
    .line 474
    add-int/lit8 v7, v7, -0x1

    .line 475
    .line 476
    if-lez v7, :cond_12

    .line 477
    .line 478
    invoke-static/range {v25 .. v25}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    check-cast v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 483
    .line 484
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    add-int/lit8 v2, v2, -0x1

    .line 489
    .line 490
    move v8, v2

    .line 491
    :cond_12
    move/from16 v14, v32

    .line 492
    .line 493
    int-to-long v2, v14

    .line 494
    add-long v23, v23, v2

    .line 495
    .line 496
    add-int/lit8 v2, v28, -0x1

    .line 497
    .line 498
    if-nez v2, :cond_13

    .line 499
    .line 500
    if-lez v10, :cond_13

    .line 501
    .line 502
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 503
    .line 504
    .line 505
    move-result v2

    .line 506
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 507
    .line 508
    .line 509
    move-result v3

    .line 510
    add-int/lit8 v10, v10, -0x1

    .line 511
    .line 512
    move v15, v3

    .line 513
    :goto_e
    move v14, v2

    .line 514
    goto :goto_f

    .line 515
    :cond_13
    move v15, v14

    .line 516
    goto :goto_e

    .line 517
    :goto_f
    aget v2, v4, v11

    .line 518
    .line 519
    int-to-long v2, v2

    .line 520
    add-long v2, v30, v2

    .line 521
    .line 522
    add-int/lit8 v26, v27, -0x1

    .line 523
    .line 524
    add-int/lit8 v11, v11, 0x1

    .line 525
    .line 526
    move-wide/from16 v27, v2

    .line 527
    .line 528
    move/from16 v3, v33

    .line 529
    .line 530
    goto/16 :goto_a

    .line 531
    .line 532
    :cond_14
    move/from16 v33, v3

    .line 533
    .line 534
    move/from16 v28, v14

    .line 535
    .line 536
    move/from16 v8, v26

    .line 537
    .line 538
    :goto_10
    int-to-long v11, v12

    .line 539
    add-long v11, v23, v11

    .line 540
    .line 541
    if-eqz p1, :cond_16

    .line 542
    .line 543
    :goto_11
    if-lez v16, :cond_16

    .line 544
    .line 545
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 546
    .line 547
    .line 548
    move-result v13

    .line 549
    if-eqz v13, :cond_15

    .line 550
    .line 551
    move/from16 v13, v17

    .line 552
    .line 553
    goto :goto_12

    .line 554
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 555
    .line 556
    .line 557
    add-int/lit8 v16, v16, -0x1

    .line 558
    .line 559
    goto :goto_11

    .line 560
    :cond_16
    move/from16 v13, v18

    .line 561
    .line 562
    :goto_12
    if-nez v7, :cond_17

    .line 563
    .line 564
    if-nez v28, :cond_17

    .line 565
    .line 566
    if-nez v8, :cond_17

    .line 567
    .line 568
    if-nez v10, :cond_17

    .line 569
    .line 570
    if-nez v29, :cond_17

    .line 571
    .line 572
    if-nez v13, :cond_19

    .line 573
    .line 574
    :cond_17
    new-instance v14, Ljava/lang/StringBuilder;

    .line 575
    .line 576
    const-string v15, "Inconsistent stbl box for track "

    .line 577
    .line 578
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    iget v15, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    .line 582
    .line 583
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    const-string v15, ": remainingSynchronizationSamples "

    .line 587
    .line 588
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    const-string v7, ", remainingSamplesAtTimestampDelta "

    .line 595
    .line 596
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    move/from16 v7, v28

    .line 600
    .line 601
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    const-string v7, ", remainingSamplesInChunk "

    .line 605
    .line 606
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    const-string v7, ", remainingTimestampDeltaChanges "

    .line 613
    .line 614
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    const-string v7, ", remainingSamplesAtTimestampOffset "

    .line 621
    .line 622
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    move/from16 v7, v29

    .line 626
    .line 627
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    if-nez v13, :cond_18

    .line 631
    .line 632
    const-string v7, ", ctts invalid"

    .line 633
    .line 634
    goto :goto_13

    .line 635
    :cond_18
    const-string v7, ""

    .line 636
    .line 637
    :goto_13
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v7

    .line 644
    invoke-static {v2, v7}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    :cond_19
    move-object v7, v4

    .line 648
    move-object v2, v6

    .line 649
    move v4, v9

    .line 650
    move-object v6, v0

    .line 651
    goto/16 :goto_9

    .line 652
    .line 653
    :goto_14
    const-wide/32 v10, 0xf4240

    .line 654
    .line 655
    .line 656
    iget-wide v12, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 657
    .line 658
    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 659
    .line 660
    .line 661
    move-result-wide v10

    .line 662
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    .line 663
    .line 664
    const-wide/32 v12, 0xf4240

    .line 665
    .line 666
    .line 667
    if-nez v0, :cond_1a

    .line 668
    .line 669
    iget-wide v8, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 670
    .line 671
    invoke-static {v5, v12, v13, v8, v9}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 672
    .line 673
    .line 674
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 675
    .line 676
    move-object v3, v7

    .line 677
    move-wide v7, v10

    .line 678
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    .line 679
    .line 680
    .line 681
    return-object v0

    .line 682
    :cond_1a
    move-object/from16 v34, v7

    .line 683
    .line 684
    move v7, v3

    .line 685
    move-object/from16 v3, v34

    .line 686
    .line 687
    array-length v0, v0

    .line 688
    move/from16 v10, v18

    .line 689
    .line 690
    if-ne v0, v10, :cond_1d

    .line 691
    .line 692
    iget v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    .line 693
    .line 694
    if-ne v0, v10, :cond_1d

    .line 695
    .line 696
    array-length v0, v5

    .line 697
    const/4 v10, 0x2

    .line 698
    if-lt v0, v10, :cond_1d

    .line 699
    .line 700
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    .line 701
    .line 702
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    check-cast v0, [J

    .line 707
    .line 708
    aget-wide v10, v0, v17

    .line 709
    .line 710
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    .line 711
    .line 712
    aget-wide v21, v0, v17

    .line 713
    .line 714
    iget-wide v14, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 715
    .line 716
    iget-wide v12, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 717
    .line 718
    move-wide/from16 v25, v12

    .line 719
    .line 720
    move-wide/from16 v23, v14

    .line 721
    .line 722
    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 723
    .line 724
    .line 725
    move-result-wide v12

    .line 726
    add-long/2addr v12, v10

    .line 727
    move-object/from16 p1, v2

    .line 728
    .line 729
    move-object v0, v3

    .line 730
    move-wide v13, v12

    .line 731
    const-wide/32 v2, 0xf4240

    .line 732
    .line 733
    .line 734
    move-wide v11, v10

    .line 735
    move-wide v9, v8

    .line 736
    move-object v8, v5

    .line 737
    invoke-static/range {v8 .. v14}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->canApplyEditWithGaplessInfo([JJJJ)Z

    .line 738
    .line 739
    .line 740
    move-result v5

    .line 741
    move-wide/from16 v34, v9

    .line 742
    .line 743
    move v10, v5

    .line 744
    move-object v5, v8

    .line 745
    move-wide/from16 v8, v34

    .line 746
    .line 747
    if-eqz v10, :cond_1b

    .line 748
    .line 749
    sub-long v21, v8, v13

    .line 750
    .line 751
    aget-wide v13, v5, v17

    .line 752
    .line 753
    sub-long v23, v11, v13

    .line 754
    .line 755
    iget-object v10, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    .line 756
    .line 757
    iget v10, v10, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 758
    .line 759
    int-to-long v10, v10

    .line 760
    iget-wide v12, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 761
    .line 762
    move-wide/from16 v25, v10

    .line 763
    .line 764
    move-wide/from16 v27, v12

    .line 765
    .line 766
    invoke-static/range {v23 .. v28}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 767
    .line 768
    .line 769
    move-result-wide v10

    .line 770
    iget-object v12, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    .line 771
    .line 772
    iget v12, v12, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 773
    .line 774
    int-to-long v12, v12

    .line 775
    iget-wide v14, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 776
    .line 777
    move-wide/from16 v23, v12

    .line 778
    .line 779
    move-wide/from16 v25, v14

    .line 780
    .line 781
    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 782
    .line 783
    .line 784
    move-result-wide v12

    .line 785
    cmp-long v14, v10, v19

    .line 786
    .line 787
    if-nez v14, :cond_1c

    .line 788
    .line 789
    cmp-long v14, v12, v19

    .line 790
    .line 791
    if-eqz v14, :cond_1b

    .line 792
    .line 793
    goto :goto_15

    .line 794
    :cond_1b
    move-object/from16 v2, p1

    .line 795
    .line 796
    move-object v3, v0

    .line 797
    goto :goto_16

    .line 798
    :cond_1c
    :goto_15
    const-wide/32 v14, 0x7fffffff

    .line 799
    .line 800
    .line 801
    cmp-long v16, v10, v14

    .line 802
    .line 803
    if-gtz v16, :cond_1b

    .line 804
    .line 805
    cmp-long v14, v12, v14

    .line 806
    .line 807
    if-gtz v14, :cond_1b

    .line 808
    .line 809
    long-to-int v7, v10

    .line 810
    move-object/from16 v8, p2

    .line 811
    .line 812
    iput v7, v8, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 813
    .line 814
    long-to-int v7, v12

    .line 815
    iput v7, v8, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 816
    .line 817
    iget-wide v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 818
    .line 819
    invoke-static {v5, v2, v3, v7, v8}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 820
    .line 821
    .line 822
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    .line 823
    .line 824
    aget-wide v7, v2, v17

    .line 825
    .line 826
    const-wide/32 v9, 0xf4240

    .line 827
    .line 828
    .line 829
    iget-wide v11, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 830
    .line 831
    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 832
    .line 833
    .line 834
    move-result-wide v7

    .line 835
    move-object v3, v0

    .line 836
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 837
    .line 838
    move-object/from16 v2, p1

    .line 839
    .line 840
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    .line 841
    .line 842
    .line 843
    return-object v0

    .line 844
    :cond_1d
    :goto_16
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    .line 845
    .line 846
    array-length v10, v0

    .line 847
    const/4 v11, 0x1

    .line 848
    if-ne v10, v11, :cond_1f

    .line 849
    .line 850
    aget-wide v10, v0, v17

    .line 851
    .line 852
    cmp-long v10, v10, v19

    .line 853
    .line 854
    if-nez v10, :cond_1f

    .line 855
    .line 856
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    .line 857
    .line 858
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object v0

    .line 862
    check-cast v0, [J

    .line 863
    .line 864
    aget-wide v10, v0, v17

    .line 865
    .line 866
    move/from16 v0, v17

    .line 867
    .line 868
    :goto_17
    array-length v7, v5

    .line 869
    if-ge v0, v7, :cond_1e

    .line 870
    .line 871
    aget-wide v12, v5, v0

    .line 872
    .line 873
    sub-long v14, v12, v10

    .line 874
    .line 875
    const-wide/32 v16, 0xf4240

    .line 876
    .line 877
    .line 878
    iget-wide v12, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 879
    .line 880
    move-wide/from16 v18, v12

    .line 881
    .line 882
    invoke-static/range {v14 .. v19}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 883
    .line 884
    .line 885
    move-result-wide v12

    .line 886
    aput-wide v12, v5, v0

    .line 887
    .line 888
    add-int/lit8 v0, v0, 0x1

    .line 889
    .line 890
    goto :goto_17

    .line 891
    :cond_1e
    sub-long v12, v8, v10

    .line 892
    .line 893
    const-wide/32 v14, 0xf4240

    .line 894
    .line 895
    .line 896
    iget-wide v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 897
    .line 898
    move-wide/from16 v16, v7

    .line 899
    .line 900
    invoke-static/range {v12 .. v17}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 901
    .line 902
    .line 903
    move-result-wide v7

    .line 904
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 905
    .line 906
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    .line 907
    .line 908
    .line 909
    return-object v0

    .line 910
    :cond_1f
    iget v8, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    .line 911
    .line 912
    const/4 v10, 0x1

    .line 913
    if-ne v8, v10, :cond_20

    .line 914
    .line 915
    const/4 v10, 0x1

    .line 916
    goto :goto_18

    .line 917
    :cond_20
    move/from16 v10, v17

    .line 918
    .line 919
    :goto_18
    array-length v8, v0

    .line 920
    new-array v8, v8, [I

    .line 921
    .line 922
    array-length v0, v0

    .line 923
    new-array v0, v0, [I

    .line 924
    .line 925
    iget-object v9, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    .line 926
    .line 927
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    move-result-object v9

    .line 931
    check-cast v9, [J

    .line 932
    .line 933
    move/from16 v11, v17

    .line 934
    .line 935
    move v12, v11

    .line 936
    move v13, v12

    .line 937
    move v14, v13

    .line 938
    :goto_19
    iget-object v15, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    .line 939
    .line 940
    move-object/from16 v16, v0

    .line 941
    .line 942
    array-length v0, v15

    .line 943
    if-ge v11, v0, :cond_24

    .line 944
    .line 945
    move-object v0, v8

    .line 946
    move-object/from16 p1, v9

    .line 947
    .line 948
    aget-wide v8, p1, v11

    .line 949
    .line 950
    const-wide/16 v21, -0x1

    .line 951
    .line 952
    cmp-long v21, v8, v21

    .line 953
    .line 954
    if-eqz v21, :cond_23

    .line 955
    .line 956
    aget-wide v22, v15, v11

    .line 957
    .line 958
    move v15, v11

    .line 959
    move/from16 p2, v12

    .line 960
    .line 961
    iget-wide v11, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 962
    .line 963
    move-wide/from16 v24, v11

    .line 964
    .line 965
    iget-wide v11, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 966
    .line 967
    move-wide/from16 v26, v11

    .line 968
    .line 969
    invoke-static/range {v22 .. v27}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 970
    .line 971
    .line 972
    move-result-wide v11

    .line 973
    move-object/from16 v21, v0

    .line 974
    .line 975
    const/4 v0, 0x1

    .line 976
    invoke-static {v5, v8, v9, v0, v0}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    .line 977
    .line 978
    .line 979
    move-result v18

    .line 980
    aput v18, v21, v15

    .line 981
    .line 982
    add-long/2addr v8, v11

    .line 983
    move/from16 v11, v17

    .line 984
    .line 985
    invoke-static {v5, v8, v9, v10, v11}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    .line 986
    .line 987
    .line 988
    move-result v8

    .line 989
    aput v8, v16, v15

    .line 990
    .line 991
    :goto_1a
    aget v8, v21, v15

    .line 992
    .line 993
    aget v9, v16, v15

    .line 994
    .line 995
    if-ge v8, v9, :cond_21

    .line 996
    .line 997
    aget v12, v6, v8

    .line 998
    .line 999
    and-int/2addr v12, v0

    .line 1000
    if-nez v12, :cond_21

    .line 1001
    .line 1002
    add-int/lit8 v8, v8, 0x1

    .line 1003
    .line 1004
    aput v8, v21, v15

    .line 1005
    .line 1006
    goto :goto_1a

    .line 1007
    :cond_21
    sub-int v12, v9, v8

    .line 1008
    .line 1009
    add-int/2addr v13, v12

    .line 1010
    if-eq v14, v8, :cond_22

    .line 1011
    .line 1012
    move v8, v0

    .line 1013
    goto :goto_1b

    .line 1014
    :cond_22
    move v8, v11

    .line 1015
    :goto_1b
    or-int v12, p2, v8

    .line 1016
    .line 1017
    move v14, v9

    .line 1018
    goto :goto_1c

    .line 1019
    :cond_23
    move-object/from16 v21, v0

    .line 1020
    .line 1021
    move v15, v11

    .line 1022
    move/from16 p2, v12

    .line 1023
    .line 1024
    move/from16 v11, v17

    .line 1025
    .line 1026
    const/4 v0, 0x1

    .line 1027
    :goto_1c
    add-int/lit8 v8, v15, 0x1

    .line 1028
    .line 1029
    move-object/from16 v9, p1

    .line 1030
    .line 1031
    move/from16 v17, v11

    .line 1032
    .line 1033
    move-object/from16 v0, v16

    .line 1034
    .line 1035
    move v11, v8

    .line 1036
    move-object/from16 v8, v21

    .line 1037
    .line 1038
    goto :goto_19

    .line 1039
    :cond_24
    move-object/from16 v21, v8

    .line 1040
    .line 1041
    move/from16 p2, v12

    .line 1042
    .line 1043
    move/from16 v11, v17

    .line 1044
    .line 1045
    const/4 v0, 0x1

    .line 1046
    if-eq v13, v7, :cond_25

    .line 1047
    .line 1048
    move v8, v0

    .line 1049
    goto :goto_1d

    .line 1050
    :cond_25
    move v8, v11

    .line 1051
    :goto_1d
    or-int v0, p2, v8

    .line 1052
    .line 1053
    if-eqz v0, :cond_26

    .line 1054
    .line 1055
    new-array v7, v13, [J

    .line 1056
    .line 1057
    goto :goto_1e

    .line 1058
    :cond_26
    move-object v7, v2

    .line 1059
    :goto_1e
    if-eqz v0, :cond_27

    .line 1060
    .line 1061
    new-array v8, v13, [I

    .line 1062
    .line 1063
    goto :goto_1f

    .line 1064
    :cond_27
    move-object v8, v3

    .line 1065
    :goto_1f
    if-eqz v0, :cond_28

    .line 1066
    .line 1067
    move v4, v11

    .line 1068
    :cond_28
    if-eqz v0, :cond_29

    .line 1069
    .line 1070
    new-array v9, v13, [I

    .line 1071
    .line 1072
    goto :goto_20

    .line 1073
    :cond_29
    move-object v9, v6

    .line 1074
    :goto_20
    new-array v10, v13, [J

    .line 1075
    .line 1076
    move v12, v11

    .line 1077
    move-wide/from16 v22, v19

    .line 1078
    .line 1079
    :goto_21
    iget-object v13, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    .line 1080
    .line 1081
    array-length v13, v13

    .line 1082
    if-ge v11, v13, :cond_2e

    .line 1083
    .line 1084
    iget-object v13, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    .line 1085
    .line 1086
    aget-wide v14, v13, v11

    .line 1087
    .line 1088
    aget v13, v21, v11

    .line 1089
    .line 1090
    move/from16 p1, v0

    .line 1091
    .line 1092
    aget v0, v16, v11

    .line 1093
    .line 1094
    move/from16 p2, v4

    .line 1095
    .line 1096
    if-eqz p1, :cond_2a

    .line 1097
    .line 1098
    sub-int v4, v0, v13

    .line 1099
    .line 1100
    invoke-static {v2, v13, v7, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1101
    .line 1102
    .line 1103
    invoke-static {v3, v13, v8, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1104
    .line 1105
    .line 1106
    invoke-static {v6, v13, v9, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1107
    .line 1108
    .line 1109
    :cond_2a
    move/from16 v4, p2

    .line 1110
    .line 1111
    :goto_22
    if-ge v13, v0, :cond_2d

    .line 1112
    .line 1113
    const-wide/32 v24, 0xf4240

    .line 1114
    .line 1115
    .line 1116
    move-object/from16 v17, v2

    .line 1117
    .line 1118
    move-object/from16 v18, v3

    .line 1119
    .line 1120
    iget-wide v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 1121
    .line 1122
    move-wide/from16 v26, v2

    .line 1123
    .line 1124
    invoke-static/range {v22 .. v27}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 1125
    .line 1126
    .line 1127
    move-result-wide v2

    .line 1128
    aget-wide v24, v5, v13

    .line 1129
    .line 1130
    sub-long v26, v24, v14

    .line 1131
    .line 1132
    const-wide/32 v28, 0xf4240

    .line 1133
    .line 1134
    .line 1135
    move-wide/from16 v24, v2

    .line 1136
    .line 1137
    iget-wide v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 1138
    .line 1139
    move-wide/from16 v30, v2

    .line 1140
    .line 1141
    invoke-static/range {v26 .. v31}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 1142
    .line 1143
    .line 1144
    move-result-wide v2

    .line 1145
    move/from16 v26, v0

    .line 1146
    .line 1147
    iget v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    .line 1148
    .line 1149
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->canTrimSamplesWithTimestampChange(I)Z

    .line 1150
    .line 1151
    .line 1152
    move-result v0

    .line 1153
    move-object/from16 v27, v5

    .line 1154
    .line 1155
    if-eqz v0, :cond_2b

    .line 1156
    .line 1157
    move-object v0, v6

    .line 1158
    move-wide/from16 v5, v19

    .line 1159
    .line 1160
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 1161
    .line 1162
    .line 1163
    move-result-wide v2

    .line 1164
    goto :goto_23

    .line 1165
    :cond_2b
    move-object v0, v6

    .line 1166
    move-wide/from16 v5, v19

    .line 1167
    .line 1168
    :goto_23
    add-long v2, v24, v2

    .line 1169
    .line 1170
    aput-wide v2, v10, v12

    .line 1171
    .line 1172
    if-eqz p1, :cond_2c

    .line 1173
    .line 1174
    aget v2, v8, v12

    .line 1175
    .line 1176
    if-le v2, v4, :cond_2c

    .line 1177
    .line 1178
    aget v4, v18, v13

    .line 1179
    .line 1180
    :cond_2c
    add-int/lit8 v12, v12, 0x1

    .line 1181
    .line 1182
    add-int/lit8 v13, v13, 0x1

    .line 1183
    .line 1184
    move-wide/from16 v19, v5

    .line 1185
    .line 1186
    move-object/from16 v2, v17

    .line 1187
    .line 1188
    move-object/from16 v3, v18

    .line 1189
    .line 1190
    move-object/from16 v5, v27

    .line 1191
    .line 1192
    move-object v6, v0

    .line 1193
    move/from16 v0, v26

    .line 1194
    .line 1195
    goto :goto_22

    .line 1196
    :cond_2d
    move-object/from16 v17, v2

    .line 1197
    .line 1198
    move-object/from16 v18, v3

    .line 1199
    .line 1200
    move-object/from16 v27, v5

    .line 1201
    .line 1202
    move-object v0, v6

    .line 1203
    move-wide/from16 v5, v19

    .line 1204
    .line 1205
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    .line 1206
    .line 1207
    aget-wide v13, v2, v11

    .line 1208
    .line 1209
    add-long v22, v22, v13

    .line 1210
    .line 1211
    add-int/lit8 v11, v11, 0x1

    .line 1212
    .line 1213
    move-object/from16 v2, v17

    .line 1214
    .line 1215
    move-object/from16 v5, v27

    .line 1216
    .line 1217
    move-object v6, v0

    .line 1218
    move/from16 v0, p1

    .line 1219
    .line 1220
    goto/16 :goto_21

    .line 1221
    .line 1222
    :cond_2e
    move/from16 p2, v4

    .line 1223
    .line 1224
    const-wide/32 v24, 0xf4240

    .line 1225
    .line 1226
    .line 1227
    iget-wide v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 1228
    .line 1229
    move-wide/from16 v26, v2

    .line 1230
    .line 1231
    invoke-static/range {v22 .. v27}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 1232
    .line 1233
    .line 1234
    move-result-wide v2

    .line 1235
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 1236
    .line 1237
    move-object v6, v9

    .line 1238
    move-object v5, v10

    .line 1239
    move-wide/from16 v34, v2

    .line 1240
    .line 1241
    move-object v2, v7

    .line 1242
    move-object v3, v8

    .line 1243
    move-wide/from16 v7, v34

    .line 1244
    .line 1245
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    .line 1246
    .line 1247
    .line 1248
    return-object v0

    .line 1249
    :cond_2f
    const-string v0, "Track has no sample table size information"

    .line 1250
    .line 1251
    const/4 v1, 0x0

    .line 1252
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v0

    .line 1256
    throw v0
.end method

.method private static parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .locals 12

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    new-instance v7, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    .line 11
    .line 12
    invoke-direct {v7, v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const/4 v11, 0x0

    .line 16
    move v10, v11

    .line 17
    :goto_0
    if-ge v10, v0, :cond_9

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-lez v4, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move v1, v11

    .line 32
    :goto_1
    const-string v2, "childAtomSize must be positive"

    .line 33
    .line 34
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const v1, 0x61766331

    .line 42
    .line 43
    .line 44
    if-eq v2, v1, :cond_1

    .line 45
    .line 46
    const v1, 0x61766333

    .line 47
    .line 48
    .line 49
    if-eq v2, v1, :cond_1

    .line 50
    .line 51
    const v1, 0x656e6376

    .line 52
    .line 53
    .line 54
    if-eq v2, v1, :cond_1

    .line 55
    .line 56
    const v1, 0x6d317620

    .line 57
    .line 58
    .line 59
    if-eq v2, v1, :cond_1

    .line 60
    .line 61
    const v1, 0x6d703476

    .line 62
    .line 63
    .line 64
    if-eq v2, v1, :cond_1

    .line 65
    .line 66
    const v1, 0x68766331

    .line 67
    .line 68
    .line 69
    if-eq v2, v1, :cond_1

    .line 70
    .line 71
    const v1, 0x68657631

    .line 72
    .line 73
    .line 74
    if-eq v2, v1, :cond_1

    .line 75
    .line 76
    const v1, 0x73323633

    .line 77
    .line 78
    .line 79
    if-eq v2, v1, :cond_1

    .line 80
    .line 81
    const v1, 0x48323633

    .line 82
    .line 83
    .line 84
    if-eq v2, v1, :cond_1

    .line 85
    .line 86
    const v1, 0x76703038

    .line 87
    .line 88
    .line 89
    if-eq v2, v1, :cond_1

    .line 90
    .line 91
    const v1, 0x76703039

    .line 92
    .line 93
    .line 94
    if-eq v2, v1, :cond_1

    .line 95
    .line 96
    const v1, 0x61763031

    .line 97
    .line 98
    .line 99
    if-eq v2, v1, :cond_1

    .line 100
    .line 101
    const v1, 0x64766176

    .line 102
    .line 103
    .line 104
    if-eq v2, v1, :cond_1

    .line 105
    .line 106
    const v1, 0x64766131

    .line 107
    .line 108
    .line 109
    if-eq v2, v1, :cond_1

    .line 110
    .line 111
    const v1, 0x64766865

    .line 112
    .line 113
    .line 114
    if-eq v2, v1, :cond_1

    .line 115
    .line 116
    const v1, 0x64766831

    .line 117
    .line 118
    .line 119
    if-ne v2, v1, :cond_2

    .line 120
    .line 121
    :cond_1
    move-object v1, p0

    .line 122
    move v5, p1

    .line 123
    move v6, p2

    .line 124
    move-object v8, v7

    .line 125
    move v9, v10

    .line 126
    move-object/from16 v7, p4

    .line 127
    .line 128
    goto/16 :goto_4

    .line 129
    .line 130
    :cond_2
    const v1, 0x6d703461

    .line 131
    .line 132
    .line 133
    if-eq v2, v1, :cond_3

    .line 134
    .line 135
    const v1, 0x656e6361

    .line 136
    .line 137
    .line 138
    if-eq v2, v1, :cond_3

    .line 139
    .line 140
    const v1, 0x61632d33

    .line 141
    .line 142
    .line 143
    if-eq v2, v1, :cond_3

    .line 144
    .line 145
    const v1, 0x65632d33

    .line 146
    .line 147
    .line 148
    if-eq v2, v1, :cond_3

    .line 149
    .line 150
    const v1, 0x61632d34

    .line 151
    .line 152
    .line 153
    if-eq v2, v1, :cond_3

    .line 154
    .line 155
    const v1, 0x6d6c7061

    .line 156
    .line 157
    .line 158
    if-eq v2, v1, :cond_3

    .line 159
    .line 160
    const v1, 0x64747363

    .line 161
    .line 162
    .line 163
    if-eq v2, v1, :cond_3

    .line 164
    .line 165
    const v1, 0x64747365

    .line 166
    .line 167
    .line 168
    if-eq v2, v1, :cond_3

    .line 169
    .line 170
    const v1, 0x64747368

    .line 171
    .line 172
    .line 173
    if-eq v2, v1, :cond_3

    .line 174
    .line 175
    const v1, 0x6474736c

    .line 176
    .line 177
    .line 178
    if-eq v2, v1, :cond_3

    .line 179
    .line 180
    const v1, 0x64747378

    .line 181
    .line 182
    .line 183
    if-eq v2, v1, :cond_3

    .line 184
    .line 185
    const v1, 0x73616d72

    .line 186
    .line 187
    .line 188
    if-eq v2, v1, :cond_3

    .line 189
    .line 190
    const v1, 0x73617762

    .line 191
    .line 192
    .line 193
    if-eq v2, v1, :cond_3

    .line 194
    .line 195
    const v1, 0x6c70636d

    .line 196
    .line 197
    .line 198
    if-eq v2, v1, :cond_3

    .line 199
    .line 200
    const v1, 0x736f7774

    .line 201
    .line 202
    .line 203
    if-eq v2, v1, :cond_3

    .line 204
    .line 205
    const v1, 0x74776f73

    .line 206
    .line 207
    .line 208
    if-eq v2, v1, :cond_3

    .line 209
    .line 210
    const v1, 0x2e6d7032

    .line 211
    .line 212
    .line 213
    if-eq v2, v1, :cond_3

    .line 214
    .line 215
    const v1, 0x2e6d7033

    .line 216
    .line 217
    .line 218
    if-eq v2, v1, :cond_3

    .line 219
    .line 220
    const v1, 0x6d686131

    .line 221
    .line 222
    .line 223
    if-eq v2, v1, :cond_3

    .line 224
    .line 225
    const v1, 0x6d686d31

    .line 226
    .line 227
    .line 228
    if-eq v2, v1, :cond_3

    .line 229
    .line 230
    const v1, 0x616c6163

    .line 231
    .line 232
    .line 233
    if-eq v2, v1, :cond_3

    .line 234
    .line 235
    const v1, 0x616c6177

    .line 236
    .line 237
    .line 238
    if-eq v2, v1, :cond_3

    .line 239
    .line 240
    const v1, 0x756c6177

    .line 241
    .line 242
    .line 243
    if-eq v2, v1, :cond_3

    .line 244
    .line 245
    const v1, 0x4f707573

    .line 246
    .line 247
    .line 248
    if-eq v2, v1, :cond_3

    .line 249
    .line 250
    const v1, 0x664c6143

    .line 251
    .line 252
    .line 253
    if-ne v2, v1, :cond_4

    .line 254
    .line 255
    :cond_3
    move-object v1, p0

    .line 256
    move v5, p1

    .line 257
    move-object v6, p3

    .line 258
    move-object/from16 v8, p4

    .line 259
    .line 260
    move-object v9, v7

    .line 261
    move/from16 v7, p5

    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_4
    const v1, 0x54544d4c

    .line 265
    .line 266
    .line 267
    if-eq v2, v1, :cond_5

    .line 268
    .line 269
    const v1, 0x74783367

    .line 270
    .line 271
    .line 272
    if-eq v2, v1, :cond_5

    .line 273
    .line 274
    const v1, 0x77767474

    .line 275
    .line 276
    .line 277
    if-eq v2, v1, :cond_5

    .line 278
    .line 279
    const v1, 0x73747070

    .line 280
    .line 281
    .line 282
    if-eq v2, v1, :cond_5

    .line 283
    .line 284
    const v1, 0x63363038

    .line 285
    .line 286
    .line 287
    if-ne v2, v1, :cond_6

    .line 288
    .line 289
    :cond_5
    move-object v1, p0

    .line 290
    move v5, p1

    .line 291
    move-object v6, p3

    .line 292
    goto :goto_2

    .line 293
    :cond_6
    const v1, 0x6d657474

    .line 294
    .line 295
    .line 296
    if-ne v2, v1, :cond_7

    .line 297
    .line 298
    invoke-static {p0, v2, v3, p1, v7}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMetaDataSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIILcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V

    .line 299
    .line 300
    .line 301
    goto :goto_5

    .line 302
    :cond_7
    const v1, 0x63616d6d

    .line 303
    .line 304
    .line 305
    if-ne v2, v1, :cond_8

    .line 306
    .line 307
    new-instance v1, Lcom/google/android/exoplayer2/Format$Builder;

    .line 308
    .line 309
    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    const-string v2, "application/x-camera-motion"

    .line 317
    .line 318
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    iput-object v1, v7, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 327
    .line 328
    goto :goto_5

    .line 329
    :goto_2
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTextSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V

    .line 330
    .line 331
    .line 332
    goto :goto_5

    .line 333
    :goto_3
    invoke-static/range {v1 .. v10}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    .line 334
    .line 335
    .line 336
    move-object v7, v9

    .line 337
    goto :goto_5

    .line 338
    :goto_4
    invoke-static/range {v1 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    .line 339
    .line 340
    .line 341
    move-object v7, v8

    .line 342
    move v10, v9

    .line 343
    :cond_8
    :goto_5
    add-int/2addr v3, v4

    .line 344
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 345
    .line 346
    .line 347
    add-int/lit8 v10, v10, 0x1

    .line 348
    .line 349
    goto/16 :goto_0

    .line 350
    .line 351
    :cond_9
    return-object v7
.end method

.method private static parseTextSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V
    .locals 4

    .line 1
    add-int/lit8 p2, p2, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 4
    .line 5
    .line 6
    const p2, 0x54544d4c

    .line 7
    .line 8
    .line 9
    const-string v0, "application/ttml+xml"

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const-wide v2, 0x7fffffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    if-ne p1, p2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const p2, 0x74783367

    .line 21
    .line 22
    .line 23
    if-ne p1, p2, :cond_1

    .line 24
    .line 25
    add-int/lit8 p3, p3, -0x10

    .line 26
    .line 27
    new-array p1, p3, [B

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 31
    .line 32
    .line 33
    sget p0, Lcom/google/common/collect/ImmutableList;->$r8$clinit:I

    .line 34
    .line 35
    new-instance v1, Lcom/google/common/collect/SingletonImmutableList;

    .line 36
    .line 37
    invoke-direct {v1, p1}, Lcom/google/common/collect/SingletonImmutableList;-><init>(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "application/x-quicktime-tx3g"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const p0, 0x77767474

    .line 44
    .line 45
    .line 46
    if-ne p1, p0, :cond_2

    .line 47
    .line 48
    const-string v0, "application/x-mp4-vtt"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const p0, 0x73747070

    .line 52
    .line 53
    .line 54
    if-ne p1, p0, :cond_3

    .line 55
    .line 56
    const-wide/16 v2, 0x0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const p0, 0x63363038

    .line 60
    .line 61
    .line 62
    if-ne p1, p0, :cond_4

    .line 63
    .line 64
    const/4 p0, 0x1

    .line 65
    iput p0, p6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    .line 66
    .line 67
    const-string v0, "application/x-mp4-cea-608"

    .line 68
    .line 69
    :goto_0
    new-instance p0, Lcom/google/android/exoplayer2/Format$Builder;

    .line 70
    .line 71
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0, p5}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    iput-object p0, p6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 99
    .line 100
    return-void

    .line 101
    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m()V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method private static parseTkhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
    .locals 12

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/16 v2, 0x10

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    move v3, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v2

    .line 21
    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x4

    .line 29
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    move v0, v4

    .line 39
    :cond_1
    const/4 v6, 0x0

    .line 40
    move v7, v6

    .line 41
    :goto_1
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    if-ge v7, v0, :cond_5

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    add-int v11, v5, v7

    .line 53
    .line 54
    aget-byte v10, v10, v11

    .line 55
    .line 56
    const/4 v11, -0x1

    .line 57
    if-eq v10, v11, :cond_4

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    :goto_2
    const-wide/16 v10, 0x0

    .line 71
    .line 72
    cmp-long v5, v0, v10

    .line 73
    .line 74
    if-nez v5, :cond_3

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    move-wide v8, v0

    .line 78
    goto :goto_3

    .line 79
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 83
    .line 84
    .line 85
    :goto_3
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    const/high16 v4, -0x10000

    .line 108
    .line 109
    const/high16 v5, 0x10000

    .line 110
    .line 111
    if-nez v0, :cond_6

    .line 112
    .line 113
    if-ne v1, v5, :cond_6

    .line 114
    .line 115
    if-ne v2, v4, :cond_6

    .line 116
    .line 117
    if-nez p0, :cond_6

    .line 118
    .line 119
    const/16 v6, 0x5a

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_6
    if-nez v0, :cond_7

    .line 123
    .line 124
    if-ne v1, v4, :cond_7

    .line 125
    .line 126
    if-ne v2, v5, :cond_7

    .line 127
    .line 128
    if-nez p0, :cond_7

    .line 129
    .line 130
    const/16 v6, 0x10e

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_7
    if-ne v0, v4, :cond_8

    .line 134
    .line 135
    if-nez v1, :cond_8

    .line 136
    .line 137
    if-nez v2, :cond_8

    .line 138
    .line 139
    if-ne p0, v4, :cond_8

    .line 140
    .line 141
    const/16 v6, 0xb4

    .line 142
    .line 143
    :cond_8
    :goto_4
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    .line 144
    .line 145
    invoke-direct {p0, v3, v8, v9, v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    .line 146
    .line 147
    .line 148
    return-object p0
.end method

.method private static parseTrak(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const v1, 0x6d646961

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 15
    .line 16
    const v2, 0x68646c72    # 4.3148E24f

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->getTrackTypeForHdlr(I)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const/4 v2, -0x1

    .line 40
    const/4 v3, 0x0

    .line 41
    if-ne v5, v2, :cond_0

    .line 42
    .line 43
    return-object v3

    .line 44
    :cond_0
    const v2, 0x746b6864

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 58
    .line 59
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTkhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    cmp-long v4, p2, v6

    .line 69
    .line 70
    if-nez v4, :cond_1

    .line 71
    .line 72
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$000(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v8

    .line 76
    move-wide v10, v8

    .line 77
    :goto_0
    move-object/from16 v4, p1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    move-wide/from16 v10, p2

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :goto_1
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 84
    .line 85
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMvhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$MvhdInfo;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    iget-wide v14, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$MvhdInfo;->timescale:J

    .line 90
    .line 91
    cmp-long v4, v10, v6

    .line 92
    .line 93
    if-nez v4, :cond_2

    .line 94
    .line 95
    :goto_2
    move-wide v10, v6

    .line 96
    goto :goto_3

    .line 97
    :cond_2
    const-wide/32 v12, 0xf4240

    .line 98
    .line 99
    .line 100
    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 101
    .line 102
    .line 103
    move-result-wide v6

    .line 104
    goto :goto_2

    .line 105
    :goto_3
    const v4, 0x6d696e66

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 117
    .line 118
    const v6, 0x7374626c

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 130
    .line 131
    const v6, 0x6d646864

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 143
    .line 144
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 145
    .line 146
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMdhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const v6, 0x73747364

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    if-eqz v4, :cond_5

    .line 158
    .line 159
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 160
    .line 161
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    .line 162
    .line 163
    .line 164
    move-result v17

    .line 165
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$200(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    .line 166
    .line 167
    .line 168
    move-result v18

    .line 169
    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 170
    .line 171
    move-object/from16 v19, v6

    .line 172
    .line 173
    check-cast v19, Ljava/lang/String;

    .line 174
    .line 175
    move-object/from16 v20, p4

    .line 176
    .line 177
    move/from16 v21, p6

    .line 178
    .line 179
    move-object/from16 v16, v4

    .line 180
    .line 181
    invoke-static/range {v16 .. v21}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    if-nez p5, :cond_3

    .line 186
    .line 187
    const v6, 0x65647473

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    if-eqz v0, :cond_3

    .line 195
    .line 196
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEdts(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    if-eqz v0, :cond_3

    .line 201
    .line 202
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v6, [J

    .line 205
    .line 206
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v0, [J

    .line 209
    .line 210
    move-object/from16 v17, v0

    .line 211
    .line 212
    move-object/from16 v16, v6

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_3
    move-object/from16 v16, v3

    .line 216
    .line 217
    move-object/from16 v17, v16

    .line 218
    .line 219
    :goto_4
    iget-object v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 220
    .line 221
    if-nez v0, :cond_4

    .line 222
    .line 223
    return-object v3

    .line 224
    :cond_4
    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 225
    .line 226
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast v1, Ljava/lang/Long;

    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 235
    .line 236
    .line 237
    move-result-wide v6

    .line 238
    iget-object v12, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 239
    .line 240
    iget v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    .line 241
    .line 242
    move-wide v8, v14

    .line 243
    iget-object v14, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 244
    .line 245
    iget v15, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 246
    .line 247
    move v4, v0

    .line 248
    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    .line 249
    .line 250
    .line 251
    return-object v3

    .line 252
    :cond_5
    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    .line 253
    .line 254
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    throw v0
.end method

.method public static parseTraks(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            "Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;",
            "J",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "ZZ",
            "Lcom/google/common/base/Function;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_2

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    move-object v3, v2

    .line 22
    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 23
    .line 24
    iget v2, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    .line 25
    .line 26
    const v4, 0x7472616b

    .line 27
    .line 28
    .line 29
    if-eq v2, v4, :cond_0

    .line 30
    .line 31
    move-object/from16 v3, p7

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const v2, 0x6d766864

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    move-object v4, v2

    .line 46
    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 47
    .line 48
    move-wide v5, p2

    .line 49
    move-object v7, p4

    .line 50
    move v8, p5

    .line 51
    move/from16 v9, p6

    .line 52
    .line 53
    invoke-static/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTrak(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    move-object v4, v3

    .line 58
    move-object/from16 v3, p7

    .line 59
    .line 60
    invoke-interface {v3, v2}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 65
    .line 66
    if-nez v2, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const v5, 0x6d646961

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 81
    .line 82
    const v5, 0x6d696e66

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 94
    .line 95
    const v5, 0x7374626c

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 107
    .line 108
    invoke-static {v2, v4, p1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseStbl(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    return-object v0
.end method

.method public static parseUdta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$UdtaInfo;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    move-object v2, v1

    .line 10
    move-object v3, v2

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-lt v4, v0, :cond_3

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    const v7, 0x6d657461

    .line 30
    .line 31
    .line 32
    if-ne v6, v7, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 35
    .line 36
    .line 37
    add-int v1, v4, v5

    .line 38
    .line 39
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseUdtaMeta(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    const v7, 0x736d7461

    .line 45
    .line 46
    .line 47
    if-ne v6, v7, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 50
    .line 51
    .line 52
    add-int v2, v4, v5

    .line 53
    .line 54
    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSmta(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const v7, -0x56878686

    .line 60
    .line 61
    .line 62
    if-ne v6, v7, :cond_2

    .line 63
    .line 64
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseXyz(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    :cond_2
    :goto_1
    add-int/2addr v4, v5

    .line 69
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$UdtaInfo;

    .line 74
    .line 75
    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$UdtaInfo;-><init>(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 76
    .line 77
    .line 78
    return-object p0
.end method

.method private static parseUdtaMeta(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge v0, p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const v3, 0x696c7374

    .line 28
    .line 29
    .line 30
    if-ne v2, v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 33
    .line 34
    .line 35
    add-int/2addr v0, v1

    .line 36
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_0
    add-int/2addr v0, v1

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method

.method private static parseVideoSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p6

    .line 8
    .line 9
    move-object/from16 v4, p7

    .line 10
    .line 11
    add-int/lit8 v5, v1, 0x10

    .line 12
    .line 13
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 14
    .line 15
    .line 16
    const/16 v5, 0x10

    .line 17
    .line 18
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    const/16 v7, 0x32

    .line 30
    .line 31
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const v8, 0x656e6376

    .line 39
    .line 40
    .line 41
    move/from16 v10, p1

    .line 42
    .line 43
    if-ne v10, v8, :cond_2

    .line 44
    .line 45
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    if-eqz v8, :cond_1

    .line 50
    .line 51
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v10, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-nez v3, :cond_0

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v11, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 66
    .line 67
    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    :goto_0
    iget-object v11, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 74
    .line 75
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 78
    .line 79
    aput-object v8, v11, p8

    .line 80
    .line 81
    :cond_1
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 82
    .line 83
    .line 84
    :cond_2
    const v8, 0x6d317620

    .line 85
    .line 86
    .line 87
    const-string/jumbo v11, "video/3gpp"

    .line 88
    .line 89
    .line 90
    if-ne v10, v8, :cond_3

    .line 91
    .line 92
    const-string/jumbo v8, "video/mpeg"

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    const v8, 0x48323633

    .line 97
    .line 98
    .line 99
    if-ne v10, v8, :cond_4

    .line 100
    .line 101
    move-object v8, v11

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    const/4 v8, 0x0

    .line 104
    :goto_1
    const/high16 v14, 0x3f800000    # 1.0f

    .line 105
    .line 106
    const/4 v13, 0x0

    .line 107
    const/4 v15, 0x0

    .line 108
    const/16 v16, 0x0

    .line 109
    .line 110
    const/16 v17, -0x1

    .line 111
    .line 112
    const/16 v18, -0x1

    .line 113
    .line 114
    const/16 v19, -0x1

    .line 115
    .line 116
    const/16 v20, -0x1

    .line 117
    .line 118
    const/16 v21, 0x0

    .line 119
    .line 120
    const/16 v22, 0x0

    .line 121
    .line 122
    const/16 v23, 0x0

    .line 123
    .line 124
    :goto_2
    sub-int v12, v7, v1

    .line 125
    .line 126
    if-ge v12, v2, :cond_5

    .line 127
    .line 128
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 132
    .line 133
    .line 134
    move-result v12

    .line 135
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    if-nez v9, :cond_6

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 142
    .line 143
    .line 144
    move-result v24

    .line 145
    sub-int v1, v24, p2

    .line 146
    .line 147
    if-ne v1, v2, :cond_6

    .line 148
    .line 149
    :cond_5
    move-object/from16 v27, v3

    .line 150
    .line 151
    move/from16 v33, v14

    .line 152
    .line 153
    move-object/from16 v28, v15

    .line 154
    .line 155
    move/from16 v12, v18

    .line 156
    .line 157
    move/from16 v3, v20

    .line 158
    .line 159
    const/4 v2, 0x0

    .line 160
    goto/16 :goto_22

    .line 161
    .line 162
    :cond_6
    if-lez v9, :cond_7

    .line 163
    .line 164
    const/4 v1, 0x1

    .line 165
    :goto_3
    const/16 p8, 0x1

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_7
    const/4 v1, 0x0

    .line 169
    goto :goto_3

    .line 170
    :goto_4
    const-string v2, "childAtomSize must be positive"

    .line 171
    .line 172
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    const v2, 0x61766343

    .line 180
    .line 181
    .line 182
    if-ne v1, v2, :cond_a

    .line 183
    .line 184
    if-nez v8, :cond_8

    .line 185
    .line 186
    move/from16 v1, p8

    .line 187
    .line 188
    :goto_5
    const/4 v2, 0x0

    .line 189
    goto :goto_6

    .line 190
    :cond_8
    const/4 v1, 0x0

    .line 191
    goto :goto_5

    .line 192
    :goto_6
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 193
    .line 194
    .line 195
    add-int/lit8 v12, v12, 0x8

    .line 196
    .line 197
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 198
    .line 199
    .line 200
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    iget-object v15, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 205
    .line 206
    iget v2, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    .line 207
    .line 208
    iput v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 209
    .line 210
    if-nez v23, :cond_9

    .line 211
    .line 212
    iget v14, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->pixelWidthHeightRatio:F

    .line 213
    .line 214
    :cond_9
    iget-object v13, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->codecs:Ljava/lang/String;

    .line 215
    .line 216
    iget v2, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->colorSpace:I

    .line 217
    .line 218
    iget v8, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->colorRange:I

    .line 219
    .line 220
    iget v1, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->colorTransfer:I

    .line 221
    .line 222
    const-string/jumbo v12, "video/avc"

    .line 223
    .line 224
    .line 225
    :goto_7
    move/from16 v20, v1

    .line 226
    .line 227
    move/from16 v18, v2

    .line 228
    .line 229
    move-object/from16 v27, v3

    .line 230
    .line 231
    move/from16 v24, v7

    .line 232
    .line 233
    move/from16 v19, v8

    .line 234
    .line 235
    move/from16 v25, v10

    .line 236
    .line 237
    move-object/from16 v26, v11

    .line 238
    .line 239
    move-object v8, v12

    .line 240
    :goto_8
    const/4 v2, 0x0

    .line 241
    goto/16 :goto_21

    .line 242
    .line 243
    :cond_a
    const v2, 0x68766343

    .line 244
    .line 245
    .line 246
    if-ne v1, v2, :cond_d

    .line 247
    .line 248
    if-nez v8, :cond_b

    .line 249
    .line 250
    move/from16 v1, p8

    .line 251
    .line 252
    :goto_9
    const/4 v2, 0x0

    .line 253
    goto :goto_a

    .line 254
    :cond_b
    const/4 v1, 0x0

    .line 255
    goto :goto_9

    .line 256
    :goto_a
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    add-int/lit8 v12, v12, 0x8

    .line 260
    .line 261
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 262
    .line 263
    .line 264
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/HevcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    iget-object v15, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 269
    .line 270
    iget v2, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    .line 271
    .line 272
    iput v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 273
    .line 274
    if-nez v23, :cond_c

    .line 275
    .line 276
    iget v14, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->pixelWidthHeightRatio:F

    .line 277
    .line 278
    :cond_c
    iget-object v13, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->codecs:Ljava/lang/String;

    .line 279
    .line 280
    iget v2, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->colorSpace:I

    .line 281
    .line 282
    iget v8, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->colorRange:I

    .line 283
    .line 284
    iget v1, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->colorTransfer:I

    .line 285
    .line 286
    const-string/jumbo v12, "video/hevc"

    .line 287
    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_d
    const v2, 0x64766343

    .line 291
    .line 292
    .line 293
    if-eq v1, v2, :cond_e

    .line 294
    .line 295
    const v2, 0x64767643

    .line 296
    .line 297
    .line 298
    if-ne v1, v2, :cond_f

    .line 299
    .line 300
    :cond_e
    move-object/from16 v27, v3

    .line 301
    .line 302
    move/from16 v24, v7

    .line 303
    .line 304
    move/from16 v25, v10

    .line 305
    .line 306
    move-object/from16 v26, v11

    .line 307
    .line 308
    move/from16 v33, v14

    .line 309
    .line 310
    move-object/from16 v28, v15

    .line 311
    .line 312
    move/from16 v12, v18

    .line 313
    .line 314
    move/from16 v3, v20

    .line 315
    .line 316
    const/4 v2, 0x0

    .line 317
    goto/16 :goto_20

    .line 318
    .line 319
    :cond_f
    const v2, 0x76706343

    .line 320
    .line 321
    .line 322
    move/from16 v24, v7

    .line 323
    .line 324
    const/4 v7, 0x2

    .line 325
    if-ne v1, v2, :cond_14

    .line 326
    .line 327
    if-nez v8, :cond_10

    .line 328
    .line 329
    move/from16 v1, p8

    .line 330
    .line 331
    :goto_b
    const/4 v2, 0x0

    .line 332
    goto :goto_c

    .line 333
    :cond_10
    const/4 v1, 0x0

    .line 334
    goto :goto_b

    .line 335
    :goto_c
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 336
    .line 337
    .line 338
    const v1, 0x76703038

    .line 339
    .line 340
    .line 341
    if-ne v10, v1, :cond_11

    .line 342
    .line 343
    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    .line 344
    .line 345
    .line 346
    goto :goto_d

    .line 347
    :cond_11
    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    .line 348
    .line 349
    .line 350
    :goto_d
    add-int/lit8 v12, v12, 0xc

    .line 351
    .line 352
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    and-int/lit8 v2, v2, 0x1

    .line 363
    .line 364
    if-eqz v2, :cond_12

    .line 365
    .line 366
    move/from16 v2, p8

    .line 367
    .line 368
    goto :goto_e

    .line 369
    :cond_12
    const/4 v2, 0x0

    .line 370
    :goto_e
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 371
    .line 372
    .line 373
    move-result v8

    .line 374
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 375
    .line 376
    .line 377
    move-result v12

    .line 378
    invoke-static {v8}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    .line 379
    .line 380
    .line 381
    move-result v18

    .line 382
    if-eqz v2, :cond_13

    .line 383
    .line 384
    move/from16 v19, p8

    .line 385
    .line 386
    goto :goto_f

    .line 387
    :cond_13
    move/from16 v19, v7

    .line 388
    .line 389
    :goto_f
    invoke-static {v12}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    .line 390
    .line 391
    .line 392
    move-result v20

    .line 393
    :goto_10
    move-object v8, v1

    .line 394
    :goto_11
    move-object/from16 v27, v3

    .line 395
    .line 396
    move/from16 v25, v10

    .line 397
    .line 398
    move-object/from16 v26, v11

    .line 399
    .line 400
    goto/16 :goto_8

    .line 401
    .line 402
    :cond_14
    const v2, 0x61763143

    .line 403
    .line 404
    .line 405
    if-ne v1, v2, :cond_16

    .line 406
    .line 407
    if-nez v8, :cond_15

    .line 408
    .line 409
    move/from16 v1, p8

    .line 410
    .line 411
    :goto_12
    const/4 v2, 0x0

    .line 412
    goto :goto_13

    .line 413
    :cond_15
    const/4 v1, 0x0

    .line 414
    goto :goto_12

    .line 415
    :goto_13
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 416
    .line 417
    .line 418
    const-string/jumbo v1, "video/av01"

    .line 419
    .line 420
    .line 421
    goto :goto_10

    .line 422
    :cond_16
    const v2, 0x636c6c69

    .line 423
    .line 424
    .line 425
    if-ne v1, v2, :cond_18

    .line 426
    .line 427
    if-nez v21, :cond_17

    .line 428
    .line 429
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->allocateHdrStaticInfo()Ljava/nio/ByteBuffer;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    goto :goto_14

    .line 434
    :cond_17
    move-object/from16 v1, v21

    .line 435
    .line 436
    :goto_14
    const/16 v2, 0x15

    .line 437
    .line 438
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 453
    .line 454
    .line 455
    move-object/from16 v21, v1

    .line 456
    .line 457
    goto :goto_11

    .line 458
    :cond_18
    const v2, 0x6d646376

    .line 459
    .line 460
    .line 461
    if-ne v1, v2, :cond_1a

    .line 462
    .line 463
    if-nez v21, :cond_19

    .line 464
    .line 465
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->allocateHdrStaticInfo()Ljava/nio/ByteBuffer;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    goto :goto_15

    .line 470
    :cond_19
    move-object/from16 v1, v21

    .line 471
    .line 472
    :goto_15
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    .line 477
    .line 478
    .line 479
    move-result v7

    .line 480
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    .line 481
    .line 482
    .line 483
    move-result v12

    .line 484
    move/from16 v25, v10

    .line 485
    .line 486
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    .line 487
    .line 488
    .line 489
    move-result v10

    .line 490
    move-object/from16 v26, v11

    .line 491
    .line 492
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    .line 493
    .line 494
    .line 495
    move-result v11

    .line 496
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    .line 497
    .line 498
    .line 499
    move-result v4

    .line 500
    move-object/from16 v27, v3

    .line 501
    .line 502
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    .line 503
    .line 504
    .line 505
    move-result v3

    .line 506
    move-object/from16 v28, v15

    .line 507
    .line 508
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    .line 509
    .line 510
    .line 511
    move-result v15

    .line 512
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    .line 513
    .line 514
    .line 515
    move-result-wide v29

    .line 516
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    .line 517
    .line 518
    .line 519
    move-result-wide v31

    .line 520
    move/from16 v33, v14

    .line 521
    .line 522
    move/from16 v14, p8

    .line 523
    .line 524
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 549
    .line 550
    .line 551
    const-wide/16 v2, 0x2710

    .line 552
    .line 553
    div-long v10, v29, v2

    .line 554
    .line 555
    long-to-int v4, v10

    .line 556
    int-to-short v4, v4

    .line 557
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 558
    .line 559
    .line 560
    div-long v2, v31, v2

    .line 561
    .line 562
    long-to-int v2, v2

    .line 563
    int-to-short v2, v2

    .line 564
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 565
    .line 566
    .line 567
    move-object/from16 v21, v1

    .line 568
    .line 569
    move-object/from16 v15, v28

    .line 570
    .line 571
    move/from16 v14, v33

    .line 572
    .line 573
    goto/16 :goto_8

    .line 574
    .line 575
    :cond_1a
    move-object/from16 v27, v3

    .line 576
    .line 577
    move/from16 v25, v10

    .line 578
    .line 579
    move-object/from16 v26, v11

    .line 580
    .line 581
    move/from16 v33, v14

    .line 582
    .line 583
    move-object/from16 v28, v15

    .line 584
    .line 585
    const v2, 0x64323633

    .line 586
    .line 587
    .line 588
    if-ne v1, v2, :cond_1d

    .line 589
    .line 590
    if-nez v8, :cond_1b

    .line 591
    .line 592
    const/4 v1, 0x1

    .line 593
    :goto_16
    const/4 v2, 0x0

    .line 594
    goto :goto_17

    .line 595
    :cond_1b
    const/4 v1, 0x0

    .line 596
    goto :goto_16

    .line 597
    :goto_17
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 598
    .line 599
    .line 600
    move-object/from16 v8, v26

    .line 601
    .line 602
    :cond_1c
    :goto_18
    move-object/from16 v15, v28

    .line 603
    .line 604
    :goto_19
    move/from16 v14, v33

    .line 605
    .line 606
    goto/16 :goto_21

    .line 607
    .line 608
    :cond_1d
    const/4 v2, 0x0

    .line 609
    const v3, 0x65736473

    .line 610
    .line 611
    .line 612
    if-ne v1, v3, :cond_20

    .line 613
    .line 614
    if-nez v8, :cond_1e

    .line 615
    .line 616
    const/4 v1, 0x1

    .line 617
    goto :goto_1a

    .line 618
    :cond_1e
    const/4 v1, 0x0

    .line 619
    :goto_1a
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 620
    .line 621
    .line 622
    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;

    .line 623
    .line 624
    .line 625
    move-result-object v22

    .line 626
    invoke-static/range {v22 .. v22}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$300(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    invoke-static/range {v22 .. v22}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$400(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)[B

    .line 631
    .line 632
    .line 633
    move-result-object v3

    .line 634
    if-eqz v3, :cond_1f

    .line 635
    .line 636
    sget v4, Lcom/google/common/collect/ImmutableList;->$r8$clinit:I

    .line 637
    .line 638
    new-instance v15, Lcom/google/common/collect/SingletonImmutableList;

    .line 639
    .line 640
    invoke-direct {v15, v3}, Lcom/google/common/collect/SingletonImmutableList;-><init>(Ljava/lang/Object;)V

    .line 641
    .line 642
    .line 643
    goto :goto_1b

    .line 644
    :cond_1f
    move-object/from16 v15, v28

    .line 645
    .line 646
    :goto_1b
    move-object v8, v1

    .line 647
    goto :goto_19

    .line 648
    :cond_20
    const v3, 0x70617370

    .line 649
    .line 650
    .line 651
    if-ne v1, v3, :cond_21

    .line 652
    .line 653
    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parsePaspFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)F

    .line 654
    .line 655
    .line 656
    move-result v1

    .line 657
    move v14, v1

    .line 658
    move-object/from16 v15, v28

    .line 659
    .line 660
    const/16 v23, 0x1

    .line 661
    .line 662
    goto/16 :goto_21

    .line 663
    .line 664
    :cond_21
    const v3, 0x73763364

    .line 665
    .line 666
    .line 667
    if-ne v1, v3, :cond_22

    .line 668
    .line 669
    invoke-static {v0, v12, v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseProjFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)[B

    .line 670
    .line 671
    .line 672
    move-result-object v16

    .line 673
    goto :goto_18

    .line 674
    :cond_22
    const v3, 0x73743364

    .line 675
    .line 676
    .line 677
    if-ne v1, v3, :cond_27

    .line 678
    .line 679
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 680
    .line 681
    .line 682
    move-result v1

    .line 683
    const/4 v3, 0x3

    .line 684
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 685
    .line 686
    .line 687
    if-nez v1, :cond_1c

    .line 688
    .line 689
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 690
    .line 691
    .line 692
    move-result v1

    .line 693
    if-eqz v1, :cond_26

    .line 694
    .line 695
    const/4 v14, 0x1

    .line 696
    if-eq v1, v14, :cond_25

    .line 697
    .line 698
    if-eq v1, v7, :cond_24

    .line 699
    .line 700
    if-eq v1, v3, :cond_23

    .line 701
    .line 702
    goto :goto_18

    .line 703
    :cond_23
    move/from16 v17, v3

    .line 704
    .line 705
    goto :goto_18

    .line 706
    :cond_24
    move/from16 v17, v7

    .line 707
    .line 708
    goto :goto_18

    .line 709
    :cond_25
    move/from16 v17, v14

    .line 710
    .line 711
    goto :goto_18

    .line 712
    :cond_26
    const/16 v17, 0x0

    .line 713
    .line 714
    goto :goto_18

    .line 715
    :cond_27
    const/4 v14, 0x1

    .line 716
    const v3, 0x636f6c72

    .line 717
    .line 718
    .line 719
    move/from16 v12, v18

    .line 720
    .line 721
    if-ne v1, v3, :cond_2c

    .line 722
    .line 723
    const/4 v1, -0x1

    .line 724
    move/from16 v3, v20

    .line 725
    .line 726
    if-ne v12, v1, :cond_2d

    .line 727
    .line 728
    if-ne v3, v1, :cond_2d

    .line 729
    .line 730
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 731
    .line 732
    .line 733
    move-result v1

    .line 734
    const v4, 0x6e636c78

    .line 735
    .line 736
    .line 737
    if-eq v1, v4, :cond_29

    .line 738
    .line 739
    const v4, 0x6e636c63

    .line 740
    .line 741
    .line 742
    if-ne v1, v4, :cond_28

    .line 743
    .line 744
    goto :goto_1c

    .line 745
    :cond_28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 746
    .line 747
    const-string v7, "Unsupported color type: "

    .line 748
    .line 749
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v1

    .line 756
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v1

    .line 763
    const-string v4, "AtomParsers"

    .line 764
    .line 765
    invoke-static {v4, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    goto :goto_1f

    .line 769
    :cond_29
    :goto_1c
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    .line 770
    .line 771
    .line 772
    move-result v1

    .line 773
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    .line 774
    .line 775
    .line 776
    move-result v3

    .line 777
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 778
    .line 779
    .line 780
    const/16 v4, 0x13

    .line 781
    .line 782
    if-ne v9, v4, :cond_2a

    .line 783
    .line 784
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 785
    .line 786
    .line 787
    move-result v4

    .line 788
    and-int/lit16 v4, v4, 0x80

    .line 789
    .line 790
    if-eqz v4, :cond_2a

    .line 791
    .line 792
    move v4, v14

    .line 793
    goto :goto_1d

    .line 794
    :cond_2a
    const/4 v4, 0x0

    .line 795
    :goto_1d
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    .line 796
    .line 797
    .line 798
    move-result v18

    .line 799
    if-eqz v4, :cond_2b

    .line 800
    .line 801
    move/from16 v19, v14

    .line 802
    .line 803
    goto :goto_1e

    .line 804
    :cond_2b
    move/from16 v19, v7

    .line 805
    .line 806
    :goto_1e
    invoke-static {v3}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    .line 807
    .line 808
    .line 809
    move-result v20

    .line 810
    goto/16 :goto_18

    .line 811
    .line 812
    :cond_2c
    move/from16 v3, v20

    .line 813
    .line 814
    :cond_2d
    :goto_1f
    move/from16 v20, v3

    .line 815
    .line 816
    move/from16 v18, v12

    .line 817
    .line 818
    goto/16 :goto_18

    .line 819
    .line 820
    :goto_20
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/DolbyVisionConfig;

    .line 821
    .line 822
    .line 823
    move-result-object v1

    .line 824
    if-eqz v1, :cond_2d

    .line 825
    .line 826
    iget-object v13, v1, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->codecs:Ljava/lang/String;

    .line 827
    .line 828
    const-string/jumbo v8, "video/dolby-vision"

    .line 829
    .line 830
    .line 831
    goto :goto_1f

    .line 832
    :goto_21
    add-int v7, v24, v9

    .line 833
    .line 834
    move/from16 v1, p2

    .line 835
    .line 836
    move/from16 v2, p3

    .line 837
    .line 838
    move-object/from16 v4, p7

    .line 839
    .line 840
    move/from16 v10, v25

    .line 841
    .line 842
    move-object/from16 v11, v26

    .line 843
    .line 844
    move-object/from16 v3, v27

    .line 845
    .line 846
    goto/16 :goto_2

    .line 847
    .line 848
    :goto_22
    if-nez v8, :cond_2e

    .line 849
    .line 850
    return-void

    .line 851
    :cond_2e
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    .line 852
    .line 853
    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 854
    .line 855
    .line 856
    move/from16 v1, p4

    .line 857
    .line 858
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 859
    .line 860
    .line 861
    move-result-object v0

    .line 862
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 867
    .line 868
    .line 869
    move-result-object v0

    .line 870
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    move/from16 v14, v33

    .line 879
    .line 880
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/Format$Builder;->setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/Format$Builder;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    move/from16 v1, p5

    .line 885
    .line 886
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setRotationDegrees(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 887
    .line 888
    .line 889
    move-result-object v0

    .line 890
    move-object/from16 v9, v16

    .line 891
    .line 892
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setProjectionData([B)Lcom/google/android/exoplayer2/Format$Builder;

    .line 893
    .line 894
    .line 895
    move-result-object v0

    .line 896
    move/from16 v1, v17

    .line 897
    .line 898
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setStereoMode(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    move-object/from16 v9, v28

    .line 903
    .line 904
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 905
    .line 906
    .line 907
    move-result-object v0

    .line 908
    move-object/from16 v1, v27

    .line 909
    .line 910
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    const/4 v1, -0x1

    .line 915
    move/from16 v4, v19

    .line 916
    .line 917
    if-ne v12, v1, :cond_2f

    .line 918
    .line 919
    if-ne v4, v1, :cond_2f

    .line 920
    .line 921
    if-ne v3, v1, :cond_2f

    .line 922
    .line 923
    if-eqz v21, :cond_31

    .line 924
    .line 925
    :cond_2f
    new-instance v1, Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 926
    .line 927
    if-eqz v21, :cond_30

    .line 928
    .line 929
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->array()[B

    .line 930
    .line 931
    .line 932
    move-result-object v9

    .line 933
    goto :goto_23

    .line 934
    :cond_30
    move-object v9, v2

    .line 935
    :goto_23
    invoke-direct {v1, v12, v4, v3, v9}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    .line 936
    .line 937
    .line 938
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setColorInfo(Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 939
    .line 940
    .line 941
    :cond_31
    if-eqz v22, :cond_32

    .line 942
    .line 943
    invoke-static/range {v22 .. v22}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$600(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)J

    .line 944
    .line 945
    .line 946
    move-result-wide v1

    .line 947
    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    .line 948
    .line 949
    .line 950
    move-result v1

    .line 951
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 952
    .line 953
    .line 954
    move-result-object v1

    .line 955
    invoke-static/range {v22 .. v22}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$500(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)J

    .line 956
    .line 957
    .line 958
    move-result-wide v2

    .line 959
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    .line 960
    .line 961
    .line 962
    move-result v2

    .line 963
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 964
    .line 965
    .line 966
    :cond_32
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    .line 967
    .line 968
    .line 969
    move-result-object v0

    .line 970
    move-object/from16 v4, p7

    .line 971
    .line 972
    iput-object v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 973
    .line 974
    return-void
.end method

.method private static parseXyz(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/16 v0, 0x2b

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0x2d

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x1

    .line 43
    sub-int/2addr v3, v4

    .line 44
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 53
    .line 54
    new-instance v3, Lcom/google/android/exoplayer2/container/Mp4LocationData;

    .line 55
    .line 56
    invoke-direct {v3, v2, p0}, Lcom/google/android/exoplayer2/container/Mp4LocationData;-><init>(FF)V

    .line 57
    .line 58
    .line 59
    new-array p0, v4, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 60
    .line 61
    aput-object v3, p0, v1

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :catch_0
    const/4 p0, 0x0

    .line 68
    return-object p0
.end method
