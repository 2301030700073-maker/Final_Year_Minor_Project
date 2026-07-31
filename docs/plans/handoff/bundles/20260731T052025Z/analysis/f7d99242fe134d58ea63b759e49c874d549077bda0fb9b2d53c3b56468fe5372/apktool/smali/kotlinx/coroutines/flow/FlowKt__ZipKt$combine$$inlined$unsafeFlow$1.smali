.class public final Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $flow$inlined:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $this_combine$inlined:Lkotlinx/coroutines/flow/Flow;

.field public final synthetic $transform$inlined:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;->$this_combine$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 4
    .line 5
    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;->$flow$inlined:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;->$transform$inlined:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;->$transform$inlined:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;->$flow$inlined:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;->$this_combine$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 13
    .line 14
    const/4 v7, 0x1

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    instance-of v0, p2, Lcom/fsck/k9/ui/messagelist/MessageListFragment$loadMessages$$inlined$map$1$1;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    move-object v0, p2

    .line 23
    check-cast v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$loadMessages$$inlined$map$1$1;

    .line 24
    .line 25
    iget v8, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$loadMessages$$inlined$map$1$1;->label:I

    .line 26
    .line 27
    const/high16 v9, -0x80000000

    .line 28
    .line 29
    and-int v10, v8, v9

    .line 30
    .line 31
    if-eqz v10, :cond_0

    .line 32
    .line 33
    sub-int/2addr v8, v9

    .line 34
    iput v8, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$loadMessages$$inlined$map$1$1;->label:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$loadMessages$$inlined$map$1$1;

    .line 38
    .line 39
    invoke-direct {v0, p0, p2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$loadMessages$$inlined$map$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object p0, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$loadMessages$$inlined$map$1$1;->result:Ljava/lang/Object;

    .line 43
    .line 44
    iget p2, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$loadMessages$$inlined$map$1$1;->label:I

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    if-ne p2, v7, :cond_1

    .line 49
    .line 50
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    move-object v1, v5

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;

    .line 65
    .line 66
    check-cast v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 67
    .line 68
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 69
    .line 70
    invoke-direct {p0, p1, v3, v2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/fsck/k9/ui/messagelist/MessageListFragment;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;)V

    .line 71
    .line 72
    .line 73
    iput v7, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$loadMessages$$inlined$map$1$1;->label:I

    .line 74
    .line 75
    invoke-interface {v4, p0, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    if-ne p0, v6, :cond_3

    .line 80
    .line 81
    move-object v1, v6

    .line 82
    :cond_3
    :goto_1
    return-object v1

    .line 83
    :pswitch_0
    check-cast v3, Lkotlinx/coroutines/flow/Flow;

    .line 84
    .line 85
    const/4 p0, 0x2

    .line 86
    new-array p0, p0, [Lkotlinx/coroutines/flow/Flow;

    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    aput-object v4, p0, v0

    .line 90
    .line 91
    aput-object v3, p0, v7

    .line 92
    .line 93
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;

    .line 94
    .line 95
    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 96
    .line 97
    invoke-direct {v3, v2, v5, v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;-><init>(Lkotlin/Function;Lkotlin/coroutines/Continuation;I)V

    .line 98
    .line 99
    .line 100
    sget-object v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$nullArrayFactory$1;->INSTANCE:Lkotlinx/coroutines/flow/FlowKt__ZipKt$nullArrayFactory$1;

    .line 101
    .line 102
    invoke-static {p2, v0, v3, p1, p0}, Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    if-ne p0, v6, :cond_4

    .line 107
    .line 108
    move-object v1, p0

    .line 109
    :cond_4
    return-object v1

    .line 110
    nop

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
