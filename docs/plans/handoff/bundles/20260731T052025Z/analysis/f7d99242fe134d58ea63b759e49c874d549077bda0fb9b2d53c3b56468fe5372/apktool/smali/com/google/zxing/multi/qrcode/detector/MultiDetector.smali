.class public final Lcom/google/zxing/multi/qrcode/detector/MultiDetector;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final EMPTY_DETECTOR_RESULTS:[Lcom/google/zxing/common/DetectorResult;


# instance fields
.field public final image:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lcom/google/zxing/common/DetectorResult;

    .line 3
    .line 4
    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->EMPTY_DETECTOR_RESULTS:[Lcom/google/zxing/common/DetectorResult;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 6

    .line 1
    iget v0, p1, Lcom/google/zxing/ResultPoint;->x:F

    .line 2
    .line 3
    float-to-int v0, v0

    .line 4
    iget v1, p1, Lcom/google/zxing/ResultPoint;->y:F

    .line 5
    .line 6
    float-to-int v2, v1

    .line 7
    iget v3, p2, Lcom/google/zxing/ResultPoint;->x:F

    .line 8
    .line 9
    float-to-int v3, v3

    .line 10
    iget v4, p2, Lcom/google/zxing/ResultPoint;->y:F

    .line 11
    .line 12
    float-to-int v5, v4

    .line 13
    invoke-virtual {p0, v0, v2, v3, v5}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget p2, p2, Lcom/google/zxing/ResultPoint;->x:F

    .line 18
    .line 19
    float-to-int p2, p2

    .line 20
    float-to-int v2, v4

    .line 21
    iget p1, p1, Lcom/google/zxing/ResultPoint;->x:F

    .line 22
    .line 23
    float-to-int p1, p1

    .line 24
    float-to-int v1, v1

    .line 25
    invoke-virtual {p0, p2, v2, p1, v1}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/high16 p2, 0x40e00000    # 7.0f

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    div-float/2addr p0, p2

    .line 38
    return p0

    .line 39
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    div-float/2addr v0, p2

    .line 46
    return v0

    .line 47
    :cond_1
    add-float/2addr v0, p0

    .line 48
    const/high16 p0, 0x41600000    # 14.0f

    .line 49
    .line 50
    div-float/2addr v0, p0

    .line 51
    return v0
.end method

.method public final findAlignmentInRegion(FFII)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .locals 10

    .line 1
    mul-float/2addr p2, p1

    .line 2
    float-to-int p2, p2

    .line 3
    sub-int v0, p3, p2

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    iget-object v0, p0, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 11
    .line 12
    iget v2, v0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 13
    .line 14
    const/4 v9, 0x1

    .line 15
    sub-int/2addr v2, v9

    .line 16
    add-int/2addr p3, p2

    .line 17
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    sub-int v6, p3, v4

    .line 22
    .line 23
    int-to-float p3, v6

    .line 24
    const/high16 v2, 0x40400000    # 3.0f

    .line 25
    .line 26
    mul-float/2addr v2, p1

    .line 27
    cmpg-float p3, p3, v2

    .line 28
    .line 29
    if-ltz p3, :cond_c

    .line 30
    .line 31
    sub-int p3, p4, p2

    .line 32
    .line 33
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    iget p3, v0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 38
    .line 39
    sub-int/2addr p3, v9

    .line 40
    add-int/2addr p4, p2

    .line 41
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    sub-int v7, p2, v5

    .line 46
    .line 47
    int-to-float p2, v7

    .line 48
    cmpg-float p2, p2, v2

    .line 49
    .line 50
    if-ltz p2, :cond_b

    .line 51
    .line 52
    new-instance v2, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 55
    .line 56
    move v8, p1

    .line 57
    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;IIIIF)V

    .line 58
    .line 59
    .line 60
    iget p0, v2, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->width:I

    .line 61
    .line 62
    iget p1, v2, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startX:I

    .line 63
    .line 64
    add-int/2addr p0, p1

    .line 65
    iget p2, v2, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->height:I

    .line 66
    .line 67
    div-int/lit8 p3, p2, 0x2

    .line 68
    .line 69
    iget p4, v2, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startY:I

    .line 70
    .line 71
    add-int/2addr p3, p4

    .line 72
    const/4 p4, 0x3

    .line 73
    new-array p4, p4, [I

    .line 74
    .line 75
    move v0, v1

    .line 76
    :goto_0
    if-ge v0, p2, :cond_9

    .line 77
    .line 78
    and-int/lit8 v4, v0, 0x1

    .line 79
    .line 80
    const/4 v5, 0x2

    .line 81
    if-nez v4, :cond_0

    .line 82
    .line 83
    add-int/lit8 v4, v0, 0x1

    .line 84
    .line 85
    div-int/2addr v4, v5

    .line 86
    goto :goto_1

    .line 87
    :cond_0
    add-int/lit8 v4, v0, 0x1

    .line 88
    .line 89
    div-int/2addr v4, v5

    .line 90
    neg-int v4, v4

    .line 91
    :goto_1
    add-int/2addr v4, p3

    .line 92
    aput v1, p4, v1

    .line 93
    .line 94
    aput v1, p4, v9

    .line 95
    .line 96
    aput v1, p4, v5

    .line 97
    .line 98
    move v6, p1

    .line 99
    :goto_2
    if-ge v6, p0, :cond_1

    .line 100
    .line 101
    invoke-virtual {v3, v6, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-nez v7, :cond_1

    .line 106
    .line 107
    add-int/lit8 v6, v6, 0x1

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_1
    move v7, v1

    .line 111
    :goto_3
    if-ge v6, p0, :cond_7

    .line 112
    .line 113
    invoke-virtual {v3, v6, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_5

    .line 118
    .line 119
    if-ne v7, v9, :cond_2

    .line 120
    .line 121
    aget v8, p4, v9

    .line 122
    .line 123
    add-int/2addr v8, v9

    .line 124
    aput v8, p4, v9

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_2
    if-ne v7, v5, :cond_4

    .line 128
    .line 129
    invoke-virtual {v2, p4}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-eqz v7, :cond_3

    .line 134
    .line 135
    invoke-virtual {v2, v4, v6, p4}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->handlePossibleCenter(II[I)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    if-eqz v7, :cond_3

    .line 140
    .line 141
    return-object v7

    .line 142
    :cond_3
    aget v7, p4, v5

    .line 143
    .line 144
    aput v7, p4, v1

    .line 145
    .line 146
    aput v9, p4, v9

    .line 147
    .line 148
    aput v1, p4, v5

    .line 149
    .line 150
    move v7, v9

    .line 151
    goto :goto_4

    .line 152
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 153
    .line 154
    aget v8, p4, v7

    .line 155
    .line 156
    add-int/2addr v8, v9

    .line 157
    aput v8, p4, v7

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_5
    if-ne v7, v9, :cond_6

    .line 161
    .line 162
    add-int/lit8 v7, v7, 0x1

    .line 163
    .line 164
    :cond_6
    aget v8, p4, v7

    .line 165
    .line 166
    add-int/2addr v8, v9

    .line 167
    aput v8, p4, v7

    .line 168
    .line 169
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_7
    invoke-virtual {v2, p4}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-eqz v5, :cond_8

    .line 177
    .line 178
    invoke-virtual {v2, v4, p0, p4}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->handlePossibleCenter(II[I)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    if-eqz v4, :cond_8

    .line 183
    .line 184
    return-object v4

    .line 185
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_9
    iget-object p0, v2, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-nez p1, :cond_a

    .line 195
    .line 196
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    check-cast p0, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    .line 201
    .line 202
    return-object p0

    .line 203
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    throw p0

    .line 208
    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    throw p0

    .line 213
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    throw p0
.end method

.method public final processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->topLeft:Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->topRight:Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->bottomLeft:Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 10
    .line 11
    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    iget v5, v2, Lcom/google/zxing/ResultPoint;->y:F

    .line 16
    .line 17
    iget v6, v2, Lcom/google/zxing/ResultPoint;->x:F

    .line 18
    .line 19
    iget v7, v3, Lcom/google/zxing/ResultPoint;->y:F

    .line 20
    .line 21
    iget v8, v3, Lcom/google/zxing/ResultPoint;->x:F

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    iget v10, v1, Lcom/google/zxing/ResultPoint;->y:F

    .line 28
    .line 29
    iget v11, v1, Lcom/google/zxing/ResultPoint;->x:F

    .line 30
    .line 31
    add-float/2addr v9, v4

    .line 32
    const/high16 v4, 0x40000000    # 2.0f

    .line 33
    .line 34
    div-float/2addr v9, v4

    .line 35
    const/high16 v4, 0x3f800000    # 1.0f

    .line 36
    .line 37
    cmpg-float v12, v9, v4

    .line 38
    .line 39
    if-ltz v12, :cond_1b

    .line 40
    .line 41
    invoke-static {v2, v3}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    .line 42
    .line 43
    .line 44
    move-result v12

    .line 45
    div-float/2addr v12, v9

    .line 46
    const/4 v13, 0x0

    .line 47
    cmpg-float v14, v12, v13

    .line 48
    .line 49
    const/high16 v15, -0x41000000    # -0.5f

    .line 50
    .line 51
    const/high16 v16, 0x3f000000    # 0.5f

    .line 52
    .line 53
    if-gez v14, :cond_0

    .line 54
    .line 55
    move v14, v15

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move/from16 v14, v16

    .line 58
    .line 59
    :goto_0
    add-float/2addr v12, v14

    .line 60
    float-to-int v12, v12

    .line 61
    invoke-static {v2, v1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    .line 62
    .line 63
    .line 64
    move-result v14

    .line 65
    div-float/2addr v14, v9

    .line 66
    cmpg-float v17, v14, v13

    .line 67
    .line 68
    if-gez v17, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    move/from16 v15, v16

    .line 72
    .line 73
    :goto_1
    add-float/2addr v14, v15

    .line 74
    float-to-int v14, v14

    .line 75
    add-int/2addr v14, v12

    .line 76
    const/4 v12, 0x2

    .line 77
    div-int/2addr v14, v12

    .line 78
    add-int/lit8 v15, v14, 0x7

    .line 79
    .line 80
    move/from16 p1, v4

    .line 81
    .line 82
    and-int/lit8 v4, v15, 0x3

    .line 83
    .line 84
    move/from16 v17, v13

    .line 85
    .line 86
    const/4 v13, 0x3

    .line 87
    if-eqz v4, :cond_4

    .line 88
    .line 89
    if-eq v4, v12, :cond_3

    .line 90
    .line 91
    if-eq v4, v13, :cond_2

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    add-int/lit8 v15, v14, 0x5

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    add-int/lit8 v15, v14, 0x6

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    add-int/lit8 v15, v14, 0x8

    .line 101
    .line 102
    :goto_2
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Version;->VERSION_DECODE_INFO:[I

    .line 103
    .line 104
    rem-int/lit8 v4, v15, 0x4

    .line 105
    .line 106
    const/4 v14, 0x1

    .line 107
    if-ne v4, v14, :cond_1a

    .line 108
    .line 109
    add-int/lit8 v4, v15, -0x11

    .line 110
    .line 111
    move/from16 v18, v12

    .line 112
    .line 113
    const/4 v12, 0x4

    .line 114
    :try_start_0
    div-int/2addr v4, v12

    .line 115
    invoke-static {v4}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    .line 116
    .line 117
    .line 118
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 119
    move/from16 v19, v14

    .line 120
    .line 121
    iget v14, v4, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    .line 122
    .line 123
    mul-int/2addr v14, v12

    .line 124
    add-int/lit8 v14, v14, 0xa

    .line 125
    .line 126
    iget-object v4, v4, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    .line 127
    .line 128
    array-length v4, v4

    .line 129
    const/high16 v20, 0x40400000    # 3.0f

    .line 130
    .line 131
    if-lez v4, :cond_5

    .line 132
    .line 133
    sub-float v4, v8, v6

    .line 134
    .line 135
    add-float/2addr v4, v11

    .line 136
    sub-float v21, v7, v5

    .line 137
    .line 138
    add-float v12, v21, v10

    .line 139
    .line 140
    int-to-float v14, v14

    .line 141
    div-float v14, v20, v14

    .line 142
    .line 143
    sub-float v14, p1, v14

    .line 144
    .line 145
    invoke-static {v4, v6, v14, v6}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(FFFF)F

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    float-to-int v4, v4

    .line 150
    invoke-static {v12, v5, v14, v5}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(FFFF)F

    .line 151
    .line 152
    .line 153
    move-result v12

    .line 154
    float-to-int v12, v12

    .line 155
    const/4 v14, 0x4

    .line 156
    :goto_3
    const/16 v13, 0x10

    .line 157
    .line 158
    if-gt v14, v13, :cond_5

    .line 159
    .line 160
    int-to-float v13, v14

    .line 161
    :try_start_1
    invoke-virtual {v0, v9, v13, v4, v12}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->findAlignmentInRegion(FFII)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    .line 162
    .line 163
    .line 164
    move-result-object v4
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    goto :goto_4

    .line 166
    :catch_0
    shl-int/lit8 v14, v14, 0x1

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_5
    const/4 v4, 0x0

    .line 170
    :goto_4
    int-to-float v9, v15

    .line 171
    const/high16 v12, 0x40600000    # 3.5f

    .line 172
    .line 173
    sub-float v24, v9, v12

    .line 174
    .line 175
    if-eqz v4, :cond_6

    .line 176
    .line 177
    iget v5, v4, Lcom/google/zxing/ResultPoint;->x:F

    .line 178
    .line 179
    iget v6, v4, Lcom/google/zxing/ResultPoint;->y:F

    .line 180
    .line 181
    sub-float v7, v24, v20

    .line 182
    .line 183
    move v11, v5

    .line 184
    move v12, v6

    .line 185
    move/from16 v26, v7

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_6
    sub-float/2addr v8, v6

    .line 189
    add-float v6, v8, v11

    .line 190
    .line 191
    sub-float/2addr v7, v5

    .line 192
    add-float v5, v7, v10

    .line 193
    .line 194
    move v12, v5

    .line 195
    move v11, v6

    .line 196
    move/from16 v26, v24

    .line 197
    .line 198
    :goto_5
    iget v7, v2, Lcom/google/zxing/ResultPoint;->x:F

    .line 199
    .line 200
    iget v8, v2, Lcom/google/zxing/ResultPoint;->y:F

    .line 201
    .line 202
    iget v9, v3, Lcom/google/zxing/ResultPoint;->x:F

    .line 203
    .line 204
    iget v10, v3, Lcom/google/zxing/ResultPoint;->y:F

    .line 205
    .line 206
    iget v13, v1, Lcom/google/zxing/ResultPoint;->x:F

    .line 207
    .line 208
    iget v14, v1, Lcom/google/zxing/ResultPoint;->y:F

    .line 209
    .line 210
    const/high16 v22, 0x40600000    # 3.5f

    .line 211
    .line 212
    const/high16 v23, 0x40600000    # 3.5f

    .line 213
    .line 214
    const/high16 v25, 0x40600000    # 3.5f

    .line 215
    .line 216
    const/high16 v28, 0x40600000    # 3.5f

    .line 217
    .line 218
    move/from16 v27, v26

    .line 219
    .line 220
    move/from16 v29, v24

    .line 221
    .line 222
    invoke-static/range {v22 .. v29}, Lcom/google/zxing/common/PerspectiveTransform;->squareToQuadrilateral(FFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    iget v6, v5, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    .line 227
    .line 228
    move-object/from16 v20, v1

    .line 229
    .line 230
    iget v1, v5, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    .line 231
    .line 232
    mul-float v21, v6, v1

    .line 233
    .line 234
    move/from16 v22, v1

    .line 235
    .line 236
    iget v1, v5, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    .line 237
    .line 238
    move/from16 v23, v1

    .line 239
    .line 240
    iget v1, v5, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    .line 241
    .line 242
    mul-float v24, v23, v1

    .line 243
    .line 244
    sub-float v21, v21, v24

    .line 245
    .line 246
    move/from16 v24, v1

    .line 247
    .line 248
    iget v1, v5, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    .line 249
    .line 250
    mul-float v25, v23, v1

    .line 251
    .line 252
    move/from16 v26, v1

    .line 253
    .line 254
    iget v1, v5, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    .line 255
    .line 256
    mul-float v27, v1, v22

    .line 257
    .line 258
    sub-float v25, v25, v27

    .line 259
    .line 260
    mul-float v27, v1, v24

    .line 261
    .line 262
    mul-float v28, v6, v26

    .line 263
    .line 264
    sub-float v27, v27, v28

    .line 265
    .line 266
    move/from16 v28, v1

    .line 267
    .line 268
    iget v1, v5, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    .line 269
    .line 270
    mul-float v29, v1, v24

    .line 271
    .line 272
    move/from16 v30, v1

    .line 273
    .line 274
    iget v1, v5, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    .line 275
    .line 276
    mul-float v31, v1, v22

    .line 277
    .line 278
    sub-float v29, v29, v31

    .line 279
    .line 280
    iget v5, v5, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    .line 281
    .line 282
    mul-float v22, v22, v5

    .line 283
    .line 284
    mul-float v31, v30, v26

    .line 285
    .line 286
    sub-float v22, v22, v31

    .line 287
    .line 288
    mul-float v26, v26, v1

    .line 289
    .line 290
    mul-float v24, v24, v5

    .line 291
    .line 292
    sub-float v26, v26, v24

    .line 293
    .line 294
    mul-float v24, v1, v23

    .line 295
    .line 296
    mul-float v31, v30, v6

    .line 297
    .line 298
    sub-float v24, v24, v31

    .line 299
    .line 300
    mul-float v30, v30, v28

    .line 301
    .line 302
    mul-float v23, v23, v5

    .line 303
    .line 304
    sub-float v30, v30, v23

    .line 305
    .line 306
    mul-float/2addr v5, v6

    .line 307
    mul-float v1, v1, v28

    .line 308
    .line 309
    sub-float/2addr v5, v1

    .line 310
    invoke-static/range {v7 .. v14}, Lcom/google/zxing/common/PerspectiveTransform;->squareToQuadrilateral(FFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    iget v6, v1, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    .line 315
    .line 316
    mul-float v7, v6, v21

    .line 317
    .line 318
    iget v8, v1, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    .line 319
    .line 320
    mul-float v9, v8, v29

    .line 321
    .line 322
    add-float/2addr v9, v7

    .line 323
    iget v7, v1, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    .line 324
    .line 325
    mul-float v10, v7, v24

    .line 326
    .line 327
    add-float/2addr v10, v9

    .line 328
    mul-float v9, v6, v25

    .line 329
    .line 330
    mul-float v11, v8, v22

    .line 331
    .line 332
    add-float/2addr v11, v9

    .line 333
    mul-float v9, v7, v30

    .line 334
    .line 335
    add-float/2addr v9, v11

    .line 336
    mul-float v6, v6, v27

    .line 337
    .line 338
    mul-float v8, v8, v26

    .line 339
    .line 340
    add-float/2addr v8, v6

    .line 341
    mul-float/2addr v7, v5

    .line 342
    add-float/2addr v7, v8

    .line 343
    iget v6, v1, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    .line 344
    .line 345
    mul-float v8, v6, v21

    .line 346
    .line 347
    iget v11, v1, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    .line 348
    .line 349
    mul-float v12, v11, v29

    .line 350
    .line 351
    add-float/2addr v12, v8

    .line 352
    iget v8, v1, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    .line 353
    .line 354
    mul-float v13, v8, v24

    .line 355
    .line 356
    add-float/2addr v13, v12

    .line 357
    mul-float v12, v6, v25

    .line 358
    .line 359
    mul-float v14, v11, v22

    .line 360
    .line 361
    add-float/2addr v14, v12

    .line 362
    mul-float v12, v8, v30

    .line 363
    .line 364
    add-float/2addr v12, v14

    .line 365
    mul-float v6, v6, v27

    .line 366
    .line 367
    mul-float v11, v11, v26

    .line 368
    .line 369
    add-float/2addr v11, v6

    .line 370
    mul-float/2addr v8, v5

    .line 371
    add-float/2addr v8, v11

    .line 372
    iget v6, v1, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    .line 373
    .line 374
    mul-float v21, v21, v6

    .line 375
    .line 376
    iget v11, v1, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    .line 377
    .line 378
    mul-float v29, v29, v11

    .line 379
    .line 380
    add-float v29, v29, v21

    .line 381
    .line 382
    iget v1, v1, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    .line 383
    .line 384
    mul-float v24, v24, v1

    .line 385
    .line 386
    add-float v24, v24, v29

    .line 387
    .line 388
    mul-float v25, v25, v6

    .line 389
    .line 390
    mul-float v22, v22, v11

    .line 391
    .line 392
    add-float v22, v22, v25

    .line 393
    .line 394
    mul-float v30, v30, v1

    .line 395
    .line 396
    add-float v30, v30, v22

    .line 397
    .line 398
    mul-float v6, v6, v27

    .line 399
    .line 400
    mul-float v11, v11, v26

    .line 401
    .line 402
    add-float/2addr v11, v6

    .line 403
    mul-float/2addr v1, v5

    .line 404
    add-float/2addr v1, v11

    .line 405
    if-lez v15, :cond_19

    .line 406
    .line 407
    if-lez v15, :cond_19

    .line 408
    .line 409
    new-instance v5, Lcom/google/zxing/common/BitMatrix;

    .line 410
    .line 411
    invoke-direct {v5, v15, v15}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 412
    .line 413
    .line 414
    mul-int/lit8 v6, v15, 0x2

    .line 415
    .line 416
    new-array v11, v6, [F

    .line 417
    .line 418
    const/4 v14, 0x0

    .line 419
    const/16 v21, 0x0

    .line 420
    .line 421
    :goto_6
    if-ge v14, v15, :cond_17

    .line 422
    .line 423
    move/from16 v22, v1

    .line 424
    .line 425
    int-to-float v1, v14

    .line 426
    add-float v1, v1, v16

    .line 427
    .line 428
    move/from16 v23, v1

    .line 429
    .line 430
    move/from16 v1, v21

    .line 431
    .line 432
    :goto_7
    if-ge v1, v6, :cond_7

    .line 433
    .line 434
    move/from16 v25, v1

    .line 435
    .line 436
    div-int/lit8 v1, v25, 0x2

    .line 437
    .line 438
    int-to-float v1, v1

    .line 439
    add-float v1, v1, v16

    .line 440
    .line 441
    aput v1, v11, v25

    .line 442
    .line 443
    add-int/lit8 v1, v25, 0x1

    .line 444
    .line 445
    aput v23, v11, v1

    .line 446
    .line 447
    add-int/lit8 v1, v25, 0x2

    .line 448
    .line 449
    goto :goto_7

    .line 450
    :cond_7
    add-int/lit8 v1, v6, -0x1

    .line 451
    .line 452
    move-object/from16 v23, v2

    .line 453
    .line 454
    move/from16 v2, v21

    .line 455
    .line 456
    :goto_8
    if-ge v2, v1, :cond_8

    .line 457
    .line 458
    aget v25, v11, v2

    .line 459
    .line 460
    add-int/lit8 v26, v2, 0x1

    .line 461
    .line 462
    aget v27, v11, v26

    .line 463
    .line 464
    mul-float v28, v24, v25

    .line 465
    .line 466
    mul-float v29, v30, v27

    .line 467
    .line 468
    add-float v29, v29, v28

    .line 469
    .line 470
    add-float v29, v29, v22

    .line 471
    .line 472
    mul-float v28, v10, v25

    .line 473
    .line 474
    mul-float v31, v9, v27

    .line 475
    .line 476
    add-float v31, v31, v28

    .line 477
    .line 478
    add-float v31, v31, v7

    .line 479
    .line 480
    div-float v31, v31, v29

    .line 481
    .line 482
    aput v31, v11, v2

    .line 483
    .line 484
    mul-float v25, v25, v13

    .line 485
    .line 486
    mul-float v27, v27, v12

    .line 487
    .line 488
    add-float v27, v27, v25

    .line 489
    .line 490
    add-float v27, v27, v8

    .line 491
    .line 492
    div-float v27, v27, v29

    .line 493
    .line 494
    aput v27, v11, v26

    .line 495
    .line 496
    add-int/lit8 v2, v2, 0x2

    .line 497
    .line 498
    goto :goto_8

    .line 499
    :cond_8
    iget-object v2, v0, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 500
    .line 501
    iget v0, v2, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 502
    .line 503
    move-object/from16 v25, v3

    .line 504
    .line 505
    iget v3, v2, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 506
    .line 507
    move-object/from16 v26, v4

    .line 508
    .line 509
    move/from16 v28, v7

    .line 510
    .line 511
    move/from16 v27, v19

    .line 512
    .line 513
    move/from16 v4, v21

    .line 514
    .line 515
    :goto_9
    if-ge v4, v1, :cond_e

    .line 516
    .line 517
    if-eqz v27, :cond_e

    .line 518
    .line 519
    aget v7, v11, v4

    .line 520
    .line 521
    float-to-int v7, v7

    .line 522
    add-int/lit8 v29, v4, 0x1

    .line 523
    .line 524
    move/from16 v31, v1

    .line 525
    .line 526
    aget v1, v11, v29

    .line 527
    .line 528
    float-to-int v1, v1

    .line 529
    move/from16 v32, v4

    .line 530
    .line 531
    const/4 v4, -0x1

    .line 532
    if-lt v7, v4, :cond_d

    .line 533
    .line 534
    if-gt v7, v0, :cond_d

    .line 535
    .line 536
    if-lt v1, v4, :cond_d

    .line 537
    .line 538
    if-gt v1, v3, :cond_d

    .line 539
    .line 540
    if-ne v7, v4, :cond_9

    .line 541
    .line 542
    aput v17, v11, v32

    .line 543
    .line 544
    :goto_a
    move/from16 v7, v19

    .line 545
    .line 546
    goto :goto_b

    .line 547
    :cond_9
    if-ne v7, v0, :cond_a

    .line 548
    .line 549
    add-int/lit8 v7, v0, -0x1

    .line 550
    .line 551
    int-to-float v7, v7

    .line 552
    aput v7, v11, v32

    .line 553
    .line 554
    goto :goto_a

    .line 555
    :cond_a
    move/from16 v7, v21

    .line 556
    .line 557
    :goto_b
    if-ne v1, v4, :cond_b

    .line 558
    .line 559
    aput v17, v11, v29

    .line 560
    .line 561
    :goto_c
    move/from16 v27, v19

    .line 562
    .line 563
    goto :goto_d

    .line 564
    :cond_b
    if-ne v1, v3, :cond_c

    .line 565
    .line 566
    add-int/lit8 v1, v3, -0x1

    .line 567
    .line 568
    int-to-float v1, v1

    .line 569
    aput v1, v11, v29

    .line 570
    .line 571
    goto :goto_c

    .line 572
    :cond_c
    move/from16 v27, v7

    .line 573
    .line 574
    :goto_d
    add-int/lit8 v4, v32, 0x2

    .line 575
    .line 576
    move/from16 v1, v31

    .line 577
    .line 578
    goto :goto_9

    .line 579
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    throw v0

    .line 584
    :cond_e
    add-int/lit8 v1, v6, -0x2

    .line 585
    .line 586
    move/from16 v4, v19

    .line 587
    .line 588
    :goto_e
    if-ltz v1, :cond_14

    .line 589
    .line 590
    if-eqz v4, :cond_14

    .line 591
    .line 592
    aget v4, v11, v1

    .line 593
    .line 594
    float-to-int v4, v4

    .line 595
    add-int/lit8 v7, v1, 0x1

    .line 596
    .line 597
    move/from16 v29, v1

    .line 598
    .line 599
    aget v1, v11, v7

    .line 600
    .line 601
    float-to-int v1, v1

    .line 602
    move/from16 v31, v7

    .line 603
    .line 604
    const/4 v7, -0x1

    .line 605
    if-lt v4, v7, :cond_13

    .line 606
    .line 607
    if-gt v4, v0, :cond_13

    .line 608
    .line 609
    if-lt v1, v7, :cond_13

    .line 610
    .line 611
    if-gt v1, v3, :cond_13

    .line 612
    .line 613
    if-ne v4, v7, :cond_f

    .line 614
    .line 615
    aput v17, v11, v29

    .line 616
    .line 617
    :goto_f
    move/from16 v4, v19

    .line 618
    .line 619
    goto :goto_10

    .line 620
    :cond_f
    if-ne v4, v0, :cond_10

    .line 621
    .line 622
    add-int/lit8 v4, v0, -0x1

    .line 623
    .line 624
    int-to-float v4, v4

    .line 625
    aput v4, v11, v29

    .line 626
    .line 627
    goto :goto_f

    .line 628
    :cond_10
    move/from16 v4, v21

    .line 629
    .line 630
    :goto_10
    if-ne v1, v7, :cond_11

    .line 631
    .line 632
    aput v17, v11, v31

    .line 633
    .line 634
    :goto_11
    move/from16 v4, v19

    .line 635
    .line 636
    goto :goto_12

    .line 637
    :cond_11
    if-ne v1, v3, :cond_12

    .line 638
    .line 639
    add-int/lit8 v1, v3, -0x1

    .line 640
    .line 641
    int-to-float v1, v1

    .line 642
    aput v1, v11, v31

    .line 643
    .line 644
    goto :goto_11

    .line 645
    :cond_12
    :goto_12
    add-int/lit8 v1, v29, -0x2

    .line 646
    .line 647
    goto :goto_e

    .line 648
    :cond_13
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    throw v0

    .line 653
    :cond_14
    move/from16 v0, v21

    .line 654
    .line 655
    :goto_13
    if-ge v0, v6, :cond_16

    .line 656
    .line 657
    :try_start_2
    aget v1, v11, v0

    .line 658
    .line 659
    float-to-int v1, v1

    .line 660
    add-int/lit8 v3, v0, 0x1

    .line 661
    .line 662
    aget v3, v11, v3

    .line 663
    .line 664
    float-to-int v3, v3

    .line 665
    invoke-virtual {v2, v1, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 666
    .line 667
    .line 668
    move-result v1

    .line 669
    if-eqz v1, :cond_15

    .line 670
    .line 671
    div-int/lit8 v1, v0, 0x2

    .line 672
    .line 673
    invoke-virtual {v5, v1, v14}, Lcom/google/zxing/common/BitMatrix;->set(II)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 674
    .line 675
    .line 676
    :cond_15
    add-int/lit8 v0, v0, 0x2

    .line 677
    .line 678
    goto :goto_13

    .line 679
    :catch_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    throw v0

    .line 684
    :cond_16
    add-int/lit8 v14, v14, 0x1

    .line 685
    .line 686
    move-object/from16 v0, p0

    .line 687
    .line 688
    move/from16 v1, v22

    .line 689
    .line 690
    move-object/from16 v2, v23

    .line 691
    .line 692
    move-object/from16 v3, v25

    .line 693
    .line 694
    move-object/from16 v4, v26

    .line 695
    .line 696
    move/from16 v7, v28

    .line 697
    .line 698
    goto/16 :goto_6

    .line 699
    .line 700
    :cond_17
    move-object/from16 v23, v2

    .line 701
    .line 702
    move-object/from16 v25, v3

    .line 703
    .line 704
    move-object/from16 v26, v4

    .line 705
    .line 706
    if-nez v26, :cond_18

    .line 707
    .line 708
    const/4 v0, 0x3

    .line 709
    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    .line 710
    .line 711
    aput-object v20, v0, v21

    .line 712
    .line 713
    aput-object v23, v0, v19

    .line 714
    .line 715
    aput-object v25, v0, v18

    .line 716
    .line 717
    goto :goto_14

    .line 718
    :cond_18
    const/4 v0, 0x3

    .line 719
    const/4 v1, 0x4

    .line 720
    new-array v1, v1, [Lcom/google/zxing/ResultPoint;

    .line 721
    .line 722
    aput-object v20, v1, v21

    .line 723
    .line 724
    aput-object v23, v1, v19

    .line 725
    .line 726
    aput-object v25, v1, v18

    .line 727
    .line 728
    aput-object v26, v1, v0

    .line 729
    .line 730
    move-object v0, v1

    .line 731
    :goto_14
    new-instance v1, Lcom/google/zxing/common/DetectorResult;

    .line 732
    .line 733
    invoke-direct {v1, v5, v0}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    .line 734
    .line 735
    .line 736
    return-object v1

    .line 737
    :cond_19
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    throw v0

    .line 742
    :catch_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    throw v0

    .line 747
    :cond_1a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    throw v0

    .line 752
    :cond_1b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    throw v0
.end method

.method public final sizeOfBlackWhiteBlackRun(IIII)F
    .locals 17

    .line 1
    sub-int v0, p4, p2

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sub-int v1, p3, p1

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v3, 0x1

    .line 14
    if-le v0, v1, :cond_0

    .line 15
    .line 16
    move v0, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    move/from16 v4, p1

    .line 22
    .line 23
    move/from16 v1, p2

    .line 24
    .line 25
    move/from16 v6, p3

    .line 26
    .line 27
    move/from16 v5, p4

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move/from16 v1, p1

    .line 31
    .line 32
    move/from16 v4, p2

    .line 33
    .line 34
    move/from16 v5, p3

    .line 35
    .line 36
    move/from16 v6, p4

    .line 37
    .line 38
    :goto_1
    sub-int v7, v5, v1

    .line 39
    .line 40
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    sub-int v8, v6, v4

    .line 45
    .line 46
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    neg-int v10, v7

    .line 51
    const/4 v11, 0x2

    .line 52
    div-int/2addr v10, v11

    .line 53
    const/4 v12, -0x1

    .line 54
    if-ge v1, v5, :cond_2

    .line 55
    .line 56
    move v13, v3

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move v13, v12

    .line 59
    :goto_2
    if-ge v4, v6, :cond_3

    .line 60
    .line 61
    move v12, v3

    .line 62
    :cond_3
    add-int/2addr v5, v13

    .line 63
    move v14, v1

    .line 64
    move v15, v4

    .line 65
    const/4 v2, 0x0

    .line 66
    :goto_3
    if-eq v14, v5, :cond_b

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    move v11, v15

    .line 71
    goto :goto_4

    .line 72
    :cond_4
    move v11, v14

    .line 73
    :goto_4
    move/from16 v16, v0

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    move v0, v14

    .line 78
    goto :goto_5

    .line 79
    :cond_5
    move v0, v15

    .line 80
    :goto_5
    move/from16 p2, v1

    .line 81
    .line 82
    if-ne v2, v3, :cond_6

    .line 83
    .line 84
    move v1, v3

    .line 85
    move/from16 p3, v4

    .line 86
    .line 87
    move-object/from16 v3, p0

    .line 88
    .line 89
    goto :goto_6

    .line 90
    :cond_6
    const/4 v1, 0x0

    .line 91
    move-object/from16 v3, p0

    .line 92
    .line 93
    move/from16 p3, v4

    .line 94
    .line 95
    :goto_6
    iget-object v4, v3, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 96
    .line 97
    invoke-virtual {v4, v11, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-ne v1, v0, :cond_8

    .line 102
    .line 103
    const/4 v0, 0x2

    .line 104
    if-ne v2, v0, :cond_7

    .line 105
    .line 106
    sub-int v14, v14, p2

    .line 107
    .line 108
    int-to-double v0, v14

    .line 109
    sub-int v15, v15, p3

    .line 110
    .line 111
    int-to-double v2, v15

    .line 112
    mul-double/2addr v0, v0

    .line 113
    mul-double/2addr v2, v2

    .line 114
    add-double/2addr v2, v0

    .line 115
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 116
    .line 117
    .line 118
    move-result-wide v0

    .line 119
    :goto_7
    double-to-float v0, v0

    .line 120
    return v0

    .line 121
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 122
    .line 123
    :cond_8
    add-int/2addr v10, v9

    .line 124
    if-lez v10, :cond_a

    .line 125
    .line 126
    if-ne v15, v6, :cond_9

    .line 127
    .line 128
    const/4 v0, 0x2

    .line 129
    goto :goto_8

    .line 130
    :cond_9
    add-int/2addr v15, v12

    .line 131
    sub-int/2addr v10, v7

    .line 132
    :cond_a
    add-int/2addr v14, v13

    .line 133
    move/from16 v1, p2

    .line 134
    .line 135
    move/from16 v4, p3

    .line 136
    .line 137
    move/from16 v0, v16

    .line 138
    .line 139
    const/4 v3, 0x1

    .line 140
    const/4 v11, 0x2

    .line 141
    goto :goto_3

    .line 142
    :cond_b
    move/from16 p2, v1

    .line 143
    .line 144
    move v0, v11

    .line 145
    :goto_8
    if-ne v2, v0, :cond_c

    .line 146
    .line 147
    sub-int v5, v5, p2

    .line 148
    .line 149
    int-to-double v0, v5

    .line 150
    int-to-double v2, v8

    .line 151
    mul-double/2addr v0, v0

    .line 152
    mul-double/2addr v2, v2

    .line 153
    add-double/2addr v2, v0

    .line 154
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 155
    .line 156
    .line 157
    move-result-wide v0

    .line 158
    goto :goto_7

    .line 159
    :cond_c
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 160
    .line 161
    return v0
.end method

.method public final sizeOfBlackWhiteBlackRunBothWays(IIII)F
    .locals 7

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->sizeOfBlackWhiteBlackRun(IIII)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr p3, p1

    .line 6
    sub-int p3, p1, p3

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/high16 v3, 0x3f800000    # 1.0f

    .line 12
    .line 13
    if-gez p3, :cond_0

    .line 14
    .line 15
    int-to-float v4, p1

    .line 16
    sub-int p3, p1, p3

    .line 17
    .line 18
    int-to-float p3, p3

    .line 19
    div-float/2addr v4, p3

    .line 20
    move p3, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget v4, v1, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 23
    .line 24
    if-lt p3, v4, :cond_1

    .line 25
    .line 26
    add-int/lit8 v5, v4, -0x1

    .line 27
    .line 28
    sub-int/2addr v5, p1

    .line 29
    int-to-float v5, v5

    .line 30
    sub-int/2addr p3, p1

    .line 31
    int-to-float p3, p3

    .line 32
    div-float p3, v5, p3

    .line 33
    .line 34
    add-int/lit8 v4, v4, -0x1

    .line 35
    .line 36
    move v6, v4

    .line 37
    move v4, p3

    .line 38
    move p3, v6

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v4, v3

    .line 41
    :goto_0
    int-to-float v5, p2

    .line 42
    sub-int/2addr p4, p2

    .line 43
    int-to-float p4, p4

    .line 44
    mul-float/2addr p4, v4

    .line 45
    sub-float p4, v5, p4

    .line 46
    .line 47
    float-to-int p4, p4

    .line 48
    if-gez p4, :cond_2

    .line 49
    .line 50
    sub-int p4, p2, p4

    .line 51
    .line 52
    int-to-float p4, p4

    .line 53
    div-float/2addr v5, p4

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget v1, v1, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 56
    .line 57
    if-lt p4, v1, :cond_3

    .line 58
    .line 59
    add-int/lit8 v2, v1, -0x1

    .line 60
    .line 61
    sub-int/2addr v2, p2

    .line 62
    int-to-float v2, v2

    .line 63
    sub-int/2addr p4, p2

    .line 64
    int-to-float p4, p4

    .line 65
    div-float v5, v2, p4

    .line 66
    .line 67
    add-int/lit8 v2, v1, -0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move v2, p4

    .line 71
    move v5, v3

    .line 72
    :goto_1
    int-to-float p4, p1

    .line 73
    sub-int/2addr p3, p1

    .line 74
    int-to-float p3, p3

    .line 75
    mul-float/2addr p3, v5

    .line 76
    add-float/2addr p3, p4

    .line 77
    float-to-int p3, p3

    .line 78
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->sizeOfBlackWhiteBlackRun(IIII)F

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    add-float/2addr p0, v0

    .line 83
    sub-float/2addr p0, v3

    .line 84
    return p0
.end method
