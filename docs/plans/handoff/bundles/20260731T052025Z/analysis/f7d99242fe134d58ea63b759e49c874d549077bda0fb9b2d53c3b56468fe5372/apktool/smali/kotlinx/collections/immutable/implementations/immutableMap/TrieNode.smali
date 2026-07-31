.class public final Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final EMPTY:Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;


# instance fields
.field public buffer:[Ljava/lang/Object;

.field public dataMap:I

.field public nodeMap:I

.field public final ownedBy:Lkotlinx/collections/immutable/internal/EndOfChain;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v1, v1, v2, v3}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;-><init>(II[Ljava/lang/Object;Lkotlinx/collections/immutable/internal/EndOfChain;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->EMPTY:Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(II[Ljava/lang/Object;Lkotlinx/collections/immutable/internal/EndOfChain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 5
    .line 6
    iput p2, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 7
    .line 8
    iput-object p4, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->ownedBy:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 9
    .line 10
    iput-object p3, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method public static makeNode(ILjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;ILkotlinx/collections/immutable/internal/EndOfChain;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;
    .locals 11

    .line 1
    move/from16 v0, p6

    .line 2
    .line 3
    move-object/from16 v7, p7

    .line 4
    .line 5
    const/16 v1, 0x1e

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v8, 0x1

    .line 11
    const/4 v9, 0x0

    .line 12
    if-le v0, v1, :cond_0

    .line 13
    .line 14
    new-instance p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 15
    .line 16
    new-array p3, v4, [Ljava/lang/Object;

    .line 17
    .line 18
    aput-object p1, p3, v9

    .line 19
    .line 20
    aput-object p2, p3, v8

    .line 21
    .line 22
    aput-object p4, p3, v3

    .line 23
    .line 24
    aput-object p5, p3, v2

    .line 25
    .line 26
    invoke-direct {p0, v9, v9, p3, v7}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;-><init>(II[Ljava/lang/Object;Lkotlinx/collections/immutable/internal/EndOfChain;)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    invoke-static {p0, v0}, Lkotlin/io/ByteStreamsKt;->indexSegment(II)I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    invoke-static {p3, v0}, Lkotlin/io/ByteStreamsKt;->indexSegment(II)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eq v10, v1, :cond_2

    .line 39
    .line 40
    if-ge v10, v1, :cond_1

    .line 41
    .line 42
    new-array p0, v4, [Ljava/lang/Object;

    .line 43
    .line 44
    aput-object p1, p0, v9

    .line 45
    .line 46
    aput-object p2, p0, v8

    .line 47
    .line 48
    aput-object p4, p0, v3

    .line 49
    .line 50
    aput-object p5, p0, v2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    new-array p0, v4, [Ljava/lang/Object;

    .line 54
    .line 55
    aput-object p4, p0, v9

    .line 56
    .line 57
    aput-object p5, p0, v8

    .line 58
    .line 59
    aput-object p1, p0, v3

    .line 60
    .line 61
    aput-object p2, p0, v2

    .line 62
    .line 63
    :goto_0
    new-instance p1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 64
    .line 65
    shl-int p2, v8, v10

    .line 66
    .line 67
    shl-int p3, v8, v1

    .line 68
    .line 69
    or-int/2addr p2, p3

    .line 70
    invoke-direct {p1, p2, v9, p0, v7}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;-><init>(II[Ljava/lang/Object;Lkotlinx/collections/immutable/internal/EndOfChain;)V

    .line 71
    .line 72
    .line 73
    return-object p1

    .line 74
    :cond_2
    add-int/lit8 v6, v0, 0x5

    .line 75
    .line 76
    move v0, p0

    .line 77
    move-object v1, p1

    .line 78
    move-object v2, p2

    .line 79
    move v3, p3

    .line 80
    move-object v4, p4

    .line 81
    move-object/from16 v5, p5

    .line 82
    .line 83
    invoke-static/range {v0 .. v7}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->makeNode(ILjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;ILkotlinx/collections/immutable/internal/EndOfChain;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    new-instance p1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 88
    .line 89
    shl-int p2, v8, v10

    .line 90
    .line 91
    new-array p3, v8, [Ljava/lang/Object;

    .line 92
    .line 93
    aput-object p0, p3, v9

    .line 94
    .line 95
    invoke-direct {p1, v9, p2, p3, v7}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;-><init>(II[Ljava/lang/Object;Lkotlinx/collections/immutable/internal/EndOfChain;)V

    .line 96
    .line 97
    .line 98
    return-object p1
.end method


# virtual methods
.method public final bufferMoveEntryToNode(IIILjava/lang/Object;Ljava/lang/Object;ILkotlinx/collections/immutable/internal/EndOfChain;)[Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 2
    .line 3
    aget-object v2, v0, p1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v0

    .line 14
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->valueAtKeyIndex(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    add-int/lit8 v7, p6, 0x5

    .line 19
    .line 20
    move v4, p3

    .line 21
    move-object v5, p4

    .line 22
    move-object v6, p5

    .line 23
    move-object/from16 v8, p7

    .line 24
    .line 25
    invoke-static/range {v1 .. v8}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->makeNode(ILjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;ILkotlinx/collections/immutable/internal/EndOfChain;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p0, p2}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeIndex$kotlinx_collections_immutable(I)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    add-int/lit8 p4, p2, 0x1

    .line 34
    .line 35
    iget-object p0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 36
    .line 37
    add-int/lit8 v1, p2, -0x1

    .line 38
    .line 39
    array-length v2, p0

    .line 40
    add-int/lit8 v2, v2, -0x1

    .line 41
    .line 42
    new-array v2, v2, [Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v3, 0x6

    .line 45
    invoke-static {p0, v2, v0, p1, v3}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v0, p1, 0x2

    .line 49
    .line 50
    invoke-static {p0, v2, p1, v0, p4}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 51
    .line 52
    .line 53
    aput-object p3, v2, v1

    .line 54
    .line 55
    array-length p1, p0

    .line 56
    invoke-static {p0, v2, p2, p4, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 57
    .line 58
    .line 59
    return-object v2
.end method

.method public final calculateSize()I
    .locals 4

    .line 1
    iget v0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 6
    .line 7
    array-length p0, p0

    .line 8
    div-int/lit8 p0, p0, 0x2

    .line 9
    .line 10
    return p0

    .line 11
    :cond_0
    iget v0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    mul-int/lit8 v1, v0, 0x2

    .line 18
    .line 19
    iget-object v2, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 20
    .line 21
    array-length v2, v2

    .line 22
    :goto_0
    if-ge v1, v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeAtIndex$kotlinx_collections_immutable(I)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->calculateSize()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    add-int/2addr v0, v3

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return v0
.end method

.method public final collisionKeyIndex(Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntRange;I)Lkotlin/ranges/IntProgression;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v1, v0, Lkotlin/ranges/IntProgression;->first:I

    .line 15
    .line 16
    iget v2, v0, Lkotlin/ranges/IntProgression;->last:I

    .line 17
    .line 18
    iget v0, v0, Lkotlin/ranges/IntProgression;->step:I

    .line 19
    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    if-le v1, v2, :cond_1

    .line 23
    .line 24
    :cond_0
    if-gez v0, :cond_3

    .line 25
    .line 26
    if-gt v2, v1, :cond_3

    .line 27
    .line 28
    :cond_1
    :goto_0
    iget-object v3, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 29
    .line 30
    aget-object v3, v3, v1

    .line 31
    .line 32
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    return v1

    .line 39
    :cond_2
    if-eq v1, v2, :cond_3

    .line 40
    .line 41
    add-int/2addr v1, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final containsKey(IILjava/lang/Object;)Z
    .locals 4

    .line 1
    invoke-static {p1, p2}, Lkotlin/io/ByteStreamsKt;->indexSegment(II)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    shl-int v0, v1, v0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->hasEntryAt$kotlinx_collections_immutable(I)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->entryKeyIndex$kotlinx_collections_immutable(I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object p0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 19
    .line 20
    aget-object p0, p0, p1

    .line 21
    .line 22
    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_0
    invoke-virtual {p0, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->hasNodeAt(I)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x0

    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeIndex$kotlinx_collections_immutable(I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeAtIndex$kotlinx_collections_immutable(I)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const/16 v0, 0x1e

    .line 43
    .line 44
    if-ne p2, v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0, p3}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->collisionKeyIndex(Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    const/4 p1, -0x1

    .line 51
    if-eq p0, p1, :cond_1

    .line 52
    .line 53
    return v1

    .line 54
    :cond_1
    return v3

    .line 55
    :cond_2
    add-int/lit8 p2, p2, 0x5

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->containsKey(IILjava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    return p0

    .line 62
    :cond_3
    return v3
.end method

.method public final elementsIdentityEquals(Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;)Z
    .locals 5

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_2

    .line 4
    :cond_0
    iget v0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 5
    .line 6
    iget v1, p1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_1
    iget v0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 13
    .line 14
    iget v1, p1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 15
    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_2
    iget-object v0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 20
    .line 21
    array-length v0, v0

    .line 22
    move v1, v2

    .line 23
    :goto_0
    if-ge v1, v0, :cond_4

    .line 24
    .line 25
    iget-object v3, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 26
    .line 27
    aget-object v3, v3, v1

    .line 28
    .line 29
    iget-object v4, p1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 30
    .line 31
    aget-object v4, v4, v1

    .line 32
    .line 33
    if-eq v3, v4, :cond_3

    .line 34
    .line 35
    :goto_1
    return v2

    .line 36
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    :goto_2
    const/4 p0, 0x1

    .line 40
    return p0
.end method

.method public final entryKeyIndex$kotlinx_collections_immutable(I)I
    .locals 0

    .line 1
    iget p0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, -0x1

    .line 4
    .line 5
    and-int/2addr p0, p1

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    mul-int/lit8 p0, p0, 0x2

    .line 11
    .line 12
    return p0
.end method

.method public final equalsWith$kotlinx_collections_immutable(Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;Lkotlin/jvm/functions/Function2;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    if-ne p0, p1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    iget v0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 12
    .line 13
    iget v1, p1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-ne v0, v1, :cond_e

    .line 17
    .line 18
    iget v1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 19
    .line 20
    iget v3, p1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 21
    .line 22
    if-eq v1, v3, :cond_1

    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_1
    const/4 v3, 0x2

    .line 27
    if-nez v0, :cond_6

    .line 28
    .line 29
    if-nez v1, :cond_6

    .line 30
    .line 31
    iget-object v0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 32
    .line 33
    array-length v1, v0

    .line 34
    iget-object v4, p1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 35
    .line 36
    array-length v4, v4

    .line 37
    if-eq v1, v4, :cond_2

    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_2
    array-length v0, v0

    .line 42
    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntRange;I)Lkotlin/ranges/IntProgression;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    instance-of v1, v0, Ljava/util/Collection;

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    move-object v1, v0

    .line 55
    check-cast v1, Ljava/util/Collection;

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :cond_3
    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :cond_4
    move-object v1, v0

    .line 70
    check-cast v1, Lkotlin/ranges/IntProgressionIterator;

    .line 71
    .line 72
    iget-boolean v1, v1, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 73
    .line 74
    if-eqz v1, :cond_d

    .line 75
    .line 76
    move-object v1, v0

    .line 77
    check-cast v1, Lkotlin/collections/IntIterator;

    .line 78
    .line 79
    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    iget-object v3, p1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 84
    .line 85
    aget-object v3, v3, v1

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->valueAtKeyIndex(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p0, v3}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->collisionKeyIndex(Ljava/lang/Object;)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    const/4 v4, -0x1

    .line 96
    if-eq v3, v4, :cond_5

    .line 97
    .line 98
    invoke-virtual {p0, v3}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->valueAtKeyIndex(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-interface {p2, v3, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Ljava/lang/Boolean;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    goto :goto_0

    .line 113
    :cond_5
    move v1, v2

    .line 114
    :goto_0
    if-nez v1, :cond_4

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_6
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    mul-int/2addr v0, v3

    .line 122
    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntRange;I)Lkotlin/ranges/IntProgression;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iget v3, v1, Lkotlin/ranges/IntProgression;->first:I

    .line 131
    .line 132
    iget v4, v1, Lkotlin/ranges/IntProgression;->last:I

    .line 133
    .line 134
    iget v1, v1, Lkotlin/ranges/IntProgression;->step:I

    .line 135
    .line 136
    if-lez v1, :cond_7

    .line 137
    .line 138
    if-le v3, v4, :cond_8

    .line 139
    .line 140
    :cond_7
    if-gez v1, :cond_b

    .line 141
    .line 142
    if-gt v4, v3, :cond_b

    .line 143
    .line 144
    :cond_8
    :goto_1
    iget-object v5, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 145
    .line 146
    aget-object v5, v5, v3

    .line 147
    .line 148
    iget-object v6, p1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 149
    .line 150
    aget-object v6, v6, v3

    .line 151
    .line 152
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-nez v5, :cond_9

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_9
    invoke-virtual {p0, v3}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->valueAtKeyIndex(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-virtual {p1, v3}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->valueAtKeyIndex(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-interface {p2, v5, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    check-cast v5, Ljava/lang/Boolean;

    .line 172
    .line 173
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-nez v5, :cond_a

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_a
    if-eq v3, v4, :cond_b

    .line 181
    .line 182
    add-int/2addr v3, v1

    .line 183
    goto :goto_1

    .line 184
    :cond_b
    iget-object v1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 185
    .line 186
    array-length v1, v1

    .line 187
    :goto_2
    if-ge v0, v1, :cond_d

    .line 188
    .line 189
    invoke-virtual {p0, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeAtIndex$kotlinx_collections_immutable(I)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-virtual {p1, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeAtIndex$kotlinx_collections_immutable(I)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-virtual {v3, v4, p2}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->equalsWith$kotlinx_collections_immutable(Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;Lkotlin/jvm/functions/Function2;)Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-nez v3, :cond_c

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_c
    add-int/lit8 v0, v0, 0x1

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_d
    :goto_3
    const/4 p0, 0x1

    .line 208
    return p0

    .line 209
    :cond_e
    :goto_4
    return v2
.end method

.method public final get(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p2}, Lkotlin/io/ByteStreamsKt;->indexSegment(II)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    shl-int/2addr v0, v1

    .line 7
    invoke-virtual {p0, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->hasEntryAt$kotlinx_collections_immutable(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->entryKeyIndex$kotlinx_collections_immutable(I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object p2, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 19
    .line 20
    aget-object p2, p2, p1

    .line 21
    .line 22
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->valueAtKeyIndex(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    return-object v2

    .line 34
    :cond_1
    invoke-virtual {p0, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->hasNodeAt(I)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeIndex$kotlinx_collections_immutable(I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p0, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeAtIndex$kotlinx_collections_immutable(I)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const/16 v0, 0x1e

    .line 49
    .line 50
    if-ne p2, v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0, p3}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->collisionKeyIndex(Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    const/4 p2, -0x1

    .line 57
    if-eq p1, p2, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->valueAtKeyIndex(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_2
    return-object v2

    .line 65
    :cond_3
    add-int/lit8 p2, p2, 0x5

    .line 66
    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->get(IILjava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :cond_4
    return-object v2
.end method

.method public final hasEntryAt$kotlinx_collections_immutable(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final hasNodeAt(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final mutableCollisionRemoveEntryAtIndex(ILkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;
    .locals 3

    .line 1
    iget v0, p2, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->size:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->setSize(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->valueAtKeyIndex(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p2, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->operationResult:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 15
    .line 16
    array-length v1, v0

    .line 17
    const/4 v2, 0x2

    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_0
    iget-object v1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->ownedBy:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 23
    .line 24
    iget-object v2, p2, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->ownership:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 25
    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/io/ByteStreamsKt;->access$removeEntryAtIndex(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_1
    invoke-static {p1, v0}, Lkotlin/io/ByteStreamsKt;->access$removeEntryAtIndex(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    new-instance p1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 40
    .line 41
    iget-object p2, p2, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->ownership:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-direct {p1, v0, v0, p0, p2}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;-><init>(II[Ljava/lang/Object;Lkotlinx/collections/immutable/internal/EndOfChain;)V

    .line 45
    .line 46
    .line 47
    return-object p1
.end method

.method public final mutablePut(ILjava/lang/Object;Ljava/lang/Object;ILkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;
    .locals 10

    .line 1
    invoke-static {p1, p4}, Lkotlin/io/ByteStreamsKt;->indexSegment(II)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    shl-int v4, v1, v0

    .line 7
    .line 8
    invoke-virtual {p0, v4}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->hasEntryAt$kotlinx_collections_immutable(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v2, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->ownedBy:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    invoke-virtual {p0, v4}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->entryKeyIndex$kotlinx_collections_immutable(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    iget-object v0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 21
    .line 22
    aget-object v0, v0, v3

    .line 23
    .line 24
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->valueAtKeyIndex(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p5, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->operationResult:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-virtual {p0, v3}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->valueAtKeyIndex(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-ne p1, p3, :cond_0

    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_0
    iget-object p1, p5, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->ownership:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 45
    .line 46
    if-ne v2, p1, :cond_1

    .line 47
    .line 48
    iget-object p1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 49
    .line 50
    add-int/2addr v3, v1

    .line 51
    aput-object p3, p1, v3

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_1
    iget p1, p5, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->modCount:I

    .line 55
    .line 56
    add-int/2addr p1, v1

    .line 57
    iput p1, p5, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->modCount:I

    .line 58
    .line 59
    iget-object p1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 60
    .line 61
    array-length p2, p1

    .line 62
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    add-int/2addr v3, v1

    .line 67
    aput-object p3, p1, v3

    .line 68
    .line 69
    new-instance p2, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 70
    .line 71
    iget p3, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 72
    .line 73
    iget p0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 74
    .line 75
    iget-object p4, p5, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->ownership:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 76
    .line 77
    invoke-direct {p2, p3, p0, p1, p4}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;-><init>(II[Ljava/lang/Object;Lkotlinx/collections/immutable/internal/EndOfChain;)V

    .line 78
    .line 79
    .line 80
    return-object p2

    .line 81
    :cond_2
    iget v0, p5, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->size:I

    .line 82
    .line 83
    add-int/2addr v0, v1

    .line 84
    invoke-virtual {p5, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->setSize(I)V

    .line 85
    .line 86
    .line 87
    iget-object v9, p5, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->ownership:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 88
    .line 89
    if-ne v2, v9, :cond_3

    .line 90
    .line 91
    move-object v2, p0

    .line 92
    move v5, p1

    .line 93
    move-object v6, p2

    .line 94
    move-object v7, p3

    .line 95
    move v8, p4

    .line 96
    invoke-virtual/range {v2 .. v9}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->bufferMoveEntryToNode(IIILjava/lang/Object;Ljava/lang/Object;ILkotlinx/collections/immutable/internal/EndOfChain;)[Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iput-object p1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 101
    .line 102
    iget p1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 103
    .line 104
    xor-int/2addr p1, v4

    .line 105
    iput p1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 106
    .line 107
    iget p1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 108
    .line 109
    or-int/2addr p1, v4

    .line 110
    iput p1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 111
    .line 112
    return-object p0

    .line 113
    :cond_3
    move-object v2, p0

    .line 114
    move v5, p1

    .line 115
    move-object v6, p2

    .line 116
    move-object v7, p3

    .line 117
    move v8, p4

    .line 118
    invoke-virtual/range {v2 .. v9}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->bufferMoveEntryToNode(IIILjava/lang/Object;Ljava/lang/Object;ILkotlinx/collections/immutable/internal/EndOfChain;)[Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    move v7, v4

    .line 123
    new-instance p2, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 124
    .line 125
    iget p3, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 126
    .line 127
    xor-int/2addr p3, v7

    .line 128
    iget p0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 129
    .line 130
    or-int/2addr p0, v7

    .line 131
    invoke-direct {p2, p3, p0, p1, v9}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;-><init>(II[Ljava/lang/Object;Lkotlinx/collections/immutable/internal/EndOfChain;)V

    .line 132
    .line 133
    .line 134
    return-object p2

    .line 135
    :cond_4
    move-object v0, v2

    .line 136
    move v7, v4

    .line 137
    invoke-virtual {p0, v7}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->hasNodeAt(I)Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_9

    .line 142
    .line 143
    invoke-virtual {p0, v7}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeIndex$kotlinx_collections_immutable(I)I

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    invoke-virtual {p0, v9}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeAtIndex$kotlinx_collections_immutable(I)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const/16 v4, 0x1e

    .line 152
    .line 153
    if-ne p4, v4, :cond_7

    .line 154
    .line 155
    invoke-virtual {v0, p2}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->collisionKeyIndex(Ljava/lang/Object;)I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    const/4 p4, -0x1

    .line 160
    const/4 v4, 0x0

    .line 161
    if-eq p1, p4, :cond_6

    .line 162
    .line 163
    invoke-virtual {v0, p1}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->valueAtKeyIndex(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    iput-object p2, p5, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->operationResult:Ljava/lang/Object;

    .line 168
    .line 169
    iget-object p2, v0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->ownedBy:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 170
    .line 171
    iget-object p4, p5, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->ownership:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 172
    .line 173
    if-ne p2, p4, :cond_5

    .line 174
    .line 175
    iget-object p2, v0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 176
    .line 177
    add-int/2addr p1, v1

    .line 178
    aput-object p3, p2, p1

    .line 179
    .line 180
    move-object p1, v0

    .line 181
    goto :goto_0

    .line 182
    :cond_5
    iget p2, p5, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->modCount:I

    .line 183
    .line 184
    add-int/2addr p2, v1

    .line 185
    iput p2, p5, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->modCount:I

    .line 186
    .line 187
    iget-object p2, v0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 188
    .line 189
    array-length p4, p2

    .line 190
    invoke-static {p2, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    add-int/2addr p1, v1

    .line 195
    aput-object p3, p2, p1

    .line 196
    .line 197
    new-instance p1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 198
    .line 199
    iget-object p3, p5, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->ownership:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 200
    .line 201
    invoke-direct {p1, v4, v4, p2, p3}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;-><init>(II[Ljava/lang/Object;Lkotlinx/collections/immutable/internal/EndOfChain;)V

    .line 202
    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_6
    iget p1, p5, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->size:I

    .line 206
    .line 207
    add-int/2addr p1, v1

    .line 208
    invoke-virtual {p5, p1}, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->setSize(I)V

    .line 209
    .line 210
    .line 211
    iget-object p1, v0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 212
    .line 213
    invoke-static {p1, v4, p2, p3}, Lkotlin/io/ByteStreamsKt;->access$insertEntryAtIndex([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    new-instance p2, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 218
    .line 219
    iget-object p3, p5, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->ownership:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 220
    .line 221
    invoke-direct {p2, v4, v4, p1, p3}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;-><init>(II[Ljava/lang/Object;Lkotlinx/collections/immutable/internal/EndOfChain;)V

    .line 222
    .line 223
    .line 224
    move-object p1, p2

    .line 225
    goto :goto_0

    .line 226
    :cond_7
    add-int/lit8 v4, p4, 0x5

    .line 227
    .line 228
    move v1, p1

    .line 229
    move-object v2, p2

    .line 230
    move-object v3, p3

    .line 231
    move-object v5, p5

    .line 232
    invoke-virtual/range {v0 .. v5}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->mutablePut(ILjava/lang/Object;Ljava/lang/Object;ILkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    :goto_0
    if-ne v0, p1, :cond_8

    .line 237
    .line 238
    :goto_1
    return-object p0

    .line 239
    :cond_8
    iget-object p2, p5, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->ownership:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 240
    .line 241
    invoke-virtual {p0, v9, v7, p1, p2}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->updateNodeAtIndex(IILkotlinx/collections/immutable/implementations/immutableMap/TrieNode;Lkotlinx/collections/immutable/internal/EndOfChain;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    return-object p0

    .line 246
    :cond_9
    iget p1, p5, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->size:I

    .line 247
    .line 248
    add-int/2addr p1, v1

    .line 249
    invoke-virtual {p5, p1}, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->setSize(I)V

    .line 250
    .line 251
    .line 252
    iget-object p1, p5, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->ownership:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 253
    .line 254
    invoke-virtual {p0, v7}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->entryKeyIndex$kotlinx_collections_immutable(I)I

    .line 255
    .line 256
    .line 257
    move-result p4

    .line 258
    iget-object v1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 259
    .line 260
    if-ne v0, p1, :cond_a

    .line 261
    .line 262
    invoke-static {v1, p4, p2, p3}, Lkotlin/io/ByteStreamsKt;->access$insertEntryAtIndex([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    iput-object p1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 267
    .line 268
    iget p1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 269
    .line 270
    or-int/2addr p1, v7

    .line 271
    iput p1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 272
    .line 273
    return-object p0

    .line 274
    :cond_a
    invoke-static {v1, p4, p2, p3}, Lkotlin/io/ByteStreamsKt;->access$insertEntryAtIndex([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    new-instance p3, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 279
    .line 280
    iget p4, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 281
    .line 282
    or-int/2addr p4, v7

    .line 283
    iget p0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 284
    .line 285
    invoke-direct {p3, p4, p0, p2, p1}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;-><init>(II[Ljava/lang/Object;Lkotlinx/collections/immutable/internal/EndOfChain;)V

    .line 286
    .line 287
    .line 288
    return-object p3
.end method

.method public final mutablePutAll(Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;ILkotlinx/collections/immutable/internal/DeltaCounter;Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v9, p4

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->calculateSize()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget v2, v3, Lkotlinx/collections/immutable/internal/DeltaCounter;->count:I

    .line 21
    .line 22
    add-int/2addr v2, v1

    .line 23
    iput v2, v3, Lkotlinx/collections/immutable/internal/DeltaCounter;->count:I

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    const/16 v4, 0x1e

    .line 27
    .line 28
    const/4 v5, 0x2

    .line 29
    const/4 v10, 0x0

    .line 30
    if-le v2, v4, :cond_8

    .line 31
    .line 32
    iget-object v2, v9, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->ownership:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 33
    .line 34
    iget-object v4, v0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 35
    .line 36
    array-length v6, v4

    .line 37
    iget-object v7, v1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 38
    .line 39
    array-length v7, v7

    .line 40
    add-int/2addr v6, v7

    .line 41
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    iget-object v6, v0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 46
    .line 47
    array-length v6, v6

    .line 48
    iget-object v7, v1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 49
    .line 50
    array-length v7, v7

    .line 51
    invoke-static {v10, v7}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-static {v7, v5}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntRange;I)Lkotlin/ranges/IntProgression;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    iget v7, v5, Lkotlin/ranges/IntProgression;->first:I

    .line 60
    .line 61
    iget v8, v5, Lkotlin/ranges/IntProgression;->last:I

    .line 62
    .line 63
    iget v5, v5, Lkotlin/ranges/IntProgression;->step:I

    .line 64
    .line 65
    if-lez v5, :cond_1

    .line 66
    .line 67
    if-le v7, v8, :cond_2

    .line 68
    .line 69
    :cond_1
    if-gez v5, :cond_4

    .line 70
    .line 71
    if-gt v8, v7, :cond_4

    .line 72
    .line 73
    :cond_2
    :goto_0
    iget-object v9, v1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 74
    .line 75
    aget-object v9, v9, v7

    .line 76
    .line 77
    invoke-virtual {v0, v9}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->collisionKeyIndex(Ljava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    const/4 v11, -0x1

    .line 82
    if-eq v9, v11, :cond_3

    .line 83
    .line 84
    iget v9, v3, Lkotlinx/collections/immutable/internal/DeltaCounter;->count:I

    .line 85
    .line 86
    add-int/lit8 v9, v9, 0x1

    .line 87
    .line 88
    iput v9, v3, Lkotlinx/collections/immutable/internal/DeltaCounter;->count:I

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    iget-object v9, v1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 92
    .line 93
    aget-object v11, v9, v7

    .line 94
    .line 95
    aput-object v11, v4, v6

    .line 96
    .line 97
    add-int/lit8 v11, v6, 0x1

    .line 98
    .line 99
    add-int/lit8 v12, v7, 0x1

    .line 100
    .line 101
    aget-object v9, v9, v12

    .line 102
    .line 103
    aput-object v9, v4, v11

    .line 104
    .line 105
    add-int/lit8 v6, v6, 0x2

    .line 106
    .line 107
    :goto_1
    if-eq v7, v8, :cond_4

    .line 108
    .line 109
    add-int/2addr v7, v5

    .line 110
    goto :goto_0

    .line 111
    :cond_4
    iget-object v3, v0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 112
    .line 113
    array-length v3, v3

    .line 114
    if-ne v6, v3, :cond_5

    .line 115
    .line 116
    goto/16 :goto_e

    .line 117
    .line 118
    :cond_5
    iget-object v0, v1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 119
    .line 120
    array-length v0, v0

    .line 121
    if-ne v6, v0, :cond_6

    .line 122
    .line 123
    goto/16 :goto_f

    .line 124
    .line 125
    :cond_6
    array-length v0, v4

    .line 126
    if-ne v6, v0, :cond_7

    .line 127
    .line 128
    new-instance v0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 129
    .line 130
    invoke-direct {v0, v10, v10, v4, v2}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;-><init>(II[Ljava/lang/Object;Lkotlinx/collections/immutable/internal/EndOfChain;)V

    .line 131
    .line 132
    .line 133
    return-object v0

    .line 134
    :cond_7
    new-instance v0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 135
    .line 136
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-direct {v0, v10, v10, v1, v2}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;-><init>(II[Ljava/lang/Object;Lkotlinx/collections/immutable/internal/EndOfChain;)V

    .line 141
    .line 142
    .line 143
    return-object v0

    .line 144
    :cond_8
    iget v4, v0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 145
    .line 146
    iget v6, v1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 147
    .line 148
    or-int/2addr v4, v6

    .line 149
    iget v6, v0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 150
    .line 151
    iget v7, v1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 152
    .line 153
    xor-int v8, v6, v7

    .line 154
    .line 155
    not-int v11, v4

    .line 156
    and-int/2addr v8, v11

    .line 157
    and-int/2addr v6, v7

    .line 158
    move v11, v8

    .line 159
    :goto_2
    if-eqz v6, :cond_a

    .line 160
    .line 161
    invoke-static {v6}, Ljava/lang/Integer;->lowestOneBit(I)I

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    invoke-virtual {v0, v7}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->entryKeyIndex$kotlinx_collections_immutable(I)I

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    iget-object v12, v0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 170
    .line 171
    aget-object v8, v12, v8

    .line 172
    .line 173
    invoke-virtual {v1, v7}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->entryKeyIndex$kotlinx_collections_immutable(I)I

    .line 174
    .line 175
    .line 176
    move-result v12

    .line 177
    iget-object v13, v1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 178
    .line 179
    aget-object v12, v13, v12

    .line 180
    .line 181
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    if-eqz v8, :cond_9

    .line 186
    .line 187
    or-int v8, v11, v7

    .line 188
    .line 189
    move v11, v8

    .line 190
    goto :goto_3

    .line 191
    :cond_9
    or-int/2addr v4, v7

    .line 192
    :goto_3
    xor-int/2addr v6, v7

    .line 193
    goto :goto_2

    .line 194
    :cond_a
    and-int v6, v4, v11

    .line 195
    .line 196
    const/4 v7, 0x0

    .line 197
    if-nez v6, :cond_1e

    .line 198
    .line 199
    iget-object v6, v0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->ownedBy:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 200
    .line 201
    iget-object v8, v9, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->ownership:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 202
    .line 203
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-eqz v6, :cond_b

    .line 208
    .line 209
    iget v6, v0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 210
    .line 211
    if-ne v6, v11, :cond_b

    .line 212
    .line 213
    iget v6, v0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 214
    .line 215
    if-ne v6, v4, :cond_b

    .line 216
    .line 217
    move-object v12, v0

    .line 218
    goto :goto_4

    .line 219
    :cond_b
    invoke-static {v11}, Ljava/lang/Integer;->bitCount(I)I

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    mul-int/2addr v6, v5

    .line 224
    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    add-int/2addr v5, v6

    .line 229
    new-array v5, v5, [Ljava/lang/Object;

    .line 230
    .line 231
    new-instance v6, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 232
    .line 233
    invoke-direct {v6, v11, v4, v5, v7}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;-><init>(II[Ljava/lang/Object;Lkotlinx/collections/immutable/internal/EndOfChain;)V

    .line 234
    .line 235
    .line 236
    move-object v12, v6

    .line 237
    :goto_4
    move v13, v4

    .line 238
    move v14, v10

    .line 239
    :goto_5
    if-eqz v13, :cond_18

    .line 240
    .line 241
    invoke-static {v13}, Ljava/lang/Integer;->lowestOneBit(I)I

    .line 242
    .line 243
    .line 244
    move-result v15

    .line 245
    iget-object v4, v12, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 246
    .line 247
    array-length v5, v4

    .line 248
    add-int/lit8 v5, v5, -0x1

    .line 249
    .line 250
    sub-int v16, v5, v14

    .line 251
    .line 252
    invoke-virtual {v0, v15}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->hasNodeAt(I)Z

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    if-eqz v5, :cond_f

    .line 257
    .line 258
    invoke-virtual {v0, v15}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeIndex$kotlinx_collections_immutable(I)I

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    invoke-virtual {v0, v5}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeAtIndex$kotlinx_collections_immutable(I)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    invoke-virtual {v1, v15}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->hasNodeAt(I)Z

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    if-eqz v6, :cond_c

    .line 271
    .line 272
    invoke-virtual {v1, v15}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeIndex$kotlinx_collections_immutable(I)I

    .line 273
    .line 274
    .line 275
    move-result v6

    .line 276
    invoke-virtual {v1, v6}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeAtIndex$kotlinx_collections_immutable(I)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    add-int/lit8 v7, v2, 0x5

    .line 281
    .line 282
    invoke-virtual {v5, v6, v7, v3, v9}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->mutablePutAll(Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;ILkotlinx/collections/immutable/internal/DeltaCounter;Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    move-object/from16 v17, v4

    .line 287
    .line 288
    goto/16 :goto_b

    .line 289
    .line 290
    :cond_c
    invoke-virtual {v1, v15}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->hasEntryAt$kotlinx_collections_immutable(I)Z

    .line 291
    .line 292
    .line 293
    move-result v6

    .line 294
    if-eqz v6, :cond_e

    .line 295
    .line 296
    invoke-virtual {v1, v15}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->entryKeyIndex$kotlinx_collections_immutable(I)I

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    iget-object v7, v1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 301
    .line 302
    aget-object v7, v7, v6

    .line 303
    .line 304
    invoke-virtual {v1, v6}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->valueAtKeyIndex(I)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    iget v8, v9, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->size:I

    .line 309
    .line 310
    if-eqz v7, :cond_d

    .line 311
    .line 312
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    .line 313
    .line 314
    .line 315
    move-result v17

    .line 316
    goto :goto_6

    .line 317
    :cond_d
    move/from16 v17, v10

    .line 318
    .line 319
    :goto_6
    move/from16 v18, v8

    .line 320
    .line 321
    add-int/lit8 v8, v2, 0x5

    .line 322
    .line 323
    move/from16 v10, v17

    .line 324
    .line 325
    move-object/from16 v17, v4

    .line 326
    .line 327
    move-object v4, v5

    .line 328
    move v5, v10

    .line 329
    move-object v10, v7

    .line 330
    move-object v7, v6

    .line 331
    move-object v6, v10

    .line 332
    move/from16 v10, v18

    .line 333
    .line 334
    invoke-virtual/range {v4 .. v9}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->mutablePut(ILjava/lang/Object;Ljava/lang/Object;ILkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    iget v4, v9, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->size:I

    .line 339
    .line 340
    if-ne v4, v10, :cond_17

    .line 341
    .line 342
    iget v4, v3, Lkotlinx/collections/immutable/internal/DeltaCounter;->count:I

    .line 343
    .line 344
    add-int/lit8 v4, v4, 0x1

    .line 345
    .line 346
    iput v4, v3, Lkotlinx/collections/immutable/internal/DeltaCounter;->count:I

    .line 347
    .line 348
    goto/16 :goto_b

    .line 349
    .line 350
    :cond_e
    move-object/from16 v17, v4

    .line 351
    .line 352
    move-object v4, v5

    .line 353
    goto/16 :goto_b

    .line 354
    .line 355
    :cond_f
    move-object/from16 v17, v4

    .line 356
    .line 357
    invoke-virtual {v1, v15}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->hasNodeAt(I)Z

    .line 358
    .line 359
    .line 360
    move-result v4

    .line 361
    if-eqz v4, :cond_14

    .line 362
    .line 363
    invoke-virtual {v1, v15}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeIndex$kotlinx_collections_immutable(I)I

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    invoke-virtual {v1, v4}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeAtIndex$kotlinx_collections_immutable(I)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-virtual {v0, v15}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->hasEntryAt$kotlinx_collections_immutable(I)Z

    .line 372
    .line 373
    .line 374
    move-result v5

    .line 375
    if-eqz v5, :cond_11

    .line 376
    .line 377
    invoke-virtual {v0, v15}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->entryKeyIndex$kotlinx_collections_immutable(I)I

    .line 378
    .line 379
    .line 380
    move-result v5

    .line 381
    iget-object v6, v0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 382
    .line 383
    aget-object v6, v6, v5

    .line 384
    .line 385
    if-eqz v6, :cond_10

    .line 386
    .line 387
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    .line 388
    .line 389
    .line 390
    move-result v7

    .line 391
    goto :goto_7

    .line 392
    :cond_10
    const/4 v7, 0x0

    .line 393
    :goto_7
    add-int/lit8 v8, v2, 0x5

    .line 394
    .line 395
    invoke-virtual {v4, v7, v8, v6}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->containsKey(IILjava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v7

    .line 399
    if-eqz v7, :cond_12

    .line 400
    .line 401
    iget v5, v3, Lkotlinx/collections/immutable/internal/DeltaCounter;->count:I

    .line 402
    .line 403
    add-int/lit8 v5, v5, 0x1

    .line 404
    .line 405
    iput v5, v3, Lkotlinx/collections/immutable/internal/DeltaCounter;->count:I

    .line 406
    .line 407
    :cond_11
    move-object v5, v4

    .line 408
    goto :goto_b

    .line 409
    :cond_12
    invoke-virtual {v0, v5}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->valueAtKeyIndex(I)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v7

    .line 413
    if-eqz v6, :cond_13

    .line 414
    .line 415
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    .line 416
    .line 417
    .line 418
    move-result v5

    .line 419
    goto :goto_8

    .line 420
    :cond_13
    const/4 v5, 0x0

    .line 421
    :goto_8
    invoke-virtual/range {v4 .. v9}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->mutablePut(ILjava/lang/Object;Ljava/lang/Object;ILkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 422
    .line 423
    .line 424
    move-result-object v5

    .line 425
    goto :goto_b

    .line 426
    :cond_14
    invoke-virtual {v0, v15}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->entryKeyIndex$kotlinx_collections_immutable(I)I

    .line 427
    .line 428
    .line 429
    move-result v4

    .line 430
    iget-object v5, v0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 431
    .line 432
    aget-object v20, v5, v4

    .line 433
    .line 434
    invoke-virtual {v0, v4}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->valueAtKeyIndex(I)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v21

    .line 438
    invoke-virtual {v1, v15}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->entryKeyIndex$kotlinx_collections_immutable(I)I

    .line 439
    .line 440
    .line 441
    move-result v4

    .line 442
    iget-object v5, v1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 443
    .line 444
    aget-object v23, v5, v4

    .line 445
    .line 446
    invoke-virtual {v1, v4}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->valueAtKeyIndex(I)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v24

    .line 450
    if-eqz v20, :cond_15

    .line 451
    .line 452
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->hashCode()I

    .line 453
    .line 454
    .line 455
    move-result v4

    .line 456
    move/from16 v19, v4

    .line 457
    .line 458
    goto :goto_9

    .line 459
    :cond_15
    const/16 v19, 0x0

    .line 460
    .line 461
    :goto_9
    if-eqz v23, :cond_16

    .line 462
    .line 463
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->hashCode()I

    .line 464
    .line 465
    .line 466
    move-result v4

    .line 467
    move/from16 v22, v4

    .line 468
    .line 469
    goto :goto_a

    .line 470
    :cond_16
    const/16 v22, 0x0

    .line 471
    .line 472
    :goto_a
    add-int/lit8 v25, v2, 0x5

    .line 473
    .line 474
    iget-object v4, v9, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->ownership:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 475
    .line 476
    move-object/from16 v26, v4

    .line 477
    .line 478
    invoke-static/range {v19 .. v26}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->makeNode(ILjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;ILkotlinx/collections/immutable/internal/EndOfChain;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 479
    .line 480
    .line 481
    move-result-object v5

    .line 482
    :cond_17
    :goto_b
    aput-object v5, v17, v16

    .line 483
    .line 484
    add-int/lit8 v14, v14, 0x1

    .line 485
    .line 486
    xor-int/2addr v13, v15

    .line 487
    const/4 v10, 0x0

    .line 488
    goto/16 :goto_5

    .line 489
    .line 490
    :cond_18
    const/4 v10, 0x0

    .line 491
    :goto_c
    if-eqz v11, :cond_1b

    .line 492
    .line 493
    invoke-static {v11}, Ljava/lang/Integer;->lowestOneBit(I)I

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    mul-int/lit8 v4, v10, 0x2

    .line 498
    .line 499
    invoke-virtual {v1, v2}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->hasEntryAt$kotlinx_collections_immutable(I)Z

    .line 500
    .line 501
    .line 502
    move-result v5

    .line 503
    if-nez v5, :cond_19

    .line 504
    .line 505
    invoke-virtual {v0, v2}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->entryKeyIndex$kotlinx_collections_immutable(I)I

    .line 506
    .line 507
    .line 508
    move-result v5

    .line 509
    iget-object v6, v12, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 510
    .line 511
    iget-object v7, v0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 512
    .line 513
    aget-object v7, v7, v5

    .line 514
    .line 515
    aput-object v7, v6, v4

    .line 516
    .line 517
    add-int/lit8 v4, v4, 0x1

    .line 518
    .line 519
    invoke-virtual {v0, v5}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->valueAtKeyIndex(I)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v5

    .line 523
    aput-object v5, v6, v4

    .line 524
    .line 525
    goto :goto_d

    .line 526
    :cond_19
    invoke-virtual {v1, v2}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->entryKeyIndex$kotlinx_collections_immutable(I)I

    .line 527
    .line 528
    .line 529
    move-result v5

    .line 530
    iget-object v6, v12, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 531
    .line 532
    iget-object v7, v1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 533
    .line 534
    aget-object v7, v7, v5

    .line 535
    .line 536
    aput-object v7, v6, v4

    .line 537
    .line 538
    add-int/lit8 v4, v4, 0x1

    .line 539
    .line 540
    invoke-virtual {v1, v5}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->valueAtKeyIndex(I)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v5

    .line 544
    aput-object v5, v6, v4

    .line 545
    .line 546
    invoke-virtual {v0, v2}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->hasEntryAt$kotlinx_collections_immutable(I)Z

    .line 547
    .line 548
    .line 549
    move-result v4

    .line 550
    if-eqz v4, :cond_1a

    .line 551
    .line 552
    iget v4, v3, Lkotlinx/collections/immutable/internal/DeltaCounter;->count:I

    .line 553
    .line 554
    add-int/lit8 v4, v4, 0x1

    .line 555
    .line 556
    iput v4, v3, Lkotlinx/collections/immutable/internal/DeltaCounter;->count:I

    .line 557
    .line 558
    :cond_1a
    :goto_d
    add-int/lit8 v10, v10, 0x1

    .line 559
    .line 560
    xor-int/2addr v11, v2

    .line 561
    goto :goto_c

    .line 562
    :cond_1b
    invoke-virtual {v0, v12}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->elementsIdentityEquals(Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;)Z

    .line 563
    .line 564
    .line 565
    move-result v2

    .line 566
    if-eqz v2, :cond_1c

    .line 567
    .line 568
    :goto_e
    return-object v0

    .line 569
    :cond_1c
    invoke-virtual {v1, v12}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->elementsIdentityEquals(Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;)Z

    .line 570
    .line 571
    .line 572
    move-result v0

    .line 573
    if-eqz v0, :cond_1d

    .line 574
    .line 575
    :goto_f
    return-object v1

    .line 576
    :cond_1d
    return-object v12

    .line 577
    :cond_1e
    const-string v0, "Check failed."

    .line 578
    .line 579
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    return-object v7
.end method

.method public final mutableRemove(ILjava/lang/Object;ILkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;
    .locals 4

    const/4 v0, 0x1

    .line 100
    invoke-static {p1, p3}, Lkotlin/io/ByteStreamsKt;->indexSegment(II)I

    move-result v1

    shl-int/2addr v0, v1

    .line 101
    invoke-virtual {p0, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->hasEntryAt$kotlinx_collections_immutable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p0, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->entryKeyIndex$kotlinx_collections_immutable(I)I

    move-result p1

    .line 103
    iget-object p3, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    aget-object p3, p3, p1

    .line 104
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 105
    invoke-virtual {p0, p1, v0, p4}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->mutableRemoveEntryAtIndex(IILkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    move-result-object p0

    return-object p0

    .line 106
    :cond_0
    invoke-virtual {p0, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->hasNodeAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    invoke-virtual {p0, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeIndex$kotlinx_collections_immutable(I)I

    move-result v1

    .line 108
    invoke-virtual {p0, v1}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeAtIndex$kotlinx_collections_immutable(I)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    move-result-object v2

    const/16 v3, 0x1e

    if-ne p3, v3, :cond_1

    .line 109
    invoke-virtual {v2, p2}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->collisionKeyIndex(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 110
    invoke-virtual {v2, p1, p4}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->mutableCollisionRemoveEntryAtIndex(ILkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    move-result-object v2

    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, 0x5

    .line 111
    invoke-virtual {v2, p1, p2, p3, p4}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->mutableRemove(ILjava/lang/Object;ILkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    move-result-object v2

    .line 112
    :cond_2
    :goto_0
    iget-object p1, p4, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->ownership:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 113
    invoke-virtual {p0, v1, v0, v2, p1}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->mutableReplaceNode(IILkotlinx/collections/immutable/implementations/immutableMap/TrieNode;Lkotlinx/collections/immutable/internal/EndOfChain;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public final mutableRemove(ILjava/lang/Object;Ljava/lang/Object;ILkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p4}, Lkotlin/io/ByteStreamsKt;->indexSegment(II)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    shl-int/2addr v0, v1

    .line 7
    invoke-virtual {p0, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->hasEntryAt$kotlinx_collections_immutable(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->entryKeyIndex$kotlinx_collections_immutable(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object p4, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 18
    .line 19
    aget-object p4, p4, p1

    .line 20
    .line 21
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->valueAtKeyIndex(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0, p1, v0, p5}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->mutableRemoveEntryAtIndex(IILkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_0
    invoke-virtual {p0, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->hasNodeAt(I)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeIndex$kotlinx_collections_immutable(I)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {p0, v1}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeAtIndex$kotlinx_collections_immutable(I)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/16 v3, 0x1e

    .line 57
    .line 58
    if-ne p4, v3, :cond_2

    .line 59
    .line 60
    invoke-virtual {v2, p2}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->collisionKeyIndex(Ljava/lang/Object;)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    const/4 p2, -0x1

    .line 65
    if-eq p1, p2, :cond_1

    .line 66
    .line 67
    invoke-virtual {v2, p1}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->valueAtKeyIndex(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_1

    .line 76
    .line 77
    invoke-virtual {v2, p1, p5}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->mutableCollisionRemoveEntryAtIndex(ILkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    :cond_1
    move-object v7, p5

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    add-int/lit8 v6, p4, 0x5

    .line 84
    .line 85
    move v3, p1

    .line 86
    move-object v4, p2

    .line 87
    move-object v5, p3

    .line 88
    move-object v7, p5

    .line 89
    invoke-virtual/range {v2 .. v7}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->mutableRemove(ILjava/lang/Object;Ljava/lang/Object;ILkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    :goto_0
    iget-object p1, v7, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->ownership:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 94
    .line 95
    invoke-virtual {p0, v1, v0, v2, p1}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->mutableReplaceNode(IILkotlinx/collections/immutable/implementations/immutableMap/TrieNode;Lkotlinx/collections/immutable/internal/EndOfChain;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    :cond_3
    return-object p0
.end method

.method public final mutableRemoveEntryAtIndex(IILkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;
    .locals 3

    .line 1
    iget v0, p3, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->size:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    invoke-virtual {p3, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->setSize(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->valueAtKeyIndex(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p3, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->operationResult:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 15
    .line 16
    array-length v1, v0

    .line 17
    const/4 v2, 0x2

    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_0
    iget-object v1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->ownedBy:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 23
    .line 24
    iget-object v2, p3, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->ownership:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 25
    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/io/ByteStreamsKt;->access$removeEntryAtIndex(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 33
    .line 34
    iget p1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 35
    .line 36
    xor-int/2addr p1, p2

    .line 37
    iput p1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_1
    invoke-static {p1, v0}, Lkotlin/io/ByteStreamsKt;->access$removeEntryAtIndex(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 45
    .line 46
    iget v1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 47
    .line 48
    xor-int/2addr p2, v1

    .line 49
    iget p0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 50
    .line 51
    iget-object p3, p3, Lkotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->ownership:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 52
    .line 53
    invoke-direct {v0, p2, p0, p1, p3}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;-><init>(II[Ljava/lang/Object;Lkotlinx/collections/immutable/internal/EndOfChain;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method public final mutableReplaceNode(IILkotlinx/collections/immutable/implementations/immutableMap/TrieNode;Lkotlinx/collections/immutable/internal/EndOfChain;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;
    .locals 4

    .line 1
    if-nez p3, :cond_2

    .line 2
    .line 3
    iget-object p3, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 4
    .line 5
    array-length v0, p3

    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    iget-object v0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->ownedBy:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 12
    .line 13
    const/4 v2, 0x6

    .line 14
    const/4 v3, 0x0

    .line 15
    if-ne v0, p4, :cond_1

    .line 16
    .line 17
    array-length p4, p3

    .line 18
    sub-int/2addr p4, v1

    .line 19
    new-array p4, p4, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p3, p4, v3, p1, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v0, p1, 0x1

    .line 25
    .line 26
    array-length v1, p3

    .line 27
    invoke-static {p3, p4, p1, v0, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 28
    .line 29
    .line 30
    iput-object p4, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 31
    .line 32
    iget p1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 33
    .line 34
    xor-int/2addr p1, p2

    .line 35
    iput p1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    array-length v0, p3

    .line 39
    sub-int/2addr v0, v1

    .line 40
    new-array v0, v0, [Ljava/lang/Object;

    .line 41
    .line 42
    invoke-static {p3, v0, v3, p1, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, p1, 0x1

    .line 46
    .line 47
    array-length v2, p3

    .line 48
    invoke-static {p3, v0, p1, v1, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 52
    .line 53
    iget p3, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 54
    .line 55
    iget p0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 56
    .line 57
    xor-int/2addr p0, p2

    .line 58
    invoke-direct {p1, p3, p0, v0, p4}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;-><init>(II[Ljava/lang/Object;Lkotlinx/collections/immutable/internal/EndOfChain;)V

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->updateNodeAtIndex(IILkotlinx/collections/immutable/implementations/immutableMap/TrieNode;Lkotlinx/collections/immutable/internal/EndOfChain;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public final nodeAtIndex$kotlinx_collections_immutable(I)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 2
    .line 3
    aget-object p0, p0, p1

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 9
    .line 10
    return-object p0
.end method

.method public final nodeIndex$kotlinx_collections_immutable(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iget p0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 7
    .line 8
    add-int/lit8 p1, p1, -0x1

    .line 9
    .line 10
    and-int/2addr p0, p1

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    sub-int/2addr v0, p0

    .line 16
    return v0
.end method

.method public final updateNodeAtIndex(IILkotlinx/collections/immutable/implementations/immutableMap/TrieNode;Lkotlinx/collections/immutable/internal/EndOfChain;)Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;
    .locals 7

    .line 1
    iget-object v0, p3, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x2

    .line 5
    if-ne v1, v2, :cond_1

    .line 6
    .line 7
    iget v1, p3, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 12
    .line 13
    array-length v1, v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    iget p0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 18
    .line 19
    iput p0, p3, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 20
    .line 21
    return-object p3

    .line 22
    :cond_0
    invoke-virtual {p0, p2}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->entryKeyIndex$kotlinx_collections_immutable(I)I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    iget-object v1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    aget-object v3, v0, v3

    .line 30
    .line 31
    aget-object v0, v0, v2

    .line 32
    .line 33
    array-length v4, v1

    .line 34
    add-int/2addr v4, v2

    .line 35
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    add-int/lit8 v5, p1, 0x2

    .line 40
    .line 41
    add-int/lit8 v6, p1, 0x1

    .line 42
    .line 43
    array-length v1, v1

    .line 44
    invoke-static {v4, v4, v5, v6, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v1, p3, 0x2

    .line 48
    .line 49
    invoke-static {v4, v4, v1, p3, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 50
    .line 51
    .line 52
    aput-object v3, v4, p3

    .line 53
    .line 54
    add-int/2addr p3, v2

    .line 55
    aput-object v0, v4, p3

    .line 56
    .line 57
    new-instance p1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 58
    .line 59
    iget p3, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 60
    .line 61
    xor-int/2addr p3, p2

    .line 62
    iget p0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 63
    .line 64
    xor-int/2addr p0, p2

    .line 65
    invoke-direct {p1, p3, p0, v4, p4}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;-><init>(II[Ljava/lang/Object;Lkotlinx/collections/immutable/internal/EndOfChain;)V

    .line 66
    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_1
    if-eqz p4, :cond_2

    .line 70
    .line 71
    iget-object p2, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->ownedBy:Lkotlinx/collections/immutable/internal/EndOfChain;

    .line 72
    .line 73
    if-ne p2, p4, :cond_2

    .line 74
    .line 75
    iget-object p2, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 76
    .line 77
    aput-object p3, p2, p1

    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_2
    iget-object p2, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 81
    .line 82
    array-length v0, p2

    .line 83
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    aput-object p3, p2, p1

    .line 88
    .line 89
    new-instance p1, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;

    .line 90
    .line 91
    iget p3, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->dataMap:I

    .line 92
    .line 93
    iget p0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->nodeMap:I

    .line 94
    .line 95
    invoke-direct {p1, p3, p0, p2, p4}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;-><init>(II[Ljava/lang/Object;Lkotlinx/collections/immutable/internal/EndOfChain;)V

    .line 96
    .line 97
    .line 98
    return-object p1
.end method

.method public final valueAtKeyIndex(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNode;->buffer:[Ljava/lang/Object;

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    aget-object p0, p0, p1

    .line 6
    .line 7
    return-object p0
.end method
