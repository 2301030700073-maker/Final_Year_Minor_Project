.class public final Landroidx/collection/MutableLongIntMap;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public _capacity:I

.field public _size:I

.field public growthLimit:I

.field public keys:[J

.field public metadata:[J

.field public values:[I


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
    iput-object v0, p0, Landroidx/collection/MutableLongIntMap;->metadata:[J

    .line 7
    .line 8
    sget-object v0, Landroidx/collection/LongSetKt;->EmptyLongArray:[J

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/collection/MutableLongIntMap;->keys:[J

    .line 11
    .line 12
    sget-object v0, Landroidx/collection/IntSetKt;->EmptyIntArray:[I

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/collection/MutableLongIntMap;->values:[I

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
    invoke-virtual {p0, p1}, Landroidx/collection/MutableLongIntMap;->initializeStorage(I)V

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
    instance-of v3, v1, Landroidx/collection/MutableLongIntMap;

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
    check-cast v1, Landroidx/collection/MutableLongIntMap;

    .line 16
    .line 17
    iget v3, v1, Landroidx/collection/MutableLongIntMap;->_size:I

    .line 18
    .line 19
    iget v5, v0, Landroidx/collection/MutableLongIntMap;->_size:I

    .line 20
    .line 21
    if-eq v3, v5, :cond_2

    .line 22
    .line 23
    return v4

    .line 24
    :cond_2
    iget-object v3, v0, Landroidx/collection/MutableLongIntMap;->keys:[J

    .line 25
    .line 26
    iget-object v5, v0, Landroidx/collection/MutableLongIntMap;->values:[I

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/collection/MutableLongIntMap;->metadata:[J

    .line 29
    .line 30
    array-length v6, v0

    .line 31
    add-int/lit8 v6, v6, -0x2

    .line 32
    .line 33
    if-ltz v6, :cond_7

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
    if-eqz v10, :cond_6

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
    if-ge v12, v10, :cond_5

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
    if-gez v13, :cond_4

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
    aget v13, v5, v13

    .line 79
    .line 80
    invoke-virtual {v1, v14, v15}, Landroidx/collection/MutableLongIntMap;->findKeyIndex(J)I

    .line 81
    .line 82
    .line 83
    move-result v14

    .line 84
    if-ltz v14, :cond_3

    .line 85
    .line 86
    iget-object v15, v1, Landroidx/collection/MutableLongIntMap;->values:[I

    .line 87
    .line 88
    aget v14, v15, v14

    .line 89
    .line 90
    if-eq v13, v14, :cond_4

    .line 91
    .line 92
    :cond_3
    return v4

    .line 93
    :cond_4
    shr-long/2addr v8, v11

    .line 94
    add-int/lit8 v12, v12, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_5
    if-ne v10, v11, :cond_7

    .line 98
    .line 99
    :cond_6
    if-eq v7, v6, :cond_7

    .line 100
    .line 101
    add-int/lit8 v7, v7, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_7
    return v2
.end method

.method public final findFirstAvailableSlot(I)I
    .locals 9

    .line 1
    iget v0, p0, Landroidx/collection/MutableLongIntMap;->_capacity:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Landroidx/collection/MutableLongIntMap;->metadata:[J

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

.method public final findKeyIndex(J)I
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
    iget v2, p0, Landroidx/collection/MutableLongIntMap;->_capacity:I

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
    iget-object v4, p0, Landroidx/collection/MutableLongIntMap;->metadata:[J

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
    iget-object v11, p0, Landroidx/collection/MutableLongIntMap;->keys:[J

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
    return v10

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
    if-eqz v4, :cond_2

    .line 103
    .line 104
    const/4 p0, -0x1

    .line 105
    return p0

    .line 106
    :cond_2
    add-int/lit8 v3, v3, 0x8

    .line 107
    .line 108
    add-int/2addr v0, v3

    .line 109
    and-int/2addr v0, v2

    .line 110
    goto :goto_0
.end method

.method public final get(J)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->findKeyIndex(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/collection/MutableLongIntMap;->values:[I

    .line 8
    .line 9
    aget p0, p0, v0

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    const-string p0, "Cannot find value for key "

    .line 13
    .line 14
    invoke-static {p0, p1, p2}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final hashCode()I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/collection/MutableLongIntMap;->keys:[J

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/collection/MutableLongIntMap;->values:[I

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/collection/MutableLongIntMap;->metadata:[J

    .line 8
    .line 9
    array-length v3, v0

    .line 10
    add-int/lit8 v3, v3, -0x2

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-ltz v3, :cond_5

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
    if-eqz v9, :cond_3

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
    if-ge v11, v9, :cond_1

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
    if-gez v12, :cond_0

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
    aget v12, v2, v12

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
    xor-int/2addr v12, v13

    .line 68
    add-int/2addr v6, v12

    .line 69
    :cond_0
    shr-long/2addr v7, v10

    .line 70
    add-int/lit8 v11, v11, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    if-ne v9, v10, :cond_2

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    return v6

    .line 77
    :cond_3
    :goto_2
    if-eq v5, v3, :cond_4

    .line 78
    .line 79
    add-int/lit8 v5, v5, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    return v6

    .line 83
    :cond_5
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
    iput p1, p0, Landroidx/collection/MutableLongIntMap;->_capacity:I

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
    iput-object v0, p0, Landroidx/collection/MutableLongIntMap;->metadata:[J

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
    iget v0, p0, Landroidx/collection/MutableLongIntMap;->_capacity:I

    .line 58
    .line 59
    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iget v1, p0, Landroidx/collection/MutableLongIntMap;->_size:I

    .line 64
    .line 65
    sub-int/2addr v0, v1

    .line 66
    iput v0, p0, Landroidx/collection/MutableLongIntMap;->growthLimit:I

    .line 67
    .line 68
    new-array v0, p1, [J

    .line 69
    .line 70
    iput-object v0, p0, Landroidx/collection/MutableLongIntMap;->keys:[J

    .line 71
    .line 72
    new-array p1, p1, [I

    .line 73
    .line 74
    iput-object p1, p0, Landroidx/collection/MutableLongIntMap;->values:[I

    .line 75
    .line 76
    return-void
.end method

.method public final set(JI)V
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
    iget v5, v0, Landroidx/collection/MutableLongIntMap;->_capacity:I

    .line 22
    .line 23
    and-int v6, v4, v5

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    :goto_0
    iget-object v9, v0, Landroidx/collection/MutableLongIntMap;->metadata:[J

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
    iget-object v3, v0, Landroidx/collection/MutableLongIntMap;->keys:[J

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
    move/from16 v1, v17

    .line 105
    .line 106
    goto/16 :goto_c

    .line 107
    .line 108
    :cond_0
    const-wide/16 v17, 0x1

    .line 109
    .line 110
    sub-long v17, v1, v17

    .line 111
    .line 112
    and-long v1, v1, v17

    .line 113
    .line 114
    move/from16 v3, v20

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_1
    move/from16 v20, v3

    .line 118
    .line 119
    not-long v1, v7

    .line 120
    const/4 v3, 0x6

    .line 121
    shl-long/2addr v1, v3

    .line 122
    and-long/2addr v1, v7

    .line 123
    and-long/2addr v1, v11

    .line 124
    cmp-long v1, v1, v17

    .line 125
    .line 126
    const/16 v2, 0x8

    .line 127
    .line 128
    if-eqz v1, :cond_10

    .line 129
    .line 130
    invoke-virtual {v0, v4}, Landroidx/collection/MutableLongIntMap;->findFirstAvailableSlot(I)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    iget v3, v0, Landroidx/collection/MutableLongIntMap;->growthLimit:I

    .line 135
    .line 136
    const-wide/16 v7, 0xff

    .line 137
    .line 138
    const/16 v16, 0x7

    .line 139
    .line 140
    if-nez v3, :cond_2

    .line 141
    .line 142
    iget-object v3, v0, Landroidx/collection/MutableLongIntMap;->metadata:[J

    .line 143
    .line 144
    shr-int/lit8 v19, v1, 0x3

    .line 145
    .line 146
    aget-wide v21, v3, v19

    .line 147
    .line 148
    and-int/lit8 v3, v1, 0x7

    .line 149
    .line 150
    shl-int/lit8 v3, v3, 0x3

    .line 151
    .line 152
    shr-long v21, v21, v3

    .line 153
    .line 154
    and-long v21, v21, v7

    .line 155
    .line 156
    const-wide/16 v23, 0xfe

    .line 157
    .line 158
    cmp-long v3, v21, v23

    .line 159
    .line 160
    if-nez v3, :cond_3

    .line 161
    .line 162
    :cond_2
    move-wide/from16 v29, v7

    .line 163
    .line 164
    move/from16 v33, v14

    .line 165
    .line 166
    const-wide/16 v25, 0x80

    .line 167
    .line 168
    goto/16 :goto_b

    .line 169
    .line 170
    :cond_3
    iget v1, v0, Landroidx/collection/MutableLongIntMap;->_capacity:I

    .line 171
    .line 172
    if-le v1, v2, :cond_b

    .line 173
    .line 174
    iget v3, v0, Landroidx/collection/MutableLongIntMap;->_size:I

    .line 175
    .line 176
    move/from16 v21, v2

    .line 177
    .line 178
    int-to-long v2, v3

    .line 179
    const-wide/16 v25, 0x20

    .line 180
    .line 181
    mul-long v2, v2, v25

    .line 182
    .line 183
    const-wide/16 v25, 0x80

    .line 184
    .line 185
    int-to-long v5, v1

    .line 186
    const-wide/16 v27, 0x19

    .line 187
    .line 188
    mul-long v5, v5, v27

    .line 189
    .line 190
    const-wide/high16 v27, -0x8000000000000000L

    .line 191
    .line 192
    xor-long v2, v2, v27

    .line 193
    .line 194
    xor-long v5, v5, v27

    .line 195
    .line 196
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Long;->compare(JJ)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-gtz v1, :cond_a

    .line 201
    .line 202
    iget-object v1, v0, Landroidx/collection/MutableLongIntMap;->metadata:[J

    .line 203
    .line 204
    iget v2, v0, Landroidx/collection/MutableLongIntMap;->_capacity:I

    .line 205
    .line 206
    iget-object v3, v0, Landroidx/collection/MutableLongIntMap;->keys:[J

    .line 207
    .line 208
    iget-object v5, v0, Landroidx/collection/MutableLongIntMap;->values:[I

    .line 209
    .line 210
    add-int/lit8 v6, v2, 0x7

    .line 211
    .line 212
    shr-int/lit8 v6, v6, 0x3

    .line 213
    .line 214
    move-wide/from16 v29, v7

    .line 215
    .line 216
    move v7, v15

    .line 217
    :goto_2
    if-ge v7, v6, :cond_4

    .line 218
    .line 219
    aget-wide v31, v1, v7

    .line 220
    .line 221
    move-wide/from16 v33, v11

    .line 222
    .line 223
    and-long v11, v31, v33

    .line 224
    .line 225
    move/from16 v22, v13

    .line 226
    .line 227
    move v8, v14

    .line 228
    not-long v13, v11

    .line 229
    ushr-long v11, v11, v16

    .line 230
    .line 231
    add-long/2addr v13, v11

    .line 232
    const-wide v11, -0x101010101010102L

    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    and-long/2addr v11, v13

    .line 238
    aput-wide v11, v1, v7

    .line 239
    .line 240
    add-int/lit8 v7, v7, 0x1

    .line 241
    .line 242
    move v14, v8

    .line 243
    move/from16 v13, v22

    .line 244
    .line 245
    move-wide/from16 v11, v33

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_4
    move/from16 v22, v13

    .line 249
    .line 250
    move v8, v14

    .line 251
    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->getLastIndex([J)I

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    add-int/lit8 v7, v6, -0x1

    .line 256
    .line 257
    aget-wide v11, v1, v7

    .line 258
    .line 259
    const-wide v13, 0xffffffffffffffL

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    and-long/2addr v11, v13

    .line 265
    const-wide/high16 v31, -0x100000000000000L

    .line 266
    .line 267
    or-long v11, v11, v31

    .line 268
    .line 269
    aput-wide v11, v1, v7

    .line 270
    .line 271
    aget-wide v11, v1, v15

    .line 272
    .line 273
    aput-wide v11, v1, v6

    .line 274
    .line 275
    move v6, v15

    .line 276
    :goto_3
    if-eq v6, v2, :cond_9

    .line 277
    .line 278
    shr-int/lit8 v7, v6, 0x3

    .line 279
    .line 280
    aget-wide v11, v1, v7

    .line 281
    .line 282
    and-int/lit8 v19, v6, 0x7

    .line 283
    .line 284
    shl-int/lit8 v19, v19, 0x3

    .line 285
    .line 286
    shr-long v11, v11, v19

    .line 287
    .line 288
    and-long v11, v11, v29

    .line 289
    .line 290
    cmp-long v31, v11, v25

    .line 291
    .line 292
    if-nez v31, :cond_5

    .line 293
    .line 294
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_5
    cmp-long v11, v11, v23

    .line 298
    .line 299
    if-eqz v11, :cond_6

    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_6
    aget-wide v11, v3, v6

    .line 303
    .line 304
    ushr-long v31, v11, v22

    .line 305
    .line 306
    xor-long v11, v11, v31

    .line 307
    .line 308
    long-to-int v11, v11

    .line 309
    mul-int v11, v11, v20

    .line 310
    .line 311
    shl-int/lit8 v12, v11, 0x10

    .line 312
    .line 313
    xor-int/2addr v11, v12

    .line 314
    ushr-int/lit8 v12, v11, 0x7

    .line 315
    .line 316
    invoke-virtual {v0, v12}, Landroidx/collection/MutableLongIntMap;->findFirstAvailableSlot(I)I

    .line 317
    .line 318
    .line 319
    move-result v31

    .line 320
    and-int/2addr v12, v2

    .line 321
    sub-int v32, v31, v12

    .line 322
    .line 323
    and-int v32, v32, v2

    .line 324
    .line 325
    move/from16 v33, v8

    .line 326
    .line 327
    div-int/lit8 v8, v32, 0x8

    .line 328
    .line 329
    sub-int v12, v6, v12

    .line 330
    .line 331
    and-int/2addr v12, v2

    .line 332
    div-int/lit8 v12, v12, 0x8

    .line 333
    .line 334
    if-ne v8, v12, :cond_7

    .line 335
    .line 336
    and-int/lit8 v8, v11, 0x7f

    .line 337
    .line 338
    int-to-long v11, v8

    .line 339
    aget-wide v31, v1, v7

    .line 340
    .line 341
    move-wide/from16 v34, v13

    .line 342
    .line 343
    shl-long v13, v29, v19

    .line 344
    .line 345
    not-long v13, v13

    .line 346
    and-long v13, v31, v13

    .line 347
    .line 348
    shl-long v11, v11, v19

    .line 349
    .line 350
    or-long/2addr v11, v13

    .line 351
    aput-wide v11, v1, v7

    .line 352
    .line 353
    array-length v7, v1

    .line 354
    add-int/lit8 v7, v7, -0x1

    .line 355
    .line 356
    aget-wide v11, v1, v15

    .line 357
    .line 358
    and-long v11, v11, v34

    .line 359
    .line 360
    or-long v11, v11, v27

    .line 361
    .line 362
    aput-wide v11, v1, v7

    .line 363
    .line 364
    add-int/lit8 v6, v6, 0x1

    .line 365
    .line 366
    move/from16 v8, v33

    .line 367
    .line 368
    move-wide/from16 v13, v34

    .line 369
    .line 370
    goto :goto_3

    .line 371
    :cond_7
    move-wide/from16 v34, v13

    .line 372
    .line 373
    shr-int/lit8 v8, v31, 0x3

    .line 374
    .line 375
    aget-wide v12, v1, v8

    .line 376
    .line 377
    and-int/lit8 v14, v31, 0x7

    .line 378
    .line 379
    shl-int/lit8 v14, v14, 0x3

    .line 380
    .line 381
    shr-long v36, v12, v14

    .line 382
    .line 383
    and-long v36, v36, v29

    .line 384
    .line 385
    cmp-long v32, v36, v25

    .line 386
    .line 387
    if-nez v32, :cond_8

    .line 388
    .line 389
    and-int/lit8 v11, v11, 0x7f

    .line 390
    .line 391
    move/from16 v32, v2

    .line 392
    .line 393
    move-object/from16 v36, v3

    .line 394
    .line 395
    int-to-long v2, v11

    .line 396
    move-wide/from16 v37, v2

    .line 397
    .line 398
    shl-long v2, v29, v14

    .line 399
    .line 400
    not-long v2, v2

    .line 401
    and-long/2addr v2, v12

    .line 402
    shl-long v11, v37, v14

    .line 403
    .line 404
    or-long/2addr v2, v11

    .line 405
    aput-wide v2, v1, v8

    .line 406
    .line 407
    aget-wide v2, v1, v7

    .line 408
    .line 409
    shl-long v11, v29, v19

    .line 410
    .line 411
    not-long v11, v11

    .line 412
    and-long/2addr v2, v11

    .line 413
    shl-long v11, v25, v19

    .line 414
    .line 415
    or-long/2addr v2, v11

    .line 416
    aput-wide v2, v1, v7

    .line 417
    .line 418
    aget-wide v2, v36, v6

    .line 419
    .line 420
    aput-wide v2, v36, v31

    .line 421
    .line 422
    aput-wide v17, v36, v6

    .line 423
    .line 424
    aget v2, v5, v6

    .line 425
    .line 426
    aput v2, v5, v31

    .line 427
    .line 428
    aput v15, v5, v6

    .line 429
    .line 430
    goto :goto_5

    .line 431
    :cond_8
    move/from16 v32, v2

    .line 432
    .line 433
    move-object/from16 v36, v3

    .line 434
    .line 435
    and-int/lit8 v2, v11, 0x7f

    .line 436
    .line 437
    int-to-long v2, v2

    .line 438
    move-wide/from16 v37, v2

    .line 439
    .line 440
    shl-long v2, v29, v14

    .line 441
    .line 442
    not-long v2, v2

    .line 443
    and-long/2addr v2, v12

    .line 444
    shl-long v11, v37, v14

    .line 445
    .line 446
    or-long/2addr v2, v11

    .line 447
    aput-wide v2, v1, v8

    .line 448
    .line 449
    aget-wide v2, v36, v31

    .line 450
    .line 451
    aget-wide v7, v36, v6

    .line 452
    .line 453
    aput-wide v7, v36, v31

    .line 454
    .line 455
    aput-wide v2, v36, v6

    .line 456
    .line 457
    aget v2, v5, v31

    .line 458
    .line 459
    aget v3, v5, v6

    .line 460
    .line 461
    aput v3, v5, v31

    .line 462
    .line 463
    aput v2, v5, v6

    .line 464
    .line 465
    add-int/lit8 v6, v6, -0x1

    .line 466
    .line 467
    :goto_5
    array-length v2, v1

    .line 468
    add-int/lit8 v2, v2, -0x1

    .line 469
    .line 470
    aget-wide v7, v1, v15

    .line 471
    .line 472
    and-long v7, v7, v34

    .line 473
    .line 474
    or-long v7, v7, v27

    .line 475
    .line 476
    aput-wide v7, v1, v2

    .line 477
    .line 478
    add-int/lit8 v6, v6, 0x1

    .line 479
    .line 480
    move/from16 v2, v32

    .line 481
    .line 482
    move/from16 v8, v33

    .line 483
    .line 484
    move-wide/from16 v13, v34

    .line 485
    .line 486
    move-object/from16 v3, v36

    .line 487
    .line 488
    goto/16 :goto_3

    .line 489
    .line 490
    :cond_9
    move/from16 v33, v8

    .line 491
    .line 492
    iget v1, v0, Landroidx/collection/MutableLongIntMap;->_capacity:I

    .line 493
    .line 494
    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    iget v2, v0, Landroidx/collection/MutableLongIntMap;->_size:I

    .line 499
    .line 500
    sub-int/2addr v1, v2

    .line 501
    iput v1, v0, Landroidx/collection/MutableLongIntMap;->growthLimit:I

    .line 502
    .line 503
    goto/16 :goto_a

    .line 504
    .line 505
    :cond_a
    :goto_6
    move-wide/from16 v29, v7

    .line 506
    .line 507
    move/from16 v22, v13

    .line 508
    .line 509
    move/from16 v33, v14

    .line 510
    .line 511
    goto :goto_7

    .line 512
    :cond_b
    const-wide/16 v25, 0x80

    .line 513
    .line 514
    goto :goto_6

    .line 515
    :goto_7
    iget v1, v0, Landroidx/collection/MutableLongIntMap;->_capacity:I

    .line 516
    .line 517
    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    .line 518
    .line 519
    .line 520
    move-result v1

    .line 521
    iget-object v2, v0, Landroidx/collection/MutableLongIntMap;->metadata:[J

    .line 522
    .line 523
    iget-object v3, v0, Landroidx/collection/MutableLongIntMap;->keys:[J

    .line 524
    .line 525
    iget-object v5, v0, Landroidx/collection/MutableLongIntMap;->values:[I

    .line 526
    .line 527
    iget v6, v0, Landroidx/collection/MutableLongIntMap;->_capacity:I

    .line 528
    .line 529
    invoke-virtual {v0, v1}, Landroidx/collection/MutableLongIntMap;->initializeStorage(I)V

    .line 530
    .line 531
    .line 532
    iget-object v1, v0, Landroidx/collection/MutableLongIntMap;->metadata:[J

    .line 533
    .line 534
    iget-object v7, v0, Landroidx/collection/MutableLongIntMap;->keys:[J

    .line 535
    .line 536
    iget-object v8, v0, Landroidx/collection/MutableLongIntMap;->values:[I

    .line 537
    .line 538
    iget v11, v0, Landroidx/collection/MutableLongIntMap;->_capacity:I

    .line 539
    .line 540
    move v12, v15

    .line 541
    :goto_8
    if-ge v12, v6, :cond_d

    .line 542
    .line 543
    shr-int/lit8 v13, v12, 0x3

    .line 544
    .line 545
    aget-wide v13, v2, v13

    .line 546
    .line 547
    and-int/lit8 v17, v12, 0x7

    .line 548
    .line 549
    shl-int/lit8 v17, v17, 0x3

    .line 550
    .line 551
    shr-long v13, v13, v17

    .line 552
    .line 553
    and-long v13, v13, v29

    .line 554
    .line 555
    cmp-long v13, v13, v25

    .line 556
    .line 557
    if-gez v13, :cond_c

    .line 558
    .line 559
    aget-wide v13, v3, v12

    .line 560
    .line 561
    ushr-long v17, v13, v22

    .line 562
    .line 563
    move-object/from16 v21, v1

    .line 564
    .line 565
    move-object/from16 v19, v2

    .line 566
    .line 567
    xor-long v1, v13, v17

    .line 568
    .line 569
    long-to-int v1, v1

    .line 570
    mul-int v1, v1, v20

    .line 571
    .line 572
    shl-int/lit8 v2, v1, 0x10

    .line 573
    .line 574
    xor-int/2addr v1, v2

    .line 575
    ushr-int/lit8 v2, v1, 0x7

    .line 576
    .line 577
    invoke-virtual {v0, v2}, Landroidx/collection/MutableLongIntMap;->findFirstAvailableSlot(I)I

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    and-int/lit8 v1, v1, 0x7f

    .line 582
    .line 583
    move/from16 v17, v2

    .line 584
    .line 585
    int-to-long v1, v1

    .line 586
    shr-int/lit8 v18, v17, 0x3

    .line 587
    .line 588
    and-int/lit8 v23, v17, 0x7

    .line 589
    .line 590
    shl-int/lit8 v23, v23, 0x3

    .line 591
    .line 592
    aget-wide v27, v21, v18

    .line 593
    .line 594
    move-wide/from16 v31, v1

    .line 595
    .line 596
    shl-long v1, v29, v23

    .line 597
    .line 598
    not-long v1, v1

    .line 599
    and-long v1, v27, v1

    .line 600
    .line 601
    shl-long v23, v31, v23

    .line 602
    .line 603
    or-long v1, v1, v23

    .line 604
    .line 605
    aput-wide v1, v21, v18

    .line 606
    .line 607
    add-int/lit8 v18, v17, -0x7

    .line 608
    .line 609
    and-int v18, v18, v11

    .line 610
    .line 611
    and-int/lit8 v23, v11, 0x7

    .line 612
    .line 613
    add-int v18, v18, v23

    .line 614
    .line 615
    shr-int/lit8 v18, v18, 0x3

    .line 616
    .line 617
    aput-wide v1, v21, v18

    .line 618
    .line 619
    aput-wide v13, v7, v17

    .line 620
    .line 621
    aget v1, v5, v12

    .line 622
    .line 623
    aput v1, v8, v17

    .line 624
    .line 625
    goto :goto_9

    .line 626
    :cond_c
    move-object/from16 v21, v1

    .line 627
    .line 628
    move-object/from16 v19, v2

    .line 629
    .line 630
    :goto_9
    add-int/lit8 v12, v12, 0x1

    .line 631
    .line 632
    move-object/from16 v2, v19

    .line 633
    .line 634
    move-object/from16 v1, v21

    .line 635
    .line 636
    goto :goto_8

    .line 637
    :cond_d
    :goto_a
    invoke-virtual {v0, v4}, Landroidx/collection/MutableLongIntMap;->findFirstAvailableSlot(I)I

    .line 638
    .line 639
    .line 640
    move-result v1

    .line 641
    :goto_b
    iget v2, v0, Landroidx/collection/MutableLongIntMap;->_size:I

    .line 642
    .line 643
    add-int/lit8 v2, v2, 0x1

    .line 644
    .line 645
    iput v2, v0, Landroidx/collection/MutableLongIntMap;->_size:I

    .line 646
    .line 647
    iget v2, v0, Landroidx/collection/MutableLongIntMap;->growthLimit:I

    .line 648
    .line 649
    iget-object v3, v0, Landroidx/collection/MutableLongIntMap;->metadata:[J

    .line 650
    .line 651
    shr-int/lit8 v4, v1, 0x3

    .line 652
    .line 653
    aget-wide v5, v3, v4

    .line 654
    .line 655
    and-int/lit8 v7, v1, 0x7

    .line 656
    .line 657
    shl-int/lit8 v7, v7, 0x3

    .line 658
    .line 659
    shr-long v11, v5, v7

    .line 660
    .line 661
    and-long v11, v11, v29

    .line 662
    .line 663
    cmp-long v8, v11, v25

    .line 664
    .line 665
    if-nez v8, :cond_e

    .line 666
    .line 667
    move/from16 v15, v33

    .line 668
    .line 669
    :cond_e
    sub-int/2addr v2, v15

    .line 670
    iput v2, v0, Landroidx/collection/MutableLongIntMap;->growthLimit:I

    .line 671
    .line 672
    iget v2, v0, Landroidx/collection/MutableLongIntMap;->_capacity:I

    .line 673
    .line 674
    shl-long v11, v29, v7

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
    add-int/lit8 v4, v1, -0x7

    .line 684
    .line 685
    and-int/2addr v4, v2

    .line 686
    and-int/lit8 v2, v2, 0x7

    .line 687
    .line 688
    add-int/2addr v4, v2

    .line 689
    shr-int/lit8 v2, v4, 0x3

    .line 690
    .line 691
    aput-wide v5, v3, v2

    .line 692
    .line 693
    not-int v1, v1

    .line 694
    :goto_c
    if-gez v1, :cond_f

    .line 695
    .line 696
    not-int v1, v1

    .line 697
    :cond_f
    iget-object v2, v0, Landroidx/collection/MutableLongIntMap;->keys:[J

    .line 698
    .line 699
    aput-wide p1, v2, v1

    .line 700
    .line 701
    iget-object v0, v0, Landroidx/collection/MutableLongIntMap;->values:[I

    .line 702
    .line 703
    aput p3, v0, v1

    .line 704
    .line 705
    return-void

    .line 706
    :cond_10
    move/from16 v21, v2

    .line 707
    .line 708
    move/from16 v22, v13

    .line 709
    .line 710
    add-int/lit8 v8, v16, 0x8

    .line 711
    .line 712
    add-int/2addr v6, v8

    .line 713
    and-int/2addr v6, v5

    .line 714
    move/from16 v2, v19

    .line 715
    .line 716
    move/from16 v3, v20

    .line 717
    .line 718
    move/from16 v1, v22

    .line 719
    .line 720
    goto/16 :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/collection/MutableLongIntMap;->_size:I

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
    iget-object v2, v0, Landroidx/collection/MutableLongIntMap;->keys:[J

    .line 20
    .line 21
    iget-object v3, v0, Landroidx/collection/MutableLongIntMap;->values:[I

    .line 22
    .line 23
    iget-object v4, v0, Landroidx/collection/MutableLongIntMap;->metadata:[J

    .line 24
    .line 25
    array-length v5, v4

    .line 26
    add-int/lit8 v5, v5, -0x2

    .line 27
    .line 28
    if-ltz v5, :cond_5

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
    if-eqz v11, :cond_4

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
    if-ge v13, v11, :cond_3

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
    if-gez v14, :cond_1

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
    aget v14, v3, v14

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
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    add-int/lit8 v8, v8, 0x1

    .line 90
    .line 91
    iget v6, v0, Landroidx/collection/MutableLongIntMap;->_size:I

    .line 92
    .line 93
    if-ge v8, v6, :cond_2

    .line 94
    .line 95
    const-string v6, ", "

    .line 96
    .line 97
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_1
    move/from16 v16, v7

    .line 102
    .line 103
    :cond_2
    :goto_2
    shr-long/2addr v9, v12

    .line 104
    add-int/lit8 v13, v13, 0x1

    .line 105
    .line 106
    move/from16 v7, v16

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    move/from16 v16, v7

    .line 110
    .line 111
    if-ne v11, v12, :cond_5

    .line 112
    .line 113
    move/from16 v6, v16

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_4
    move v6, v7

    .line 117
    :goto_3
    if-eq v6, v5, :cond_5

    .line 118
    .line 119
    add-int/lit8 v7, v6, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    const/16 v0, 0x7d

    .line 123
    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    return-object v0
.end method
