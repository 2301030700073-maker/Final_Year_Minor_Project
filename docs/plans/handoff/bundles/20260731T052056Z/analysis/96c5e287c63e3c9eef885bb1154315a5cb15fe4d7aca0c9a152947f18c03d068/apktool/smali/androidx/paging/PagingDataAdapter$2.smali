.class public final Landroidx/paging/PagingDataAdapter$2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public ignoreNextEvent:Z

.field public final synthetic this$0:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;


# direct methods
.method public constructor <init>(Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/paging/PagingDataAdapter$2;->this$0:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/paging/PagingDataAdapter$2;->ignoreNextEvent:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/paging/CombinedLoadStates;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/paging/PagingDataAdapter$2;->ignoreNextEvent:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Landroidx/paging/PagingDataAdapter$2;->ignoreNextEvent:Z

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p1, Landroidx/paging/CombinedLoadStates;->source:Landroidx/paging/LoadStates;

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/paging/LoadStates;->refresh:Landroidx/paging/LoadState;

    .line 17
    .line 18
    instance-of p1, p1, Landroidx/paging/LoadState$NotLoading;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/paging/PagingDataAdapter$2;->this$0:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 23
    .line 24
    invoke-static {p1}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->_init_$considerAllowingStateRestoration(Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p1, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->differ:Landroidx/paging/AsyncPagingDataDiffer;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object v0, p1, Landroidx/paging/AsyncPagingDataDiffer;->childLoadStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    iget-object p0, p1, Landroidx/paging/AsyncPagingDataDiffer;->parentLoadStateListener:Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 50
    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    iget-object p1, p1, Landroidx/paging/AsyncPagingDataDiffer;->presenter:Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object p1, p1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->combinedLoadStatesCollection:Lcom/caverock/androidsvg/SVG;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Lkotlin/collections/IndexingIterable;

    .line 66
    .line 67
    iget-object p1, p1, Lkotlin/collections/IndexingIterable;->iteratorFactory:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 70
    .line 71
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 75
    .line 76
    return-object p0
.end method
