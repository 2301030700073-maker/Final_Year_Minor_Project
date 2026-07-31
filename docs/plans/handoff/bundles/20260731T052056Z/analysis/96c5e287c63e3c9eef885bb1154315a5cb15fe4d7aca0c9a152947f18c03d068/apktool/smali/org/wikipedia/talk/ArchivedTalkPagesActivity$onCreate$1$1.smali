.class public final Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Lorg/wikipedia/talk/ArchivedTalkPagesActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/talk/ArchivedTalkPagesActivity;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;->this$0:Lorg/wikipedia/talk/ArchivedTalkPagesActivity;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;->this$0:Lorg/wikipedia/talk/ArchivedTalkPagesActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;-><init>(Lorg/wikipedia/talk/ArchivedTalkPagesActivity;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;-><init>(Lorg/wikipedia/talk/ArchivedTalkPagesActivity;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, v0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_1
    new-instance v0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;-><init>(Lorg/wikipedia/talk/ArchivedTalkPagesActivity;Lkotlin/coroutines/Continuation;I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, v0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/paging/CombinedLoadStates;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    check-cast p1, Landroidx/paging/PagingData;

    .line 23
    .line 24
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 37
    .line 38
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;->this$0:Lorg/wikipedia/talk/ArchivedTalkPagesActivity;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1$1;->L$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Landroidx/paging/CombinedLoadStates;

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, v2, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->archivedTalkPagesLoadHeader:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/paging/CombinedLoadStates;->refresh:Landroidx/paging/LoadState;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/paging/LoadStateAdapter;->setLoadState(Landroidx/paging/LoadState;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, v2, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->archivedTalkPagesLoadFooter:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 25
    .line 26
    iget-object p0, p0, Landroidx/paging/CombinedLoadStates;->append:Landroidx/paging/LoadState;

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Landroidx/paging/LoadStateAdapter;->setLoadState(Landroidx/paging/LoadState;)V

    .line 29
    .line 30
    .line 31
    instance-of p1, p0, Landroidx/paging/LoadState$NotLoading;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-boolean p0, p0, Landroidx/paging/LoadState;->endOfPaginationReached:Z

    .line 36
    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    iget-object p0, v2, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->archivedTalkPagesAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 40
    .line 41
    invoke-virtual {p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->getItemCount()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_0

    .line 46
    .line 47
    iget-object p0, v2, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->archivedTalkPagesConcatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

    .line 48
    .line 49
    new-instance p1, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 50
    .line 51
    const/16 v0, 0xb

    .line 52
    .line 53
    invoke-direct {p1, v0, v2}, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;-><init>(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ConcatAdapter;->addAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-object v1

    .line 60
    :pswitch_0
    check-cast p0, Landroidx/paging/PagingData;

    .line 61
    .line 62
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, v2, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->archivedTalkPagesAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 66
    .line 67
    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v0, p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->submitData(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Landroidx/paging/PagingData;)V

    .line 72
    .line 73
    .line 74
    return-object v1

    .line 75
    :pswitch_1
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 76
    .line 77
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    new-instance p1, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1;

    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    const/4 v3, 0x0

    .line 84
    invoke-direct {p1, v2, v3, v0}, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1;-><init>(Lorg/wikipedia/talk/ArchivedTalkPagesActivity;Lkotlin/coroutines/Continuation;I)V

    .line 85
    .line 86
    .line 87
    const/4 v0, 0x3

    .line 88
    invoke-static {p0, v3, v3, p1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 89
    .line 90
    .line 91
    new-instance p1, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1;

    .line 92
    .line 93
    const/4 v4, 0x2

    .line 94
    invoke-direct {p1, v2, v3, v4}, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$onCreate$1;-><init>(Lorg/wikipedia/talk/ArchivedTalkPagesActivity;Lkotlin/coroutines/Continuation;I)V

    .line 95
    .line 96
    .line 97
    invoke-static {p0, v3, v3, p1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 98
    .line 99
    .line 100
    return-object v1

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
