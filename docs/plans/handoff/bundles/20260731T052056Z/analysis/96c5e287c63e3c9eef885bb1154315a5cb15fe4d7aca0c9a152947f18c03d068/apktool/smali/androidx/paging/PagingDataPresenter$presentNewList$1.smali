.class public final Landroidx/paging/PagingDataPresenter$presentNewList$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public I$0:I

.field public I$1:I

.field public L$0:Ljava/util/List;

.field public L$1:Landroidx/paging/LoadStates;

.field public L$2:Landroidx/paging/LoadStates;

.field public L$3:Landroidx/paging/HintHandler;

.field public L$4:Landroidx/paging/PageStore;

.field public L$5:Landroidx/paging/HintHandler;

.field public L$6:Landroidx/paging/PageStore;

.field public Z$0:Z

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Landroidx/paging/AsyncPagingDataDiffer$presenter$1;


# direct methods
.method public constructor <init>(Landroidx/paging/AsyncPagingDataDiffer$presenter$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iput-object p1, p0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->label:I

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    iget-object v0, p0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    move-object v8, p0

    .line 20
    invoke-virtual/range {v0 .. v8}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->presentNewList(Ljava/util/List;IIZLandroidx/paging/LoadStates;Landroidx/paging/LoadStates;Landroidx/paging/HintHandler;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
