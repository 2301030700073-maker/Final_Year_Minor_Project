.class public final Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1$1$invokeSuspend$$inlined$filter$1$2$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# instance fields
.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1$1$invokeSuspend$$inlined$filter$1$2$1;->this$0:Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;

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
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1$1$invokeSuspend$$inlined$filter$1$2$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1$1$invokeSuspend$$inlined$filter$1$2$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1$1$invokeSuspend$$inlined$filter$1$2$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1$1$invokeSuspend$$inlined$filter$1$2$1;->this$0:Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, p0}, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
