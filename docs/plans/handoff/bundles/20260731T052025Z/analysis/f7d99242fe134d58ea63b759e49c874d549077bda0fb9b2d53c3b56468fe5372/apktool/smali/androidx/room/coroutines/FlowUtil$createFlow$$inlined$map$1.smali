.class public final Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $block$inlined:Ljava/lang/Object;

.field public final synthetic $db$inlined:Ljava/lang/Object;

.field public final synthetic $inTransaction$inlined:Z

.field public final synthetic $r8$classId:I

.field public final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Landroidx/room/RoomDatabase;ZLkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->$r8$classId:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->$db$inlined:Ljava/lang/Object;

    iput-boolean p3, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->$inTransaction$inlined:Z

    iput-object p4, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->$block$inlined:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;Lnet/thunderbird/core/common/action/SwipeActions;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->$db$inlined:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->$block$inlined:Ljava/lang/Object;

    .line 12
    .line 13
    iput-boolean p4, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->$inTransaction$inlined:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-boolean v2, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->$inTransaction$inlined:Z

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->$block$inlined:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->$db$inlined:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 12
    .line 13
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    instance-of v0, p2, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$1;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    move-object v0, p2

    .line 23
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$1;

    .line 24
    .line 25
    iget v7, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$1;->label:I

    .line 26
    .line 27
    const/high16 v8, -0x80000000

    .line 28
    .line 29
    and-int v9, v7, v8

    .line 30
    .line 31
    if-eqz v9, :cond_0

    .line 32
    .line 33
    sub-int/2addr v7, v8

    .line 34
    iput v7, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$1;->label:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$1;

    .line 38
    .line 39
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$1;-><init>(Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;Lkotlin/coroutines/Continuation;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object p0, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$1;->result:Ljava/lang/Object;

    .line 43
    .line 44
    iget p2, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$1;->label:I

    .line 45
    .line 46
    const/4 v7, 0x1

    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    if-ne p2, v7, :cond_1

    .line 50
    .line 51
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    check-cast v5, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;

    .line 66
    .line 67
    new-instance p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;

    .line 68
    .line 69
    check-cast v4, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;

    .line 70
    .line 71
    check-cast v3, Lnet/thunderbird/core/common/action/SwipeActions;

    .line 72
    .line 73
    invoke-direct {p0, p1, v4, v3, v2}, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;Lnet/thunderbird/core/common/action/SwipeActions;Z)V

    .line 74
    .line 75
    .line 76
    iput v7, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$1;->label:I

    .line 77
    .line 78
    invoke-virtual {v5, p0, v0}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    if-ne p0, v6, :cond_3

    .line 83
    .line 84
    move-object v1, v6

    .line 85
    :cond_3
    :goto_1
    return-object v1

    .line 86
    :pswitch_0
    new-instance p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;

    .line 87
    .line 88
    check-cast v4, Landroidx/room/RoomDatabase;

    .line 89
    .line 90
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 91
    .line 92
    invoke-direct {p0, p1, v4, v2, v3}, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Landroidx/room/RoomDatabase;ZLkotlin/jvm/functions/Function1;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v5, p0, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    if-ne p0, v6, :cond_4

    .line 100
    .line 101
    move-object v1, p0

    .line 102
    :cond_4
    return-object v1

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
