.class public final Lnet/thunderbird/core/common/collections/PriorityQueue$HeapIterator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public index:I

.field public lastReturned:I

.field public final synthetic this$0:Lnet/thunderbird/core/common/collections/PriorityQueue;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/common/collections/PriorityQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/common/collections/PriorityQueue$HeapIterator;->this$0:Lnet/thunderbird/core/common/collections/PriorityQueue;

    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lnet/thunderbird/core/common/collections/PriorityQueue$HeapIterator;->lastReturned:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lnet/thunderbird/core/common/collections/PriorityQueue$HeapIterator;->index:I

    .line 2
    .line 3
    iget-object p0, p0, Lnet/thunderbird/core/common/collections/PriorityQueue$HeapIterator;->this$0:Lnet/thunderbird/core/common/collections/PriorityQueue;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/thunderbird/core/common/collections/PriorityQueue;->heap:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-ge v0, p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnet/thunderbird/core/common/collections/PriorityQueue$HeapIterator;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lnet/thunderbird/core/common/collections/PriorityQueue$HeapIterator;->index:I

    .line 8
    .line 9
    add-int/lit8 v1, v0, 0x1

    .line 10
    .line 11
    iput v1, p0, Lnet/thunderbird/core/common/collections/PriorityQueue$HeapIterator;->index:I

    .line 12
    .line 13
    iput v0, p0, Lnet/thunderbird/core/common/collections/PriorityQueue$HeapIterator;->lastReturned:I

    .line 14
    .line 15
    iget-object p0, p0, Lnet/thunderbird/core/common/collections/PriorityQueue$HeapIterator;->this$0:Lnet/thunderbird/core/common/collections/PriorityQueue;

    .line 16
    .line 17
    iget-object p0, p0, Lnet/thunderbird/core/common/collections/PriorityQueue;->heap:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    const-string p0, "Queue is empty"

    .line 25
    .line 26
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public final remove()V
    .locals 4

    .line 1
    iget v0, p0, Lnet/thunderbird/core/common/collections/PriorityQueue$HeapIterator;->lastReturned:I

    .line 2
    .line 3
    if-ltz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lnet/thunderbird/core/common/collections/PriorityQueue$HeapIterator;->this$0:Lnet/thunderbird/core/common/collections/PriorityQueue;

    .line 6
    .line 7
    iget-object v2, v1, Lnet/thunderbird/core/common/collections/PriorityQueue;->heap:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->getLastIndex(Ljava/util/List;)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-ne v0, v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lnet/thunderbird/core/common/collections/PriorityQueue;->siftDown(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lnet/thunderbird/core/common/collections/PriorityQueue;->siftUp(I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget v0, p0, Lnet/thunderbird/core/common/collections/PriorityQueue$HeapIterator;->lastReturned:I

    .line 33
    .line 34
    add-int/lit8 v1, v0, -0x1

    .line 35
    .line 36
    iput v1, p0, Lnet/thunderbird/core/common/collections/PriorityQueue$HeapIterator;->lastReturned:I

    .line 37
    .line 38
    iput v0, p0, Lnet/thunderbird/core/common/collections/PriorityQueue$HeapIterator;->index:I

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    const-string p0, "next() has not been called"

    .line 42
    .line 43
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
