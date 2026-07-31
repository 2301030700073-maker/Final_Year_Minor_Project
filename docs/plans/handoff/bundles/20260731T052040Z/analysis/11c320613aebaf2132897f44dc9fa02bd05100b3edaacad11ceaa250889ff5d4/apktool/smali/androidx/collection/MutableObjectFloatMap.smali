.class public final Landroidx/collection/MutableObjectFloatMap;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public _capacity:I

.field public _size:I

.field public growthLimit:I

.field public keys:[Ljava/lang/Object;

.field public metadata:[J

.field public values:[F


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
    iput-object v0, p0, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    .line 7
    .line 8
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 11
    .line 12
    sget-object v0, Landroidx/collection/FloatSetKt;->EmptyFloatArray:[F

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/collection/MutableObjectFloatMap;->values:[F

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
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectFloatMap;->initializeStorage(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string p0, "Capacity must be a positive value."

    .line 27
    .line 28
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

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
    instance-of v3, v1, Landroidx/collection/MutableObjectFloatMap;

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
    check-cast v1, Landroidx/collection/MutableObjectFloatMap;

    .line 16
    .line 17
    iget v3, v1, Landroidx/collection/MutableObjectFloatMap;->_size:I

    .line 18
    .line 19
    iget v5, v0, Landroidx/collection/MutableObjectFloatMap;->_size:I

    .line 20
    .line 21
    if-eq v3, v5, :cond_2

    .line 22
    .line 23
    return v4

    .line 24
    :cond_2
    iget-object v3, v0, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v5, v0, Landroidx/collection/MutableObjectFloatMap;->values:[F

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

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
    aget-object v14, v3, v13

    .line 77
    .line 78
    aget v13, v5, v13

    .line 79
    .line 80
    invoke-virtual {v1, v14}, Landroidx/collection/MutableObjectFloatMap;->findKeyIndex(Ljava/lang/Object;)I

    .line 81
    .line 82
    .line 83
    move-result v14

    .line 84
    if-ltz v14, :cond_3

    .line 85
    .line 86
    iget-object v15, v1, Landroidx/collection/MutableObjectFloatMap;->values:[F

    .line 87
    .line 88
    aget v14, v15, v14

    .line 89
    .line 90
    cmpg-float v13, v13, v14

    .line 91
    .line 92
    if-nez v13, :cond_3

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    return v4

    .line 96
    :cond_4
    :goto_2
    shr-long/2addr v8, v11

    .line 97
    add-int/lit8 v12, v12, 0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    if-ne v10, v11, :cond_7

    .line 101
    .line 102
    :cond_6
    if-eq v7, v6, :cond_7

    .line 103
    .line 104
    add-int/lit8 v7, v7, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_7
    return v2
.end method

.method public final findFirstAvailableSlot(I)I
    .locals 9

    .line 1
    iget v0, p0, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

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

.method public final findKeyIndex(Ljava/lang/Object;)I
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    :goto_0
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
    iget v3, p0, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    .line 20
    .line 21
    ushr-int/lit8 v1, v1, 0x7

    .line 22
    .line 23
    :goto_1
    and-int/2addr v1, v3

    .line 24
    iget-object v4, p0, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    .line 25
    .line 26
    shr-int/lit8 v5, v1, 0x3

    .line 27
    .line 28
    and-int/lit8 v6, v1, 0x7

    .line 29
    .line 30
    shl-int/lit8 v6, v6, 0x3

    .line 31
    .line 32
    aget-wide v7, v4, v5

    .line 33
    .line 34
    ushr-long/2addr v7, v6

    .line 35
    add-int/lit8 v5, v5, 0x1

    .line 36
    .line 37
    aget-wide v9, v4, v5

    .line 38
    .line 39
    rsub-int/lit8 v4, v6, 0x40

    .line 40
    .line 41
    shl-long v4, v9, v4

    .line 42
    .line 43
    int-to-long v9, v6

    .line 44
    neg-long v9, v9

    .line 45
    const/16 v6, 0x3f

    .line 46
    .line 47
    shr-long/2addr v9, v6

    .line 48
    and-long/2addr v4, v9

    .line 49
    or-long/2addr v4, v7

    .line 50
    int-to-long v6, v2

    .line 51
    const-wide v8, 0x101010101010101L

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    mul-long/2addr v6, v8

    .line 57
    xor-long/2addr v6, v4

    .line 58
    sub-long v8, v6, v8

    .line 59
    .line 60
    not-long v6, v6

    .line 61
    and-long/2addr v6, v8

    .line 62
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    and-long/2addr v6, v8

    .line 68
    :goto_2
    const-wide/16 v10, 0x0

    .line 69
    .line 70
    cmp-long v12, v6, v10

    .line 71
    .line 72
    if-eqz v12, :cond_2

    .line 73
    .line 74
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    shr-int/lit8 v10, v10, 0x3

    .line 79
    .line 80
    add-int/2addr v10, v1

    .line 81
    and-int/2addr v10, v3

    .line 82
    iget-object v11, p0, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 83
    .line 84
    aget-object v11, v11, v10

    .line 85
    .line 86
    invoke-static {v11, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    if-eqz v11, :cond_1

    .line 91
    .line 92
    return v10

    .line 93
    :cond_1
    const-wide/16 v10, 0x1

    .line 94
    .line 95
    sub-long v10, v6, v10

    .line 96
    .line 97
    and-long/2addr v6, v10

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    not-long v6, v4

    .line 100
    const/4 v12, 0x6

    .line 101
    shl-long/2addr v6, v12

    .line 102
    and-long/2addr v4, v6

    .line 103
    and-long/2addr v4, v8

    .line 104
    cmp-long v4, v4, v10

    .line 105
    .line 106
    if-eqz v4, :cond_3

    .line 107
    .line 108
    const/4 p0, -0x1

    .line 109
    return p0

    .line 110
    :cond_3
    add-int/lit8 v0, v0, 0x8

    .line 111
    .line 112
    add-int/2addr v1, v0

    .line 113
    goto :goto_1
.end method

.method public final get(Ljava/lang/Object;)F
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectFloatMap;->findKeyIndex(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/collection/MutableObjectFloatMap;->values:[F

    .line 8
    .line 9
    aget p0, p0, v0

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v0, "There is no key "

    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, " in the map"

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public final hashCode()I
    .locals 15

    .line 1
    iget-object v0, p0, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/collection/MutableObjectFloatMap;->values:[F

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    .line 6
    .line 7
    array-length v2, p0

    .line 8
    add-int/lit8 v2, v2, -0x2

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-ltz v2, :cond_6

    .line 12
    .line 13
    move v4, v3

    .line 14
    move v5, v4

    .line 15
    :goto_0
    aget-wide v6, p0, v4

    .line 16
    .line 17
    not-long v8, v6

    .line 18
    const/4 v10, 0x7

    .line 19
    shl-long/2addr v8, v10

    .line 20
    and-long/2addr v8, v6

    .line 21
    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long/2addr v8, v10

    .line 27
    cmp-long v8, v8, v10

    .line 28
    .line 29
    if-eqz v8, :cond_4

    .line 30
    .line 31
    sub-int v8, v4, v2

    .line 32
    .line 33
    not-int v8, v8

    .line 34
    ushr-int/lit8 v8, v8, 0x1f

    .line 35
    .line 36
    const/16 v9, 0x8

    .line 37
    .line 38
    rsub-int/lit8 v8, v8, 0x8

    .line 39
    .line 40
    move v10, v3

    .line 41
    :goto_1
    if-ge v10, v8, :cond_2

    .line 42
    .line 43
    const-wide/16 v11, 0xff

    .line 44
    .line 45
    and-long/2addr v11, v6

    .line 46
    const-wide/16 v13, 0x80

    .line 47
    .line 48
    cmp-long v11, v11, v13

    .line 49
    .line 50
    if-gez v11, :cond_1

    .line 51
    .line 52
    shl-int/lit8 v11, v4, 0x3

    .line 53
    .line 54
    add-int/2addr v11, v10

    .line 55
    aget-object v12, v0, v11

    .line 56
    .line 57
    aget v11, v1, v11

    .line 58
    .line 59
    if-eqz v12, :cond_0

    .line 60
    .line 61
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result v12

    .line 65
    goto :goto_2

    .line 66
    :cond_0
    move v12, v3

    .line 67
    :goto_2
    invoke-static {v11}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    xor-int/2addr v11, v12

    .line 72
    add-int/2addr v5, v11

    .line 73
    :cond_1
    shr-long/2addr v6, v9

    .line 74
    add-int/lit8 v10, v10, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    if-ne v8, v9, :cond_3

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_3
    return v5

    .line 81
    :cond_4
    :goto_3
    if-eq v4, v2, :cond_5

    .line 82
    .line 83
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    return v5

    .line 87
    :cond_6
    return v3
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
    iput p1, p0, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

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
    iput-object v0, p0, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

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
    iget v0, p0, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    .line 58
    .line 59
    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iget v1, p0, Landroidx/collection/MutableObjectFloatMap;->_size:I

    .line 64
    .line 65
    sub-int/2addr v0, v1

    .line 66
    iput v0, p0, Landroidx/collection/MutableObjectFloatMap;->growthLimit:I

    .line 67
    .line 68
    new-array v0, p1, [Ljava/lang/Object;

    .line 69
    .line 70
    iput-object v0, p0, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 71
    .line 72
    new-array p1, p1, [F

    .line 73
    .line 74
    iput-object p1, p0, Landroidx/collection/MutableObjectFloatMap;->values:[F

    .line 75
    .line 76
    return-void
.end method

.method public final set(Landroidx/navigation3/ui/AnimatedSceneKey;F)V
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/navigation3/ui/AnimatedSceneKey;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const v3, -0x3361d2af    # -8.293031E7f

    .line 10
    .line 11
    .line 12
    mul-int/2addr v2, v3

    .line 13
    shl-int/lit8 v4, v2, 0x10

    .line 14
    .line 15
    xor-int/2addr v2, v4

    .line 16
    ushr-int/lit8 v4, v2, 0x7

    .line 17
    .line 18
    and-int/lit8 v2, v2, 0x7f

    .line 19
    .line 20
    iget v5, v0, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    .line 21
    .line 22
    and-int v6, v4, v5

    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    :goto_0
    iget-object v9, v0, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    .line 26
    .line 27
    shr-int/lit8 v10, v6, 0x3

    .line 28
    .line 29
    and-int/lit8 v11, v6, 0x7

    .line 30
    .line 31
    shl-int/lit8 v11, v11, 0x3

    .line 32
    .line 33
    aget-wide v12, v9, v10

    .line 34
    .line 35
    ushr-long/2addr v12, v11

    .line 36
    const/4 v14, 0x1

    .line 37
    add-int/2addr v10, v14

    .line 38
    aget-wide v15, v9, v10

    .line 39
    .line 40
    rsub-int/lit8 v9, v11, 0x40

    .line 41
    .line 42
    shl-long v9, v15, v9

    .line 43
    .line 44
    move/from16 v16, v8

    .line 45
    .line 46
    const/4 v15, 0x0

    .line 47
    int-to-long v7, v11

    .line 48
    neg-long v7, v7

    .line 49
    const/16 v11, 0x3f

    .line 50
    .line 51
    shr-long/2addr v7, v11

    .line 52
    and-long/2addr v7, v9

    .line 53
    or-long/2addr v7, v12

    .line 54
    int-to-long v9, v2

    .line 55
    const-wide v11, 0x101010101010101L

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    mul-long v17, v9, v11

    .line 61
    .line 62
    move-wide/from16 v19, v11

    .line 63
    .line 64
    xor-long v11, v7, v17

    .line 65
    .line 66
    sub-long v17, v11, v19

    .line 67
    .line 68
    not-long v11, v11

    .line 69
    and-long v11, v17, v11

    .line 70
    .line 71
    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    and-long v11, v11, v17

    .line 77
    .line 78
    :goto_1
    const-wide/16 v19, 0x0

    .line 79
    .line 80
    cmp-long v13, v11, v19

    .line 81
    .line 82
    if-eqz v13, :cond_1

    .line 83
    .line 84
    invoke-static {v11, v12}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 85
    .line 86
    .line 87
    move-result v13

    .line 88
    shr-int/lit8 v13, v13, 0x3

    .line 89
    .line 90
    add-int/2addr v13, v6

    .line 91
    and-int/2addr v13, v5

    .line 92
    move/from16 v21, v3

    .line 93
    .line 94
    iget-object v3, v0, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 95
    .line 96
    aget-object v3, v3, v13

    .line 97
    .line 98
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_0

    .line 103
    .line 104
    goto/16 :goto_e

    .line 105
    .line 106
    :cond_0
    const-wide/16 v19, 0x1

    .line 107
    .line 108
    sub-long v19, v11, v19

    .line 109
    .line 110
    and-long v11, v11, v19

    .line 111
    .line 112
    move/from16 v3, v21

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    move/from16 v21, v3

    .line 116
    .line 117
    not-long v11, v7

    .line 118
    const/4 v3, 0x6

    .line 119
    shl-long/2addr v11, v3

    .line 120
    and-long/2addr v7, v11

    .line 121
    and-long v7, v7, v17

    .line 122
    .line 123
    cmp-long v3, v7, v19

    .line 124
    .line 125
    const/16 v7, 0x8

    .line 126
    .line 127
    if-eqz v3, :cond_12

    .line 128
    .line 129
    invoke-virtual {v0, v4}, Landroidx/collection/MutableObjectFloatMap;->findFirstAvailableSlot(I)I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    iget v3, v0, Landroidx/collection/MutableObjectFloatMap;->growthLimit:I

    .line 134
    .line 135
    const-wide/16 v11, 0xff

    .line 136
    .line 137
    if-nez v3, :cond_2

    .line 138
    .line 139
    iget-object v3, v0, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    .line 140
    .line 141
    shr-int/lit8 v13, v2, 0x3

    .line 142
    .line 143
    aget-wide v19, v3, v13

    .line 144
    .line 145
    and-int/lit8 v3, v2, 0x7

    .line 146
    .line 147
    shl-int/lit8 v3, v3, 0x3

    .line 148
    .line 149
    shr-long v19, v19, v3

    .line 150
    .line 151
    and-long v19, v19, v11

    .line 152
    .line 153
    const-wide/16 v22, 0xfe

    .line 154
    .line 155
    cmp-long v3, v19, v22

    .line 156
    .line 157
    if-nez v3, :cond_3

    .line 158
    .line 159
    :cond_2
    move-wide/from16 v29, v9

    .line 160
    .line 161
    move-wide/from16 v27, v11

    .line 162
    .line 163
    move/from16 v18, v14

    .line 164
    .line 165
    move/from16 v32, v15

    .line 166
    .line 167
    const-wide/16 v19, 0x80

    .line 168
    .line 169
    const/16 v31, 0x7

    .line 170
    .line 171
    goto/16 :goto_d

    .line 172
    .line 173
    :cond_3
    iget v2, v0, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    .line 174
    .line 175
    if-le v2, v7, :cond_c

    .line 176
    .line 177
    iget v3, v0, Landroidx/collection/MutableObjectFloatMap;->_size:I

    .line 178
    .line 179
    const-wide/16 v19, 0x80

    .line 180
    .line 181
    int-to-long v5, v3

    .line 182
    const-wide/16 v24, 0x20

    .line 183
    .line 184
    mul-long v5, v5, v24

    .line 185
    .line 186
    int-to-long v2, v2

    .line 187
    const-wide/16 v24, 0x19

    .line 188
    .line 189
    mul-long v2, v2, v24

    .line 190
    .line 191
    const-wide/high16 v24, -0x8000000000000000L

    .line 192
    .line 193
    xor-long v5, v5, v24

    .line 194
    .line 195
    xor-long v2, v2, v24

    .line 196
    .line 197
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-gtz v2, :cond_b

    .line 202
    .line 203
    iget-object v2, v0, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    .line 204
    .line 205
    iget v3, v0, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    .line 206
    .line 207
    iget-object v5, v0, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 208
    .line 209
    iget-object v6, v0, Landroidx/collection/MutableObjectFloatMap;->values:[F

    .line 210
    .line 211
    add-int/lit8 v13, v3, 0x7

    .line 212
    .line 213
    shr-int/lit8 v13, v13, 0x3

    .line 214
    .line 215
    move/from16 v26, v7

    .line 216
    .line 217
    move v7, v15

    .line 218
    :goto_2
    if-ge v7, v13, :cond_4

    .line 219
    .line 220
    aget-wide v27, v2, v7

    .line 221
    .line 222
    move-wide/from16 v29, v9

    .line 223
    .line 224
    const/4 v10, 0x7

    .line 225
    and-long v8, v27, v17

    .line 226
    .line 227
    move-wide/from16 v27, v11

    .line 228
    .line 229
    move v12, v10

    .line 230
    not-long v10, v8

    .line 231
    ushr-long/2addr v8, v12

    .line 232
    add-long/2addr v10, v8

    .line 233
    const-wide v8, -0x101010101010102L

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    and-long/2addr v8, v10

    .line 239
    aput-wide v8, v2, v7

    .line 240
    .line 241
    add-int/lit8 v7, v7, 0x1

    .line 242
    .line 243
    move-wide/from16 v11, v27

    .line 244
    .line 245
    move-wide/from16 v9, v29

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_4
    move-wide/from16 v29, v9

    .line 249
    .line 250
    move-wide/from16 v27, v11

    .line 251
    .line 252
    const/4 v12, 0x7

    .line 253
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->getLastIndex([J)I

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    add-int/lit8 v8, v7, -0x1

    .line 258
    .line 259
    aget-wide v9, v2, v8

    .line 260
    .line 261
    const-wide v16, 0xffffffffffffffL

    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    and-long v9, v9, v16

    .line 267
    .line 268
    const-wide/high16 v31, -0x100000000000000L

    .line 269
    .line 270
    or-long v9, v9, v31

    .line 271
    .line 272
    aput-wide v9, v2, v8

    .line 273
    .line 274
    aget-wide v8, v2, v15

    .line 275
    .line 276
    aput-wide v8, v2, v7

    .line 277
    .line 278
    move v7, v15

    .line 279
    :goto_3
    if-eq v7, v3, :cond_a

    .line 280
    .line 281
    shr-int/lit8 v8, v7, 0x3

    .line 282
    .line 283
    aget-wide v9, v2, v8

    .line 284
    .line 285
    and-int/lit8 v11, v7, 0x7

    .line 286
    .line 287
    shl-int/lit8 v11, v11, 0x3

    .line 288
    .line 289
    shr-long/2addr v9, v11

    .line 290
    and-long v9, v9, v27

    .line 291
    .line 292
    cmp-long v13, v9, v19

    .line 293
    .line 294
    if-nez v13, :cond_5

    .line 295
    .line 296
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 297
    .line 298
    goto :goto_3

    .line 299
    :cond_5
    cmp-long v9, v9, v22

    .line 300
    .line 301
    if-eqz v9, :cond_6

    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_6
    aget-object v9, v5, v7

    .line 305
    .line 306
    if-eqz v9, :cond_7

    .line 307
    .line 308
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    .line 309
    .line 310
    .line 311
    move-result v9

    .line 312
    goto :goto_5

    .line 313
    :cond_7
    move v9, v15

    .line 314
    :goto_5
    mul-int v9, v9, v21

    .line 315
    .line 316
    shl-int/lit8 v10, v9, 0x10

    .line 317
    .line 318
    xor-int/2addr v9, v10

    .line 319
    ushr-int/lit8 v10, v9, 0x7

    .line 320
    .line 321
    invoke-virtual {v0, v10}, Landroidx/collection/MutableObjectFloatMap;->findFirstAvailableSlot(I)I

    .line 322
    .line 323
    .line 324
    move-result v13

    .line 325
    and-int/2addr v10, v3

    .line 326
    sub-int v18, v13, v10

    .line 327
    .line 328
    and-int v18, v18, v3

    .line 329
    .line 330
    move/from16 v31, v12

    .line 331
    .line 332
    div-int/lit8 v12, v18, 0x8

    .line 333
    .line 334
    sub-int v10, v7, v10

    .line 335
    .line 336
    and-int/2addr v10, v3

    .line 337
    div-int/lit8 v10, v10, 0x8

    .line 338
    .line 339
    if-ne v12, v10, :cond_8

    .line 340
    .line 341
    and-int/lit8 v9, v9, 0x7f

    .line 342
    .line 343
    int-to-long v9, v9

    .line 344
    aget-wide v12, v2, v8

    .line 345
    .line 346
    move/from16 v18, v14

    .line 347
    .line 348
    move/from16 v32, v15

    .line 349
    .line 350
    shl-long v14, v27, v11

    .line 351
    .line 352
    not-long v14, v14

    .line 353
    and-long/2addr v12, v14

    .line 354
    shl-long/2addr v9, v11

    .line 355
    or-long/2addr v9, v12

    .line 356
    aput-wide v9, v2, v8

    .line 357
    .line 358
    array-length v8, v2

    .line 359
    add-int/lit8 v8, v8, -0x1

    .line 360
    .line 361
    aget-wide v9, v2, v32

    .line 362
    .line 363
    and-long v9, v9, v16

    .line 364
    .line 365
    or-long v9, v9, v24

    .line 366
    .line 367
    aput-wide v9, v2, v8

    .line 368
    .line 369
    add-int/lit8 v7, v7, 0x1

    .line 370
    .line 371
    move/from16 v14, v18

    .line 372
    .line 373
    move/from16 v12, v31

    .line 374
    .line 375
    move/from16 v15, v32

    .line 376
    .line 377
    goto :goto_3

    .line 378
    :cond_8
    move/from16 v18, v14

    .line 379
    .line 380
    move/from16 v32, v15

    .line 381
    .line 382
    shr-int/lit8 v10, v13, 0x3

    .line 383
    .line 384
    aget-wide v14, v2, v10

    .line 385
    .line 386
    and-int/lit8 v12, v13, 0x7

    .line 387
    .line 388
    shl-int/lit8 v12, v12, 0x3

    .line 389
    .line 390
    shr-long v33, v14, v12

    .line 391
    .line 392
    and-long v33, v33, v27

    .line 393
    .line 394
    cmp-long v33, v33, v19

    .line 395
    .line 396
    if-nez v33, :cond_9

    .line 397
    .line 398
    and-int/lit8 v9, v9, 0x7f

    .line 399
    .line 400
    move-object/from16 v33, v5

    .line 401
    .line 402
    move-object/from16 v34, v6

    .line 403
    .line 404
    int-to-long v5, v9

    .line 405
    move-wide/from16 v35, v5

    .line 406
    .line 407
    shl-long v5, v27, v12

    .line 408
    .line 409
    not-long v5, v5

    .line 410
    and-long/2addr v5, v14

    .line 411
    shl-long v14, v35, v12

    .line 412
    .line 413
    or-long/2addr v5, v14

    .line 414
    aput-wide v5, v2, v10

    .line 415
    .line 416
    aget-wide v5, v2, v8

    .line 417
    .line 418
    shl-long v9, v27, v11

    .line 419
    .line 420
    not-long v9, v9

    .line 421
    and-long/2addr v5, v9

    .line 422
    shl-long v9, v19, v11

    .line 423
    .line 424
    or-long/2addr v5, v9

    .line 425
    aput-wide v5, v2, v8

    .line 426
    .line 427
    aget-object v5, v33, v7

    .line 428
    .line 429
    aput-object v5, v33, v13

    .line 430
    .line 431
    const/4 v5, 0x0

    .line 432
    aput-object v5, v33, v7

    .line 433
    .line 434
    aget v5, v34, v7

    .line 435
    .line 436
    aput v5, v34, v13

    .line 437
    .line 438
    const/4 v5, 0x0

    .line 439
    aput v5, v34, v7

    .line 440
    .line 441
    goto :goto_6

    .line 442
    :cond_9
    move-object/from16 v33, v5

    .line 443
    .line 444
    move-object/from16 v34, v6

    .line 445
    .line 446
    and-int/lit8 v5, v9, 0x7f

    .line 447
    .line 448
    int-to-long v5, v5

    .line 449
    shl-long v8, v27, v12

    .line 450
    .line 451
    not-long v8, v8

    .line 452
    and-long/2addr v8, v14

    .line 453
    shl-long/2addr v5, v12

    .line 454
    or-long/2addr v5, v8

    .line 455
    aput-wide v5, v2, v10

    .line 456
    .line 457
    aget-object v5, v33, v13

    .line 458
    .line 459
    aget-object v6, v33, v7

    .line 460
    .line 461
    aput-object v6, v33, v13

    .line 462
    .line 463
    aput-object v5, v33, v7

    .line 464
    .line 465
    aget v5, v34, v13

    .line 466
    .line 467
    aget v6, v34, v7

    .line 468
    .line 469
    aput v6, v34, v13

    .line 470
    .line 471
    aput v5, v34, v7

    .line 472
    .line 473
    add-int/lit8 v7, v7, -0x1

    .line 474
    .line 475
    :goto_6
    array-length v5, v2

    .line 476
    add-int/lit8 v5, v5, -0x1

    .line 477
    .line 478
    aget-wide v8, v2, v32

    .line 479
    .line 480
    and-long v8, v8, v16

    .line 481
    .line 482
    or-long v8, v8, v24

    .line 483
    .line 484
    aput-wide v8, v2, v5

    .line 485
    .line 486
    add-int/lit8 v7, v7, 0x1

    .line 487
    .line 488
    move/from16 v14, v18

    .line 489
    .line 490
    move/from16 v12, v31

    .line 491
    .line 492
    move/from16 v15, v32

    .line 493
    .line 494
    move-object/from16 v5, v33

    .line 495
    .line 496
    move-object/from16 v6, v34

    .line 497
    .line 498
    goto/16 :goto_3

    .line 499
    .line 500
    :cond_a
    move/from16 v31, v12

    .line 501
    .line 502
    move/from16 v18, v14

    .line 503
    .line 504
    move/from16 v32, v15

    .line 505
    .line 506
    iget v2, v0, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    .line 507
    .line 508
    invoke-static {v2}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    .line 509
    .line 510
    .line 511
    move-result v2

    .line 512
    iget v3, v0, Landroidx/collection/MutableObjectFloatMap;->_size:I

    .line 513
    .line 514
    sub-int/2addr v2, v3

    .line 515
    iput v2, v0, Landroidx/collection/MutableObjectFloatMap;->growthLimit:I

    .line 516
    .line 517
    goto/16 :goto_c

    .line 518
    .line 519
    :cond_b
    :goto_7
    move-wide/from16 v29, v9

    .line 520
    .line 521
    move-wide/from16 v27, v11

    .line 522
    .line 523
    move/from16 v18, v14

    .line 524
    .line 525
    move/from16 v32, v15

    .line 526
    .line 527
    const/16 v31, 0x7

    .line 528
    .line 529
    goto :goto_8

    .line 530
    :cond_c
    const-wide/16 v19, 0x80

    .line 531
    .line 532
    goto :goto_7

    .line 533
    :goto_8
    iget v2, v0, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    .line 534
    .line 535
    invoke-static {v2}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    .line 536
    .line 537
    .line 538
    move-result v2

    .line 539
    iget-object v3, v0, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    .line 540
    .line 541
    iget-object v5, v0, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 542
    .line 543
    iget-object v6, v0, Landroidx/collection/MutableObjectFloatMap;->values:[F

    .line 544
    .line 545
    iget v7, v0, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    .line 546
    .line 547
    invoke-virtual {v0, v2}, Landroidx/collection/MutableObjectFloatMap;->initializeStorage(I)V

    .line 548
    .line 549
    .line 550
    iget-object v2, v0, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    .line 551
    .line 552
    iget-object v8, v0, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 553
    .line 554
    iget-object v9, v0, Landroidx/collection/MutableObjectFloatMap;->values:[F

    .line 555
    .line 556
    iget v10, v0, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    .line 557
    .line 558
    move/from16 v11, v32

    .line 559
    .line 560
    :goto_9
    if-ge v11, v7, :cond_f

    .line 561
    .line 562
    shr-int/lit8 v12, v11, 0x3

    .line 563
    .line 564
    aget-wide v12, v3, v12

    .line 565
    .line 566
    and-int/lit8 v14, v11, 0x7

    .line 567
    .line 568
    shl-int/lit8 v14, v14, 0x3

    .line 569
    .line 570
    shr-long/2addr v12, v14

    .line 571
    and-long v12, v12, v27

    .line 572
    .line 573
    cmp-long v12, v12, v19

    .line 574
    .line 575
    if-gez v12, :cond_e

    .line 576
    .line 577
    aget-object v12, v5, v11

    .line 578
    .line 579
    if-eqz v12, :cond_d

    .line 580
    .line 581
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 582
    .line 583
    .line 584
    move-result v13

    .line 585
    goto :goto_a

    .line 586
    :cond_d
    move/from16 v13, v32

    .line 587
    .line 588
    :goto_a
    mul-int v13, v13, v21

    .line 589
    .line 590
    shl-int/lit8 v14, v13, 0x10

    .line 591
    .line 592
    xor-int/2addr v13, v14

    .line 593
    ushr-int/lit8 v14, v13, 0x7

    .line 594
    .line 595
    invoke-virtual {v0, v14}, Landroidx/collection/MutableObjectFloatMap;->findFirstAvailableSlot(I)I

    .line 596
    .line 597
    .line 598
    move-result v14

    .line 599
    and-int/lit8 v13, v13, 0x7f

    .line 600
    .line 601
    move-object v15, v2

    .line 602
    int-to-long v1, v13

    .line 603
    shr-int/lit8 v13, v14, 0x3

    .line 604
    .line 605
    and-int/lit8 v16, v14, 0x7

    .line 606
    .line 607
    shl-int/lit8 v16, v16, 0x3

    .line 608
    .line 609
    aget-wide v22, v15, v13

    .line 610
    .line 611
    move-wide/from16 v24, v1

    .line 612
    .line 613
    shl-long v1, v27, v16

    .line 614
    .line 615
    not-long v1, v1

    .line 616
    and-long v1, v22, v1

    .line 617
    .line 618
    shl-long v16, v24, v16

    .line 619
    .line 620
    or-long v1, v1, v16

    .line 621
    .line 622
    aput-wide v1, v15, v13

    .line 623
    .line 624
    add-int/lit8 v13, v14, -0x7

    .line 625
    .line 626
    and-int/2addr v13, v10

    .line 627
    and-int/lit8 v16, v10, 0x7

    .line 628
    .line 629
    add-int v13, v13, v16

    .line 630
    .line 631
    shr-int/lit8 v13, v13, 0x3

    .line 632
    .line 633
    aput-wide v1, v15, v13

    .line 634
    .line 635
    aput-object v12, v8, v14

    .line 636
    .line 637
    aget v1, v6, v11

    .line 638
    .line 639
    aput v1, v9, v14

    .line 640
    .line 641
    goto :goto_b

    .line 642
    :cond_e
    move-object v15, v2

    .line 643
    :goto_b
    add-int/lit8 v11, v11, 0x1

    .line 644
    .line 645
    move-object/from16 v1, p1

    .line 646
    .line 647
    move-object v2, v15

    .line 648
    goto :goto_9

    .line 649
    :cond_f
    :goto_c
    invoke-virtual {v0, v4}, Landroidx/collection/MutableObjectFloatMap;->findFirstAvailableSlot(I)I

    .line 650
    .line 651
    .line 652
    move-result v2

    .line 653
    :goto_d
    iget v1, v0, Landroidx/collection/MutableObjectFloatMap;->_size:I

    .line 654
    .line 655
    add-int/lit8 v1, v1, 0x1

    .line 656
    .line 657
    iput v1, v0, Landroidx/collection/MutableObjectFloatMap;->_size:I

    .line 658
    .line 659
    iget v1, v0, Landroidx/collection/MutableObjectFloatMap;->growthLimit:I

    .line 660
    .line 661
    iget-object v3, v0, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    .line 662
    .line 663
    shr-int/lit8 v4, v2, 0x3

    .line 664
    .line 665
    aget-wide v5, v3, v4

    .line 666
    .line 667
    and-int/lit8 v7, v2, 0x7

    .line 668
    .line 669
    shl-int/lit8 v7, v7, 0x3

    .line 670
    .line 671
    shr-long v8, v5, v7

    .line 672
    .line 673
    and-long v8, v8, v27

    .line 674
    .line 675
    cmp-long v8, v8, v19

    .line 676
    .line 677
    if-nez v8, :cond_10

    .line 678
    .line 679
    move/from16 v32, v18

    .line 680
    .line 681
    :cond_10
    sub-int v1, v1, v32

    .line 682
    .line 683
    iput v1, v0, Landroidx/collection/MutableObjectFloatMap;->growthLimit:I

    .line 684
    .line 685
    iget v1, v0, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    .line 686
    .line 687
    shl-long v8, v27, v7

    .line 688
    .line 689
    not-long v8, v8

    .line 690
    and-long/2addr v5, v8

    .line 691
    shl-long v7, v29, v7

    .line 692
    .line 693
    or-long/2addr v5, v7

    .line 694
    aput-wide v5, v3, v4

    .line 695
    .line 696
    add-int/lit8 v4, v2, -0x7

    .line 697
    .line 698
    and-int/2addr v4, v1

    .line 699
    and-int/lit8 v1, v1, 0x7

    .line 700
    .line 701
    add-int/2addr v4, v1

    .line 702
    shr-int/lit8 v1, v4, 0x3

    .line 703
    .line 704
    aput-wide v5, v3, v1

    .line 705
    .line 706
    not-int v13, v2

    .line 707
    :goto_e
    if-gez v13, :cond_11

    .line 708
    .line 709
    not-int v13, v13

    .line 710
    :cond_11
    iget-object v1, v0, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 711
    .line 712
    aput-object p1, v1, v13

    .line 713
    .line 714
    iget-object v0, v0, Landroidx/collection/MutableObjectFloatMap;->values:[F

    .line 715
    .line 716
    aput p2, v0, v13

    .line 717
    .line 718
    return-void

    .line 719
    :cond_12
    move/from16 v26, v7

    .line 720
    .line 721
    move/from16 v32, v15

    .line 722
    .line 723
    add-int/lit8 v8, v16, 0x8

    .line 724
    .line 725
    add-int/2addr v6, v8

    .line 726
    and-int/2addr v6, v5

    .line 727
    move-object/from16 v1, p1

    .line 728
    .line 729
    move/from16 v3, v21

    .line 730
    .line 731
    goto/16 :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/collection/MutableObjectFloatMap;->_size:I

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
    iget-object v2, v0, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v3, v0, Landroidx/collection/MutableObjectFloatMap;->values:[F

    .line 22
    .line 23
    iget-object v4, v0, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

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
    const/4 v6, 0x0

    .line 31
    move v7, v6

    .line 32
    move v8, v7

    .line 33
    :goto_0
    aget-wide v9, v4, v7

    .line 34
    .line 35
    not-long v11, v9

    .line 36
    const/4 v13, 0x7

    .line 37
    shl-long/2addr v11, v13

    .line 38
    and-long/2addr v11, v9

    .line 39
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    and-long/2addr v11, v13

    .line 45
    cmp-long v11, v11, v13

    .line 46
    .line 47
    if-eqz v11, :cond_4

    .line 48
    .line 49
    sub-int v11, v7, v5

    .line 50
    .line 51
    not-int v11, v11

    .line 52
    ushr-int/lit8 v11, v11, 0x1f

    .line 53
    .line 54
    const/16 v12, 0x8

    .line 55
    .line 56
    rsub-int/lit8 v11, v11, 0x8

    .line 57
    .line 58
    move v13, v6

    .line 59
    :goto_1
    if-ge v13, v11, :cond_3

    .line 60
    .line 61
    const-wide/16 v14, 0xff

    .line 62
    .line 63
    and-long/2addr v14, v9

    .line 64
    const-wide/16 v16, 0x80

    .line 65
    .line 66
    cmp-long v14, v14, v16

    .line 67
    .line 68
    if-gez v14, :cond_2

    .line 69
    .line 70
    shl-int/lit8 v14, v7, 0x3

    .line 71
    .line 72
    add-int/2addr v14, v13

    .line 73
    aget-object v15, v2, v14

    .line 74
    .line 75
    aget v14, v3, v14

    .line 76
    .line 77
    if-ne v15, v0, :cond_1

    .line 78
    .line 79
    const-string v15, "(this)"

    .line 80
    .line 81
    :cond_1
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v15, "="

    .line 85
    .line 86
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    add-int/lit8 v8, v8, 0x1

    .line 93
    .line 94
    iget v14, v0, Landroidx/collection/MutableObjectFloatMap;->_size:I

    .line 95
    .line 96
    if-ge v8, v14, :cond_2

    .line 97
    .line 98
    const-string v14, ", "

    .line 99
    .line 100
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    :cond_2
    shr-long/2addr v9, v12

    .line 104
    add-int/lit8 v13, v13, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    if-ne v11, v12, :cond_5

    .line 108
    .line 109
    :cond_4
    if-eq v7, v5, :cond_5

    .line 110
    .line 111
    add-int/lit8 v7, v7, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_5
    const/16 v0, 0x7d

    .line 115
    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    return-object v0
.end method
