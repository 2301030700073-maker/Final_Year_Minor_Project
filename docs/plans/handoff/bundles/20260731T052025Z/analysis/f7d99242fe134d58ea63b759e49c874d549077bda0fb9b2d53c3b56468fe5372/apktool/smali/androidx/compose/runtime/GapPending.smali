.class public final Landroidx/compose/runtime/GapPending;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public groupIndex:I

.field public final groupInfos:Landroidx/collection/MutableIntObjectMap;

.field public final keyInfos:Ljava/util/ArrayList;

.field public final keyMap$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final startIndex:I

.field public final usedKeys:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/runtime/GapPending;->keyInfos:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput p1, p0, Landroidx/compose/runtime/GapPending;->startIndex:I

    .line 7
    .line 8
    if-ltz p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p1, "Invalid start index"

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/compose/runtime/GapPending;->usedKeys:Ljava/util/ArrayList;

    .line 22
    .line 23
    new-instance p1, Landroidx/collection/MutableIntObjectMap;

    .line 24
    .line 25
    invoke-direct {p1}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    const/4 v0, 0x0

    .line 33
    move v1, v0

    .line 34
    move v2, v1

    .line 35
    :goto_1
    if-ge v1, p2, :cond_1

    .line 36
    .line 37
    iget-object v3, p0, Landroidx/compose/runtime/GapPending;->keyInfos:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    .line 44
    .line 45
    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->location:I

    .line 46
    .line 47
    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->nodes:I

    .line 48
    .line 49
    new-instance v5, Landroidx/compose/runtime/composer/GroupInfo;

    .line 50
    .line 51
    invoke-direct {v5, v1, v2, v3}, Landroidx/compose/runtime/composer/GroupInfo;-><init>(III)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v4, v5}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    add-int/2addr v2, v3

    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iput-object p1, p0, Landroidx/compose/runtime/GapPending;->groupInfos:Landroidx/collection/MutableIntObjectMap;

    .line 62
    .line 63
    new-instance p1, Landroidx/compose/runtime/GapPending$keyMap$2;

    .line 64
    .line 65
    invoke-direct {p1, v0, p0}, Landroidx/compose/runtime/GapPending$keyMap$2;-><init>(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 69
    .line 70
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 71
    .line 72
    .line 73
    iput-object p2, p0, Landroidx/compose/runtime/GapPending;->keyMap$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final updateNodeCount(II)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/compose/runtime/GapPending;->groupInfos:Landroidx/collection/MutableIntObjectMap;

    .line 6
    .line 7
    move/from16 v2, p1

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroidx/compose/runtime/composer/GroupInfo;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_4

    .line 17
    .line 18
    iget v4, v2, Landroidx/compose/runtime/composer/GroupInfo;->nodeIndex:I

    .line 19
    .line 20
    iget v5, v2, Landroidx/compose/runtime/composer/GroupInfo;->nodeCount:I

    .line 21
    .line 22
    sub-int v5, v1, v5

    .line 23
    .line 24
    iput v1, v2, Landroidx/compose/runtime/composer/GroupInfo;->nodeCount:I

    .line 25
    .line 26
    if-eqz v5, :cond_3

    .line 27
    .line 28
    iget-object v1, v0, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 29
    .line 30
    iget-object v0, v0, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 31
    .line 32
    array-length v6, v0

    .line 33
    add-int/lit8 v6, v6, -0x2

    .line 34
    .line 35
    if-ltz v6, :cond_3

    .line 36
    .line 37
    move v7, v3

    .line 38
    :goto_0
    aget-wide v8, v0, v7

    .line 39
    .line 40
    not-long v10, v8

    .line 41
    const/4 v12, 0x7

    .line 42
    shl-long/2addr v10, v12

    .line 43
    and-long/2addr v10, v8

    .line 44
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    and-long/2addr v10, v12

    .line 50
    cmp-long v10, v10, v12

    .line 51
    .line 52
    if-eqz v10, :cond_2

    .line 53
    .line 54
    sub-int v10, v7, v6

    .line 55
    .line 56
    not-int v10, v10

    .line 57
    ushr-int/lit8 v10, v10, 0x1f

    .line 58
    .line 59
    const/16 v11, 0x8

    .line 60
    .line 61
    rsub-int/lit8 v10, v10, 0x8

    .line 62
    .line 63
    move v12, v3

    .line 64
    :goto_1
    if-ge v12, v10, :cond_1

    .line 65
    .line 66
    const-wide/16 v13, 0xff

    .line 67
    .line 68
    and-long/2addr v13, v8

    .line 69
    const-wide/16 v15, 0x80

    .line 70
    .line 71
    cmp-long v13, v13, v15

    .line 72
    .line 73
    if-gez v13, :cond_0

    .line 74
    .line 75
    shl-int/lit8 v13, v7, 0x3

    .line 76
    .line 77
    add-int/2addr v13, v12

    .line 78
    aget-object v13, v1, v13

    .line 79
    .line 80
    check-cast v13, Landroidx/compose/runtime/composer/GroupInfo;

    .line 81
    .line 82
    iget v14, v13, Landroidx/compose/runtime/composer/GroupInfo;->nodeIndex:I

    .line 83
    .line 84
    if-lt v14, v4, :cond_0

    .line 85
    .line 86
    if-eq v13, v2, :cond_0

    .line 87
    .line 88
    add-int/2addr v14, v5

    .line 89
    if-ltz v14, :cond_0

    .line 90
    .line 91
    iput v14, v13, Landroidx/compose/runtime/composer/GroupInfo;->nodeIndex:I

    .line 92
    .line 93
    :cond_0
    shr-long/2addr v8, v11

    .line 94
    add-int/lit8 v12, v12, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    if-ne v10, v11, :cond_3

    .line 98
    .line 99
    :cond_2
    if-eq v7, v6, :cond_3

    .line 100
    .line 101
    add-int/lit8 v7, v7, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    const/4 v0, 0x1

    .line 105
    return v0

    .line 106
    :cond_4
    return v3
.end method
