.class public final Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public $offset:J

.field public final synthetic $previousValue:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $this_semanticsScrollBy:Ljava/lang/Object;

.field public L$0:Ljava/lang/Object;

.field public label:I


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 18
    iput p1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$r8$classId:I

    iput-object p4, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$this_semanticsScrollBy:Ljava/lang/Object;

    iput-wide p2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$offset:J

    iput-object p5, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$previousValue:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;Landroidx/compose/animation/core/FiniteAnimationSpec;JLkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$r8$classId:I

    .line 17
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$this_semanticsScrollBy:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$previousValue:Ljava/lang/Object;

    iput-wide p3, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$offset:J

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;JLandroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProvider;Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$ClickTextContextMenuDataProvider;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->L$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$offset:J

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$this_semanticsScrollBy:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p5, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$previousValue:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$r8$classId:I

    .line 19
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$this_semanticsScrollBy:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$previousValue:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11

    .line 1
    iget v0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$previousValue:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$this_semanticsScrollBy:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;

    .line 11
    .line 12
    check-cast v2, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 13
    .line 14
    check-cast v1, Landroid/net/Uri;

    .line 15
    .line 16
    invoke-direct {p0, v2, v1, p2}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;-><init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_0
    new-instance v3, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->L$0:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v4, p1

    .line 25
    check-cast v4, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;

    .line 26
    .line 27
    iget-wide v5, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$offset:J

    .line 28
    .line 29
    move-object v7, v2

    .line 30
    check-cast v7, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProvider;

    .line 31
    .line 32
    move-object v8, v1

    .line 33
    check-cast v8, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$ClickTextContextMenuDataProvider;

    .line 34
    .line 35
    move-object v9, p2

    .line 36
    invoke-direct/range {v3 .. v9}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;-><init>(Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;JLandroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProvider;Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$ClickTextContextMenuDataProvider;Lkotlin/coroutines/Continuation;)V

    .line 37
    .line 38
    .line 39
    return-object v3

    .line 40
    :pswitch_1
    move-object v10, p2

    .line 41
    new-instance v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;

    .line 42
    .line 43
    move-object v8, v2

    .line 44
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 45
    .line 46
    iget-wide v6, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$offset:J

    .line 47
    .line 48
    move-object v9, v1

    .line 49
    check-cast v9, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 50
    .line 51
    const/4 v5, 0x3

    .line 52
    invoke-direct/range {v4 .. v10}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;-><init>(IJLjava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 53
    .line 54
    .line 55
    return-object v4

    .line 56
    :pswitch_2
    move-object v10, p2

    .line 57
    new-instance v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;

    .line 58
    .line 59
    move-object v5, v2

    .line 60
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 61
    .line 62
    move-object v6, v1

    .line 63
    check-cast v6, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 64
    .line 65
    iget-wide v7, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$offset:J

    .line 66
    .line 67
    move-object v9, v10

    .line 68
    invoke-direct/range {v4 .. v9}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;Landroidx/compose/animation/core/FiniteAnimationSpec;JLkotlin/coroutines/Continuation;)V

    .line 69
    .line 70
    .line 71
    return-object v4

    .line 72
    :pswitch_3
    move-object v10, p2

    .line 73
    new-instance v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;

    .line 74
    .line 75
    move-object v8, v2

    .line 76
    check-cast v8, Lkotlinx/coroutines/Job;

    .line 77
    .line 78
    iget-wide v6, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$offset:J

    .line 79
    .line 80
    move-object v9, v1

    .line 81
    check-cast v9, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 82
    .line 83
    const/4 v5, 0x1

    .line 84
    invoke-direct/range {v4 .. v10}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;-><init>(IJLjava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 85
    .line 86
    .line 87
    return-object v4

    .line 88
    :pswitch_4
    move-object v10, p2

    .line 89
    new-instance v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;

    .line 90
    .line 91
    move-object v8, v2

    .line 92
    check-cast v8, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 93
    .line 94
    iget-wide v6, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$offset:J

    .line 95
    .line 96
    move-object v9, v1

    .line 97
    check-cast v9, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 98
    .line 99
    const/4 v5, 0x0

    .line 100
    invoke-direct/range {v4 .. v10}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;-><init>(IJLjava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 101
    .line 102
    .line 103
    iput-object p1, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->L$0:Ljava/lang/Object;

    .line 104
    .line 105
    return-object v4

    .line 106
    nop

    .line 107
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
    iget v0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 24
    .line 25
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 39
    .line 40
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 54
    .line 55
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 69
    .line 70
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :pswitch_4
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 84
    .line 85
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 86
    .line 87
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    nop

    .line 99
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
    .locals 16

    .line 1
    move-object/from16 v4, p0

    .line 2
    .line 3
    iget v0, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$r8$classId:I

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    const/4 v1, 0x2

    .line 7
    iget-object v2, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$previousValue:Ljava/lang/Object;

    .line 8
    .line 9
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 12
    .line 13
    iget-object v5, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$this_semanticsScrollBy:Ljava/lang/Object;

    .line 14
    .line 15
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    .line 17
    const/4 v9, 0x1

    .line 18
    const/4 v10, 0x0

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    check-cast v5, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 23
    .line 24
    iget-object v11, v5, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 25
    .line 26
    iget-object v12, v5, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 27
    .line 28
    iget v0, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->label:I

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    if-eq v0, v9, :cond_1

    .line 33
    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    .line 36
    iget-object v0, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->L$0:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lcom/fsck/k9/preferences/ImportContents;

    .line 39
    .line 40
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    move-object v7, v10

    .line 51
    goto/16 :goto_6

    .line 52
    .line 53
    :cond_1
    iget-wide v2, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$offset:J

    .line 54
    .line 55
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    .line 57
    .line 58
    move-object/from16 v0, p1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :try_start_2
    check-cast v2, Landroid/net/Uri;

    .line 65
    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 67
    .line 68
    .line 69
    move-result-wide v13

    .line 70
    iget-object v0, v5, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 71
    .line 72
    new-instance v3, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 73
    .line 74
    const/16 v15, 0x18

    .line 75
    .line 76
    invoke-direct {v3, v5, v2, v10, v15}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 77
    .line 78
    .line 79
    iput-wide v13, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$offset:J

    .line 80
    .line 81
    iput v9, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->label:I

    .line 82
    .line 83
    invoke-static {v0, v3, v4}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-ne v0, v7, :cond_3

    .line 88
    .line 89
    goto/16 :goto_6

    .line 90
    .line 91
    :cond_3
    move-wide v2, v13

    .line 92
    :goto_0
    check-cast v0, Lcom/fsck/k9/preferences/ImportContents;

    .line 93
    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 95
    .line 96
    .line 97
    move-result-wide v13

    .line 98
    sub-long/2addr v13, v2

    .line 99
    new-instance v2, Ljava/lang/Long;

    .line 100
    .line 101
    invoke-direct {v2, v13, v14}, Ljava/lang/Long;-><init>(J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 105
    .line 106
    .line 107
    move-result-wide v2

    .line 108
    const-wide/16 v13, 0x1f4

    .line 109
    .line 110
    cmp-long v15, v2, v13

    .line 111
    .line 112
    if-gez v15, :cond_4

    .line 113
    .line 114
    sub-long/2addr v13, v2

    .line 115
    iput-object v0, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->L$0:Ljava/lang/Object;

    .line 116
    .line 117
    iput-wide v2, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$offset:J

    .line 118
    .line 119
    iput v1, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->label:I

    .line 120
    .line 121
    invoke-static {v13, v14, v4}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    if-ne v1, v7, :cond_4

    .line 126
    .line 127
    goto/16 :goto_6

    .line 128
    .line 129
    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/fsck/k9/preferences/ImportContents;->accounts:Ljava/util/ArrayList;

    .line 130
    .line 131
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 132
    .line 133
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    move v3, v6

    .line 141
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_6

    .line 146
    .line 147
    add-int/lit8 v4, v3, 0x1

    .line 148
    .line 149
    if-ltz v3, :cond_5

    .line 150
    .line 151
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    check-cast v7, Lcom/fsck/k9/preferences/AccountDescription;

    .line 160
    .line 161
    iget-object v7, v7, Lcom/fsck/k9/preferences/AccountDescription;->uuid:Ljava/lang/String;

    .line 162
    .line 163
    new-instance v13, Lkotlin/Pair;

    .line 164
    .line 165
    invoke-direct {v13, v3, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    iget-object v3, v13, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 169
    .line 170
    iget-object v7, v13, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 171
    .line 172
    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move v3, v4

    .line 176
    goto :goto_2

    .line 177
    :cond_5
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 178
    .line 179
    .line 180
    throw v10

    .line 181
    :cond_6
    iput-object v2, v5, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->accountsMap:Ljava/util/LinkedHashMap;

    .line 182
    .line 183
    new-instance v1, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    iget-boolean v2, v0, Lcom/fsck/k9/preferences/ImportContents;->globalSettings:Z

    .line 189
    .line 190
    if-eqz v2, :cond_7

    .line 191
    .line 192
    new-instance v2, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$GeneralSettings;

    .line 193
    .line 194
    invoke-direct {v2}, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    :cond_7
    iget-object v0, v0, Lcom/fsck/k9/preferences/ImportContents;->accounts:Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    move v2, v6

    .line 207
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-eqz v3, :cond_9

    .line 212
    .line 213
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    add-int/lit8 v4, v2, 0x1

    .line 218
    .line 219
    if-ltz v2, :cond_8

    .line 220
    .line 221
    check-cast v3, Lcom/fsck/k9/preferences/AccountDescription;

    .line 222
    .line 223
    new-instance v7, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;

    .line 224
    .line 225
    iget-object v3, v3, Lcom/fsck/k9/preferences/AccountDescription;->name:Ljava/lang/String;

    .line 226
    .line 227
    invoke-direct {v7, v3, v2}, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;-><init>(Ljava/lang/String;I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move v2, v4

    .line 234
    goto :goto_3

    .line 235
    :cond_8
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 236
    .line 237
    .line 238
    throw v10

    .line 239
    :cond_9
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    iput-object v1, v12, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->settingsList:Ljava/util/List;

    .line 243
    .line 244
    iput-boolean v9, v12, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isSettingsListVisible:Z

    .line 245
    .line 246
    iput-boolean v6, v12, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isLoadingProgressVisible:Z

    .line 247
    .line 248
    iput-boolean v6, v12, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickDocumentButtonVisible:Z

    .line 249
    .line 250
    iput-boolean v6, v12, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isScanQrCodeButtonVisible:Z

    .line 251
    .line 252
    iput-boolean v6, v12, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickAppButtonVisible:Z

    .line 253
    .line 254
    invoke-virtual {v12}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->updateImportButtonFromSelection()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v11, v12}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 258
    .line 259
    .line 260
    :goto_4
    move-object v7, v8

    .line 261
    goto :goto_6

    .line 262
    :goto_5
    iget-object v1, v5, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 263
    .line 264
    new-instance v2, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 265
    .line 266
    const/16 v3, 0x11

    .line 267
    .line 268
    invoke-direct {v2, v3}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 269
    .line 270
    .line 271
    const-string v3, "SettingsImportViewModel"

    .line 272
    .line 273
    invoke-interface {v1, v3, v0, v2}, Lnet/thunderbird/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 274
    .line 275
    .line 276
    iput-boolean v6, v12, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isLoadingProgressVisible:Z

    .line 277
    .line 278
    iput-boolean v9, v12, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickDocumentButtonVisible:Z

    .line 279
    .line 280
    iput-boolean v9, v12, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickDocumentButtonEnabled:Z

    .line 281
    .line 282
    iput-boolean v6, v12, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isScanQrCodeButtonVisible:Z

    .line 283
    .line 284
    iput-boolean v9, v12, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isScanQrCodeButtonEnabled:Z

    .line 285
    .line 286
    iput-boolean v6, v12, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickAppButtonVisible:Z

    .line 287
    .line 288
    iget-boolean v0, v12, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickAppButtonPermanentlyDisabled:Z

    .line 289
    .line 290
    if-nez v0, :cond_a

    .line 291
    .line 292
    iput-boolean v9, v12, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickAppButtonEnabled:Z

    .line 293
    .line 294
    :cond_a
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/StatusText;->IMPORT_READ_FAILURE:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 295
    .line 296
    iput-object v0, v12, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->statusText:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 297
    .line 298
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/ButtonState;->DISABLED:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 299
    .line 300
    iput-object v0, v12, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->importButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 301
    .line 302
    invoke-virtual {v11, v12}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    goto :goto_4

    .line 306
    :goto_6
    return-object v7

    .line 307
    :pswitch_0
    iget v0, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->label:I

    .line 308
    .line 309
    if-eqz v0, :cond_d

    .line 310
    .line 311
    if-eq v0, v9, :cond_c

    .line 312
    .line 313
    if-ne v0, v1, :cond_b

    .line 314
    .line 315
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    goto :goto_8

    .line 319
    :cond_b
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    move-object v7, v10

    .line 323
    goto :goto_9

    .line 324
    :cond_c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    iget-object v0, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->L$0:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;

    .line 334
    .line 335
    iget-object v0, v0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;->onPreShowContextMenu:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;

    .line 336
    .line 337
    if-eqz v0, :cond_e

    .line 338
    .line 339
    iget-wide v10, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$offset:J

    .line 340
    .line 341
    new-instance v3, Landroidx/compose/ui/geometry/Offset;

    .line 342
    .line 343
    invoke-direct {v3, v10, v11}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 344
    .line 345
    .line 346
    iput v9, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->label:I

    .line 347
    .line 348
    invoke-virtual {v0, v3, v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    if-ne v0, v7, :cond_e

    .line 353
    .line 354
    goto :goto_9

    .line 355
    :cond_e
    :goto_7
    check-cast v5, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProvider;

    .line 356
    .line 357
    check-cast v2, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$ClickTextContextMenuDataProvider;

    .line 358
    .line 359
    iput v1, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->label:I

    .line 360
    .line 361
    invoke-interface {v5, v2, v4}, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProvider;->showTextContextMenu(Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    if-ne v0, v7, :cond_f

    .line 366
    .line 367
    goto :goto_9

    .line 368
    :cond_f
    :goto_8
    move-object v7, v8

    .line 369
    :goto_9
    return-object v7

    .line 370
    :pswitch_1
    check-cast v2, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 371
    .line 372
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 373
    .line 374
    iget v0, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->label:I

    .line 375
    .line 376
    if-eqz v0, :cond_12

    .line 377
    .line 378
    if-eq v0, v9, :cond_11

    .line 379
    .line 380
    if-ne v0, v1, :cond_10

    .line 381
    .line 382
    iget-object v0, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->L$0:Ljava/lang/Object;

    .line 383
    .line 384
    check-cast v0, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 385
    .line 386
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 387
    .line 388
    .line 389
    goto :goto_b

    .line 390
    :cond_10
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    move-object v7, v10

    .line 394
    goto :goto_c

    .line 395
    :cond_11
    iget-object v0, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->L$0:Ljava/lang/Object;

    .line 396
    .line 397
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 398
    .line 399
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    goto :goto_a

    .line 403
    :cond_12
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    check-cast v0, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 411
    .line 412
    if-eqz v0, :cond_14

    .line 413
    .line 414
    new-instance v3, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 415
    .line 416
    invoke-direct {v3, v0}, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    .line 417
    .line 418
    .line 419
    if-eqz v2, :cond_13

    .line 420
    .line 421
    iput-object v5, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->L$0:Ljava/lang/Object;

    .line 422
    .line 423
    iput v9, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->label:I

    .line 424
    .line 425
    invoke-virtual {v2, v3, v4}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    if-ne v0, v7, :cond_13

    .line 430
    .line 431
    goto :goto_c

    .line 432
    :cond_13
    move-object v0, v5

    .line 433
    :goto_a
    invoke-interface {v0, v10}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    :cond_14
    new-instance v0, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 437
    .line 438
    iget-wide v9, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$offset:J

    .line 439
    .line 440
    invoke-direct {v0, v9, v10}, Landroidx/compose/foundation/interaction/PressInteraction$Press;-><init>(J)V

    .line 441
    .line 442
    .line 443
    if-eqz v2, :cond_15

    .line 444
    .line 445
    iput-object v0, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->L$0:Ljava/lang/Object;

    .line 446
    .line 447
    iput v1, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->label:I

    .line 448
    .line 449
    invoke-virtual {v2, v0, v4}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    if-ne v1, v7, :cond_15

    .line 454
    .line 455
    goto :goto_c

    .line 456
    :cond_15
    :goto_b
    invoke-interface {v5, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 457
    .line 458
    .line 459
    move-object v7, v8

    .line 460
    :goto_c
    return-object v7

    .line 461
    :pswitch_2
    iget-wide v11, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$offset:J

    .line 462
    .line 463
    move-object v13, v5

    .line 464
    check-cast v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 465
    .line 466
    iget-object v0, v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->placementDeltaAnimation:Landroidx/compose/animation/core/Animatable;

    .line 467
    .line 468
    iget v5, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->label:I

    .line 469
    .line 470
    if-eqz v5, :cond_18

    .line 471
    .line 472
    if-eq v5, v9, :cond_17

    .line 473
    .line 474
    if-ne v5, v1, :cond_16

    .line 475
    .line 476
    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1

    .line 477
    .line 478
    .line 479
    goto :goto_f

    .line 480
    :cond_16
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    move-object v7, v10

    .line 484
    goto :goto_10

    .line 485
    :cond_17
    iget-object v2, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->L$0:Ljava/lang/Object;

    .line 486
    .line 487
    check-cast v2, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 488
    .line 489
    :try_start_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_1

    .line 490
    .line 491
    .line 492
    goto :goto_e

    .line 493
    :cond_18
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 494
    .line 495
    .line 496
    :try_start_5
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->isRunning()Z

    .line 497
    .line 498
    .line 499
    move-result v3
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_1

    .line 500
    check-cast v2, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 501
    .line 502
    if-eqz v3, :cond_1a

    .line 503
    .line 504
    :try_start_6
    instance-of v3, v2, Landroidx/compose/animation/core/SpringSpec;

    .line 505
    .line 506
    if-eqz v3, :cond_19

    .line 507
    .line 508
    check-cast v2, Landroidx/compose/animation/core/SpringSpec;

    .line 509
    .line 510
    goto :goto_d

    .line 511
    :cond_19
    sget-object v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimationKt;->InterruptionSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 512
    .line 513
    :cond_1a
    :goto_d
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->isRunning()Z

    .line 514
    .line 515
    .line 516
    move-result v3

    .line 517
    if-nez v3, :cond_1c

    .line 518
    .line 519
    new-instance v3, Landroidx/compose/ui/unit/IntOffset;

    .line 520
    .line 521
    invoke-direct {v3, v11, v12}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 522
    .line 523
    .line 524
    iput-object v2, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->L$0:Ljava/lang/Object;

    .line 525
    .line 526
    iput v9, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->label:I

    .line 527
    .line 528
    invoke-virtual {v0, v3, v4}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v3

    .line 532
    if-ne v3, v7, :cond_1b

    .line 533
    .line 534
    goto :goto_10

    .line 535
    :cond_1b
    :goto_e
    iget-object v3, v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->onLayerPropertyChanged:Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;

    .line 536
    .line 537
    invoke-virtual {v3}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    :cond_1c
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    check-cast v0, Landroidx/compose/ui/unit/IntOffset;

    .line 545
    .line 546
    iget-wide v14, v0, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    .line 547
    .line 548
    invoke-static {v14, v15, v11, v12}, Landroidx/compose/ui/unit/IntOffset;->minus-qkQi6aY(JJ)J

    .line 549
    .line 550
    .line 551
    move-result-wide v11

    .line 552
    iget-object v0, v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->placementDeltaAnimation:Landroidx/compose/animation/core/Animatable;

    .line 553
    .line 554
    new-instance v3, Landroidx/compose/ui/unit/IntOffset;

    .line 555
    .line 556
    invoke-direct {v3, v11, v12}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 557
    .line 558
    .line 559
    move-object v5, v3

    .line 560
    new-instance v3, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda11;

    .line 561
    .line 562
    invoke-direct {v3, v13, v11, v12}, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda11;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;J)V

    .line 563
    .line 564
    .line 565
    iput-object v10, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->L$0:Ljava/lang/Object;

    .line 566
    .line 567
    iput v1, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->label:I

    .line 568
    .line 569
    move-object v1, v5

    .line 570
    const/4 v5, 0x4

    .line 571
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    if-ne v0, v7, :cond_1d

    .line 576
    .line 577
    goto :goto_10

    .line 578
    :cond_1d
    :goto_f
    invoke-virtual {v13, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->setPlacementAnimationInProgress(Z)V

    .line 579
    .line 580
    .line 581
    iput-boolean v6, v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isRunningMovingAwayAnimation:Z
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_1

    .line 582
    .line 583
    :catch_1
    move-object v7, v8

    .line 584
    :goto_10
    return-object v7

    .line 585
    :pswitch_3
    check-cast v2, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 586
    .line 587
    iget v0, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->label:I

    .line 588
    .line 589
    const/4 v6, 0x3

    .line 590
    if-eqz v0, :cond_21

    .line 591
    .line 592
    if-eq v0, v9, :cond_20

    .line 593
    .line 594
    if-eq v0, v1, :cond_1f

    .line 595
    .line 596
    if-ne v0, v6, :cond_1e

    .line 597
    .line 598
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 599
    .line 600
    .line 601
    goto :goto_13

    .line 602
    :cond_1e
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    move-object v7, v10

    .line 606
    goto :goto_14

    .line 607
    :cond_1f
    iget-object v0, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->L$0:Ljava/lang/Object;

    .line 608
    .line 609
    check-cast v0, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 610
    .line 611
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 612
    .line 613
    .line 614
    goto :goto_12

    .line 615
    :cond_20
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 616
    .line 617
    .line 618
    goto :goto_11

    .line 619
    :cond_21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 620
    .line 621
    .line 622
    check-cast v5, Lkotlinx/coroutines/Job;

    .line 623
    .line 624
    iput v9, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->label:I

    .line 625
    .line 626
    invoke-interface {v5, v4}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    if-ne v0, v7, :cond_22

    .line 631
    .line 632
    goto :goto_14

    .line 633
    :cond_22
    :goto_11
    new-instance v0, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 634
    .line 635
    iget-wide v11, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$offset:J

    .line 636
    .line 637
    invoke-direct {v0, v11, v12}, Landroidx/compose/foundation/interaction/PressInteraction$Press;-><init>(J)V

    .line 638
    .line 639
    .line 640
    new-instance v3, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 641
    .line 642
    invoke-direct {v3, v0}, Landroidx/compose/foundation/interaction/PressInteraction$Release;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    .line 643
    .line 644
    .line 645
    iput-object v3, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->L$0:Ljava/lang/Object;

    .line 646
    .line 647
    iput v1, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->label:I

    .line 648
    .line 649
    invoke-virtual {v2, v0, v4}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    if-ne v0, v7, :cond_23

    .line 654
    .line 655
    goto :goto_14

    .line 656
    :cond_23
    move-object v0, v3

    .line 657
    :goto_12
    iput-object v10, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->L$0:Ljava/lang/Object;

    .line 658
    .line 659
    iput v6, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->label:I

    .line 660
    .line 661
    invoke-virtual {v2, v0, v4}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    if-ne v0, v7, :cond_24

    .line 666
    .line 667
    goto :goto_14

    .line 668
    :cond_24
    :goto_13
    move-object v7, v8

    .line 669
    :goto_14
    return-object v7

    .line 670
    :pswitch_4
    check-cast v5, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 671
    .line 672
    iget v0, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->label:I

    .line 673
    .line 674
    if-eqz v0, :cond_26

    .line 675
    .line 676
    if-ne v0, v9, :cond_25

    .line 677
    .line 678
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 679
    .line 680
    .line 681
    goto :goto_15

    .line 682
    :cond_25
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    move-object v7, v10

    .line 686
    goto :goto_16

    .line 687
    :cond_26
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 688
    .line 689
    .line 690
    iget-object v0, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->L$0:Ljava/lang/Object;

    .line 691
    .line 692
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 693
    .line 694
    iget-wide v11, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->$offset:J

    .line 695
    .line 696
    invoke-virtual {v5, v11, v12}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    .line 697
    .line 698
    .line 699
    move-result v1

    .line 700
    check-cast v2, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 701
    .line 702
    new-instance v3, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

    .line 703
    .line 704
    invoke-direct {v3, v2, v5, v0, v9}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 705
    .line 706
    .line 707
    iput v9, v4, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;->label:I

    .line 708
    .line 709
    const/4 v0, 0x7

    .line 710
    const/4 v2, 0x0

    .line 711
    invoke-static {v2, v2, v10, v0}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    move-object v4, v3

    .line 716
    move-object v3, v0

    .line 717
    const/4 v0, 0x0

    .line 718
    move-object/from16 v5, p0

    .line 719
    .line 720
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/ArcSplineKt;->animate(FFFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v0

    .line 724
    if-ne v0, v7, :cond_27

    .line 725
    .line 726
    goto :goto_16

    .line 727
    :cond_27
    :goto_15
    move-object v7, v8

    .line 728
    :goto_16
    return-object v7

    .line 729
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
