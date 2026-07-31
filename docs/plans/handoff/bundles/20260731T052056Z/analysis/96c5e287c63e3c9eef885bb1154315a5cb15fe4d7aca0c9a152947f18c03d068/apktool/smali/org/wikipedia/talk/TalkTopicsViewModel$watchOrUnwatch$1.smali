.class public final Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $expiry:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public $unwatch:Z

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Animatable;ZLandroidx/compose/animation/core/SpringSpec;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->L$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$unwatch:Z

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$expiry:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 17
    iput p5, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->this$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$unwatch:Z

    iput-object p3, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$expiry:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$r8$classId:I

    .line 18
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$expiry:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 19
    iput p6, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$r8$classId:I

    iput-boolean p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$unwatch:Z

    iput-object p2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->L$0:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->this$0:Ljava/lang/Object;

    iput-object p4, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$expiry:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$expiry:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;

    .line 11
    .line 12
    iget-boolean v4, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$unwatch:Z

    .line 13
    .line 14
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    move-object v5, p0

    .line 17
    check-cast v5, Landroidx/compose/material3/SnackbarHostState;

    .line 18
    .line 19
    move-object v6, v2

    .line 20
    check-cast v6, Ljava/lang/String;

    .line 21
    .line 22
    move-object v7, v1

    .line 23
    check-cast v7, Ljava/lang/String;

    .line 24
    .line 25
    const/4 v9, 0x5

    .line 26
    move-object v8, p2

    .line 27
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;-><init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 28
    .line 29
    .line 30
    return-object v3

    .line 31
    :pswitch_0
    move-object v8, p2

    .line 32
    new-instance p1, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;

    .line 33
    .line 34
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->L$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 37
    .line 38
    check-cast v2, Lorg/wikipedia/page/PageTitle;

    .line 39
    .line 40
    check-cast v1, Ljava/lang/String;

    .line 41
    .line 42
    invoke-direct {p1, p0, v2, v1, v8}, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    :pswitch_1
    move-object v8, p2

    .line 47
    new-instance v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;

    .line 48
    .line 49
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    move-object v5, p1

    .line 52
    check-cast v5, Landroidx/compose/animation/core/Animatable;

    .line 53
    .line 54
    iget-boolean v6, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$unwatch:Z

    .line 55
    .line 56
    move-object v7, v2

    .line 57
    check-cast v7, Landroidx/compose/animation/core/SpringSpec;

    .line 58
    .line 59
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 60
    .line 61
    move-object v9, v8

    .line 62
    move-object v8, v1

    .line 63
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;-><init>(Landroidx/compose/animation/core/Animatable;ZLandroidx/compose/animation/core/SpringSpec;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 64
    .line 65
    .line 66
    return-object v4

    .line 67
    :pswitch_2
    move-object v8, p2

    .line 68
    new-instance v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;

    .line 69
    .line 70
    move-object v5, v2

    .line 71
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 72
    .line 73
    iget-boolean v6, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$unwatch:Z

    .line 74
    .line 75
    move-object v7, v1

    .line 76
    check-cast v7, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 77
    .line 78
    const/4 v9, 0x2

    .line 79
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 80
    .line 81
    .line 82
    return-object v4

    .line 83
    :pswitch_3
    move-object v8, p2

    .line 84
    new-instance v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;

    .line 85
    .line 86
    iget-boolean v5, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$unwatch:Z

    .line 87
    .line 88
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->L$0:Ljava/lang/Object;

    .line 89
    .line 90
    move-object v6, p0

    .line 91
    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 92
    .line 93
    move-object v7, v2

    .line 94
    check-cast v7, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 95
    .line 96
    check-cast v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 97
    .line 98
    const/4 v10, 0x1

    .line 99
    move-object v9, v8

    .line 100
    move-object v8, v1

    .line 101
    invoke-direct/range {v4 .. v10}, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;-><init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 102
    .line 103
    .line 104
    return-object v4

    .line 105
    :pswitch_4
    move-object v8, p2

    .line 106
    new-instance v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;

    .line 107
    .line 108
    move-object v5, v2

    .line 109
    check-cast v5, Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 110
    .line 111
    iget-boolean v6, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$unwatch:Z

    .line 112
    .line 113
    move-object v7, v1

    .line 114
    check-cast v7, Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 115
    .line 116
    const/4 v9, 0x0

    .line 117
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 118
    .line 119
    .line 120
    iput-object p1, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->L$0:Ljava/lang/Object;

    .line 121
    .line 122
    return-object v4

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v4, p0

    .line 2
    .line 3
    iget v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    .line 8
    const/4 v8, 0x0

    .line 9
    const/4 v3, 0x2

    .line 10
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    iget-object v5, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->this$0:Ljava/lang/Object;

    .line 13
    .line 14
    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    iget-object v7, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$expiry:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v10, 0x1

    .line 19
    const/4 v11, 0x0

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    iget-object v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Landroidx/compose/material3/SnackbarHostState;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->label:I

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    if-eq v2, v10, :cond_1

    .line 34
    .line 35
    if-ne v2, v3, :cond_0

    .line 36
    .line 37
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    move-object/from16 v0, p1

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_0
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    move-object v9, v11

    .line 47
    goto :goto_4

    .line 48
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    move-object/from16 v0, p1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-boolean v2, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$unwatch:Z

    .line 58
    .line 59
    if-ne v2, v10, :cond_4

    .line 60
    .line 61
    check-cast v5, Ljava/lang/String;

    .line 62
    .line 63
    sget-object v2, Landroidx/compose/material3/SnackbarDuration;->Short:Landroidx/compose/material3/SnackbarDuration;

    .line 64
    .line 65
    iput v10, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->label:I

    .line 66
    .line 67
    invoke-static {v0, v5, v2, v4}, Landroidx/compose/material3/SnackbarHostState;->showSnackbar$default(Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Landroidx/compose/material3/SnackbarDuration;Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-ne v0, v1, :cond_3

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    :goto_1
    check-cast v0, Landroidx/compose/material3/SnackbarResult;

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_4
    if-nez v2, :cond_6

    .line 78
    .line 79
    check-cast v7, Ljava/lang/String;

    .line 80
    .line 81
    sget-object v2, Landroidx/compose/material3/SnackbarDuration;->Short:Landroidx/compose/material3/SnackbarDuration;

    .line 82
    .line 83
    iput v3, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->label:I

    .line 84
    .line 85
    invoke-static {v0, v7, v2, v4}, Landroidx/compose/material3/SnackbarHostState;->showSnackbar$default(Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Landroidx/compose/material3/SnackbarDuration;Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-ne v0, v1, :cond_5

    .line 90
    .line 91
    :goto_2
    move-object v9, v1

    .line 92
    goto :goto_4

    .line 93
    :cond_5
    :goto_3
    check-cast v0, Landroidx/compose/material3/SnackbarResult;

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_6
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :goto_4
    return-object v9

    .line 101
    :pswitch_0
    move-object v0, v5

    .line 102
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 103
    .line 104
    iget-object v1, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->L$0:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v1, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 107
    .line 108
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 109
    .line 110
    iget v5, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->label:I

    .line 111
    .line 112
    if-eqz v5, :cond_9

    .line 113
    .line 114
    if-eq v5, v10, :cond_8

    .line 115
    .line 116
    if-ne v5, v3, :cond_7

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_7
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    move-object v9, v11

    .line 123
    goto/16 :goto_f

    .line 124
    .line 125
    :cond_8
    :goto_5
    iget-boolean v2, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$unwatch:Z

    .line 126
    .line 127
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_a

    .line 131
    .line 132
    :cond_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    iput-boolean v10, v1, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->interestsUpdated:Z

    .line 136
    .line 137
    sget-object v5, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->Factory:Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;

    .line 138
    .line 139
    sget-object v5, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 140
    .line 141
    const v5, 0x7f12060b

    .line 142
    .line 143
    .line 144
    const-string v6, ""

    .line 145
    .line 146
    invoke-static {v5, v6}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object v5, v1, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 150
    .line 151
    invoke-virtual {v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    check-cast v5, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 156
    .line 157
    iget-object v5, v5, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->selectedArticles:Ljava/util/Set;

    .line 158
    .line 159
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    iget-object v11, v1, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->interestSelectionRepository:Lretrofit2/Retrofit;

    .line 164
    .line 165
    if-eqz v5, :cond_f

    .line 166
    .line 167
    move-object v14, v7

    .line 168
    check-cast v14, Ljava/lang/String;

    .line 169
    .line 170
    iput-boolean v5, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$unwatch:Z

    .line 171
    .line 172
    iput v10, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->label:I

    .line 173
    .line 174
    iget-object v3, v11, Lretrofit2/Retrofit;->callFactory:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v3, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;

    .line 177
    .line 178
    new-instance v12, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;

    .line 179
    .line 180
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v13

    .line 184
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 185
    .line 186
    .line 187
    move-result-object v15

    .line 188
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v16

    .line 192
    iget-object v7, v0, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 193
    .line 194
    if-nez v7, :cond_a

    .line 195
    .line 196
    move-object/from16 v17, v6

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_a
    move-object/from16 v17, v7

    .line 200
    .line 201
    :goto_6
    iget-object v7, v0, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 202
    .line 203
    if-nez v7, :cond_b

    .line 204
    .line 205
    move-object/from16 v18, v6

    .line 206
    .line 207
    goto :goto_7

    .line 208
    :cond_b
    move-object/from16 v18, v7

    .line 209
    .line 210
    :goto_7
    invoke-direct/range {v12 .. v18}, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-object v6, v3, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 214
    .line 215
    new-instance v7, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl$$ExternalSyntheticLambda1;

    .line 216
    .line 217
    invoke-direct {v7, v3, v12, v10}, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;I)V

    .line 218
    .line 219
    .line 220
    invoke-static {v6, v8, v10, v7, v4}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    if-ne v3, v2, :cond_c

    .line 225
    .line 226
    goto :goto_8

    .line 227
    :cond_c
    move-object v3, v9

    .line 228
    :goto_8
    if-ne v3, v2, :cond_d

    .line 229
    .line 230
    goto :goto_9

    .line 231
    :cond_d
    move-object v3, v9

    .line 232
    :goto_9
    if-ne v3, v2, :cond_e

    .line 233
    .line 234
    goto :goto_b

    .line 235
    :cond_e
    move v2, v5

    .line 236
    :goto_a
    move v3, v2

    .line 237
    goto :goto_c

    .line 238
    :cond_f
    check-cast v7, Ljava/lang/String;

    .line 239
    .line 240
    iput-boolean v5, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$unwatch:Z

    .line 241
    .line 242
    iput v3, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->label:I

    .line 243
    .line 244
    invoke-virtual {v11, v0, v7, v4}, Lretrofit2/Retrofit;->saveArticle(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    if-ne v3, v2, :cond_e

    .line 249
    .line 250
    :goto_b
    move-object v9, v2

    .line 251
    goto :goto_f

    .line 252
    :goto_c
    iget-object v8, v1, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 253
    .line 254
    :cond_10
    invoke-virtual {v8}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    move-object v10, v1

    .line 259
    check-cast v10, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 260
    .line 261
    if-eqz v3, :cond_11

    .line 262
    .line 263
    iget-object v2, v10, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->selectedArticles:Ljava/util/Set;

    .line 264
    .line 265
    invoke-static {v2, v0}, Lkotlin/uuid/UuidKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    :goto_d
    move-object v14, v2

    .line 270
    goto :goto_e

    .line 271
    :cond_11
    iget-object v2, v10, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->selectedArticles:Ljava/util/Set;

    .line 272
    .line 273
    invoke-static {v2, v0}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    goto :goto_d

    .line 278
    :goto_e
    const/16 v23, 0x0

    .line 279
    .line 280
    const/16 v24, 0x7fef

    .line 281
    .line 282
    const/4 v11, 0x0

    .line 283
    const/4 v12, 0x0

    .line 284
    const/4 v13, 0x0

    .line 285
    const/4 v15, 0x0

    .line 286
    const/16 v16, 0x0

    .line 287
    .line 288
    const/16 v17, 0x0

    .line 289
    .line 290
    const/16 v18, 0x0

    .line 291
    .line 292
    const/16 v19, 0x0

    .line 293
    .line 294
    const/16 v20, 0x0

    .line 295
    .line 296
    const/16 v21, 0x0

    .line 297
    .line 298
    const/16 v22, 0x0

    .line 299
    .line 300
    invoke-static/range {v10 .. v24}, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->copy$default(Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/List;ZLjava/lang/Throwable;I)Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v8, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    if-eqz v1, :cond_10

    .line 309
    .line 310
    :goto_f
    return-object v9

    .line 311
    :pswitch_1
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 312
    .line 313
    iget v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->label:I

    .line 314
    .line 315
    if-eqz v0, :cond_13

    .line 316
    .line 317
    if-ne v0, v10, :cond_12

    .line 318
    .line 319
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    goto :goto_10

    .line 323
    :cond_12
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    move-object v9, v11

    .line 327
    goto :goto_11

    .line 328
    :cond_13
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    iget-object v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->L$0:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v0, Landroidx/compose/animation/core/Animatable;

    .line 334
    .line 335
    iget-boolean v3, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$unwatch:Z

    .line 336
    .line 337
    if-eqz v3, :cond_14

    .line 338
    .line 339
    move v1, v2

    .line 340
    :cond_14
    new-instance v2, Ljava/lang/Float;

    .line 341
    .line 342
    invoke-direct {v2, v1}, Ljava/lang/Float;-><init>(F)V

    .line 343
    .line 344
    .line 345
    check-cast v5, Landroidx/compose/animation/core/SpringSpec;

    .line 346
    .line 347
    iput v10, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->label:I

    .line 348
    .line 349
    const/4 v3, 0x0

    .line 350
    move-object v1, v2

    .line 351
    move-object v2, v5

    .line 352
    const/16 v5, 0xc

    .line 353
    .line 354
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    if-ne v0, v8, :cond_15

    .line 359
    .line 360
    move-object v9, v8

    .line 361
    goto :goto_11

    .line 362
    :cond_15
    :goto_10
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 363
    .line 364
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    :goto_11
    return-object v9

    .line 368
    :pswitch_2
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 369
    .line 370
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 371
    .line 372
    iget v1, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->label:I

    .line 373
    .line 374
    if-eqz v1, :cond_17

    .line 375
    .line 376
    if-ne v1, v10, :cond_16

    .line 377
    .line 378
    iget-object v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->L$0:Ljava/lang/Object;

    .line 379
    .line 380
    move-object v5, v0

    .line 381
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 382
    .line 383
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    goto :goto_13

    .line 387
    :cond_16
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    move-object v9, v11

    .line 391
    goto :goto_14

    .line 392
    :cond_17
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    check-cast v1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 400
    .line 401
    if-eqz v1, :cond_1a

    .line 402
    .line 403
    iget-boolean v2, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$unwatch:Z

    .line 404
    .line 405
    check-cast v7, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 406
    .line 407
    if-eqz v2, :cond_18

    .line 408
    .line 409
    new-instance v2, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 410
    .line 411
    invoke-direct {v2, v1}, Landroidx/compose/foundation/interaction/PressInteraction$Release;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    .line 412
    .line 413
    .line 414
    goto :goto_12

    .line 415
    :cond_18
    new-instance v2, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 416
    .line 417
    invoke-direct {v2, v1}, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    .line 418
    .line 419
    .line 420
    :goto_12
    if-eqz v7, :cond_19

    .line 421
    .line 422
    iput-object v5, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->L$0:Ljava/lang/Object;

    .line 423
    .line 424
    iput v10, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->label:I

    .line 425
    .line 426
    invoke-virtual {v7, v2, v4}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    if-ne v1, v0, :cond_19

    .line 431
    .line 432
    move-object v9, v0

    .line 433
    goto :goto_14

    .line 434
    :cond_19
    :goto_13
    invoke-interface {v5, v11}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    :cond_1a
    :goto_14
    return-object v9

    .line 438
    :pswitch_3
    iget-object v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->L$0:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 441
    .line 442
    iget-object v12, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isAppearanceAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 443
    .line 444
    iget-object v13, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->visibilityAnimation:Landroidx/compose/animation/core/Animatable;

    .line 445
    .line 446
    sget-object v14, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 447
    .line 448
    iget v15, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->label:I

    .line 449
    .line 450
    if-eqz v15, :cond_1d

    .line 451
    .line 452
    if-eq v15, v10, :cond_1c

    .line 453
    .line 454
    if-ne v15, v3, :cond_1b

    .line 455
    .line 456
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    .line 458
    .line 459
    move-object/from16 v0, p1

    .line 460
    .line 461
    goto :goto_17

    .line 462
    :catchall_0
    move-exception v0

    .line 463
    goto :goto_19

    .line 464
    :cond_1b
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    move-object v9, v11

    .line 468
    goto :goto_18

    .line 469
    :cond_1c
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    .line 471
    .line 472
    goto :goto_15

    .line 473
    :cond_1d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 474
    .line 475
    .line 476
    :try_start_2
    iget-boolean v6, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$unwatch:Z

    .line 477
    .line 478
    if-eqz v6, :cond_1e

    .line 479
    .line 480
    new-instance v6, Ljava/lang/Float;

    .line 481
    .line 482
    invoke-direct {v6, v1}, Ljava/lang/Float;-><init>(F)V

    .line 483
    .line 484
    .line 485
    iput v10, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->label:I

    .line 486
    .line 487
    invoke-virtual {v13, v6, v4}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    if-ne v1, v14, :cond_1e

    .line 492
    .line 493
    goto :goto_16

    .line 494
    :cond_1e
    :goto_15
    new-instance v1, Ljava/lang/Float;

    .line 495
    .line 496
    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    .line 497
    .line 498
    .line 499
    move-object v2, v5

    .line 500
    check-cast v2, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 501
    .line 502
    check-cast v7, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 503
    .line 504
    new-instance v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animateAppearance$2$$ExternalSyntheticLambda0;

    .line 505
    .line 506
    invoke-direct {v5, v7, v0, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animateAppearance$2$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;I)V

    .line 507
    .line 508
    .line 509
    iput v3, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->label:I

    .line 510
    .line 511
    move-object v3, v5

    .line 512
    const/4 v5, 0x4

    .line 513
    move-object v0, v13

    .line 514
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    if-ne v0, v14, :cond_1f

    .line 519
    .line 520
    :goto_16
    move-object v9, v14

    .line 521
    goto :goto_18

    .line 522
    :cond_1f
    :goto_17
    check-cast v0, Landroidx/compose/animation/core/AnimationResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 523
    .line 524
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 525
    .line 526
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 527
    .line 528
    .line 529
    :goto_18
    return-object v9

    .line 530
    :goto_19
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 531
    .line 532
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 533
    .line 534
    .line 535
    throw v0

    .line 536
    :pswitch_4
    check-cast v7, Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 537
    .line 538
    move-object v12, v5

    .line 539
    check-cast v12, Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 540
    .line 541
    iget-object v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->L$0:Ljava/lang/Object;

    .line 542
    .line 543
    move-object v1, v0

    .line 544
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 545
    .line 546
    sget-object v13, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 547
    .line 548
    iget v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->label:I

    .line 549
    .line 550
    if-eqz v0, :cond_21

    .line 551
    .line 552
    if-ne v0, v10, :cond_20

    .line 553
    .line 554
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 555
    .line 556
    .line 557
    move-object/from16 v0, p1

    .line 558
    .line 559
    move-object v4, v7

    .line 560
    goto :goto_1a

    .line 561
    :cond_20
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    move-object v9, v11

    .line 565
    goto :goto_1b

    .line 566
    :cond_21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    iget-object v2, v12, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 570
    .line 571
    iget-boolean v3, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->$unwatch:Z

    .line 572
    .line 573
    iget-boolean v0, v12, Lorg/wikipedia/talk/TalkTopicsViewModel;->isWatched:Z

    .line 574
    .line 575
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 576
    .line 577
    .line 578
    move-result-object v5

    .line 579
    iget-object v0, v12, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 580
    .line 581
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-virtual {v0}, Lorg/wikipedia/page/Namespace;->talk()Z

    .line 586
    .line 587
    .line 588
    move-result v0

    .line 589
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 590
    .line 591
    .line 592
    move-result-object v6

    .line 593
    iput-object v11, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->L$0:Ljava/lang/Object;

    .line 594
    .line 595
    iput v10, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;->label:I

    .line 596
    .line 597
    sget-object v0, Lorg/wikipedia/watchlist/WatchlistViewModel;->Companion:Lokio/Path$Companion;

    .line 598
    .line 599
    move-object/from16 v25, v7

    .line 600
    .line 601
    move-object v7, v4

    .line 602
    move-object/from16 v4, v25

    .line 603
    .line 604
    invoke-virtual/range {v0 .. v7}, Lokio/Path$Companion;->watchPageTitle(Lkotlinx/coroutines/CoroutineScope;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/watchlist/WatchlistExpiry;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    if-ne v0, v13, :cond_22

    .line 609
    .line 610
    move-object v9, v13

    .line 611
    goto :goto_1b

    .line 612
    :cond_22
    :goto_1a
    check-cast v0, Lkotlin/Pair;

    .line 613
    .line 614
    iget-object v1, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 615
    .line 616
    check-cast v1, Ljava/lang/Boolean;

    .line 617
    .line 618
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 619
    .line 620
    .line 621
    move-result v1

    .line 622
    iput-boolean v1, v12, Lorg/wikipedia/talk/TalkTopicsViewModel;->isWatched:Z

    .line 623
    .line 624
    sget-object v2, Lorg/wikipedia/watchlist/WatchlistExpiry;->NEVER:Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 625
    .line 626
    if-eq v4, v2, :cond_23

    .line 627
    .line 628
    move v8, v10

    .line 629
    :cond_23
    iput-boolean v8, v12, Lorg/wikipedia/talk/TalkTopicsViewModel;->hasWatchlistExpiry:Z

    .line 630
    .line 631
    iget-object v2, v12, Lorg/wikipedia/talk/TalkTopicsViewModel;->actionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 632
    .line 633
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsViewModel$ActionState$DoWatch;

    .line 634
    .line 635
    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 636
    .line 637
    check-cast v0, Ljava/lang/String;

    .line 638
    .line 639
    invoke-direct {v3, v0, v1, v8}, Lorg/wikipedia/talk/TalkTopicsViewModel$ActionState$DoWatch;-><init>(Ljava/lang/String;ZZ)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 643
    .line 644
    .line 645
    invoke-virtual {v2, v11, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    :goto_1b
    return-object v9

    .line 649
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
