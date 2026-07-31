.class public final Landroidx/compose/runtime/snapshots/SnapshotIdSet;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# static fields
.field public static final EMPTY:Landroidx/compose/runtime/snapshots/SnapshotIdSet;


# instance fields
.field public final belowBound:[J

.field public final lowerBound:J

.field public final lowerSet:J

.field public final upperSet:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 2
    .line 3
    const-wide/16 v6, 0x0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    invoke-direct/range {v0 .. v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>([JJJJ)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->EMPTY:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>([JJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    .line 5
    .line 6
    iput-wide p4, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    .line 7
    .line 8
    iput-wide p6, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final andNot(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->EMPTY:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 6
    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    if-ne v0, v2, :cond_1

    .line 11
    .line 12
    return-object v2

    .line 13
    :cond_1
    iget-wide v2, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    .line 14
    .line 15
    iget-wide v4, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    .line 16
    .line 17
    iget-object v6, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    .line 18
    .line 19
    iget-wide v7, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    .line 20
    .line 21
    iget-wide v9, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    .line 22
    .line 23
    iget-wide v11, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    .line 24
    .line 25
    cmp-long v1, v2, v11

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    move-wide/from16 v17, v11

    .line 30
    .line 31
    iget-object v12, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    .line 32
    .line 33
    if-ne v6, v12, :cond_2

    .line 34
    .line 35
    new-instance v11, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 36
    .line 37
    iget-wide v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    .line 38
    .line 39
    not-long v3, v9

    .line 40
    and-long v13, v1, v3

    .line 41
    .line 42
    iget-wide v0, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    .line 43
    .line 44
    not-long v2, v7

    .line 45
    and-long v15, v0, v2

    .line 46
    .line 47
    invoke-direct/range {v11 .. v18}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>([JJJJ)V

    .line 48
    .line 49
    .line 50
    return-object v11

    .line 51
    :cond_2
    const/4 v1, 0x0

    .line 52
    if-eqz v6, :cond_3

    .line 53
    .line 54
    array-length v2, v6

    .line 55
    move v3, v1

    .line 56
    :goto_0
    if-ge v3, v2, :cond_3

    .line 57
    .line 58
    aget-wide v11, v6, v3

    .line 59
    .line 60
    invoke-virtual {v0, v11, v12}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->clear(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const-wide/16 v2, 0x0

    .line 68
    .line 69
    cmp-long v6, v7, v2

    .line 70
    .line 71
    const-wide/16 v11, 0x1

    .line 72
    .line 73
    const/16 v13, 0x40

    .line 74
    .line 75
    if-eqz v6, :cond_5

    .line 76
    .line 77
    move v6, v1

    .line 78
    :goto_1
    if-ge v6, v13, :cond_5

    .line 79
    .line 80
    shl-long v14, v11, v6

    .line 81
    .line 82
    and-long/2addr v14, v7

    .line 83
    cmp-long v14, v14, v2

    .line 84
    .line 85
    if-eqz v14, :cond_4

    .line 86
    .line 87
    int-to-long v14, v6

    .line 88
    add-long/2addr v14, v4

    .line 89
    invoke-virtual {v0, v14, v15}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->clear(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    cmp-long v6, v9, v2

    .line 97
    .line 98
    if-eqz v6, :cond_7

    .line 99
    .line 100
    :goto_2
    if-ge v1, v13, :cond_7

    .line 101
    .line 102
    shl-long v6, v11, v1

    .line 103
    .line 104
    and-long/2addr v6, v9

    .line 105
    cmp-long v6, v6, v2

    .line 106
    .line 107
    if-eqz v6, :cond_6

    .line 108
    .line 109
    int-to-long v6, v1

    .line 110
    add-long/2addr v6, v4

    .line 111
    const-wide/16 v14, 0x40

    .line 112
    .line 113
    add-long/2addr v6, v14

    .line 114
    invoke-virtual {v0, v6, v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->clear(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_7
    return-object v0
.end method

.method public final clear(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 11

    .line 1
    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    .line 2
    .line 3
    sub-long v0, p1, v0

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    const-wide/16 v5, 0x1

    .line 12
    .line 13
    const-wide/16 v7, 0x40

    .line 14
    .line 15
    if-ltz v4, :cond_0

    .line 16
    .line 17
    invoke-static {v0, v1, v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-gez v4, :cond_0

    .line 22
    .line 23
    long-to-int p1, v0

    .line 24
    shl-long p1, v5, p1

    .line 25
    .line 26
    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    .line 27
    .line 28
    and-long v4, v0, p1

    .line 29
    .line 30
    cmp-long v2, v4, v2

    .line 31
    .line 32
    if-eqz v2, :cond_5

    .line 33
    .line 34
    new-instance v3, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 35
    .line 36
    not-long p1, p1

    .line 37
    and-long v7, v0, p1

    .line 38
    .line 39
    iget-wide v9, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    .line 40
    .line 41
    iget-object v4, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    .line 42
    .line 43
    iget-wide v5, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    .line 44
    .line 45
    invoke-direct/range {v3 .. v10}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>([JJJJ)V

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_0
    invoke-static {v0, v1, v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-ltz v4, :cond_1

    .line 54
    .line 55
    const-wide/16 v7, 0x80

    .line 56
    .line 57
    invoke-static {v0, v1, v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-gez v4, :cond_1

    .line 62
    .line 63
    long-to-int p1, v0

    .line 64
    add-int/lit8 p1, p1, -0x40

    .line 65
    .line 66
    shl-long p1, v5, p1

    .line 67
    .line 68
    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    .line 69
    .line 70
    and-long v4, v0, p1

    .line 71
    .line 72
    cmp-long v2, v4, v2

    .line 73
    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    new-instance v3, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 77
    .line 78
    not-long p1, p1

    .line 79
    and-long v5, v0, p1

    .line 80
    .line 81
    iget-wide v9, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    .line 82
    .line 83
    iget-object v4, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    .line 84
    .line 85
    iget-wide v7, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    .line 86
    .line 87
    invoke-direct/range {v3 .. v10}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>([JJJJ)V

    .line 88
    .line 89
    .line 90
    return-object v3

    .line 91
    :cond_1
    invoke-static {v0, v1, v2, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-gez v0, :cond_5

    .line 96
    .line 97
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    invoke-static {v0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->binarySearch([JJ)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-ltz p1, :cond_5

    .line 106
    .line 107
    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 108
    .line 109
    array-length p2, v0

    .line 110
    add-int/lit8 v2, p2, -0x1

    .line 111
    .line 112
    if-nez v2, :cond_2

    .line 113
    .line 114
    const/4 p1, 0x0

    .line 115
    move-object v2, p1

    .line 116
    goto :goto_0

    .line 117
    :cond_2
    new-array v3, v2, [J

    .line 118
    .line 119
    if-lez p1, :cond_3

    .line 120
    .line 121
    const/4 v4, 0x0

    .line 122
    invoke-static {v0, v3, v4, v4, p1}, Lkotlin/collections/ArraysKt;->copyInto([J[JIII)V

    .line 123
    .line 124
    .line 125
    :cond_3
    if-ge p1, v2, :cond_4

    .line 126
    .line 127
    add-int/lit8 v2, p1, 0x1

    .line 128
    .line 129
    invoke-static {v0, v3, p1, v2, p2}, Lkotlin/collections/ArraysKt;->copyInto([J[JIII)V

    .line 130
    .line 131
    .line 132
    :cond_4
    move-object v2, v3

    .line 133
    :goto_0
    iget-wide v3, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    .line 134
    .line 135
    iget-wide v5, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    .line 136
    .line 137
    iget-wide v7, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    .line 138
    .line 139
    invoke-direct/range {v1 .. v8}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>([JJJJ)V

    .line 140
    .line 141
    .line 142
    return-object v1

    .line 143
    :cond_5
    return-object p0
.end method

.method public final get(J)Z
    .locals 11

    .line 1
    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    .line 2
    .line 3
    sub-long v0, p1, v0

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    const-wide/16 v5, 0x1

    .line 12
    .line 13
    const-wide/16 v7, 0x40

    .line 14
    .line 15
    const/4 v9, 0x1

    .line 16
    const/4 v10, 0x0

    .line 17
    if-ltz v4, :cond_1

    .line 18
    .line 19
    invoke-static {v0, v1, v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-gez v4, :cond_1

    .line 24
    .line 25
    long-to-int p1, v0

    .line 26
    shl-long p1, v5, p1

    .line 27
    .line 28
    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    .line 29
    .line 30
    and-long/2addr p1, v0

    .line 31
    cmp-long p0, p1, v2

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    return v9

    .line 36
    :cond_0
    return v10

    .line 37
    :cond_1
    invoke-static {v0, v1, v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-ltz v4, :cond_3

    .line 42
    .line 43
    const-wide/16 v7, 0x80

    .line 44
    .line 45
    invoke-static {v0, v1, v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-gez v4, :cond_3

    .line 50
    .line 51
    long-to-int p1, v0

    .line 52
    add-int/lit8 p1, p1, -0x40

    .line 53
    .line 54
    shl-long p1, v5, p1

    .line 55
    .line 56
    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    .line 57
    .line 58
    and-long/2addr p1, v0

    .line 59
    cmp-long p0, p1, v2

    .line 60
    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    return v9

    .line 64
    :cond_2
    return v10

    .line 65
    :cond_3
    invoke-static {v0, v1, v2, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-lez v0, :cond_4

    .line 70
    .line 71
    return v10

    .line 72
    :cond_4
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    .line 73
    .line 74
    if-eqz p0, :cond_5

    .line 75
    .line 76
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->binarySearch([JJ)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-ltz p0, :cond_5

    .line 81
    .line 82
    return v9

    .line 83
    :cond_5
    return v10
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/sqlite/SQLite;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final or(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->EMPTY:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 6
    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    if-ne v0, v2, :cond_1

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_1
    iget-wide v2, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    .line 14
    .line 15
    iget-wide v4, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    .line 16
    .line 17
    iget-object v6, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    .line 18
    .line 19
    iget-wide v7, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    .line 20
    .line 21
    iget-wide v9, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    .line 22
    .line 23
    iget-wide v11, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    .line 24
    .line 25
    cmp-long v2, v2, v11

    .line 26
    .line 27
    iget-wide v13, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    .line 28
    .line 29
    move v3, v2

    .line 30
    iget-wide v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    .line 31
    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    move-wide/from16 v17, v11

    .line 35
    .line 36
    iget-object v12, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    .line 37
    .line 38
    if-ne v6, v12, :cond_2

    .line 39
    .line 40
    new-instance v11, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 41
    .line 42
    or-long/2addr v1, v9

    .line 43
    or-long v15, v13, v7

    .line 44
    .line 45
    move-wide v13, v1

    .line 46
    invoke-direct/range {v11 .. v18}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>([JJJJ)V

    .line 47
    .line 48
    .line 49
    return-object v11

    .line 50
    :cond_2
    const-wide/16 v15, 0x1

    .line 51
    .line 52
    const/16 v3, 0x40

    .line 53
    .line 54
    const/16 v17, 0x0

    .line 55
    .line 56
    const-wide/16 v18, 0x0

    .line 57
    .line 58
    const-wide/16 v20, 0x40

    .line 59
    .line 60
    iget-object v11, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    .line 61
    .line 62
    if-nez v11, :cond_9

    .line 63
    .line 64
    if-eqz v11, :cond_3

    .line 65
    .line 66
    array-length v4, v11

    .line 67
    move-object/from16 v5, p1

    .line 68
    .line 69
    move/from16 v6, v17

    .line 70
    .line 71
    :goto_0
    if-ge v6, v4, :cond_4

    .line 72
    .line 73
    aget-wide v7, v11, v6

    .line 74
    .line 75
    invoke-virtual {v5, v7, v8}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    add-int/lit8 v6, v6, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    move-object/from16 v5, p1

    .line 83
    .line 84
    :cond_4
    cmp-long v4, v13, v18

    .line 85
    .line 86
    iget-wide v6, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    .line 87
    .line 88
    if-eqz v4, :cond_6

    .line 89
    .line 90
    move/from16 v0, v17

    .line 91
    .line 92
    :goto_1
    if-ge v0, v3, :cond_6

    .line 93
    .line 94
    shl-long v8, v15, v0

    .line 95
    .line 96
    and-long/2addr v8, v13

    .line 97
    cmp-long v4, v8, v18

    .line 98
    .line 99
    if-eqz v4, :cond_5

    .line 100
    .line 101
    int-to-long v8, v0

    .line 102
    add-long/2addr v8, v6

    .line 103
    invoke-virtual {v5, v8, v9}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    move-object v5, v4

    .line 108
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    cmp-long v0, v1, v18

    .line 112
    .line 113
    if-eqz v0, :cond_8

    .line 114
    .line 115
    move/from16 v0, v17

    .line 116
    .line 117
    :goto_2
    if-ge v0, v3, :cond_8

    .line 118
    .line 119
    shl-long v8, v15, v0

    .line 120
    .line 121
    and-long/2addr v8, v1

    .line 122
    cmp-long v4, v8, v18

    .line 123
    .line 124
    if-eqz v4, :cond_7

    .line 125
    .line 126
    int-to-long v8, v0

    .line 127
    add-long/2addr v8, v6

    .line 128
    add-long v8, v8, v20

    .line 129
    .line 130
    invoke-virtual {v5, v8, v9}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    move-object v5, v4

    .line 135
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_8
    return-object v5

    .line 139
    :cond_9
    if-eqz v6, :cond_a

    .line 140
    .line 141
    array-length v1, v6

    .line 142
    move/from16 v2, v17

    .line 143
    .line 144
    :goto_3
    if-ge v2, v1, :cond_a

    .line 145
    .line 146
    aget-wide v11, v6, v2

    .line 147
    .line 148
    invoke-virtual {v0, v11, v12}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    add-int/lit8 v2, v2, 0x1

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_a
    cmp-long v1, v7, v18

    .line 156
    .line 157
    if-eqz v1, :cond_c

    .line 158
    .line 159
    move/from16 v1, v17

    .line 160
    .line 161
    :goto_4
    if-ge v1, v3, :cond_c

    .line 162
    .line 163
    shl-long v11, v15, v1

    .line 164
    .line 165
    and-long/2addr v11, v7

    .line 166
    cmp-long v2, v11, v18

    .line 167
    .line 168
    if-eqz v2, :cond_b

    .line 169
    .line 170
    int-to-long v11, v1

    .line 171
    add-long/2addr v11, v4

    .line 172
    invoke-virtual {v0, v11, v12}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_c
    cmp-long v1, v9, v18

    .line 180
    .line 181
    if-eqz v1, :cond_e

    .line 182
    .line 183
    move/from16 v1, v17

    .line 184
    .line 185
    :goto_5
    if-ge v1, v3, :cond_e

    .line 186
    .line 187
    shl-long v6, v15, v1

    .line 188
    .line 189
    and-long/2addr v6, v9

    .line 190
    cmp-long v2, v6, v18

    .line 191
    .line 192
    if-eqz v2, :cond_d

    .line 193
    .line 194
    int-to-long v6, v1

    .line 195
    add-long/2addr v6, v4

    .line 196
    add-long v6, v6, v20

    .line 197
    .line 198
    invoke-virtual {v0, v6, v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_e
    return-object v0
.end method

.method public final set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget-wide v3, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    .line 6
    .line 7
    sub-long v5, v1, v3

    .line 8
    .line 9
    const-wide/16 v7, 0x0

    .line 10
    .line 11
    invoke-static {v5, v6, v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 12
    .line 13
    .line 14
    move-result v9

    .line 15
    iget-wide v10, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    .line 16
    .line 17
    const-wide/16 v12, 0x40

    .line 18
    .line 19
    const-wide/16 v14, 0x1

    .line 20
    .line 21
    if-ltz v9, :cond_0

    .line 22
    .line 23
    invoke-static {v5, v6, v12, v13}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    if-gez v9, :cond_0

    .line 28
    .line 29
    long-to-int v1, v5

    .line 30
    shl-long v1, v14, v1

    .line 31
    .line 32
    and-long v3, v10, v1

    .line 33
    .line 34
    cmp-long v3, v3, v7

    .line 35
    .line 36
    if-nez v3, :cond_f

    .line 37
    .line 38
    new-instance v12, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 39
    .line 40
    or-long v16, v10, v1

    .line 41
    .line 42
    iget-wide v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    .line 43
    .line 44
    iget-object v13, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    .line 45
    .line 46
    iget-wide v14, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    .line 47
    .line 48
    move-wide/from16 v18, v1

    .line 49
    .line 50
    invoke-direct/range {v12 .. v19}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>([JJJJ)V

    .line 51
    .line 52
    .line 53
    return-object v12

    .line 54
    :cond_0
    invoke-static {v5, v6, v12, v13}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    move-wide/from16 v16, v12

    .line 59
    .line 60
    iget-wide v12, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    .line 61
    .line 62
    move-wide/from16 v18, v14

    .line 63
    .line 64
    const/16 v20, 0x40

    .line 65
    .line 66
    const-wide/16 v14, 0x80

    .line 67
    .line 68
    if-ltz v9, :cond_1

    .line 69
    .line 70
    invoke-static {v5, v6, v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    if-gez v9, :cond_1

    .line 75
    .line 76
    long-to-int v1, v5

    .line 77
    add-int/lit8 v1, v1, -0x40

    .line 78
    .line 79
    shl-long v1, v18, v1

    .line 80
    .line 81
    and-long v3, v12, v1

    .line 82
    .line 83
    cmp-long v3, v3, v7

    .line 84
    .line 85
    if-nez v3, :cond_f

    .line 86
    .line 87
    new-instance v4, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 88
    .line 89
    or-long v6, v12, v1

    .line 90
    .line 91
    iget-wide v10, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    .line 92
    .line 93
    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    .line 94
    .line 95
    iget-wide v8, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    .line 96
    .line 97
    invoke-direct/range {v4 .. v11}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>([JJJJ)V

    .line 98
    .line 99
    .line 100
    return-object v4

    .line 101
    :cond_1
    invoke-static {v5, v6, v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    const/4 v6, 0x0

    .line 106
    iget-object v9, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    .line 107
    .line 108
    if-ltz v5, :cond_d

    .line 109
    .line 110
    invoke-virtual/range {p0 .. p2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->get(J)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-nez v5, :cond_f

    .line 115
    .line 116
    add-long v14, v1, v18

    .line 117
    .line 118
    div-long v14, v14, v16

    .line 119
    .line 120
    mul-long v14, v14, v16

    .line 121
    .line 122
    invoke-static {v14, v15, v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-gez v0, :cond_2

    .line 127
    .line 128
    const-wide v14, 0x7fffffffffffff80L

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :cond_2
    move-wide/from16 v23, v12

    .line 134
    .line 135
    const/4 v5, 0x0

    .line 136
    :goto_0
    invoke-static {v3, v4, v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    if-gez v12, :cond_8

    .line 141
    .line 142
    cmp-long v12, v10, v7

    .line 143
    .line 144
    if-eqz v12, :cond_6

    .line 145
    .line 146
    if-nez v5, :cond_3

    .line 147
    .line 148
    new-instance v5, Landroidx/appcompat/widget/PopupMenu$1;

    .line 149
    .line 150
    invoke-direct {v5, v9}, Landroidx/appcompat/widget/PopupMenu$1;-><init>([J)V

    .line 151
    .line 152
    .line 153
    :cond_3
    move v12, v6

    .line 154
    move/from16 v13, v20

    .line 155
    .line 156
    :goto_1
    if-ge v12, v13, :cond_5

    .line 157
    .line 158
    shl-long v20, v18, v12

    .line 159
    .line 160
    and-long v20, v10, v20

    .line 161
    .line 162
    cmp-long v20, v20, v7

    .line 163
    .line 164
    if-eqz v20, :cond_4

    .line 165
    .line 166
    move-wide/from16 v20, v7

    .line 167
    .line 168
    int-to-long v7, v12

    .line 169
    add-long/2addr v7, v3

    .line 170
    iget-object v0, v5, Landroidx/appcompat/widget/PopupMenu$1;->this$0:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v0, Landroidx/collection/MutableLongList;

    .line 173
    .line 174
    invoke-virtual {v0, v7, v8}, Landroidx/collection/MutableLongList;->add(J)V

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_4
    move-wide/from16 v20, v7

    .line 179
    .line 180
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 181
    .line 182
    move-wide/from16 v7, v20

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_5
    :goto_3
    move-wide/from16 v20, v7

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_6
    move/from16 v13, v20

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :goto_4
    cmp-long v0, v23, v20

    .line 192
    .line 193
    if-nez v0, :cond_7

    .line 194
    .line 195
    move-wide/from16 v27, v14

    .line 196
    .line 197
    move-wide/from16 v25, v20

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_7
    add-long v3, v3, v16

    .line 201
    .line 202
    move-wide/from16 v7, v20

    .line 203
    .line 204
    move-wide/from16 v10, v23

    .line 205
    .line 206
    move/from16 v20, v13

    .line 207
    .line 208
    move-wide/from16 v23, v7

    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_8
    move-wide/from16 v27, v3

    .line 212
    .line 213
    move-wide/from16 v25, v10

    .line 214
    .line 215
    :goto_5
    new-instance v21, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 216
    .line 217
    if-eqz v5, :cond_c

    .line 218
    .line 219
    iget-object v0, v5, Landroidx/appcompat/widget/PopupMenu$1;->this$0:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v0, Landroidx/collection/MutableLongList;

    .line 222
    .line 223
    iget v3, v0, Landroidx/collection/MutableLongList;->_size:I

    .line 224
    .line 225
    if-nez v3, :cond_9

    .line 226
    .line 227
    const/4 v0, 0x0

    .line 228
    goto :goto_7

    .line 229
    :cond_9
    new-array v4, v3, [J

    .line 230
    .line 231
    iget-object v0, v0, Landroidx/collection/MutableLongList;->content:[J

    .line 232
    .line 233
    :goto_6
    if-ge v6, v3, :cond_a

    .line 234
    .line 235
    aget-wide v7, v0, v6

    .line 236
    .line 237
    aput-wide v7, v4, v6

    .line 238
    .line 239
    add-int/lit8 v6, v6, 0x1

    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_a
    move-object v0, v4

    .line 243
    :goto_7
    if-nez v0, :cond_b

    .line 244
    .line 245
    goto :goto_8

    .line 246
    :cond_b
    move-object/from16 v22, v0

    .line 247
    .line 248
    goto :goto_9

    .line 249
    :cond_c
    :goto_8
    move-object/from16 v22, v9

    .line 250
    .line 251
    :goto_9
    invoke-direct/range {v21 .. v28}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>([JJJJ)V

    .line 252
    .line 253
    .line 254
    move-object/from16 v0, v21

    .line 255
    .line 256
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    return-object v0

    .line 261
    :cond_d
    const/4 v3, 0x1

    .line 262
    if-nez v9, :cond_e

    .line 263
    .line 264
    new-instance v10, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 265
    .line 266
    new-array v11, v3, [J

    .line 267
    .line 268
    aput-wide v1, v11, v6

    .line 269
    .line 270
    iget-wide v12, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    .line 271
    .line 272
    iget-wide v14, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    .line 273
    .line 274
    iget-wide v0, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    .line 275
    .line 276
    move-wide/from16 v16, v0

    .line 277
    .line 278
    invoke-direct/range {v10 .. v17}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>([JJJJ)V

    .line 279
    .line 280
    .line 281
    return-object v10

    .line 282
    :cond_e
    invoke-static {v9, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->binarySearch([JJ)I

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    if-gez v4, :cond_f

    .line 287
    .line 288
    add-int/2addr v4, v3

    .line 289
    neg-int v3, v4

    .line 290
    array-length v4, v9

    .line 291
    add-int/lit8 v5, v4, 0x1

    .line 292
    .line 293
    new-array v11, v5, [J

    .line 294
    .line 295
    invoke-static {v9, v11, v6, v6, v3}, Lkotlin/collections/ArraysKt;->copyInto([J[JIII)V

    .line 296
    .line 297
    .line 298
    add-int/lit8 v5, v3, 0x1

    .line 299
    .line 300
    invoke-static {v9, v11, v5, v3, v4}, Lkotlin/collections/ArraysKt;->copyInto([J[JIII)V

    .line 301
    .line 302
    .line 303
    aput-wide v1, v11, v3

    .line 304
    .line 305
    new-instance v10, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 306
    .line 307
    iget-wide v14, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    .line 308
    .line 309
    iget-wide v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    .line 310
    .line 311
    iget-wide v12, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    .line 312
    .line 313
    move-wide/from16 v16, v1

    .line 314
    .line 315
    invoke-direct/range {v10 .. v17}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>([JJJJ)V

    .line 316
    .line 317
    .line 318
    return-object v10

    .line 319
    :cond_f
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " ["

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    const/16 v2, 0xa

    .line 21
    .line 22
    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/Number;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v2, ""

    .line 63
    .line 64
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 65
    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const/4 v4, 0x0

    .line 72
    move v5, v4

    .line 73
    :goto_1
    if-ge v4, v3, :cond_5

    .line 74
    .line 75
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    const/4 v7, 0x1

    .line 80
    add-int/2addr v5, v7

    .line 81
    if-le v5, v7, :cond_1

    .line 82
    .line 83
    const-string v8, ", "

    .line 84
    .line 85
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 86
    .line 87
    .line 88
    :cond_1
    if-nez v6, :cond_2

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_2
    instance-of v7, v6, Ljava/lang/CharSequence;

    .line 92
    .line 93
    :goto_2
    if-eqz v7, :cond_3

    .line 94
    .line 95
    check-cast v6, Ljava/lang/CharSequence;

    .line 96
    .line 97
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_3
    instance-of v7, v6, Ljava/lang/Character;

    .line 102
    .line 103
    if-eqz v7, :cond_4

    .line 104
    .line 105
    check-cast v6, Ljava/lang/Character;

    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 120
    .line 121
    .line 122
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const/16 p0, 0x5d

    .line 136
    .line 137
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0
.end method
