.class public final Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;->this$0:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

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
    iget v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;->this$0:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_1
    new-instance v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;Lkotlin/coroutines/Continuation;I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;->L$0:Ljava/lang/Object;

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
    iget v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 8

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v4, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;->this$0:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2$1;->L$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Landroidx/paging/CombinedLoadStates;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, v4, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 20
    .line 21
    const-string v0, "binding"

    .line 22
    .line 23
    if-eqz p1, :cond_5

    .line 24
    .line 25
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listEmptyContainer:Landroid/view/View;

    .line 26
    .line 27
    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 28
    .line 29
    iget-object v5, p0, Landroidx/paging/CombinedLoadStates;->append:Landroidx/paging/LoadState;

    .line 30
    .line 31
    instance-of v5, v5, Landroidx/paging/LoadState$Loading;

    .line 32
    .line 33
    const/16 v6, 0x8

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    if-nez v5, :cond_1

    .line 37
    .line 38
    iget-object v5, p0, Landroidx/paging/CombinedLoadStates;->refresh:Landroidx/paging/LoadState;

    .line 39
    .line 40
    instance-of v5, v5, Landroidx/paging/LoadState$Loading;

    .line 41
    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v5, v6

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    move v5, v7

    .line 48
    :goto_1
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Landroidx/paging/CombinedLoadStates;->append:Landroidx/paging/LoadState;

    .line 52
    .line 53
    instance-of p1, p0, Landroidx/paging/LoadState$NotLoading;

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    iget-boolean p0, p0, Landroidx/paging/LoadState;->endOfPaginationReached:Z

    .line 58
    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    iget-object p0, v4, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 62
    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->getItemCount()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-nez p0, :cond_2

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    move v1, v7

    .line 73
    :goto_2
    iget-object p0, v4, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 74
    .line 75
    if-eqz p0, :cond_4

    .line 76
    .line 77
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listEmptyMessage:Landroid/widget/TextView;

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    move v6, v7

    .line 82
    :cond_3
    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    return-object v3

    .line 86
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v2

    .line 90
    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v2

    .line 94
    :pswitch_0
    check-cast p0, Landroidx/paging/PagingData;

    .line 95
    .line 96
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, v4, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 100
    .line 101
    if-eqz p1, :cond_6

    .line 102
    .line 103
    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p1, v0, p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->submitData(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Landroidx/paging/PagingData;)V

    .line 108
    .line 109
    .line 110
    :cond_6
    return-object v3

    .line 111
    :pswitch_1
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 112
    .line 113
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    new-instance p1, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2;

    .line 117
    .line 118
    invoke-direct {p1, v4, v2, v1}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;Lkotlin/coroutines/Continuation;I)V

    .line 119
    .line 120
    .line 121
    const/4 v0, 0x3

    .line 122
    invoke-static {p0, v2, v2, p1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 123
    .line 124
    .line 125
    new-instance p1, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2;

    .line 126
    .line 127
    const/4 v1, 0x2

    .line 128
    invoke-direct {p1, v4, v2, v1}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$onCreate$2;-><init>(Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;Lkotlin/coroutines/Continuation;I)V

    .line 129
    .line 130
    .line 131
    invoke-static {p0, v2, v2, p1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 132
    .line 133
    .line 134
    return-object v3

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
