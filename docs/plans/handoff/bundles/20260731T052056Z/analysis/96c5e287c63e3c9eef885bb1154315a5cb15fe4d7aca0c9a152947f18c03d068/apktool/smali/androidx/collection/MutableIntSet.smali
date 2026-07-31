.class public final Landroidx/collection/MutableIntSet;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public _capacity:I

.field public _size:I

.field public elements:[I

.field public growthLimit:I

.field public metadata:[J


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    .line 34
    invoke-direct {p0, v0}, Landroidx/collection/MutableIntSet;-><init>(I)V

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
    iput-object v0, p0, Landroidx/collection/MutableIntSet;->metadata:[J

    .line 7
    .line 8
    sget-object v0, Landroidx/collection/IntSetKt;->EmptyIntArray:[I

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/collection/MutableIntSet;->elements:[I

    .line 11
    .line 12
    if-ltz p1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->unloadedCapacity(I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntSet;->initializeStorage(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    const-string p0, "Capacity must be a positive value."

    .line 28
    .line 29
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    throw p0
.end method


# virtual methods
.method public final add(I)Z
    .locals 3

    .line 1
    iget v0, p0, Landroidx/collection/MutableIntSet;->_size:I

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntSet;->findAbsoluteInsertIndex(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Landroidx/collection/MutableIntSet;->elements:[I

    .line 8
    .line 9
    aput p1, v2, v1

    .line 10
    .line 11
    iget p0, p0, Landroidx/collection/MutableIntSet;->_size:I

    .line 12
    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final clear()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/collection/MutableIntSet;->_size:I

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/collection/MutableIntSet;->metadata:[J

    .line 5
    .line 6
    sget-object v1, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const-wide v1, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->fill$default([JJ)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/collection/MutableIntSet;->metadata:[J

    .line 19
    .line 20
    iget v1, p0, Landroidx/collection/MutableIntSet;->_capacity:I

    .line 21
    .line 22
    shr-int/lit8 v2, v1, 0x3

    .line 23
    .line 24
    and-int/lit8 v1, v1, 0x7

    .line 25
    .line 26
    shl-int/lit8 v1, v1, 0x3

    .line 27
    .line 28
    aget-wide v3, v0, v2

    .line 29
    .line 30
    const-wide/16 v5, 0xff

    .line 31
    .line 32
    shl-long/2addr v5, v1

    .line 33
    not-long v7, v5

    .line 34
    and-long/2addr v3, v7

    .line 35
    or-long/2addr v3, v5

    .line 36
    aput-wide v3, v0, v2

    .line 37
    .line 38
    :cond_0
    iget v0, p0, Landroidx/collection/MutableIntSet;->_capacity:I

    .line 39
    .line 40
    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget v1, p0, Landroidx/collection/MutableIntSet;->_size:I

    .line 45
    .line 46
    sub-int/2addr v0, v1

    .line 47
    iput v0, p0, Landroidx/collection/MutableIntSet;->growthLimit:I

    .line 48
    .line 49
    return-void
.end method

.method public final contains(I)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const v2, -0x3361d2af    # -8.293031E7f

    .line 6
    .line 7
    .line 8
    mul-int/2addr v2, v1

    .line 9
    shl-int/lit8 v3, v2, 0x10

    .line 10
    .line 11
    xor-int/2addr v2, v3

    .line 12
    and-int/lit8 v3, v2, 0x7f

    .line 13
    .line 14
    iget v4, v0, Landroidx/collection/MutableIntSet;->_capacity:I

    .line 15
    .line 16
    ushr-int/lit8 v2, v2, 0x7

    .line 17
    .line 18
    and-int/2addr v2, v4

    .line 19
    const/4 v5, 0x0

    .line 20
    move v6, v5

    .line 21
    :goto_0
    iget-object v7, v0, Landroidx/collection/MutableIntSet;->metadata:[J

    .line 22
    .line 23
    shr-int/lit8 v8, v2, 0x3

    .line 24
    .line 25
    and-int/lit8 v9, v2, 0x7

    .line 26
    .line 27
    shl-int/lit8 v9, v9, 0x3

    .line 28
    .line 29
    aget-wide v10, v7, v8

    .line 30
    .line 31
    ushr-long/2addr v10, v9

    .line 32
    const/4 v12, 0x1

    .line 33
    add-int/2addr v8, v12

    .line 34
    aget-wide v13, v7, v8

    .line 35
    .line 36
    rsub-int/lit8 v7, v9, 0x40

    .line 37
    .line 38
    shl-long v7, v13, v7

    .line 39
    .line 40
    int-to-long v13, v9

    .line 41
    neg-long v13, v13

    .line 42
    const/16 v9, 0x3f

    .line 43
    .line 44
    shr-long/2addr v13, v9

    .line 45
    and-long/2addr v7, v13

    .line 46
    or-long/2addr v7, v10

    .line 47
    int-to-long v9, v3

    .line 48
    const-wide v13, 0x101010101010101L

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    mul-long/2addr v9, v13

    .line 54
    xor-long/2addr v9, v7

    .line 55
    sub-long v13, v9, v13

    .line 56
    .line 57
    not-long v9, v9

    .line 58
    and-long/2addr v9, v13

    .line 59
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    and-long/2addr v9, v13

    .line 65
    :goto_1
    const-wide/16 v15, 0x0

    .line 66
    .line 67
    cmp-long v11, v9, v15

    .line 68
    .line 69
    if-eqz v11, :cond_1

    .line 70
    .line 71
    invoke-static {v9, v10}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    shr-int/lit8 v11, v11, 0x3

    .line 76
    .line 77
    add-int/2addr v11, v2

    .line 78
    and-int/2addr v11, v4

    .line 79
    iget-object v15, v0, Landroidx/collection/MutableIntSet;->elements:[I

    .line 80
    .line 81
    aget v15, v15, v11

    .line 82
    .line 83
    if-ne v15, v1, :cond_0

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_0
    const-wide/16 v15, 0x1

    .line 87
    .line 88
    sub-long v15, v9, v15

    .line 89
    .line 90
    and-long/2addr v9, v15

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    not-long v9, v7

    .line 93
    const/4 v11, 0x6

    .line 94
    shl-long/2addr v9, v11

    .line 95
    and-long/2addr v7, v9

    .line 96
    and-long/2addr v7, v13

    .line 97
    cmp-long v7, v7, v15

    .line 98
    .line 99
    if-eqz v7, :cond_3

    .line 100
    .line 101
    const/4 v11, -0x1

    .line 102
    :goto_2
    if-ltz v11, :cond_2

    .line 103
    .line 104
    return v12

    .line 105
    :cond_2
    return v5

    .line 106
    :cond_3
    add-int/lit8 v6, v6, 0x8

    .line 107
    .line 108
    add-int/2addr v2, v6

    .line 109
    and-int/2addr v2, v4

    .line 110
    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/collection/MutableIntSet;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/collection/MutableIntSet;

    .line 12
    .line 13
    iget v1, p1, Landroidx/collection/MutableIntSet;->_size:I

    .line 14
    .line 15
    iget v3, p0, Landroidx/collection/MutableIntSet;->_size:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Landroidx/collection/MutableIntSet;->elements:[I

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/collection/MutableIntSet;->metadata:[J

    .line 23
    .line 24
    array-length v3, p0

    .line 25
    add-int/lit8 v3, v3, -0x2

    .line 26
    .line 27
    if-ltz v3, :cond_6

    .line 28
    .line 29
    move v4, v2

    .line 30
    :goto_0
    aget-wide v5, p0, v4

    .line 31
    .line 32
    not-long v7, v5

    .line 33
    const/4 v9, 0x7

    .line 34
    shl-long/2addr v7, v9

    .line 35
    and-long/2addr v7, v5

    .line 36
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    and-long/2addr v7, v9

    .line 42
    cmp-long v7, v7, v9

    .line 43
    .line 44
    if-eqz v7, :cond_5

    .line 45
    .line 46
    sub-int v7, v4, v3

    .line 47
    .line 48
    not-int v7, v7

    .line 49
    ushr-int/lit8 v7, v7, 0x1f

    .line 50
    .line 51
    const/16 v8, 0x8

    .line 52
    .line 53
    rsub-int/lit8 v7, v7, 0x8

    .line 54
    .line 55
    move v9, v2

    .line 56
    :goto_1
    if-ge v9, v7, :cond_4

    .line 57
    .line 58
    const-wide/16 v10, 0xff

    .line 59
    .line 60
    and-long/2addr v10, v5

    .line 61
    const-wide/16 v12, 0x80

    .line 62
    .line 63
    cmp-long v10, v10, v12

    .line 64
    .line 65
    if-gez v10, :cond_3

    .line 66
    .line 67
    shl-int/lit8 v10, v4, 0x3

    .line 68
    .line 69
    add-int/2addr v10, v9

    .line 70
    aget v10, v1, v10

    .line 71
    .line 72
    invoke-virtual {p1, v10}, Landroidx/collection/MutableIntSet;->contains(I)Z

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    if-nez v10, :cond_3

    .line 77
    .line 78
    return v2

    .line 79
    :cond_3
    shr-long/2addr v5, v8

    .line 80
    add-int/lit8 v9, v9, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    if-ne v7, v8, :cond_6

    .line 84
    .line 85
    :cond_5
    if-eq v4, v3, :cond_6

    .line 86
    .line 87
    add-int/lit8 v4, v4, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_6
    return v0
.end method

.method public final findAbsoluteInsertIndex(I)I
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const v2, -0x3361d2af    # -8.293031E7f

    .line 6
    .line 7
    .line 8
    mul-int v3, v1, v2

    .line 9
    .line 10
    shl-int/lit8 v4, v3, 0x10

    .line 11
    .line 12
    xor-int/2addr v3, v4

    .line 13
    ushr-int/lit8 v4, v3, 0x7

    .line 14
    .line 15
    and-int/lit8 v3, v3, 0x7f

    .line 16
    .line 17
    iget v5, v0, Landroidx/collection/MutableIntSet;->_capacity:I

    .line 18
    .line 19
    and-int v6, v4, v5

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    :goto_0
    iget-object v9, v0, Landroidx/collection/MutableIntSet;->metadata:[J

    .line 23
    .line 24
    shr-int/lit8 v10, v6, 0x3

    .line 25
    .line 26
    and-int/lit8 v11, v6, 0x7

    .line 27
    .line 28
    shl-int/lit8 v11, v11, 0x3

    .line 29
    .line 30
    aget-wide v12, v9, v10

    .line 31
    .line 32
    ushr-long/2addr v12, v11

    .line 33
    const/4 v14, 0x1

    .line 34
    add-int/2addr v10, v14

    .line 35
    aget-wide v15, v9, v10

    .line 36
    .line 37
    rsub-int/lit8 v9, v11, 0x40

    .line 38
    .line 39
    shl-long v9, v15, v9

    .line 40
    .line 41
    move/from16 v16, v8

    .line 42
    .line 43
    const/4 v15, 0x0

    .line 44
    int-to-long v7, v11

    .line 45
    neg-long v7, v7

    .line 46
    const/16 v11, 0x3f

    .line 47
    .line 48
    shr-long/2addr v7, v11

    .line 49
    and-long/2addr v7, v9

    .line 50
    or-long/2addr v7, v12

    .line 51
    int-to-long v9, v3

    .line 52
    const-wide v11, 0x101010101010101L

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    mul-long v17, v9, v11

    .line 58
    .line 59
    move v13, v2

    .line 60
    move/from16 v19, v3

    .line 61
    .line 62
    xor-long v2, v7, v17

    .line 63
    .line 64
    sub-long v11, v2, v11

    .line 65
    .line 66
    not-long v2, v2

    .line 67
    and-long/2addr v2, v11

    .line 68
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    and-long/2addr v2, v11

    .line 74
    :goto_1
    const-wide/16 v17, 0x0

    .line 75
    .line 76
    cmp-long v20, v2, v17

    .line 77
    .line 78
    if-eqz v20, :cond_1

    .line 79
    .line 80
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 81
    .line 82
    .line 83
    move-result v17

    .line 84
    shr-int/lit8 v17, v17, 0x3

    .line 85
    .line 86
    add-int v17, v6, v17

    .line 87
    .line 88
    and-int v17, v17, v5

    .line 89
    .line 90
    move-wide/from16 v20, v11

    .line 91
    .line 92
    iget-object v11, v0, Landroidx/collection/MutableIntSet;->elements:[I

    .line 93
    .line 94
    aget v11, v11, v17

    .line 95
    .line 96
    if-ne v11, v1, :cond_0

    .line 97
    .line 98
    return v17

    .line 99
    :cond_0
    const-wide/16 v11, 0x1

    .line 100
    .line 101
    sub-long v11, v2, v11

    .line 102
    .line 103
    and-long/2addr v2, v11

    .line 104
    move-wide/from16 v11, v20

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    move-wide/from16 v20, v11

    .line 108
    .line 109
    not-long v2, v7

    .line 110
    const/4 v11, 0x6

    .line 111
    shl-long/2addr v2, v11

    .line 112
    and-long/2addr v2, v7

    .line 113
    and-long v2, v2, v20

    .line 114
    .line 115
    cmp-long v2, v2, v17

    .line 116
    .line 117
    const/16 v3, 0x8

    .line 118
    .line 119
    if-eqz v2, :cond_f

    .line 120
    .line 121
    invoke-virtual {v0, v4}, Landroidx/collection/MutableIntSet;->findFirstAvailableSlot(I)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    iget v2, v0, Landroidx/collection/MutableIntSet;->growthLimit:I

    .line 126
    .line 127
    const-wide/16 v7, 0xff

    .line 128
    .line 129
    if-nez v2, :cond_2

    .line 130
    .line 131
    iget-object v2, v0, Landroidx/collection/MutableIntSet;->metadata:[J

    .line 132
    .line 133
    shr-int/lit8 v12, v1, 0x3

    .line 134
    .line 135
    aget-wide v16, v2, v12

    .line 136
    .line 137
    and-int/lit8 v2, v1, 0x7

    .line 138
    .line 139
    shl-int/lit8 v2, v2, 0x3

    .line 140
    .line 141
    shr-long v16, v16, v2

    .line 142
    .line 143
    and-long v16, v16, v7

    .line 144
    .line 145
    const-wide/16 v18, 0xfe

    .line 146
    .line 147
    cmp-long v2, v16, v18

    .line 148
    .line 149
    if-nez v2, :cond_3

    .line 150
    .line 151
    :cond_2
    move-wide/from16 v26, v7

    .line 152
    .line 153
    move/from16 v31, v14

    .line 154
    .line 155
    const/16 p1, 0x7

    .line 156
    .line 157
    const-wide/16 v16, 0x80

    .line 158
    .line 159
    goto/16 :goto_b

    .line 160
    .line 161
    :cond_3
    iget v1, v0, Landroidx/collection/MutableIntSet;->_capacity:I

    .line 162
    .line 163
    if-le v1, v3, :cond_c

    .line 164
    .line 165
    iget v2, v0, Landroidx/collection/MutableIntSet;->_size:I

    .line 166
    .line 167
    const-wide/16 v16, 0x80

    .line 168
    .line 169
    int-to-long v5, v2

    .line 170
    const-wide/16 v22, 0x20

    .line 171
    .line 172
    mul-long v5, v5, v22

    .line 173
    .line 174
    int-to-long v1, v1

    .line 175
    const-wide/16 v22, 0x19

    .line 176
    .line 177
    mul-long v1, v1, v22

    .line 178
    .line 179
    const-wide/high16 v22, -0x8000000000000000L

    .line 180
    .line 181
    xor-long v5, v5, v22

    .line 182
    .line 183
    xor-long v1, v1, v22

    .line 184
    .line 185
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Long;->compare(JJ)I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-gtz v1, :cond_b

    .line 190
    .line 191
    iget-object v1, v0, Landroidx/collection/MutableIntSet;->metadata:[J

    .line 192
    .line 193
    iget v2, v0, Landroidx/collection/MutableIntSet;->_capacity:I

    .line 194
    .line 195
    iget-object v5, v0, Landroidx/collection/MutableIntSet;->elements:[I

    .line 196
    .line 197
    add-int/lit8 v6, v2, 0x7

    .line 198
    .line 199
    shr-int/lit8 v6, v6, 0x3

    .line 200
    .line 201
    move v12, v15

    .line 202
    :goto_2
    if-ge v12, v6, :cond_4

    .line 203
    .line 204
    aget-wide v24, v1, v12

    .line 205
    .line 206
    move-wide/from16 v26, v7

    .line 207
    .line 208
    and-long v7, v24, v20

    .line 209
    .line 210
    move/from16 v24, v12

    .line 211
    .line 212
    const/16 p1, 0x7

    .line 213
    .line 214
    not-long v11, v7

    .line 215
    ushr-long v7, v7, p1

    .line 216
    .line 217
    add-long/2addr v11, v7

    .line 218
    const-wide v7, -0x101010101010102L

    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    and-long/2addr v7, v11

    .line 224
    aput-wide v7, v1, v24

    .line 225
    .line 226
    add-int/lit8 v12, v24, 0x1

    .line 227
    .line 228
    move-wide/from16 v7, v26

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_4
    move-wide/from16 v26, v7

    .line 232
    .line 233
    const/16 p1, 0x7

    .line 234
    .line 235
    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->getLastIndex([J)I

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    add-int/lit8 v7, v6, -0x1

    .line 240
    .line 241
    aget-wide v11, v1, v7

    .line 242
    .line 243
    const-wide v20, 0xffffffffffffffL

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    and-long v11, v11, v20

    .line 249
    .line 250
    const-wide/high16 v24, -0x100000000000000L

    .line 251
    .line 252
    or-long v11, v11, v24

    .line 253
    .line 254
    aput-wide v11, v1, v7

    .line 255
    .line 256
    aget-wide v7, v1, v15

    .line 257
    .line 258
    aput-wide v7, v1, v6

    .line 259
    .line 260
    move v6, v15

    .line 261
    :goto_3
    if-eq v6, v2, :cond_9

    .line 262
    .line 263
    shr-int/lit8 v7, v6, 0x3

    .line 264
    .line 265
    aget-wide v11, v1, v7

    .line 266
    .line 267
    and-int/lit8 v8, v6, 0x7

    .line 268
    .line 269
    shl-int/lit8 v8, v8, 0x3

    .line 270
    .line 271
    shr-long/2addr v11, v8

    .line 272
    and-long v11, v11, v26

    .line 273
    .line 274
    cmp-long v24, v11, v16

    .line 275
    .line 276
    if-nez v24, :cond_5

    .line 277
    .line 278
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_5
    cmp-long v11, v11, v18

    .line 282
    .line 283
    if-eqz v11, :cond_6

    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_6
    aget v11, v5, v6

    .line 287
    .line 288
    mul-int/2addr v11, v13

    .line 289
    shl-int/lit8 v12, v11, 0x10

    .line 290
    .line 291
    xor-int/2addr v11, v12

    .line 292
    ushr-int/lit8 v12, v11, 0x7

    .line 293
    .line 294
    invoke-virtual {v0, v12}, Landroidx/collection/MutableIntSet;->findFirstAvailableSlot(I)I

    .line 295
    .line 296
    .line 297
    move-result v24

    .line 298
    and-int/2addr v12, v2

    .line 299
    sub-int v25, v24, v12

    .line 300
    .line 301
    and-int v25, v25, v2

    .line 302
    .line 303
    move/from16 v28, v3

    .line 304
    .line 305
    div-int/lit8 v3, v25, 0x8

    .line 306
    .line 307
    sub-int v12, v6, v12

    .line 308
    .line 309
    and-int/2addr v12, v2

    .line 310
    div-int/lit8 v12, v12, 0x8

    .line 311
    .line 312
    if-ne v3, v12, :cond_7

    .line 313
    .line 314
    and-int/lit8 v3, v11, 0x7f

    .line 315
    .line 316
    int-to-long v11, v3

    .line 317
    aget-wide v24, v1, v7

    .line 318
    .line 319
    move/from16 v29, v13

    .line 320
    .line 321
    move v3, v14

    .line 322
    shl-long v13, v26, v8

    .line 323
    .line 324
    not-long v13, v13

    .line 325
    and-long v13, v24, v13

    .line 326
    .line 327
    shl-long/2addr v11, v8

    .line 328
    or-long/2addr v11, v13

    .line 329
    aput-wide v11, v1, v7

    .line 330
    .line 331
    array-length v7, v1

    .line 332
    sub-int/2addr v7, v3

    .line 333
    aget-wide v11, v1, v15

    .line 334
    .line 335
    and-long v11, v11, v20

    .line 336
    .line 337
    or-long v11, v11, v22

    .line 338
    .line 339
    aput-wide v11, v1, v7

    .line 340
    .line 341
    add-int/lit8 v6, v6, 0x1

    .line 342
    .line 343
    move v14, v3

    .line 344
    move/from16 v3, v28

    .line 345
    .line 346
    move/from16 v13, v29

    .line 347
    .line 348
    goto :goto_3

    .line 349
    :cond_7
    move/from16 v29, v13

    .line 350
    .line 351
    move v3, v14

    .line 352
    shr-int/lit8 v12, v24, 0x3

    .line 353
    .line 354
    aget-wide v13, v1, v12

    .line 355
    .line 356
    and-int/lit8 v25, v24, 0x7

    .line 357
    .line 358
    shl-int/lit8 v25, v25, 0x3

    .line 359
    .line 360
    shr-long v30, v13, v25

    .line 361
    .line 362
    and-long v30, v30, v26

    .line 363
    .line 364
    cmp-long v30, v30, v16

    .line 365
    .line 366
    if-nez v30, :cond_8

    .line 367
    .line 368
    and-int/lit8 v11, v11, 0x7f

    .line 369
    .line 370
    move/from16 v31, v3

    .line 371
    .line 372
    move/from16 v30, v4

    .line 373
    .line 374
    int-to-long v3, v11

    .line 375
    move/from16 v32, v2

    .line 376
    .line 377
    move-wide/from16 v33, v3

    .line 378
    .line 379
    shl-long v2, v26, v25

    .line 380
    .line 381
    not-long v2, v2

    .line 382
    and-long/2addr v2, v13

    .line 383
    shl-long v13, v33, v25

    .line 384
    .line 385
    or-long/2addr v2, v13

    .line 386
    aput-wide v2, v1, v12

    .line 387
    .line 388
    aget-wide v2, v1, v7

    .line 389
    .line 390
    shl-long v11, v26, v8

    .line 391
    .line 392
    not-long v11, v11

    .line 393
    and-long/2addr v2, v11

    .line 394
    shl-long v11, v16, v8

    .line 395
    .line 396
    or-long/2addr v2, v11

    .line 397
    aput-wide v2, v1, v7

    .line 398
    .line 399
    aget v2, v5, v6

    .line 400
    .line 401
    aput v2, v5, v24

    .line 402
    .line 403
    aput v15, v5, v6

    .line 404
    .line 405
    goto :goto_5

    .line 406
    :cond_8
    move/from16 v32, v2

    .line 407
    .line 408
    move/from16 v31, v3

    .line 409
    .line 410
    move/from16 v30, v4

    .line 411
    .line 412
    and-int/lit8 v2, v11, 0x7f

    .line 413
    .line 414
    int-to-long v2, v2

    .line 415
    shl-long v7, v26, v25

    .line 416
    .line 417
    not-long v7, v7

    .line 418
    and-long/2addr v7, v13

    .line 419
    shl-long v2, v2, v25

    .line 420
    .line 421
    or-long/2addr v2, v7

    .line 422
    aput-wide v2, v1, v12

    .line 423
    .line 424
    aget v2, v5, v24

    .line 425
    .line 426
    aget v3, v5, v6

    .line 427
    .line 428
    aput v3, v5, v24

    .line 429
    .line 430
    aput v2, v5, v6

    .line 431
    .line 432
    add-int/lit8 v6, v6, -0x1

    .line 433
    .line 434
    :goto_5
    array-length v2, v1

    .line 435
    add-int/lit8 v2, v2, -0x1

    .line 436
    .line 437
    aget-wide v3, v1, v15

    .line 438
    .line 439
    and-long v3, v3, v20

    .line 440
    .line 441
    or-long v3, v3, v22

    .line 442
    .line 443
    aput-wide v3, v1, v2

    .line 444
    .line 445
    add-int/lit8 v6, v6, 0x1

    .line 446
    .line 447
    move/from16 v3, v28

    .line 448
    .line 449
    move/from16 v13, v29

    .line 450
    .line 451
    move/from16 v4, v30

    .line 452
    .line 453
    move/from16 v14, v31

    .line 454
    .line 455
    move/from16 v2, v32

    .line 456
    .line 457
    goto/16 :goto_3

    .line 458
    .line 459
    :cond_9
    move/from16 v30, v4

    .line 460
    .line 461
    move/from16 v31, v14

    .line 462
    .line 463
    iget v1, v0, Landroidx/collection/MutableIntSet;->_capacity:I

    .line 464
    .line 465
    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    iget v2, v0, Landroidx/collection/MutableIntSet;->_size:I

    .line 470
    .line 471
    sub-int/2addr v1, v2

    .line 472
    iput v1, v0, Landroidx/collection/MutableIntSet;->growthLimit:I

    .line 473
    .line 474
    :cond_a
    move/from16 v2, v30

    .line 475
    .line 476
    goto/16 :goto_a

    .line 477
    .line 478
    :cond_b
    :goto_6
    move/from16 v30, v4

    .line 479
    .line 480
    move-wide/from16 v26, v7

    .line 481
    .line 482
    move/from16 v29, v13

    .line 483
    .line 484
    move/from16 v31, v14

    .line 485
    .line 486
    const/16 p1, 0x7

    .line 487
    .line 488
    goto :goto_7

    .line 489
    :cond_c
    const-wide/16 v16, 0x80

    .line 490
    .line 491
    goto :goto_6

    .line 492
    :goto_7
    iget v1, v0, Landroidx/collection/MutableIntSet;->_capacity:I

    .line 493
    .line 494
    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    iget-object v2, v0, Landroidx/collection/MutableIntSet;->metadata:[J

    .line 499
    .line 500
    iget-object v3, v0, Landroidx/collection/MutableIntSet;->elements:[I

    .line 501
    .line 502
    iget v4, v0, Landroidx/collection/MutableIntSet;->_capacity:I

    .line 503
    .line 504
    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntSet;->initializeStorage(I)V

    .line 505
    .line 506
    .line 507
    iget-object v1, v0, Landroidx/collection/MutableIntSet;->metadata:[J

    .line 508
    .line 509
    iget-object v5, v0, Landroidx/collection/MutableIntSet;->elements:[I

    .line 510
    .line 511
    iget v6, v0, Landroidx/collection/MutableIntSet;->_capacity:I

    .line 512
    .line 513
    move v7, v15

    .line 514
    :goto_8
    if-ge v7, v4, :cond_a

    .line 515
    .line 516
    shr-int/lit8 v8, v7, 0x3

    .line 517
    .line 518
    aget-wide v11, v2, v8

    .line 519
    .line 520
    and-int/lit8 v8, v7, 0x7

    .line 521
    .line 522
    shl-int/lit8 v8, v8, 0x3

    .line 523
    .line 524
    shr-long/2addr v11, v8

    .line 525
    and-long v11, v11, v26

    .line 526
    .line 527
    cmp-long v8, v11, v16

    .line 528
    .line 529
    if-gez v8, :cond_d

    .line 530
    .line 531
    aget v8, v3, v7

    .line 532
    .line 533
    mul-int v11, v8, v29

    .line 534
    .line 535
    shl-int/lit8 v12, v11, 0x10

    .line 536
    .line 537
    xor-int/2addr v11, v12

    .line 538
    ushr-int/lit8 v12, v11, 0x7

    .line 539
    .line 540
    invoke-virtual {v0, v12}, Landroidx/collection/MutableIntSet;->findFirstAvailableSlot(I)I

    .line 541
    .line 542
    .line 543
    move-result v12

    .line 544
    and-int/lit8 v11, v11, 0x7f

    .line 545
    .line 546
    int-to-long v13, v11

    .line 547
    shr-int/lit8 v11, v12, 0x3

    .line 548
    .line 549
    and-int/lit8 v18, v12, 0x7

    .line 550
    .line 551
    shl-int/lit8 v18, v18, 0x3

    .line 552
    .line 553
    aget-wide v19, v1, v11

    .line 554
    .line 555
    move-object/from16 v22, v1

    .line 556
    .line 557
    move-object/from16 v21, v2

    .line 558
    .line 559
    shl-long v1, v26, v18

    .line 560
    .line 561
    not-long v1, v1

    .line 562
    and-long v1, v19, v1

    .line 563
    .line 564
    shl-long v13, v13, v18

    .line 565
    .line 566
    or-long/2addr v1, v13

    .line 567
    aput-wide v1, v22, v11

    .line 568
    .line 569
    add-int/lit8 v11, v12, -0x7

    .line 570
    .line 571
    and-int/2addr v11, v6

    .line 572
    and-int/lit8 v13, v6, 0x7

    .line 573
    .line 574
    add-int/2addr v11, v13

    .line 575
    shr-int/lit8 v11, v11, 0x3

    .line 576
    .line 577
    aput-wide v1, v22, v11

    .line 578
    .line 579
    aput v8, v5, v12

    .line 580
    .line 581
    goto :goto_9

    .line 582
    :cond_d
    move-object/from16 v22, v1

    .line 583
    .line 584
    move-object/from16 v21, v2

    .line 585
    .line 586
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 587
    .line 588
    move-object/from16 v2, v21

    .line 589
    .line 590
    move-object/from16 v1, v22

    .line 591
    .line 592
    goto :goto_8

    .line 593
    :goto_a
    invoke-virtual {v0, v2}, Landroidx/collection/MutableIntSet;->findFirstAvailableSlot(I)I

    .line 594
    .line 595
    .line 596
    move-result v1

    .line 597
    :goto_b
    iget v2, v0, Landroidx/collection/MutableIntSet;->_size:I

    .line 598
    .line 599
    add-int/lit8 v2, v2, 0x1

    .line 600
    .line 601
    iput v2, v0, Landroidx/collection/MutableIntSet;->_size:I

    .line 602
    .line 603
    iget v2, v0, Landroidx/collection/MutableIntSet;->growthLimit:I

    .line 604
    .line 605
    iget-object v3, v0, Landroidx/collection/MutableIntSet;->metadata:[J

    .line 606
    .line 607
    shr-int/lit8 v4, v1, 0x3

    .line 608
    .line 609
    aget-wide v5, v3, v4

    .line 610
    .line 611
    and-int/lit8 v7, v1, 0x7

    .line 612
    .line 613
    shl-int/lit8 v7, v7, 0x3

    .line 614
    .line 615
    shr-long v11, v5, v7

    .line 616
    .line 617
    and-long v11, v11, v26

    .line 618
    .line 619
    cmp-long v8, v11, v16

    .line 620
    .line 621
    if-nez v8, :cond_e

    .line 622
    .line 623
    goto :goto_c

    .line 624
    :cond_e
    move/from16 v31, v15

    .line 625
    .line 626
    :goto_c
    sub-int v2, v2, v31

    .line 627
    .line 628
    iput v2, v0, Landroidx/collection/MutableIntSet;->growthLimit:I

    .line 629
    .line 630
    iget v0, v0, Landroidx/collection/MutableIntSet;->_capacity:I

    .line 631
    .line 632
    shl-long v11, v26, v7

    .line 633
    .line 634
    not-long v11, v11

    .line 635
    and-long/2addr v5, v11

    .line 636
    shl-long v7, v9, v7

    .line 637
    .line 638
    or-long/2addr v5, v7

    .line 639
    aput-wide v5, v3, v4

    .line 640
    .line 641
    add-int/lit8 v2, v1, -0x7

    .line 642
    .line 643
    and-int/2addr v2, v0

    .line 644
    and-int/lit8 v0, v0, 0x7

    .line 645
    .line 646
    add-int/2addr v2, v0

    .line 647
    shr-int/lit8 v0, v2, 0x3

    .line 648
    .line 649
    aput-wide v5, v3, v0

    .line 650
    .line 651
    return v1

    .line 652
    :cond_f
    move/from16 v28, v3

    .line 653
    .line 654
    move v2, v4

    .line 655
    move/from16 v29, v13

    .line 656
    .line 657
    add-int/lit8 v8, v16, 0x8

    .line 658
    .line 659
    add-int/2addr v6, v8

    .line 660
    and-int/2addr v6, v5

    .line 661
    move/from16 v3, v19

    .line 662
    .line 663
    move/from16 v2, v29

    .line 664
    .line 665
    goto/16 :goto_0
.end method

.method public final findFirstAvailableSlot(I)I
    .locals 9

    .line 1
    iget v0, p0, Landroidx/collection/MutableIntSet;->_capacity:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Landroidx/collection/MutableIntSet;->metadata:[J

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

.method public final hashCode()I
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/collection/MutableIntSet;->elements:[I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/collection/MutableIntSet;->metadata:[J

    .line 4
    .line 5
    array-length v1, p0

    .line 6
    add-int/lit8 v1, v1, -0x2

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-ltz v1, :cond_5

    .line 10
    .line 11
    move v3, v2

    .line 12
    move v4, v3

    .line 13
    :goto_0
    aget-wide v5, p0, v3

    .line 14
    .line 15
    not-long v7, v5

    .line 16
    const/4 v9, 0x7

    .line 17
    shl-long/2addr v7, v9

    .line 18
    and-long/2addr v7, v5

    .line 19
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long/2addr v7, v9

    .line 25
    cmp-long v7, v7, v9

    .line 26
    .line 27
    if-eqz v7, :cond_3

    .line 28
    .line 29
    sub-int v7, v3, v1

    .line 30
    .line 31
    not-int v7, v7

    .line 32
    ushr-int/lit8 v7, v7, 0x1f

    .line 33
    .line 34
    const/16 v8, 0x8

    .line 35
    .line 36
    rsub-int/lit8 v7, v7, 0x8

    .line 37
    .line 38
    move v9, v2

    .line 39
    :goto_1
    if-ge v9, v7, :cond_1

    .line 40
    .line 41
    const-wide/16 v10, 0xff

    .line 42
    .line 43
    and-long/2addr v10, v5

    .line 44
    const-wide/16 v12, 0x80

    .line 45
    .line 46
    cmp-long v10, v10, v12

    .line 47
    .line 48
    if-gez v10, :cond_0

    .line 49
    .line 50
    shl-int/lit8 v10, v3, 0x3

    .line 51
    .line 52
    add-int/2addr v10, v9

    .line 53
    aget v10, v0, v10

    .line 54
    .line 55
    add-int/2addr v4, v10

    .line 56
    :cond_0
    shr-long/2addr v5, v8

    .line 57
    add-int/lit8 v9, v9, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    if-ne v7, v8, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    return v4

    .line 64
    :cond_3
    :goto_2
    if-eq v3, v1, :cond_4

    .line 65
    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    return v4

    .line 70
    :cond_5
    return v2
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
    iput p1, p0, Landroidx/collection/MutableIntSet;->_capacity:I

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
    iput-object v0, p0, Landroidx/collection/MutableIntSet;->metadata:[J

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
    iget v0, p0, Landroidx/collection/MutableIntSet;->_capacity:I

    .line 58
    .line 59
    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iget v1, p0, Landroidx/collection/MutableIntSet;->_size:I

    .line 64
    .line 65
    sub-int/2addr v0, v1

    .line 66
    iput v0, p0, Landroidx/collection/MutableIntSet;->growthLimit:I

    .line 67
    .line 68
    new-array p1, p1, [I

    .line 69
    .line 70
    iput-object p1, p0, Landroidx/collection/MutableIntSet;->elements:[I

    .line 71
    .line 72
    return-void
.end method

.method public final remove(I)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const v2, -0x3361d2af    # -8.293031E7f

    .line 6
    .line 7
    .line 8
    mul-int/2addr v2, v1

    .line 9
    shl-int/lit8 v3, v2, 0x10

    .line 10
    .line 11
    xor-int/2addr v2, v3

    .line 12
    and-int/lit8 v3, v2, 0x7f

    .line 13
    .line 14
    iget v4, v0, Landroidx/collection/MutableIntSet;->_capacity:I

    .line 15
    .line 16
    ushr-int/lit8 v2, v2, 0x7

    .line 17
    .line 18
    and-int/2addr v2, v4

    .line 19
    const/4 v5, 0x0

    .line 20
    move v6, v5

    .line 21
    :goto_0
    iget-object v7, v0, Landroidx/collection/MutableIntSet;->metadata:[J

    .line 22
    .line 23
    shr-int/lit8 v8, v2, 0x3

    .line 24
    .line 25
    and-int/lit8 v9, v2, 0x7

    .line 26
    .line 27
    shl-int/lit8 v9, v9, 0x3

    .line 28
    .line 29
    aget-wide v10, v7, v8

    .line 30
    .line 31
    ushr-long/2addr v10, v9

    .line 32
    const/4 v12, 0x1

    .line 33
    add-int/2addr v8, v12

    .line 34
    aget-wide v13, v7, v8

    .line 35
    .line 36
    rsub-int/lit8 v7, v9, 0x40

    .line 37
    .line 38
    shl-long v7, v13, v7

    .line 39
    .line 40
    int-to-long v13, v9

    .line 41
    neg-long v13, v13

    .line 42
    const/16 v9, 0x3f

    .line 43
    .line 44
    shr-long/2addr v13, v9

    .line 45
    and-long/2addr v7, v13

    .line 46
    or-long/2addr v7, v10

    .line 47
    int-to-long v9, v3

    .line 48
    const-wide v13, 0x101010101010101L

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    mul-long/2addr v9, v13

    .line 54
    xor-long/2addr v9, v7

    .line 55
    sub-long v13, v9, v13

    .line 56
    .line 57
    not-long v9, v9

    .line 58
    and-long/2addr v9, v13

    .line 59
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    and-long/2addr v9, v13

    .line 65
    :goto_1
    const-wide/16 v15, 0x0

    .line 66
    .line 67
    cmp-long v11, v9, v15

    .line 68
    .line 69
    if-eqz v11, :cond_1

    .line 70
    .line 71
    invoke-static {v9, v10}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    shr-int/lit8 v11, v11, 0x3

    .line 76
    .line 77
    add-int/2addr v11, v2

    .line 78
    and-int/2addr v11, v4

    .line 79
    iget-object v15, v0, Landroidx/collection/MutableIntSet;->elements:[I

    .line 80
    .line 81
    aget v15, v15, v11

    .line 82
    .line 83
    if-ne v15, v1, :cond_0

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_0
    const-wide/16 v15, 0x1

    .line 87
    .line 88
    sub-long v15, v9, v15

    .line 89
    .line 90
    and-long/2addr v9, v15

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    not-long v9, v7

    .line 93
    const/4 v11, 0x6

    .line 94
    shl-long/2addr v9, v11

    .line 95
    and-long/2addr v7, v9

    .line 96
    and-long/2addr v7, v13

    .line 97
    cmp-long v7, v7, v15

    .line 98
    .line 99
    if-eqz v7, :cond_4

    .line 100
    .line 101
    const/4 v11, -0x1

    .line 102
    :goto_2
    if-ltz v11, :cond_2

    .line 103
    .line 104
    move v5, v12

    .line 105
    :cond_2
    if-eqz v5, :cond_3

    .line 106
    .line 107
    invoke-virtual {v0, v11}, Landroidx/collection/MutableIntSet;->removeElementAt(I)V

    .line 108
    .line 109
    .line 110
    :cond_3
    return v5

    .line 111
    :cond_4
    add-int/lit8 v6, v6, 0x8

    .line 112
    .line 113
    add-int/2addr v2, v6

    .line 114
    and-int/2addr v2, v4

    .line 115
    goto :goto_0
.end method

.method public final removeElementAt(I)V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/collection/MutableIntSet;->_size:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/collection/MutableIntSet;->_size:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/collection/MutableIntSet;->metadata:[J

    .line 8
    .line 9
    iget p0, p0, Landroidx/collection/MutableIntSet;->_capacity:I

    .line 10
    .line 11
    shr-int/lit8 v1, p1, 0x3

    .line 12
    .line 13
    and-int/lit8 v2, p1, 0x7

    .line 14
    .line 15
    shl-int/lit8 v2, v2, 0x3

    .line 16
    .line 17
    aget-wide v3, v0, v1

    .line 18
    .line 19
    const-wide/16 v5, 0xff

    .line 20
    .line 21
    shl-long/2addr v5, v2

    .line 22
    not-long v5, v5

    .line 23
    and-long/2addr v3, v5

    .line 24
    const-wide/16 v5, 0xfe

    .line 25
    .line 26
    shl-long/2addr v5, v2

    .line 27
    or-long/2addr v3, v5

    .line 28
    aput-wide v3, v0, v1

    .line 29
    .line 30
    add-int/lit8 p1, p1, -0x7

    .line 31
    .line 32
    and-int/2addr p1, p0

    .line 33
    and-int/lit8 p0, p0, 0x7

    .line 34
    .line 35
    add-int/2addr p1, p0

    .line 36
    shr-int/lit8 p0, p1, 0x3

    .line 37
    .line 38
    aput-wide v3, v0, p0

    .line 39
    .line 40
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 15

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/collection/MutableIntSet;->elements:[I

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/collection/MutableIntSet;->metadata:[J

    .line 14
    .line 15
    array-length v2, p0

    .line 16
    add-int/lit8 v2, v2, -0x2

    .line 17
    .line 18
    if-ltz v2, :cond_5

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    move v4, v3

    .line 22
    move v5, v4

    .line 23
    :goto_0
    aget-wide v6, p0, v4

    .line 24
    .line 25
    not-long v8, v6

    .line 26
    const/4 v10, 0x7

    .line 27
    shl-long/2addr v8, v10

    .line 28
    and-long/2addr v8, v6

    .line 29
    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    and-long/2addr v8, v10

    .line 35
    cmp-long v8, v8, v10

    .line 36
    .line 37
    if-eqz v8, :cond_4

    .line 38
    .line 39
    sub-int v8, v4, v2

    .line 40
    .line 41
    not-int v8, v8

    .line 42
    ushr-int/lit8 v8, v8, 0x1f

    .line 43
    .line 44
    const/16 v9, 0x8

    .line 45
    .line 46
    rsub-int/lit8 v8, v8, 0x8

    .line 47
    .line 48
    move v10, v3

    .line 49
    :goto_1
    if-ge v10, v8, :cond_3

    .line 50
    .line 51
    const-wide/16 v11, 0xff

    .line 52
    .line 53
    and-long/2addr v11, v6

    .line 54
    const-wide/16 v13, 0x80

    .line 55
    .line 56
    cmp-long v11, v11, v13

    .line 57
    .line 58
    if-gez v11, :cond_2

    .line 59
    .line 60
    shl-int/lit8 v11, v4, 0x3

    .line 61
    .line 62
    add-int/2addr v11, v10

    .line 63
    aget v11, v1, v11

    .line 64
    .line 65
    const/4 v12, -0x1

    .line 66
    if-ne v5, v12, :cond_0

    .line 67
    .line 68
    const-string p0, "..."

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_0
    if-eqz v5, :cond_1

    .line 75
    .line 76
    const-string v12, ", "

    .line 77
    .line 78
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    add-int/lit8 v5, v5, 0x1

    .line 85
    .line 86
    :cond_2
    shr-long/2addr v6, v9

    .line 87
    add-int/lit8 v10, v10, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    if-ne v8, v9, :cond_5

    .line 91
    .line 92
    :cond_4
    if-eq v4, v2, :cond_5

    .line 93
    .line 94
    add-int/lit8 v4, v4, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    const-string p0, "]"

    .line 98
    .line 99
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0
.end method
