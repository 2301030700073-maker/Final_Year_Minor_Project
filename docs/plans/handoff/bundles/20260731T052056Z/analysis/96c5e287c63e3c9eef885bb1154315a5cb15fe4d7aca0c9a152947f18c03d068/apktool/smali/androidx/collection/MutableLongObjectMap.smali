.class public final Landroidx/collection/MutableLongObjectMap;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public _capacity:I

.field public _size:I

.field public growthLimit:I

.field public keys:[J

.field public metadata:[J

.field public values:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    .line 33
    invoke-direct {p0, v0}, Landroidx/collection/MutableLongObjectMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 7
    .line 8
    sget-object v0, Landroidx/collection/LongSetKt;->EmptyLongArray:[J

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    .line 11
    .line 12
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    .line 15
    .line 16
    if-ltz p1, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->unloadedCapacity(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Landroidx/collection/MutableLongObjectMap;->initializeStorage(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string p0, "Capacity must be a positive value."

    .line 27
    .line 28
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    throw p0
.end method


# virtual methods
.method public final clear()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/collection/MutableLongObjectMap;->_size:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 5
    .line 6
    sget-object v2, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    .line 7
    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysKt___ArraysKt;->fill$default([JJ)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 19
    .line 20
    iget v2, p0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 21
    .line 22
    shr-int/lit8 v3, v2, 0x3

    .line 23
    .line 24
    and-int/lit8 v2, v2, 0x7

    .line 25
    .line 26
    shl-int/lit8 v2, v2, 0x3

    .line 27
    .line 28
    aget-wide v4, v1, v3

    .line 29
    .line 30
    const-wide/16 v6, 0xff

    .line 31
    .line 32
    shl-long/2addr v6, v2

    .line 33
    not-long v8, v6

    .line 34
    and-long/2addr v4, v8

    .line 35
    or-long/2addr v4, v6

    .line 36
    aput-wide v4, v1, v3

    .line 37
    .line 38
    :cond_0
    iget-object v1, p0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    iget v3, p0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 42
    .line 43
    invoke-static {v0, v3, v2, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->fill(IILjava/lang/Object;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget v0, p0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 47
    .line 48
    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget v1, p0, Landroidx/collection/MutableLongObjectMap;->_size:I

    .line 53
    .line 54
    sub-int/2addr v0, v1

    .line 55
    iput v0, p0, Landroidx/collection/MutableLongObjectMap;->growthLimit:I

    .line 56
    .line 57
    return-void
.end method

.method public final containsKey(J)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    ushr-long v1, p1, v1

    .line 6
    .line 7
    xor-long v1, p1, v1

    .line 8
    .line 9
    long-to-int v1, v1

    .line 10
    const v2, -0x3361d2af    # -8.293031E7f

    .line 11
    .line 12
    .line 13
    mul-int/2addr v1, v2

    .line 14
    shl-int/lit8 v2, v1, 0x10

    .line 15
    .line 16
    xor-int/2addr v1, v2

    .line 17
    and-int/lit8 v2, v1, 0x7f

    .line 18
    .line 19
    iget v3, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 20
    .line 21
    ushr-int/lit8 v1, v1, 0x7

    .line 22
    .line 23
    and-int/2addr v1, v3

    .line 24
    const/4 v4, 0x0

    .line 25
    move v5, v4

    .line 26
    :goto_0
    iget-object v6, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 27
    .line 28
    shr-int/lit8 v7, v1, 0x3

    .line 29
    .line 30
    and-int/lit8 v8, v1, 0x7

    .line 31
    .line 32
    shl-int/lit8 v8, v8, 0x3

    .line 33
    .line 34
    aget-wide v9, v6, v7

    .line 35
    .line 36
    ushr-long/2addr v9, v8

    .line 37
    const/4 v11, 0x1

    .line 38
    add-int/2addr v7, v11

    .line 39
    aget-wide v12, v6, v7

    .line 40
    .line 41
    rsub-int/lit8 v6, v8, 0x40

    .line 42
    .line 43
    shl-long v6, v12, v6

    .line 44
    .line 45
    int-to-long v12, v8

    .line 46
    neg-long v12, v12

    .line 47
    const/16 v8, 0x3f

    .line 48
    .line 49
    shr-long/2addr v12, v8

    .line 50
    and-long/2addr v6, v12

    .line 51
    or-long/2addr v6, v9

    .line 52
    int-to-long v8, v2

    .line 53
    const-wide v12, 0x101010101010101L

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    mul-long/2addr v8, v12

    .line 59
    xor-long/2addr v8, v6

    .line 60
    sub-long v12, v8, v12

    .line 61
    .line 62
    not-long v8, v8

    .line 63
    and-long/2addr v8, v12

    .line 64
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    and-long/2addr v8, v12

    .line 70
    :goto_1
    const-wide/16 v14, 0x0

    .line 71
    .line 72
    cmp-long v10, v8, v14

    .line 73
    .line 74
    if-eqz v10, :cond_1

    .line 75
    .line 76
    invoke-static {v8, v9}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    shr-int/lit8 v10, v10, 0x3

    .line 81
    .line 82
    add-int/2addr v10, v1

    .line 83
    and-int/2addr v10, v3

    .line 84
    iget-object v14, v0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    .line 85
    .line 86
    aget-wide v15, v14, v10

    .line 87
    .line 88
    cmp-long v14, v15, p1

    .line 89
    .line 90
    if-nez v14, :cond_0

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_0
    const-wide/16 v14, 0x1

    .line 94
    .line 95
    sub-long v14, v8, v14

    .line 96
    .line 97
    and-long/2addr v8, v14

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    not-long v8, v6

    .line 100
    const/4 v10, 0x6

    .line 101
    shl-long/2addr v8, v10

    .line 102
    and-long/2addr v6, v8

    .line 103
    and-long/2addr v6, v12

    .line 104
    cmp-long v6, v6, v14

    .line 105
    .line 106
    if-eqz v6, :cond_3

    .line 107
    .line 108
    const/4 v10, -0x1

    .line 109
    :goto_2
    if-ltz v10, :cond_2

    .line 110
    .line 111
    return v11

    .line 112
    :cond_2
    return v4

    .line 113
    :cond_3
    add-int/lit8 v5, v5, 0x8

    .line 114
    .line 115
    add-int/2addr v1, v5

    .line 116
    and-int/2addr v1, v3

    .line 117
    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v0, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    instance-of v3, v1, Landroidx/collection/MutableLongObjectMap;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    return v4

    .line 15
    :cond_1
    check-cast v1, Landroidx/collection/MutableLongObjectMap;

    .line 16
    .line 17
    iget v3, v1, Landroidx/collection/MutableLongObjectMap;->_size:I

    .line 18
    .line 19
    iget v5, v0, Landroidx/collection/MutableLongObjectMap;->_size:I

    .line 20
    .line 21
    if-eq v3, v5, :cond_2

    .line 22
    .line 23
    return v4

    .line 24
    :cond_2
    iget-object v3, v0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    .line 25
    .line 26
    iget-object v5, v0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 29
    .line 30
    array-length v6, v0

    .line 31
    add-int/lit8 v6, v6, -0x2

    .line 32
    .line 33
    if-ltz v6, :cond_8

    .line 34
    .line 35
    move v7, v4

    .line 36
    :goto_0
    aget-wide v8, v0, v7

    .line 37
    .line 38
    not-long v10, v8

    .line 39
    const/4 v12, 0x7

    .line 40
    shl-long/2addr v10, v12

    .line 41
    and-long/2addr v10, v8

    .line 42
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    and-long/2addr v10, v12

    .line 48
    cmp-long v10, v10, v12

    .line 49
    .line 50
    if-eqz v10, :cond_7

    .line 51
    .line 52
    sub-int v10, v7, v6

    .line 53
    .line 54
    not-int v10, v10

    .line 55
    ushr-int/lit8 v10, v10, 0x1f

    .line 56
    .line 57
    const/16 v11, 0x8

    .line 58
    .line 59
    rsub-int/lit8 v10, v10, 0x8

    .line 60
    .line 61
    move v12, v4

    .line 62
    :goto_1
    if-ge v12, v10, :cond_6

    .line 63
    .line 64
    const-wide/16 v13, 0xff

    .line 65
    .line 66
    and-long/2addr v13, v8

    .line 67
    const-wide/16 v15, 0x80

    .line 68
    .line 69
    cmp-long v13, v13, v15

    .line 70
    .line 71
    if-gez v13, :cond_5

    .line 72
    .line 73
    shl-int/lit8 v13, v7, 0x3

    .line 74
    .line 75
    add-int/2addr v13, v12

    .line 76
    aget-wide v14, v3, v13

    .line 77
    .line 78
    aget-object v13, v5, v13

    .line 79
    .line 80
    if-nez v13, :cond_4

    .line 81
    .line 82
    invoke-virtual {v1, v14, v15}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v13

    .line 86
    if-nez v13, :cond_3

    .line 87
    .line 88
    invoke-virtual {v1, v14, v15}, Landroidx/collection/MutableLongObjectMap;->containsKey(J)Z

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    if-nez v13, :cond_5

    .line 93
    .line 94
    :cond_3
    return v4

    .line 95
    :cond_4
    invoke-virtual {v1, v14, v15}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v14

    .line 99
    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v13

    .line 103
    if-nez v13, :cond_5

    .line 104
    .line 105
    return v4

    .line 106
    :cond_5
    shr-long/2addr v8, v11

    .line 107
    add-int/lit8 v12, v12, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_6
    if-ne v10, v11, :cond_8

    .line 111
    .line 112
    :cond_7
    if-eq v7, v6, :cond_8

    .line 113
    .line 114
    add-int/lit8 v7, v7, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_8
    return v2
.end method

.method public final findAbsoluteInsertIndex(J)I
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    ushr-long v2, p1, v1

    .line 6
    .line 7
    xor-long v2, p1, v2

    .line 8
    .line 9
    long-to-int v2, v2

    .line 10
    const v3, -0x3361d2af    # -8.293031E7f

    .line 11
    .line 12
    .line 13
    mul-int/2addr v2, v3

    .line 14
    shl-int/lit8 v4, v2, 0x10

    .line 15
    .line 16
    xor-int/2addr v2, v4

    .line 17
    ushr-int/lit8 v4, v2, 0x7

    .line 18
    .line 19
    and-int/lit8 v2, v2, 0x7f

    .line 20
    .line 21
    iget v5, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 22
    .line 23
    and-int v6, v4, v5

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    :goto_0
    iget-object v9, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 27
    .line 28
    shr-int/lit8 v10, v6, 0x3

    .line 29
    .line 30
    and-int/lit8 v11, v6, 0x7

    .line 31
    .line 32
    shl-int/lit8 v11, v11, 0x3

    .line 33
    .line 34
    aget-wide v12, v9, v10

    .line 35
    .line 36
    ushr-long/2addr v12, v11

    .line 37
    const/4 v14, 0x1

    .line 38
    add-int/2addr v10, v14

    .line 39
    aget-wide v15, v9, v10

    .line 40
    .line 41
    rsub-int/lit8 v9, v11, 0x40

    .line 42
    .line 43
    shl-long v9, v15, v9

    .line 44
    .line 45
    move/from16 v16, v8

    .line 46
    .line 47
    const/4 v15, 0x0

    .line 48
    int-to-long v7, v11

    .line 49
    neg-long v7, v7

    .line 50
    const/16 v11, 0x3f

    .line 51
    .line 52
    shr-long/2addr v7, v11

    .line 53
    and-long/2addr v7, v9

    .line 54
    or-long/2addr v7, v12

    .line 55
    int-to-long v9, v2

    .line 56
    const-wide v11, 0x101010101010101L

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    mul-long v17, v9, v11

    .line 62
    .line 63
    move v13, v1

    .line 64
    move/from16 v19, v2

    .line 65
    .line 66
    xor-long v1, v7, v17

    .line 67
    .line 68
    sub-long v11, v1, v11

    .line 69
    .line 70
    not-long v1, v1

    .line 71
    and-long/2addr v1, v11

    .line 72
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    and-long/2addr v1, v11

    .line 78
    :goto_1
    const-wide/16 v17, 0x0

    .line 79
    .line 80
    cmp-long v20, v1, v17

    .line 81
    .line 82
    if-eqz v20, :cond_1

    .line 83
    .line 84
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 85
    .line 86
    .line 87
    move-result v17

    .line 88
    shr-int/lit8 v17, v17, 0x3

    .line 89
    .line 90
    add-int v17, v6, v17

    .line 91
    .line 92
    and-int v17, v17, v5

    .line 93
    .line 94
    move/from16 v20, v3

    .line 95
    .line 96
    iget-object v3, v0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    .line 97
    .line 98
    aget-wide v21, v3, v17

    .line 99
    .line 100
    cmp-long v3, v21, p1

    .line 101
    .line 102
    if-nez v3, :cond_0

    .line 103
    .line 104
    return v17

    .line 105
    :cond_0
    const-wide/16 v17, 0x1

    .line 106
    .line 107
    sub-long v17, v1, v17

    .line 108
    .line 109
    and-long v1, v1, v17

    .line 110
    .line 111
    move/from16 v3, v20

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_1
    move/from16 v20, v3

    .line 115
    .line 116
    not-long v1, v7

    .line 117
    const/4 v3, 0x6

    .line 118
    shl-long/2addr v1, v3

    .line 119
    and-long/2addr v1, v7

    .line 120
    and-long/2addr v1, v11

    .line 121
    cmp-long v1, v1, v17

    .line 122
    .line 123
    const/16 v2, 0x8

    .line 124
    .line 125
    if-eqz v1, :cond_f

    .line 126
    .line 127
    invoke-virtual {v0, v4}, Landroidx/collection/MutableLongObjectMap;->findFirstAvailableSlot(I)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    iget v3, v0, Landroidx/collection/MutableLongObjectMap;->growthLimit:I

    .line 132
    .line 133
    const-wide/16 v7, 0xff

    .line 134
    .line 135
    const/16 v16, 0x7

    .line 136
    .line 137
    if-nez v3, :cond_2

    .line 138
    .line 139
    iget-object v3, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 140
    .line 141
    shr-int/lit8 v19, v1, 0x3

    .line 142
    .line 143
    aget-wide v21, v3, v19

    .line 144
    .line 145
    and-int/lit8 v3, v1, 0x7

    .line 146
    .line 147
    shl-int/lit8 v3, v3, 0x3

    .line 148
    .line 149
    shr-long v21, v21, v3

    .line 150
    .line 151
    and-long v21, v21, v7

    .line 152
    .line 153
    const-wide/16 v23, 0xfe

    .line 154
    .line 155
    cmp-long v3, v21, v23

    .line 156
    .line 157
    if-nez v3, :cond_3

    .line 158
    .line 159
    :cond_2
    move-wide/from16 v27, v7

    .line 160
    .line 161
    move/from16 v31, v14

    .line 162
    .line 163
    const-wide/16 p1, 0x80

    .line 164
    .line 165
    goto/16 :goto_b

    .line 166
    .line 167
    :cond_3
    iget v1, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 168
    .line 169
    if-le v1, v2, :cond_b

    .line 170
    .line 171
    iget v3, v0, Landroidx/collection/MutableLongObjectMap;->_size:I

    .line 172
    .line 173
    move/from16 v21, v2

    .line 174
    .line 175
    int-to-long v2, v3

    .line 176
    const-wide/16 v25, 0x20

    .line 177
    .line 178
    mul-long v2, v2, v25

    .line 179
    .line 180
    const-wide/16 p1, 0x80

    .line 181
    .line 182
    int-to-long v5, v1

    .line 183
    const-wide/16 v25, 0x19

    .line 184
    .line 185
    mul-long v5, v5, v25

    .line 186
    .line 187
    const-wide/high16 v25, -0x8000000000000000L

    .line 188
    .line 189
    xor-long v2, v2, v25

    .line 190
    .line 191
    xor-long v5, v5, v25

    .line 192
    .line 193
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Long;->compare(JJ)I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-gtz v1, :cond_a

    .line 198
    .line 199
    iget-object v1, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 200
    .line 201
    iget v2, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 202
    .line 203
    iget-object v3, v0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    .line 204
    .line 205
    iget-object v5, v0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    .line 206
    .line 207
    add-int/lit8 v6, v2, 0x7

    .line 208
    .line 209
    shr-int/lit8 v6, v6, 0x3

    .line 210
    .line 211
    move-wide/from16 v27, v7

    .line 212
    .line 213
    move v7, v15

    .line 214
    :goto_2
    if-ge v7, v6, :cond_4

    .line 215
    .line 216
    aget-wide v29, v1, v7

    .line 217
    .line 218
    move-wide/from16 v31, v11

    .line 219
    .line 220
    and-long v11, v29, v31

    .line 221
    .line 222
    move/from16 v22, v13

    .line 223
    .line 224
    move v8, v14

    .line 225
    not-long v13, v11

    .line 226
    ushr-long v11, v11, v16

    .line 227
    .line 228
    add-long/2addr v13, v11

    .line 229
    const-wide v11, -0x101010101010102L

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    and-long/2addr v11, v13

    .line 235
    aput-wide v11, v1, v7

    .line 236
    .line 237
    add-int/lit8 v7, v7, 0x1

    .line 238
    .line 239
    move v14, v8

    .line 240
    move/from16 v13, v22

    .line 241
    .line 242
    move-wide/from16 v11, v31

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_4
    move/from16 v22, v13

    .line 246
    .line 247
    move v8, v14

    .line 248
    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->getLastIndex([J)I

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    add-int/lit8 v7, v6, -0x1

    .line 253
    .line 254
    aget-wide v11, v1, v7

    .line 255
    .line 256
    const-wide v13, 0xffffffffffffffL

    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    and-long/2addr v11, v13

    .line 262
    const-wide/high16 v29, -0x100000000000000L

    .line 263
    .line 264
    or-long v11, v11, v29

    .line 265
    .line 266
    aput-wide v11, v1, v7

    .line 267
    .line 268
    aget-wide v11, v1, v15

    .line 269
    .line 270
    aput-wide v11, v1, v6

    .line 271
    .line 272
    move v6, v15

    .line 273
    :goto_3
    if-eq v6, v2, :cond_9

    .line 274
    .line 275
    shr-int/lit8 v7, v6, 0x3

    .line 276
    .line 277
    aget-wide v11, v1, v7

    .line 278
    .line 279
    and-int/lit8 v19, v6, 0x7

    .line 280
    .line 281
    shl-int/lit8 v19, v19, 0x3

    .line 282
    .line 283
    shr-long v11, v11, v19

    .line 284
    .line 285
    and-long v11, v11, v27

    .line 286
    .line 287
    cmp-long v29, v11, p1

    .line 288
    .line 289
    if-nez v29, :cond_5

    .line 290
    .line 291
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 292
    .line 293
    goto :goto_3

    .line 294
    :cond_5
    cmp-long v11, v11, v23

    .line 295
    .line 296
    if-eqz v11, :cond_6

    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_6
    aget-wide v11, v3, v6

    .line 300
    .line 301
    ushr-long v29, v11, v22

    .line 302
    .line 303
    xor-long v11, v11, v29

    .line 304
    .line 305
    long-to-int v11, v11

    .line 306
    mul-int v11, v11, v20

    .line 307
    .line 308
    shl-int/lit8 v12, v11, 0x10

    .line 309
    .line 310
    xor-int/2addr v11, v12

    .line 311
    ushr-int/lit8 v12, v11, 0x7

    .line 312
    .line 313
    invoke-virtual {v0, v12}, Landroidx/collection/MutableLongObjectMap;->findFirstAvailableSlot(I)I

    .line 314
    .line 315
    .line 316
    move-result v29

    .line 317
    and-int/2addr v12, v2

    .line 318
    sub-int v30, v29, v12

    .line 319
    .line 320
    and-int v30, v30, v2

    .line 321
    .line 322
    move/from16 v31, v8

    .line 323
    .line 324
    div-int/lit8 v8, v30, 0x8

    .line 325
    .line 326
    sub-int v12, v6, v12

    .line 327
    .line 328
    and-int/2addr v12, v2

    .line 329
    div-int/lit8 v12, v12, 0x8

    .line 330
    .line 331
    if-ne v8, v12, :cond_7

    .line 332
    .line 333
    and-int/lit8 v8, v11, 0x7f

    .line 334
    .line 335
    int-to-long v11, v8

    .line 336
    aget-wide v29, v1, v7

    .line 337
    .line 338
    move-wide/from16 v32, v13

    .line 339
    .line 340
    shl-long v13, v27, v19

    .line 341
    .line 342
    not-long v13, v13

    .line 343
    and-long v13, v29, v13

    .line 344
    .line 345
    shl-long v11, v11, v19

    .line 346
    .line 347
    or-long/2addr v11, v13

    .line 348
    aput-wide v11, v1, v7

    .line 349
    .line 350
    array-length v7, v1

    .line 351
    add-int/lit8 v7, v7, -0x1

    .line 352
    .line 353
    aget-wide v11, v1, v15

    .line 354
    .line 355
    and-long v11, v11, v32

    .line 356
    .line 357
    or-long v11, v11, v25

    .line 358
    .line 359
    aput-wide v11, v1, v7

    .line 360
    .line 361
    add-int/lit8 v6, v6, 0x1

    .line 362
    .line 363
    move/from16 v8, v31

    .line 364
    .line 365
    move-wide/from16 v13, v32

    .line 366
    .line 367
    goto :goto_3

    .line 368
    :cond_7
    move-wide/from16 v32, v13

    .line 369
    .line 370
    shr-int/lit8 v8, v29, 0x3

    .line 371
    .line 372
    aget-wide v12, v1, v8

    .line 373
    .line 374
    and-int/lit8 v14, v29, 0x7

    .line 375
    .line 376
    shl-int/lit8 v14, v14, 0x3

    .line 377
    .line 378
    shr-long v34, v12, v14

    .line 379
    .line 380
    and-long v34, v34, v27

    .line 381
    .line 382
    cmp-long v30, v34, p1

    .line 383
    .line 384
    if-nez v30, :cond_8

    .line 385
    .line 386
    and-int/lit8 v11, v11, 0x7f

    .line 387
    .line 388
    move/from16 v30, v2

    .line 389
    .line 390
    move-object/from16 v34, v3

    .line 391
    .line 392
    int-to-long v2, v11

    .line 393
    move-wide/from16 v35, v2

    .line 394
    .line 395
    shl-long v2, v27, v14

    .line 396
    .line 397
    not-long v2, v2

    .line 398
    and-long/2addr v2, v12

    .line 399
    shl-long v11, v35, v14

    .line 400
    .line 401
    or-long/2addr v2, v11

    .line 402
    aput-wide v2, v1, v8

    .line 403
    .line 404
    aget-wide v2, v1, v7

    .line 405
    .line 406
    shl-long v11, v27, v19

    .line 407
    .line 408
    not-long v11, v11

    .line 409
    and-long/2addr v2, v11

    .line 410
    shl-long v11, p1, v19

    .line 411
    .line 412
    or-long/2addr v2, v11

    .line 413
    aput-wide v2, v1, v7

    .line 414
    .line 415
    aget-wide v2, v34, v6

    .line 416
    .line 417
    aput-wide v2, v34, v29

    .line 418
    .line 419
    aput-wide v17, v34, v6

    .line 420
    .line 421
    aget-object v2, v5, v6

    .line 422
    .line 423
    aput-object v2, v5, v29

    .line 424
    .line 425
    const/4 v2, 0x0

    .line 426
    aput-object v2, v5, v6

    .line 427
    .line 428
    goto :goto_5

    .line 429
    :cond_8
    move/from16 v30, v2

    .line 430
    .line 431
    move-object/from16 v34, v3

    .line 432
    .line 433
    and-int/lit8 v2, v11, 0x7f

    .line 434
    .line 435
    int-to-long v2, v2

    .line 436
    move-wide/from16 v35, v2

    .line 437
    .line 438
    shl-long v2, v27, v14

    .line 439
    .line 440
    not-long v2, v2

    .line 441
    and-long/2addr v2, v12

    .line 442
    shl-long v11, v35, v14

    .line 443
    .line 444
    or-long/2addr v2, v11

    .line 445
    aput-wide v2, v1, v8

    .line 446
    .line 447
    aget-wide v2, v34, v29

    .line 448
    .line 449
    aget-wide v7, v34, v6

    .line 450
    .line 451
    aput-wide v7, v34, v29

    .line 452
    .line 453
    aput-wide v2, v34, v6

    .line 454
    .line 455
    aget-object v2, v5, v29

    .line 456
    .line 457
    aget-object v3, v5, v6

    .line 458
    .line 459
    aput-object v3, v5, v29

    .line 460
    .line 461
    aput-object v2, v5, v6

    .line 462
    .line 463
    add-int/lit8 v6, v6, -0x1

    .line 464
    .line 465
    :goto_5
    array-length v2, v1

    .line 466
    add-int/lit8 v2, v2, -0x1

    .line 467
    .line 468
    aget-wide v7, v1, v15

    .line 469
    .line 470
    and-long v7, v7, v32

    .line 471
    .line 472
    or-long v7, v7, v25

    .line 473
    .line 474
    aput-wide v7, v1, v2

    .line 475
    .line 476
    add-int/lit8 v6, v6, 0x1

    .line 477
    .line 478
    move/from16 v2, v30

    .line 479
    .line 480
    move/from16 v8, v31

    .line 481
    .line 482
    move-wide/from16 v13, v32

    .line 483
    .line 484
    move-object/from16 v3, v34

    .line 485
    .line 486
    goto/16 :goto_3

    .line 487
    .line 488
    :cond_9
    move/from16 v31, v8

    .line 489
    .line 490
    iget v1, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 491
    .line 492
    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    .line 493
    .line 494
    .line 495
    move-result v1

    .line 496
    iget v2, v0, Landroidx/collection/MutableLongObjectMap;->_size:I

    .line 497
    .line 498
    sub-int/2addr v1, v2

    .line 499
    iput v1, v0, Landroidx/collection/MutableLongObjectMap;->growthLimit:I

    .line 500
    .line 501
    goto/16 :goto_a

    .line 502
    .line 503
    :cond_a
    :goto_6
    move-wide/from16 v27, v7

    .line 504
    .line 505
    move/from16 v22, v13

    .line 506
    .line 507
    move/from16 v31, v14

    .line 508
    .line 509
    goto :goto_7

    .line 510
    :cond_b
    const-wide/16 p1, 0x80

    .line 511
    .line 512
    goto :goto_6

    .line 513
    :goto_7
    iget v1, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 514
    .line 515
    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    .line 516
    .line 517
    .line 518
    move-result v1

    .line 519
    iget-object v2, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 520
    .line 521
    iget-object v3, v0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    .line 522
    .line 523
    iget-object v5, v0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    .line 524
    .line 525
    iget v6, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 526
    .line 527
    invoke-virtual {v0, v1}, Landroidx/collection/MutableLongObjectMap;->initializeStorage(I)V

    .line 528
    .line 529
    .line 530
    iget-object v1, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 531
    .line 532
    iget-object v7, v0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    .line 533
    .line 534
    iget-object v8, v0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    .line 535
    .line 536
    iget v11, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 537
    .line 538
    move v12, v15

    .line 539
    :goto_8
    if-ge v12, v6, :cond_d

    .line 540
    .line 541
    shr-int/lit8 v13, v12, 0x3

    .line 542
    .line 543
    aget-wide v13, v2, v13

    .line 544
    .line 545
    and-int/lit8 v17, v12, 0x7

    .line 546
    .line 547
    shl-int/lit8 v17, v17, 0x3

    .line 548
    .line 549
    shr-long v13, v13, v17

    .line 550
    .line 551
    and-long v13, v13, v27

    .line 552
    .line 553
    cmp-long v13, v13, p1

    .line 554
    .line 555
    if-gez v13, :cond_c

    .line 556
    .line 557
    aget-wide v13, v3, v12

    .line 558
    .line 559
    ushr-long v17, v13, v22

    .line 560
    .line 561
    move-object/from16 v21, v1

    .line 562
    .line 563
    move-object/from16 v19, v2

    .line 564
    .line 565
    xor-long v1, v13, v17

    .line 566
    .line 567
    long-to-int v1, v1

    .line 568
    mul-int v1, v1, v20

    .line 569
    .line 570
    shl-int/lit8 v2, v1, 0x10

    .line 571
    .line 572
    xor-int/2addr v1, v2

    .line 573
    ushr-int/lit8 v2, v1, 0x7

    .line 574
    .line 575
    invoke-virtual {v0, v2}, Landroidx/collection/MutableLongObjectMap;->findFirstAvailableSlot(I)I

    .line 576
    .line 577
    .line 578
    move-result v2

    .line 579
    and-int/lit8 v1, v1, 0x7f

    .line 580
    .line 581
    move/from16 v17, v2

    .line 582
    .line 583
    int-to-long v1, v1

    .line 584
    shr-int/lit8 v18, v17, 0x3

    .line 585
    .line 586
    and-int/lit8 v23, v17, 0x7

    .line 587
    .line 588
    shl-int/lit8 v23, v23, 0x3

    .line 589
    .line 590
    aget-wide v24, v21, v18

    .line 591
    .line 592
    move-wide/from16 v29, v1

    .line 593
    .line 594
    shl-long v1, v27, v23

    .line 595
    .line 596
    not-long v1, v1

    .line 597
    and-long v1, v24, v1

    .line 598
    .line 599
    shl-long v23, v29, v23

    .line 600
    .line 601
    or-long v1, v1, v23

    .line 602
    .line 603
    aput-wide v1, v21, v18

    .line 604
    .line 605
    add-int/lit8 v18, v17, -0x7

    .line 606
    .line 607
    and-int v18, v18, v11

    .line 608
    .line 609
    and-int/lit8 v23, v11, 0x7

    .line 610
    .line 611
    add-int v18, v18, v23

    .line 612
    .line 613
    shr-int/lit8 v18, v18, 0x3

    .line 614
    .line 615
    aput-wide v1, v21, v18

    .line 616
    .line 617
    aput-wide v13, v7, v17

    .line 618
    .line 619
    aget-object v1, v5, v12

    .line 620
    .line 621
    aput-object v1, v8, v17

    .line 622
    .line 623
    goto :goto_9

    .line 624
    :cond_c
    move-object/from16 v21, v1

    .line 625
    .line 626
    move-object/from16 v19, v2

    .line 627
    .line 628
    :goto_9
    add-int/lit8 v12, v12, 0x1

    .line 629
    .line 630
    move-object/from16 v2, v19

    .line 631
    .line 632
    move-object/from16 v1, v21

    .line 633
    .line 634
    goto :goto_8

    .line 635
    :cond_d
    :goto_a
    invoke-virtual {v0, v4}, Landroidx/collection/MutableLongObjectMap;->findFirstAvailableSlot(I)I

    .line 636
    .line 637
    .line 638
    move-result v1

    .line 639
    :goto_b
    iget v2, v0, Landroidx/collection/MutableLongObjectMap;->_size:I

    .line 640
    .line 641
    add-int/lit8 v2, v2, 0x1

    .line 642
    .line 643
    iput v2, v0, Landroidx/collection/MutableLongObjectMap;->_size:I

    .line 644
    .line 645
    iget v2, v0, Landroidx/collection/MutableLongObjectMap;->growthLimit:I

    .line 646
    .line 647
    iget-object v3, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 648
    .line 649
    shr-int/lit8 v4, v1, 0x3

    .line 650
    .line 651
    aget-wide v5, v3, v4

    .line 652
    .line 653
    and-int/lit8 v7, v1, 0x7

    .line 654
    .line 655
    shl-int/lit8 v7, v7, 0x3

    .line 656
    .line 657
    shr-long v11, v5, v7

    .line 658
    .line 659
    and-long v11, v11, v27

    .line 660
    .line 661
    cmp-long v8, v11, p1

    .line 662
    .line 663
    if-nez v8, :cond_e

    .line 664
    .line 665
    goto :goto_c

    .line 666
    :cond_e
    move/from16 v31, v15

    .line 667
    .line 668
    :goto_c
    sub-int v2, v2, v31

    .line 669
    .line 670
    iput v2, v0, Landroidx/collection/MutableLongObjectMap;->growthLimit:I

    .line 671
    .line 672
    iget v0, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 673
    .line 674
    shl-long v11, v27, v7

    .line 675
    .line 676
    not-long v11, v11

    .line 677
    and-long/2addr v5, v11

    .line 678
    shl-long v7, v9, v7

    .line 679
    .line 680
    or-long/2addr v5, v7

    .line 681
    aput-wide v5, v3, v4

    .line 682
    .line 683
    add-int/lit8 v2, v1, -0x7

    .line 684
    .line 685
    and-int/2addr v2, v0

    .line 686
    and-int/lit8 v0, v0, 0x7

    .line 687
    .line 688
    add-int/2addr v2, v0

    .line 689
    shr-int/lit8 v0, v2, 0x3

    .line 690
    .line 691
    aput-wide v5, v3, v0

    .line 692
    .line 693
    return v1

    .line 694
    :cond_f
    move/from16 v21, v2

    .line 695
    .line 696
    move/from16 v22, v13

    .line 697
    .line 698
    add-int/lit8 v8, v16, 0x8

    .line 699
    .line 700
    add-int/2addr v6, v8

    .line 701
    and-int/2addr v6, v5

    .line 702
    move/from16 v2, v19

    .line 703
    .line 704
    move/from16 v3, v20

    .line 705
    .line 706
    move/from16 v1, v22

    .line 707
    .line 708
    goto/16 :goto_0
.end method

.method public final findFirstAvailableSlot(I)I
    .locals 9

    .line 1
    iget v0, p0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 6
    .line 7
    shr-int/lit8 v3, p1, 0x3

    .line 8
    .line 9
    and-int/lit8 v4, p1, 0x7

    .line 10
    .line 11
    shl-int/lit8 v4, v4, 0x3

    .line 12
    .line 13
    aget-wide v5, v2, v3

    .line 14
    .line 15
    ushr-long/2addr v5, v4

    .line 16
    add-int/lit8 v3, v3, 0x1

    .line 17
    .line 18
    aget-wide v7, v2, v3

    .line 19
    .line 20
    rsub-int/lit8 v2, v4, 0x40

    .line 21
    .line 22
    shl-long v2, v7, v2

    .line 23
    .line 24
    int-to-long v7, v4

    .line 25
    neg-long v7, v7

    .line 26
    const/16 v4, 0x3f

    .line 27
    .line 28
    shr-long/2addr v7, v4

    .line 29
    and-long/2addr v2, v7

    .line 30
    or-long/2addr v2, v5

    .line 31
    not-long v4, v2

    .line 32
    const/4 v6, 0x7

    .line 33
    shl-long/2addr v4, v6

    .line 34
    and-long/2addr v2, v4

    .line 35
    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    and-long/2addr v2, v4

    .line 41
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    cmp-long v4, v2, v4

    .line 44
    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    shr-int/lit8 p0, p0, 0x3

    .line 52
    .line 53
    add-int/2addr p1, p0

    .line 54
    and-int p0, p1, v0

    .line 55
    .line 56
    return p0

    .line 57
    :cond_0
    add-int/lit8 v1, v1, 0x8

    .line 58
    .line 59
    add-int/2addr p1, v1

    .line 60
    and-int/2addr p1, v0

    .line 61
    goto :goto_0
.end method

.method public final get(J)Ljava/lang/Object;
    .locals 14

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    ushr-long v0, p1, v0

    .line 4
    .line 5
    xor-long/2addr v0, p1

    .line 6
    long-to-int v0, v0

    .line 7
    const v1, -0x3361d2af    # -8.293031E7f

    .line 8
    .line 9
    .line 10
    mul-int/2addr v0, v1

    .line 11
    shl-int/lit8 v1, v0, 0x10

    .line 12
    .line 13
    xor-int/2addr v0, v1

    .line 14
    and-int/lit8 v1, v0, 0x7f

    .line 15
    .line 16
    iget v2, p0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 17
    .line 18
    ushr-int/lit8 v0, v0, 0x7

    .line 19
    .line 20
    and-int/2addr v0, v2

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    iget-object v4, p0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 23
    .line 24
    shr-int/lit8 v5, v0, 0x3

    .line 25
    .line 26
    and-int/lit8 v6, v0, 0x7

    .line 27
    .line 28
    shl-int/lit8 v6, v6, 0x3

    .line 29
    .line 30
    aget-wide v7, v4, v5

    .line 31
    .line 32
    ushr-long/2addr v7, v6

    .line 33
    add-int/lit8 v5, v5, 0x1

    .line 34
    .line 35
    aget-wide v9, v4, v5

    .line 36
    .line 37
    rsub-int/lit8 v4, v6, 0x40

    .line 38
    .line 39
    shl-long v4, v9, v4

    .line 40
    .line 41
    int-to-long v9, v6

    .line 42
    neg-long v9, v9

    .line 43
    const/16 v6, 0x3f

    .line 44
    .line 45
    shr-long/2addr v9, v6

    .line 46
    and-long/2addr v4, v9

    .line 47
    or-long/2addr v4, v7

    .line 48
    int-to-long v6, v1

    .line 49
    const-wide v8, 0x101010101010101L

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    mul-long/2addr v6, v8

    .line 55
    xor-long/2addr v6, v4

    .line 56
    sub-long v8, v6, v8

    .line 57
    .line 58
    not-long v6, v6

    .line 59
    and-long/2addr v6, v8

    .line 60
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    and-long/2addr v6, v8

    .line 66
    :goto_1
    const-wide/16 v10, 0x0

    .line 67
    .line 68
    cmp-long v12, v6, v10

    .line 69
    .line 70
    if-eqz v12, :cond_1

    .line 71
    .line 72
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    shr-int/lit8 v10, v10, 0x3

    .line 77
    .line 78
    add-int/2addr v10, v0

    .line 79
    and-int/2addr v10, v2

    .line 80
    iget-object v11, p0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    .line 81
    .line 82
    aget-wide v12, v11, v10

    .line 83
    .line 84
    cmp-long v11, v12, p1

    .line 85
    .line 86
    if-nez v11, :cond_0

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_0
    const-wide/16 v10, 0x1

    .line 90
    .line 91
    sub-long v10, v6, v10

    .line 92
    .line 93
    and-long/2addr v6, v10

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    not-long v6, v4

    .line 96
    const/4 v12, 0x6

    .line 97
    shl-long/2addr v6, v12

    .line 98
    and-long/2addr v4, v6

    .line 99
    and-long/2addr v4, v8

    .line 100
    cmp-long v4, v4, v10

    .line 101
    .line 102
    if-eqz v4, :cond_3

    .line 103
    .line 104
    const/4 v10, -0x1

    .line 105
    :goto_2
    if-ltz v10, :cond_2

    .line 106
    .line 107
    iget-object p0, p0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    .line 108
    .line 109
    aget-object p0, p0, v10

    .line 110
    .line 111
    return-object p0

    .line 112
    :cond_2
    const/4 p0, 0x0

    .line 113
    return-object p0

    .line 114
    :cond_3
    add-int/lit8 v3, v3, 0x8

    .line 115
    .line 116
    add-int/2addr v0, v3

    .line 117
    and-int/2addr v0, v2

    .line 118
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 8
    .line 9
    array-length v3, v0

    .line 10
    add-int/lit8 v3, v3, -0x2

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-ltz v3, :cond_6

    .line 14
    .line 15
    move v5, v4

    .line 16
    move v6, v5

    .line 17
    :goto_0
    aget-wide v7, v0, v5

    .line 18
    .line 19
    not-long v9, v7

    .line 20
    const/4 v11, 0x7

    .line 21
    shl-long/2addr v9, v11

    .line 22
    and-long/2addr v9, v7

    .line 23
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    and-long/2addr v9, v11

    .line 29
    cmp-long v9, v9, v11

    .line 30
    .line 31
    if-eqz v9, :cond_4

    .line 32
    .line 33
    sub-int v9, v5, v3

    .line 34
    .line 35
    not-int v9, v9

    .line 36
    ushr-int/lit8 v9, v9, 0x1f

    .line 37
    .line 38
    const/16 v10, 0x8

    .line 39
    .line 40
    rsub-int/lit8 v9, v9, 0x8

    .line 41
    .line 42
    move v11, v4

    .line 43
    :goto_1
    if-ge v11, v9, :cond_2

    .line 44
    .line 45
    const-wide/16 v12, 0xff

    .line 46
    .line 47
    and-long/2addr v12, v7

    .line 48
    const-wide/16 v14, 0x80

    .line 49
    .line 50
    cmp-long v12, v12, v14

    .line 51
    .line 52
    if-gez v12, :cond_1

    .line 53
    .line 54
    shl-int/lit8 v12, v5, 0x3

    .line 55
    .line 56
    add-int/2addr v12, v11

    .line 57
    aget-wide v13, v1, v12

    .line 58
    .line 59
    aget-object v12, v2, v12

    .line 60
    .line 61
    const/16 v15, 0x20

    .line 62
    .line 63
    ushr-long v15, v13, v15

    .line 64
    .line 65
    xor-long/2addr v13, v15

    .line 66
    long-to-int v13, v13

    .line 67
    if-eqz v12, :cond_0

    .line 68
    .line 69
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v12

    .line 73
    goto :goto_2

    .line 74
    :cond_0
    move v12, v4

    .line 75
    :goto_2
    xor-int/2addr v12, v13

    .line 76
    add-int/2addr v6, v12

    .line 77
    :cond_1
    shr-long/2addr v7, v10

    .line 78
    add-int/lit8 v11, v11, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    if-ne v9, v10, :cond_3

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    return v6

    .line 85
    :cond_4
    :goto_3
    if-eq v5, v3, :cond_5

    .line 86
    .line 87
    add-int/lit8 v5, v5, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    return v6

    .line 91
    :cond_6
    return v4
.end method

.method public final initializeStorage(I)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lez p1, :cond_0

    .line 3
    .line 4
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->normalizeCapacity(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v1, 0x7

    .line 9
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p1, v0

    .line 15
    :goto_0
    iput p1, p0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    add-int/lit8 v1, p1, 0xf

    .line 23
    .line 24
    and-int/lit8 v1, v1, -0x8

    .line 25
    .line 26
    shr-int/lit8 v1, v1, 0x3

    .line 27
    .line 28
    new-array v2, v1, [J

    .line 29
    .line 30
    const-wide v3, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    invoke-static {v2, v0, v1, v3, v4}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 36
    .line 37
    .line 38
    move-object v0, v2

    .line 39
    :goto_1
    iput-object v0, p0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 40
    .line 41
    shr-int/lit8 v1, p1, 0x3

    .line 42
    .line 43
    and-int/lit8 v2, p1, 0x7

    .line 44
    .line 45
    shl-int/lit8 v2, v2, 0x3

    .line 46
    .line 47
    aget-wide v3, v0, v1

    .line 48
    .line 49
    const-wide/16 v5, 0xff

    .line 50
    .line 51
    shl-long/2addr v5, v2

    .line 52
    not-long v7, v5

    .line 53
    and-long/2addr v3, v7

    .line 54
    or-long/2addr v3, v5

    .line 55
    aput-wide v3, v0, v1

    .line 56
    .line 57
    iget v0, p0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 58
    .line 59
    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iget v1, p0, Landroidx/collection/MutableLongObjectMap;->_size:I

    .line 64
    .line 65
    sub-int/2addr v0, v1

    .line 66
    iput v0, p0, Landroidx/collection/MutableLongObjectMap;->growthLimit:I

    .line 67
    .line 68
    new-array v0, p1, [J

    .line 69
    .line 70
    iput-object v0, p0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    .line 71
    .line 72
    new-array p1, p1, [Ljava/lang/Object;

    .line 73
    .line 74
    iput-object p1, p0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    .line 75
    .line 76
    return-void
.end method

.method public final remove(J)Ljava/lang/Object;
    .locals 14

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    ushr-long v0, p1, v0

    .line 4
    .line 5
    xor-long/2addr v0, p1

    .line 6
    long-to-int v0, v0

    .line 7
    const v1, -0x3361d2af    # -8.293031E7f

    .line 8
    .line 9
    .line 10
    mul-int/2addr v0, v1

    .line 11
    shl-int/lit8 v1, v0, 0x10

    .line 12
    .line 13
    xor-int/2addr v0, v1

    .line 14
    and-int/lit8 v1, v0, 0x7f

    .line 15
    .line 16
    iget v2, p0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 17
    .line 18
    ushr-int/lit8 v0, v0, 0x7

    .line 19
    .line 20
    and-int/2addr v0, v2

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    iget-object v4, p0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 23
    .line 24
    shr-int/lit8 v5, v0, 0x3

    .line 25
    .line 26
    and-int/lit8 v6, v0, 0x7

    .line 27
    .line 28
    shl-int/lit8 v6, v6, 0x3

    .line 29
    .line 30
    aget-wide v7, v4, v5

    .line 31
    .line 32
    ushr-long/2addr v7, v6

    .line 33
    add-int/lit8 v5, v5, 0x1

    .line 34
    .line 35
    aget-wide v9, v4, v5

    .line 36
    .line 37
    rsub-int/lit8 v4, v6, 0x40

    .line 38
    .line 39
    shl-long v4, v9, v4

    .line 40
    .line 41
    int-to-long v9, v6

    .line 42
    neg-long v9, v9

    .line 43
    const/16 v6, 0x3f

    .line 44
    .line 45
    shr-long/2addr v9, v6

    .line 46
    and-long/2addr v4, v9

    .line 47
    or-long/2addr v4, v7

    .line 48
    int-to-long v6, v1

    .line 49
    const-wide v8, 0x101010101010101L

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    mul-long/2addr v6, v8

    .line 55
    xor-long/2addr v6, v4

    .line 56
    sub-long v8, v6, v8

    .line 57
    .line 58
    not-long v6, v6

    .line 59
    and-long/2addr v6, v8

    .line 60
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    and-long/2addr v6, v8

    .line 66
    :goto_1
    const-wide/16 v10, 0x0

    .line 67
    .line 68
    cmp-long v12, v6, v10

    .line 69
    .line 70
    if-eqz v12, :cond_1

    .line 71
    .line 72
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    shr-int/lit8 v10, v10, 0x3

    .line 77
    .line 78
    add-int/2addr v10, v0

    .line 79
    and-int/2addr v10, v2

    .line 80
    iget-object v11, p0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    .line 81
    .line 82
    aget-wide v12, v11, v10

    .line 83
    .line 84
    cmp-long v11, v12, p1

    .line 85
    .line 86
    if-nez v11, :cond_0

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_0
    const-wide/16 v10, 0x1

    .line 90
    .line 91
    sub-long v10, v6, v10

    .line 92
    .line 93
    and-long/2addr v6, v10

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    not-long v6, v4

    .line 96
    const/4 v12, 0x6

    .line 97
    shl-long/2addr v6, v12

    .line 98
    and-long/2addr v4, v6

    .line 99
    and-long/2addr v4, v8

    .line 100
    cmp-long v4, v4, v10

    .line 101
    .line 102
    if-eqz v4, :cond_3

    .line 103
    .line 104
    const/4 v10, -0x1

    .line 105
    :goto_2
    const/4 v0, 0x0

    .line 106
    if-ltz v10, :cond_2

    .line 107
    .line 108
    iget v1, p0, Landroidx/collection/MutableLongObjectMap;->_size:I

    .line 109
    .line 110
    add-int/lit8 v1, v1, -0x1

    .line 111
    .line 112
    iput v1, p0, Landroidx/collection/MutableLongObjectMap;->_size:I

    .line 113
    .line 114
    iget-object v1, p0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 115
    .line 116
    iget v2, p0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 117
    .line 118
    shr-int/lit8 v3, v10, 0x3

    .line 119
    .line 120
    and-int/lit8 v4, v10, 0x7

    .line 121
    .line 122
    shl-int/lit8 v4, v4, 0x3

    .line 123
    .line 124
    aget-wide v5, v1, v3

    .line 125
    .line 126
    const-wide/16 v7, 0xff

    .line 127
    .line 128
    shl-long/2addr v7, v4

    .line 129
    not-long v7, v7

    .line 130
    and-long/2addr v5, v7

    .line 131
    const-wide/16 v7, 0xfe

    .line 132
    .line 133
    shl-long/2addr v7, v4

    .line 134
    or-long/2addr v5, v7

    .line 135
    aput-wide v5, v1, v3

    .line 136
    .line 137
    add-int/lit8 v3, v10, -0x7

    .line 138
    .line 139
    and-int/2addr v3, v2

    .line 140
    and-int/lit8 v2, v2, 0x7

    .line 141
    .line 142
    add-int/2addr v3, v2

    .line 143
    shr-int/lit8 v2, v3, 0x3

    .line 144
    .line 145
    aput-wide v5, v1, v2

    .line 146
    .line 147
    iget-object p0, p0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    .line 148
    .line 149
    aget-object v1, p0, v10

    .line 150
    .line 151
    aput-object v0, p0, v10

    .line 152
    .line 153
    return-object v1

    .line 154
    :cond_2
    return-object v0

    .line 155
    :cond_3
    add-int/lit8 v3, v3, 0x8

    .line 156
    .line 157
    add-int/2addr v0, v3

    .line 158
    and-int/2addr v0, v2

    .line 159
    goto/16 :goto_0
.end method

.method public final set(JLjava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableLongObjectMap;->findAbsoluteInsertIndex(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    .line 6
    .line 7
    aput-wide p1, v1, v0

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    .line 10
    .line 11
    aput-object p3, p0, v0

    .line 12
    .line 13
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/collection/MutableLongObjectMap;->_size:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "{}"

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v2, "{"

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, v0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    .line 20
    .line 21
    iget-object v3, v0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v4, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 24
    .line 25
    array-length v5, v4

    .line 26
    add-int/lit8 v5, v5, -0x2

    .line 27
    .line 28
    if-ltz v5, :cond_6

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    :goto_0
    aget-wide v9, v4, v7

    .line 33
    .line 34
    not-long v11, v9

    .line 35
    const/4 v13, 0x7

    .line 36
    shl-long/2addr v11, v13

    .line 37
    and-long/2addr v11, v9

    .line 38
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    and-long/2addr v11, v13

    .line 44
    cmp-long v11, v11, v13

    .line 45
    .line 46
    if-eqz v11, :cond_5

    .line 47
    .line 48
    sub-int v11, v7, v5

    .line 49
    .line 50
    not-int v11, v11

    .line 51
    ushr-int/lit8 v11, v11, 0x1f

    .line 52
    .line 53
    const/16 v12, 0x8

    .line 54
    .line 55
    rsub-int/lit8 v11, v11, 0x8

    .line 56
    .line 57
    const/4 v13, 0x0

    .line 58
    :goto_1
    if-ge v13, v11, :cond_4

    .line 59
    .line 60
    const-wide/16 v14, 0xff

    .line 61
    .line 62
    and-long/2addr v14, v9

    .line 63
    const-wide/16 v16, 0x80

    .line 64
    .line 65
    cmp-long v14, v14, v16

    .line 66
    .line 67
    if-gez v14, :cond_2

    .line 68
    .line 69
    shl-int/lit8 v14, v7, 0x3

    .line 70
    .line 71
    add-int/2addr v14, v13

    .line 72
    move/from16 v16, v7

    .line 73
    .line 74
    aget-wide v6, v2, v14

    .line 75
    .line 76
    aget-object v14, v3, v14

    .line 77
    .line 78
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v6, "="

    .line 82
    .line 83
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    if-ne v14, v0, :cond_1

    .line 87
    .line 88
    const-string v14, "(this)"

    .line 89
    .line 90
    :cond_1
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    add-int/lit8 v8, v8, 0x1

    .line 94
    .line 95
    iget v6, v0, Landroidx/collection/MutableLongObjectMap;->_size:I

    .line 96
    .line 97
    if-ge v8, v6, :cond_3

    .line 98
    .line 99
    const-string v6, ", "

    .line 100
    .line 101
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    move/from16 v16, v7

    .line 106
    .line 107
    :cond_3
    :goto_2
    shr-long/2addr v9, v12

    .line 108
    add-int/lit8 v13, v13, 0x1

    .line 109
    .line 110
    move/from16 v7, v16

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    move/from16 v16, v7

    .line 114
    .line 115
    if-ne v11, v12, :cond_6

    .line 116
    .line 117
    move/from16 v6, v16

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_5
    move v6, v7

    .line 121
    :goto_3
    if-eq v6, v5, :cond_6

    .line 122
    .line 123
    add-int/lit8 v7, v6, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_6
    const/16 v0, 0x7d

    .line 127
    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    return-object v0
.end method
