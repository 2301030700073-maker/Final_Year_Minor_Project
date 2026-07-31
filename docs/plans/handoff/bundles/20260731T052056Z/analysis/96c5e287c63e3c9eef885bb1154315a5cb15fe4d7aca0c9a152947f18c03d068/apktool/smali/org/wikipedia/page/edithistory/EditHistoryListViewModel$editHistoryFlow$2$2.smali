.class public final Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$editHistoryFlow$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $anonEditsOnly:Z

.field public final synthetic $userEditsOnly:Z

.field public synthetic L$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ZZLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$editHistoryFlow$2$2;->$anonEditsOnly:Z

    .line 2
    .line 3
    iput-boolean p2, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$editHistoryFlow$2$2;->$userEditsOnly:Z

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$editHistoryFlow$2$2;

    .line 2
    .line 3
    iget-boolean v1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$editHistoryFlow$2$2;->$anonEditsOnly:Z

    .line 4
    .line 5
    iget-boolean p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$editHistoryFlow$2$2;->$userEditsOnly:Z

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p2}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$editHistoryFlow$2$2;-><init>(ZZLkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$editHistoryFlow$2$2;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$editHistoryFlow$2$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$editHistoryFlow$2$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$editHistoryFlow$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$editHistoryFlow$2$2;->L$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-boolean p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$editHistoryFlow$2$2;->$anonEditsOnly:Z

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-boolean p0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->isAnon:Z

    .line 15
    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    iget-boolean p0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->isTemp:Z

    .line 19
    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    :cond_0
    :goto_0
    move v1, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-boolean p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$editHistoryFlow$2$2;->$userEditsOnly:Z

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    iget-boolean p0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->isAnon:Z

    .line 29
    .line 30
    if-nez p0, :cond_2

    .line 31
    .line 32
    iget-boolean p0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->isTemp:Z

    .line 33
    .line 34
    if-nez p0, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method
