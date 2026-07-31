.class public final Lkotlinx/collections/immutable/implementations/immutableMap/TrieNodeMutableEntriesIterator;
.super Lkotlinx/collections/immutable/implementations/immutableMap/TrieNodeBaseIterator;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final parentIterator:Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNodeBaseIterator;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNodeMutableEntriesIterator;->parentIterator:Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNodeBaseIterator;->index:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    iput v1, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNodeBaseIterator;->index:I

    .line 6
    .line 7
    new-instance v1, Lkotlinx/collections/immutable/implementations/immutableMap/MutableMapEntry;

    .line 8
    .line 9
    iget-object v2, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNodeBaseIterator;->buffer:[Ljava/lang/Object;

    .line 10
    .line 11
    aget-object v3, v2, v0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    aget-object v0, v2, v0

    .line 16
    .line 17
    iget-object p0, p0, Lkotlinx/collections/immutable/implementations/immutableMap/TrieNodeMutableEntriesIterator;->parentIterator:Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;

    .line 18
    .line 19
    invoke-direct {v1, p0, v3, v0}, Lkotlinx/collections/immutable/implementations/immutableMap/MutableMapEntry;-><init>(Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method
