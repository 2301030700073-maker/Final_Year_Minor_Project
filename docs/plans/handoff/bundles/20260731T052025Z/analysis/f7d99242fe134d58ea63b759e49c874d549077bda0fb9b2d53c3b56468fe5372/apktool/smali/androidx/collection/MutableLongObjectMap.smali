.class public final Landroidx/collection/MutableLongObjectMap;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public _capacity:I

.field public _size:I

.field public growthLimit:I

.field public keys:[J

.field public metadata:[J

.field public values:[Ljava/lang/Object;


# direct methods
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
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

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
    .locals 39

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
    goto/16 :goto_d

    .line 105
    .line 106
    :cond_0
    const-wide/16 v17, 0x1

    .line 107
    .line 108
    sub-long v17, v1, v17

    .line 109
    .line 110
    and-long v1, v1, v17

    .line 111
    .line 112
    move/from16 v3, v20

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    move/from16 v20, v3

    .line 116
    .line 117
    not-long v1, v7

    .line 118
    const/4 v3, 0x6

    .line 119
    shl-long/2addr v1, v3

    .line 120
    and-long/2addr v1, v7

    .line 121
    and-long/2addr v1, v11

    .line 122
    cmp-long v1, v1, v17

    .line 123
    .line 124
    const/16 v2, 0x8

    .line 125
    .line 126
    if-eqz v1, :cond_f

    .line 127
    .line 128
    invoke-virtual {v0, v4}, Landroidx/collection/MutableLongObjectMap;->findFirstAvailableSlot(I)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    iget v3, v0, Landroidx/collection/MutableLongObjectMap;->growthLimit:I

    .line 133
    .line 134
    const-wide/16 v7, 0xff

    .line 135
    .line 136
    const/16 v16, 0x7

    .line 137
    .line 138
    if-nez v3, :cond_2

    .line 139
    .line 140
    iget-object v3, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 141
    .line 142
    shr-int/lit8 v19, v1, 0x3

    .line 143
    .line 144
    aget-wide v21, v3, v19

    .line 145
    .line 146
    and-int/lit8 v3, v1, 0x7

    .line 147
    .line 148
    shl-int/lit8 v3, v3, 0x3

    .line 149
    .line 150
    shr-long v21, v21, v3

    .line 151
    .line 152
    and-long v21, v21, v7

    .line 153
    .line 154
    const-wide/16 v23, 0xfe

    .line 155
    .line 156
    cmp-long v3, v21, v23

    .line 157
    .line 158
    if-nez v3, :cond_3

    .line 159
    .line 160
    :cond_2
    move-wide/from16 v29, v7

    .line 161
    .line 162
    move/from16 v33, v14

    .line 163
    .line 164
    const-wide/16 v25, 0x80

    .line 165
    .line 166
    goto/16 :goto_b

    .line 167
    .line 168
    :cond_3
    iget v1, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 169
    .line 170
    if-le v1, v2, :cond_b

    .line 171
    .line 172
    iget v3, v0, Landroidx/collection/MutableLongObjectMap;->_size:I

    .line 173
    .line 174
    move/from16 v21, v2

    .line 175
    .line 176
    int-to-long v2, v3

    .line 177
    const-wide/16 v25, 0x20

    .line 178
    .line 179
    mul-long v2, v2, v25

    .line 180
    .line 181
    const-wide/16 v25, 0x80

    .line 182
    .line 183
    int-to-long v5, v1

    .line 184
    const-wide/16 v27, 0x19

    .line 185
    .line 186
    mul-long v5, v5, v27

    .line 187
    .line 188
    const-wide/high16 v27, -0x8000000000000000L

    .line 189
    .line 190
    xor-long v2, v2, v27

    .line 191
    .line 192
    xor-long v5, v5, v27

    .line 193
    .line 194
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Long;->compare(JJ)I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-gtz v1, :cond_a

    .line 199
    .line 200
    iget-object v1, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 201
    .line 202
    iget v2, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 203
    .line 204
    iget-object v3, v0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    .line 205
    .line 206
    iget-object v5, v0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    .line 207
    .line 208
    add-int/lit8 v6, v2, 0x7

    .line 209
    .line 210
    shr-int/lit8 v6, v6, 0x3

    .line 211
    .line 212
    move-wide/from16 v29, v7

    .line 213
    .line 214
    move v7, v15

    .line 215
    :goto_2
    if-ge v7, v6, :cond_4

    .line 216
    .line 217
    aget-wide v31, v1, v7

    .line 218
    .line 219
    move-wide/from16 v33, v11

    .line 220
    .line 221
    and-long v11, v31, v33

    .line 222
    .line 223
    move/from16 v22, v13

    .line 224
    .line 225
    move v8, v14

    .line 226
    not-long v13, v11

    .line 227
    ushr-long v11, v11, v16

    .line 228
    .line 229
    add-long/2addr v13, v11

    .line 230
    const-wide v11, -0x101010101010102L

    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    and-long/2addr v11, v13

    .line 236
    aput-wide v11, v1, v7

    .line 237
    .line 238
    add-int/lit8 v7, v7, 0x1

    .line 239
    .line 240
    move v14, v8

    .line 241
    move/from16 v13, v22

    .line 242
    .line 243
    move-wide/from16 v11, v33

    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_4
    move/from16 v22, v13

    .line 247
    .line 248
    move v8, v14

    .line 249
    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->getLastIndex([J)I

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    add-int/lit8 v7, v6, -0x1

    .line 254
    .line 255
    aget-wide v11, v1, v7

    .line 256
    .line 257
    const-wide v13, 0xffffffffffffffL

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    and-long/2addr v11, v13

    .line 263
    const-wide/high16 v31, -0x100000000000000L

    .line 264
    .line 265
    or-long v11, v11, v31

    .line 266
    .line 267
    aput-wide v11, v1, v7

    .line 268
    .line 269
    aget-wide v11, v1, v15

    .line 270
    .line 271
    aput-wide v11, v1, v6

    .line 272
    .line 273
    move v6, v15

    .line 274
    :goto_3
    if-eq v6, v2, :cond_9

    .line 275
    .line 276
    shr-int/lit8 v7, v6, 0x3

    .line 277
    .line 278
    aget-wide v11, v1, v7

    .line 279
    .line 280
    and-int/lit8 v19, v6, 0x7

    .line 281
    .line 282
    shl-int/lit8 v19, v19, 0x3

    .line 283
    .line 284
    shr-long v11, v11, v19

    .line 285
    .line 286
    and-long v11, v11, v29

    .line 287
    .line 288
    cmp-long v31, v11, v25

    .line 289
    .line 290
    if-nez v31, :cond_5

    .line 291
    .line 292
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_5
    cmp-long v11, v11, v23

    .line 296
    .line 297
    if-eqz v11, :cond_6

    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_6
    aget-wide v11, v3, v6

    .line 301
    .line 302
    ushr-long v31, v11, v22

    .line 303
    .line 304
    xor-long v11, v11, v31

    .line 305
    .line 306
    long-to-int v11, v11

    .line 307
    mul-int v11, v11, v20

    .line 308
    .line 309
    shl-int/lit8 v12, v11, 0x10

    .line 310
    .line 311
    xor-int/2addr v11, v12

    .line 312
    ushr-int/lit8 v12, v11, 0x7

    .line 313
    .line 314
    invoke-virtual {v0, v12}, Landroidx/collection/MutableLongObjectMap;->findFirstAvailableSlot(I)I

    .line 315
    .line 316
    .line 317
    move-result v31

    .line 318
    and-int/2addr v12, v2

    .line 319
    sub-int v32, v31, v12

    .line 320
    .line 321
    and-int v32, v32, v2

    .line 322
    .line 323
    move/from16 v33, v8

    .line 324
    .line 325
    div-int/lit8 v8, v32, 0x8

    .line 326
    .line 327
    sub-int v12, v6, v12

    .line 328
    .line 329
    and-int/2addr v12, v2

    .line 330
    div-int/lit8 v12, v12, 0x8

    .line 331
    .line 332
    if-ne v8, v12, :cond_7

    .line 333
    .line 334
    and-int/lit8 v8, v11, 0x7f

    .line 335
    .line 336
    int-to-long v11, v8

    .line 337
    aget-wide v31, v1, v7

    .line 338
    .line 339
    move-wide/from16 v34, v13

    .line 340
    .line 341
    shl-long v13, v29, v19

    .line 342
    .line 343
    not-long v13, v13

    .line 344
    and-long v13, v31, v13

    .line 345
    .line 346
    shl-long v11, v11, v19

    .line 347
    .line 348
    or-long/2addr v11, v13

    .line 349
    aput-wide v11, v1, v7

    .line 350
    .line 351
    array-length v7, v1

    .line 352
    add-int/lit8 v7, v7, -0x1

    .line 353
    .line 354
    aget-wide v11, v1, v15

    .line 355
    .line 356
    and-long v11, v11, v34

    .line 357
    .line 358
    or-long v11, v11, v27

    .line 359
    .line 360
    aput-wide v11, v1, v7

    .line 361
    .line 362
    add-int/lit8 v6, v6, 0x1

    .line 363
    .line 364
    move/from16 v8, v33

    .line 365
    .line 366
    move-wide/from16 v13, v34

    .line 367
    .line 368
    goto :goto_3

    .line 369
    :cond_7
    move-wide/from16 v34, v13

    .line 370
    .line 371
    shr-int/lit8 v8, v31, 0x3

    .line 372
    .line 373
    aget-wide v12, v1, v8

    .line 374
    .line 375
    and-int/lit8 v14, v31, 0x7

    .line 376
    .line 377
    shl-int/lit8 v14, v14, 0x3

    .line 378
    .line 379
    shr-long v36, v12, v14

    .line 380
    .line 381
    and-long v36, v36, v29

    .line 382
    .line 383
    cmp-long v32, v36, v25

    .line 384
    .line 385
    if-nez v32, :cond_8

    .line 386
    .line 387
    and-int/lit8 v11, v11, 0x7f

    .line 388
    .line 389
    move/from16 v32, v2

    .line 390
    .line 391
    move-object/from16 v36, v3

    .line 392
    .line 393
    int-to-long v2, v11

    .line 394
    move-wide/from16 v37, v2

    .line 395
    .line 396
    shl-long v2, v29, v14

    .line 397
    .line 398
    not-long v2, v2

    .line 399
    and-long/2addr v2, v12

    .line 400
    shl-long v11, v37, v14

    .line 401
    .line 402
    or-long/2addr v2, v11

    .line 403
    aput-wide v2, v1, v8

    .line 404
    .line 405
    aget-wide v2, v1, v7

    .line 406
    .line 407
    shl-long v11, v29, v19

    .line 408
    .line 409
    not-long v11, v11

    .line 410
    and-long/2addr v2, v11

    .line 411
    shl-long v11, v25, v19

    .line 412
    .line 413
    or-long/2addr v2, v11

    .line 414
    aput-wide v2, v1, v7

    .line 415
    .line 416
    aget-wide v2, v36, v6

    .line 417
    .line 418
    aput-wide v2, v36, v31

    .line 419
    .line 420
    aput-wide v17, v36, v6

    .line 421
    .line 422
    aget-object v2, v5, v6

    .line 423
    .line 424
    aput-object v2, v5, v31

    .line 425
    .line 426
    const/4 v2, 0x0

    .line 427
    aput-object v2, v5, v6

    .line 428
    .line 429
    goto :goto_5

    .line 430
    :cond_8
    move/from16 v32, v2

    .line 431
    .line 432
    move-object/from16 v36, v3

    .line 433
    .line 434
    and-int/lit8 v2, v11, 0x7f

    .line 435
    .line 436
    int-to-long v2, v2

    .line 437
    move-wide/from16 v37, v2

    .line 438
    .line 439
    shl-long v2, v29, v14

    .line 440
    .line 441
    not-long v2, v2

    .line 442
    and-long/2addr v2, v12

    .line 443
    shl-long v11, v37, v14

    .line 444
    .line 445
    or-long/2addr v2, v11

    .line 446
    aput-wide v2, v1, v8

    .line 447
    .line 448
    aget-wide v2, v36, v31

    .line 449
    .line 450
    aget-wide v7, v36, v6

    .line 451
    .line 452
    aput-wide v7, v36, v31

    .line 453
    .line 454
    aput-wide v2, v36, v6

    .line 455
    .line 456
    aget-object v2, v5, v31

    .line 457
    .line 458
    aget-object v3, v5, v6

    .line 459
    .line 460
    aput-object v3, v5, v31

    .line 461
    .line 462
    aput-object v2, v5, v6

    .line 463
    .line 464
    add-int/lit8 v6, v6, -0x1

    .line 465
    .line 466
    :goto_5
    array-length v2, v1

    .line 467
    add-int/lit8 v2, v2, -0x1

    .line 468
    .line 469
    aget-wide v7, v1, v15

    .line 470
    .line 471
    and-long v7, v7, v34

    .line 472
    .line 473
    or-long v7, v7, v27

    .line 474
    .line 475
    aput-wide v7, v1, v2

    .line 476
    .line 477
    add-int/lit8 v6, v6, 0x1

    .line 478
    .line 479
    move/from16 v2, v32

    .line 480
    .line 481
    move/from16 v8, v33

    .line 482
    .line 483
    move-wide/from16 v13, v34

    .line 484
    .line 485
    move-object/from16 v3, v36

    .line 486
    .line 487
    goto/16 :goto_3

    .line 488
    .line 489
    :cond_9
    move/from16 v33, v8

    .line 490
    .line 491
    iget v1, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 492
    .line 493
    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    iget v2, v0, Landroidx/collection/MutableLongObjectMap;->_size:I

    .line 498
    .line 499
    sub-int/2addr v1, v2

    .line 500
    iput v1, v0, Landroidx/collection/MutableLongObjectMap;->growthLimit:I

    .line 501
    .line 502
    goto/16 :goto_a

    .line 503
    .line 504
    :cond_a
    :goto_6
    move-wide/from16 v29, v7

    .line 505
    .line 506
    move/from16 v22, v13

    .line 507
    .line 508
    move/from16 v33, v14

    .line 509
    .line 510
    goto :goto_7

    .line 511
    :cond_b
    const-wide/16 v25, 0x80

    .line 512
    .line 513
    goto :goto_6

    .line 514
    :goto_7
    iget v1, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 515
    .line 516
    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    .line 517
    .line 518
    .line 519
    move-result v1

    .line 520
    iget-object v2, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 521
    .line 522
    iget-object v3, v0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    .line 523
    .line 524
    iget-object v5, v0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    .line 525
    .line 526
    iget v6, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 527
    .line 528
    invoke-virtual {v0, v1}, Landroidx/collection/MutableLongObjectMap;->initializeStorage(I)V

    .line 529
    .line 530
    .line 531
    iget-object v1, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 532
    .line 533
    iget-object v7, v0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    .line 534
    .line 535
    iget-object v8, v0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    .line 536
    .line 537
    iget v11, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 538
    .line 539
    move v12, v15

    .line 540
    :goto_8
    if-ge v12, v6, :cond_d

    .line 541
    .line 542
    shr-int/lit8 v13, v12, 0x3

    .line 543
    .line 544
    aget-wide v13, v2, v13

    .line 545
    .line 546
    and-int/lit8 v17, v12, 0x7

    .line 547
    .line 548
    shl-int/lit8 v17, v17, 0x3

    .line 549
    .line 550
    shr-long v13, v13, v17

    .line 551
    .line 552
    and-long v13, v13, v29

    .line 553
    .line 554
    cmp-long v13, v13, v25

    .line 555
    .line 556
    if-gez v13, :cond_c

    .line 557
    .line 558
    aget-wide v13, v3, v12

    .line 559
    .line 560
    ushr-long v17, v13, v22

    .line 561
    .line 562
    move-object/from16 v21, v1

    .line 563
    .line 564
    move-object/from16 v19, v2

    .line 565
    .line 566
    xor-long v1, v13, v17

    .line 567
    .line 568
    long-to-int v1, v1

    .line 569
    mul-int v1, v1, v20

    .line 570
    .line 571
    shl-int/lit8 v2, v1, 0x10

    .line 572
    .line 573
    xor-int/2addr v1, v2

    .line 574
    ushr-int/lit8 v2, v1, 0x7

    .line 575
    .line 576
    invoke-virtual {v0, v2}, Landroidx/collection/MutableLongObjectMap;->findFirstAvailableSlot(I)I

    .line 577
    .line 578
    .line 579
    move-result v2

    .line 580
    and-int/lit8 v1, v1, 0x7f

    .line 581
    .line 582
    move/from16 v17, v2

    .line 583
    .line 584
    int-to-long v1, v1

    .line 585
    shr-int/lit8 v18, v17, 0x3

    .line 586
    .line 587
    and-int/lit8 v23, v17, 0x7

    .line 588
    .line 589
    shl-int/lit8 v23, v23, 0x3

    .line 590
    .line 591
    aget-wide v27, v21, v18

    .line 592
    .line 593
    move-wide/from16 v31, v1

    .line 594
    .line 595
    shl-long v1, v29, v23

    .line 596
    .line 597
    not-long v1, v1

    .line 598
    and-long v1, v27, v1

    .line 599
    .line 600
    shl-long v23, v31, v23

    .line 601
    .line 602
    or-long v1, v1, v23

    .line 603
    .line 604
    aput-wide v1, v21, v18

    .line 605
    .line 606
    add-int/lit8 v18, v17, -0x7

    .line 607
    .line 608
    and-int v18, v18, v11

    .line 609
    .line 610
    and-int/lit8 v23, v11, 0x7

    .line 611
    .line 612
    add-int v18, v18, v23

    .line 613
    .line 614
    shr-int/lit8 v18, v18, 0x3

    .line 615
    .line 616
    aput-wide v1, v21, v18

    .line 617
    .line 618
    aput-wide v13, v7, v17

    .line 619
    .line 620
    aget-object v1, v5, v12

    .line 621
    .line 622
    aput-object v1, v8, v17

    .line 623
    .line 624
    goto :goto_9

    .line 625
    :cond_c
    move-object/from16 v21, v1

    .line 626
    .line 627
    move-object/from16 v19, v2

    .line 628
    .line 629
    :goto_9
    add-int/lit8 v12, v12, 0x1

    .line 630
    .line 631
    move-object/from16 v2, v19

    .line 632
    .line 633
    move-object/from16 v1, v21

    .line 634
    .line 635
    goto :goto_8

    .line 636
    :cond_d
    :goto_a
    invoke-virtual {v0, v4}, Landroidx/collection/MutableLongObjectMap;->findFirstAvailableSlot(I)I

    .line 637
    .line 638
    .line 639
    move-result v1

    .line 640
    :goto_b
    move/from16 v17, v1

    .line 641
    .line 642
    iget v1, v0, Landroidx/collection/MutableLongObjectMap;->_size:I

    .line 643
    .line 644
    add-int/lit8 v1, v1, 0x1

    .line 645
    .line 646
    iput v1, v0, Landroidx/collection/MutableLongObjectMap;->_size:I

    .line 647
    .line 648
    iget v1, v0, Landroidx/collection/MutableLongObjectMap;->growthLimit:I

    .line 649
    .line 650
    iget-object v2, v0, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 651
    .line 652
    shr-int/lit8 v3, v17, 0x3

    .line 653
    .line 654
    aget-wide v4, v2, v3

    .line 655
    .line 656
    and-int/lit8 v6, v17, 0x7

    .line 657
    .line 658
    shl-int/lit8 v6, v6, 0x3

    .line 659
    .line 660
    shr-long v7, v4, v6

    .line 661
    .line 662
    and-long v7, v7, v29

    .line 663
    .line 664
    cmp-long v7, v7, v25

    .line 665
    .line 666
    if-nez v7, :cond_e

    .line 667
    .line 668
    move/from16 v7, v33

    .line 669
    .line 670
    goto :goto_c

    .line 671
    :cond_e
    move v7, v15

    .line 672
    :goto_c
    sub-int/2addr v1, v7

    .line 673
    iput v1, v0, Landroidx/collection/MutableLongObjectMap;->growthLimit:I

    .line 674
    .line 675
    iget v1, v0, Landroidx/collection/MutableLongObjectMap;->_capacity:I

    .line 676
    .line 677
    shl-long v7, v29, v6

    .line 678
    .line 679
    not-long v7, v7

    .line 680
    and-long/2addr v4, v7

    .line 681
    shl-long v6, v9, v6

    .line 682
    .line 683
    or-long/2addr v4, v6

    .line 684
    aput-wide v4, v2, v3

    .line 685
    .line 686
    add-int/lit8 v3, v17, -0x7

    .line 687
    .line 688
    and-int/2addr v3, v1

    .line 689
    and-int/lit8 v1, v1, 0x7

    .line 690
    .line 691
    add-int/2addr v3, v1

    .line 692
    shr-int/lit8 v1, v3, 0x3

    .line 693
    .line 694
    aput-wide v4, v2, v1

    .line 695
    .line 696
    :goto_d
    iget-object v1, v0, Landroidx/collection/MutableLongObjectMap;->keys:[J

    .line 697
    .line 698
    aput-wide p1, v1, v17

    .line 699
    .line 700
    iget-object v0, v0, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    .line 701
    .line 702
    aput-object p3, v0, v17

    .line 703
    .line 704
    return-void

    .line 705
    :cond_f
    move/from16 v21, v2

    .line 706
    .line 707
    move/from16 v22, v13

    .line 708
    .line 709
    add-int/lit8 v8, v16, 0x8

    .line 710
    .line 711
    add-int/2addr v6, v8

    .line 712
    and-int/2addr v6, v5

    .line 713
    move/from16 v2, v19

    .line 714
    .line 715
    move/from16 v3, v20

    .line 716
    .line 717
    move/from16 v1, v22

    .line 718
    .line 719
    goto/16 :goto_0
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
