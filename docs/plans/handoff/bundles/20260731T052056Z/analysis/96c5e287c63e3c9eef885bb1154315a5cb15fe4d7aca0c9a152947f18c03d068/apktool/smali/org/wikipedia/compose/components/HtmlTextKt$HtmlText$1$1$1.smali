.class public final Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $annotatedString:Ljava/lang/Object;

.field public final synthetic $layoutResult$delegate:Ljava/lang/Object;

.field public final synthetic $onLongClickLink:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda47;Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;Landroidx/compose/foundation/text/LongPressTextDragObserverKt$$ExternalSyntheticLambda1;Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$1:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$2:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->$layoutResult$delegate:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->$annotatedString:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->$onLongClickLink:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->$r8$classId:I

    .line 19
    iput-object p1, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->$layoutResult$delegate:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->$annotatedString:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->$onLongClickLink:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1;Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda2;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->$r8$classId:I

    .line 20
    iput-object p1, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$2:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->$layoutResult$delegate:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->$annotatedString:Ljava/lang/Object;

    iput-object p4, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->$onLongClickLink:Ljava/lang/Object;

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->$onLongClickLink:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->$annotatedString:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->$layoutResult$delegate:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v4, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;

    .line 13
    .line 14
    iget-object p0, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$2:Ljava/lang/Object;

    .line 15
    .line 16
    move-object v5, p0

    .line 17
    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    .line 18
    .line 19
    move-object v6, v3

    .line 20
    check-cast v6, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1;

    .line 21
    .line 22
    move-object v7, v2

    .line 23
    check-cast v7, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda2;

    .line 24
    .line 25
    move-object v8, v1

    .line 26
    check-cast v8, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 27
    .line 28
    move-object v9, p2

    .line 29
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1;Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda2;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, v4, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    return-object v4

    .line 35
    :pswitch_0
    move-object v9, p2

    .line 36
    new-instance v5, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;

    .line 37
    .line 38
    iget-object p2, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$1:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v6, p2

    .line 41
    check-cast v6, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    iget-object p0, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$2:Ljava/lang/Object;

    .line 44
    .line 45
    move-object v7, p0

    .line 46
    check-cast v7, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda47;

    .line 47
    .line 48
    move-object v8, v3

    .line 49
    check-cast v8, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    check-cast v2, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$$ExternalSyntheticLambda1;

    .line 52
    .line 53
    move-object v10, v1

    .line 54
    check-cast v10, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;

    .line 55
    .line 56
    move-object v11, v9

    .line 57
    move-object v9, v2

    .line 58
    invoke-direct/range {v5 .. v11}, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;-><init>(Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda47;Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;Landroidx/compose/foundation/text/LongPressTextDragObserverKt$$ExternalSyntheticLambda1;Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;Lkotlin/coroutines/Continuation;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, v5, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$0:Ljava/lang/Object;

    .line 62
    .line 63
    return-object v5

    .line 64
    :pswitch_1
    move-object v9, p2

    .line 65
    new-instance p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;

    .line 66
    .line 67
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 68
    .line 69
    check-cast v2, Landroidx/compose/ui/text/AnnotatedString;

    .line 70
    .line 71
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 72
    .line 73
    invoke-direct {p0, v3, v2, v1, v9}, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget v0, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    iget-object v2, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->$annotatedString:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v3, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->$layoutResult$delegate:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v4, 0x3

    .line 13
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 14
    .line 15
    iget-object v6, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->$onLongClickLink:Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v9, 0x2

    .line 18
    const/4 v10, 0x0

    .line 19
    const/4 v11, 0x1

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    iget-object v0, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$2:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 26
    .line 27
    move-object v14, v6

    .line 28
    check-cast v14, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 29
    .line 30
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 31
    .line 32
    iget v6, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->label:I

    .line 33
    .line 34
    const/4 v12, 0x0

    .line 35
    if-eqz v6, :cond_2

    .line 36
    .line 37
    if-eq v6, v11, :cond_1

    .line 38
    .line 39
    if-ne v6, v9, :cond_0

    .line 40
    .line 41
    iget-object v1, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Lkotlinx/coroutines/Job;

    .line 44
    .line 45
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    move-object/from16 v4, p1

    .line 49
    .line 50
    move-object v3, v12

    .line 51
    goto :goto_3

    .line 52
    :cond_0
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    move-object v8, v10

    .line 56
    goto/16 :goto_4

    .line 57
    .line 58
    :cond_1
    iget-object v4, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v4, Lkotlinx/coroutines/StandaloneCoroutine;

    .line 61
    .line 62
    iget-object v5, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v5, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 65
    .line 66
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    move-object v6, v4

    .line 70
    move-object/from16 v4, p1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v5, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v5, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 79
    .line 80
    sget-object v6, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 81
    .line 82
    new-instance v10, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$resetJob$1;

    .line 83
    .line 84
    invoke-direct {v10, v14, v12, v11}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$resetJob$1;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;I)V

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v12, v6, v10, v11}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    iput-object v5, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$0:Ljava/lang/Object;

    .line 92
    .line 93
    iput-object v6, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$1:Ljava/lang/Object;

    .line 94
    .line 95
    iput v11, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->label:I

    .line 96
    .line 97
    invoke-static {v5, v12, v7, v4}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    if-ne v4, v1, :cond_3

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    :goto_0
    move-object v15, v4

    .line 105
    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 106
    .line 107
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 108
    .line 109
    .line 110
    move-object v13, v3

    .line 111
    check-cast v13, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1;

    .line 112
    .line 113
    sget-object v3, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->NoPressGesture:Landroidx/paging/CachedPagingDataKt$cachedIn$5;

    .line 114
    .line 115
    if-eq v13, v3, :cond_4

    .line 116
    .line 117
    move-object/from16 v16, v12

    .line 118
    .line 119
    new-instance v12, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 120
    .line 121
    const/16 v17, 0x9

    .line 122
    .line 123
    invoke-direct/range {v12 .. v17}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 124
    .line 125
    .line 126
    move-object/from16 v3, v16

    .line 127
    .line 128
    invoke-static {v0, v6, v12}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->launchAwaitingReset$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    move-object v3, v12

    .line 133
    :goto_1
    iput-object v6, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$0:Ljava/lang/Object;

    .line 134
    .line 135
    iput-object v3, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$1:Ljava/lang/Object;

    .line 136
    .line 137
    iput v9, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->label:I

    .line 138
    .line 139
    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 140
    .line 141
    invoke-static {v5, v4, v7}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->waitForUpOrCancellation(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    if-ne v4, v1, :cond_5

    .line 146
    .line 147
    :goto_2
    move-object v8, v1

    .line 148
    goto :goto_4

    .line 149
    :cond_5
    move-object v1, v6

    .line 150
    :goto_3
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 151
    .line 152
    if-nez v4, :cond_6

    .line 153
    .line 154
    new-instance v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$3;

    .line 155
    .line 156
    invoke-direct {v2, v14, v3, v11}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$3;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;I)V

    .line 157
    .line 158
    .line 159
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->launchAwaitingReset$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_6
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 164
    .line 165
    .line 166
    new-instance v5, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$3;

    .line 167
    .line 168
    invoke-direct {v5, v14, v3, v9}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$3;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;I)V

    .line 169
    .line 170
    .line 171
    invoke-static {v0, v1, v5}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->launchAwaitingReset$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 172
    .line 173
    .line 174
    check-cast v2, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda2;

    .line 175
    .line 176
    iget-wide v0, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 177
    .line 178
    new-instance v3, Landroidx/compose/ui/geometry/Offset;

    .line 179
    .line 180
    invoke-direct {v3, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v3}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    :goto_4
    return-object v8

    .line 187
    :pswitch_0
    sget-object v12, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 188
    .line 189
    iget v0, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->label:I

    .line 190
    .line 191
    if-eqz v0, :cond_9

    .line 192
    .line 193
    if-eq v0, v11, :cond_8

    .line 194
    .line 195
    if-ne v0, v9, :cond_7

    .line 196
    .line 197
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    goto :goto_7

    .line 201
    :cond_7
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    move-object v8, v10

    .line 205
    goto :goto_7

    .line 206
    :cond_8
    iget-object v0, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$0:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 209
    .line 210
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    move-object/from16 v1, p1

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    iget-object v0, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$0:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 222
    .line 223
    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 224
    .line 225
    iput-object v0, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$0:Ljava/lang/Object;

    .line 226
    .line 227
    iput v11, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->label:I

    .line 228
    .line 229
    invoke-static {v0, v1, v4, v7}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    if-ne v1, v12, :cond_a

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_a
    :goto_5
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 237
    .line 238
    iget-object v4, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$1:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v4, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 241
    .line 242
    iget-object v5, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$2:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v5, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda47;

    .line 245
    .line 246
    check-cast v3, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

    .line 247
    .line 248
    check-cast v2, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$$ExternalSyntheticLambda1;

    .line 249
    .line 250
    check-cast v6, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;

    .line 251
    .line 252
    iput-object v10, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$0:Ljava/lang/Object;

    .line 253
    .line 254
    iput v9, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->label:I

    .line 255
    .line 256
    move-object/from16 v19, v5

    .line 257
    .line 258
    move-object v5, v2

    .line 259
    move-object v2, v4

    .line 260
    move-object v4, v3

    .line 261
    move-object/from16 v3, v19

    .line 262
    .line 263
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->processDragGesture(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda47;Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;Landroidx/compose/foundation/text/LongPressTextDragObserverKt$$ExternalSyntheticLambda1;Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    if-ne v0, v12, :cond_b

    .line 268
    .line 269
    :goto_6
    move-object v8, v12

    .line 270
    :cond_b
    :goto_7
    return-object v8

    .line 271
    :pswitch_1
    iget-object v0, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$0:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 274
    .line 275
    sget-object v12, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 276
    .line 277
    iget v13, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->label:I

    .line 278
    .line 279
    if-eqz v13, :cond_f

    .line 280
    .line 281
    if-eq v13, v11, :cond_e

    .line 282
    .line 283
    if-eq v13, v9, :cond_d

    .line 284
    .line 285
    if-ne v13, v4, :cond_c

    .line 286
    .line 287
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    move-object/from16 v1, p1

    .line 291
    .line 292
    goto/16 :goto_e

    .line 293
    .line 294
    :cond_c
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    move-object v8, v10

    .line 298
    goto/16 :goto_10

    .line 299
    .line 300
    :cond_d
    iget-object v5, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$2:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 303
    .line 304
    iget-object v9, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$1:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 307
    .line 308
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    goto :goto_9

    .line 312
    :cond_e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    move-object/from16 v5, p1

    .line 316
    .line 317
    goto :goto_8

    .line 318
    :cond_f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 322
    .line 323
    iput-object v0, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$0:Ljava/lang/Object;

    .line 324
    .line 325
    iput v11, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->label:I

    .line 326
    .line 327
    invoke-static {v0, v1, v5, v7}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    if-ne v5, v12, :cond_10

    .line 332
    .line 333
    goto/16 :goto_d

    .line 334
    .line 335
    :cond_10
    :goto_8
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 336
    .line 337
    new-instance v13, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 338
    .line 339
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 340
    .line 341
    .line 342
    iput-boolean v11, v13, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 343
    .line 344
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 345
    .line 346
    .line 347
    move-result-object v14

    .line 348
    invoke-interface {v14}, Landroidx/compose/ui/platform/ViewConfiguration;->getLongPressTimeoutMillis()J

    .line 349
    .line 350
    .line 351
    move-result-wide v14

    .line 352
    new-instance v1, Landroidx/core/view/ViewKt$allViews$1;

    .line 353
    .line 354
    invoke-direct {v1, v4, v13, v10}, Landroidx/core/view/ViewKt$allViews$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 355
    .line 356
    .line 357
    iput-object v0, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$0:Ljava/lang/Object;

    .line 358
    .line 359
    iput-object v5, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$1:Ljava/lang/Object;

    .line 360
    .line 361
    iput-object v13, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$2:Ljava/lang/Object;

    .line 362
    .line 363
    iput v9, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->label:I

    .line 364
    .line 365
    invoke-virtual {v0, v14, v15, v1, v7}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    if-ne v1, v12, :cond_11

    .line 370
    .line 371
    goto/16 :goto_d

    .line 372
    .line 373
    :cond_11
    move-object v9, v5

    .line 374
    move-object v5, v13

    .line 375
    :goto_9
    iget-boolean v1, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 376
    .line 377
    if-eqz v1, :cond_18

    .line 378
    .line 379
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 380
    .line 381
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    check-cast v1, Landroidx/compose/ui/text/TextLayoutResult;

    .line 386
    .line 387
    if-eqz v1, :cond_18

    .line 388
    .line 389
    check-cast v2, Landroidx/compose/ui/text/AnnotatedString;

    .line 390
    .line 391
    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 392
    .line 393
    iget-wide v13, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 394
    .line 395
    iget-object v1, v1, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 396
    .line 397
    invoke-virtual {v1, v13, v14}, Landroidx/compose/ui/text/MultiParagraph;->getOffsetForPosition-k-4lQ0M(J)I

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    invoke-virtual {v2, v1, v1}, Landroidx/compose/ui/text/AnnotatedString;->getLinkAnnotations(II)Ljava/util/List;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 410
    .line 411
    if-eqz v1, :cond_18

    .line 412
    .line 413
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 414
    .line 415
    instance-of v2, v1, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 416
    .line 417
    if-eqz v2, :cond_12

    .line 418
    .line 419
    check-cast v1, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 420
    .line 421
    goto :goto_a

    .line 422
    :cond_12
    move-object v1, v10

    .line 423
    :goto_a
    if-eqz v1, :cond_18

    .line 424
    .line 425
    iget-object v1, v1, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    .line 426
    .line 427
    if-eqz v1, :cond_18

    .line 428
    .line 429
    const/16 p1, 0x20

    .line 430
    .line 431
    shr-long v2, v13, p1

    .line 432
    .line 433
    long-to-int v2, v2

    .line 434
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    invoke-static {v2}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 439
    .line 440
    .line 441
    move-result v2

    .line 442
    const-wide v17, 0xffffffffL

    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    and-long v13, v13, v17

    .line 448
    .line 449
    long-to-int v3, v13

    .line 450
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    invoke-static {v3}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    int-to-long v13, v2

    .line 459
    shl-long v13, v13, p1

    .line 460
    .line 461
    int-to-long v2, v3

    .line 462
    and-long v2, v2, v17

    .line 463
    .line 464
    or-long/2addr v2, v13

    .line 465
    new-instance v5, Landroidx/compose/ui/unit/IntOffset;

    .line 466
    .line 467
    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 468
    .line 469
    .line 470
    invoke-interface {v6, v1, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    :goto_b
    move v1, v11

    .line 474
    :goto_c
    if-eqz v1, :cond_18

    .line 475
    .line 476
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 477
    .line 478
    iput-object v0, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$0:Ljava/lang/Object;

    .line 479
    .line 480
    iput-object v10, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$1:Ljava/lang/Object;

    .line 481
    .line 482
    iput-object v10, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->L$2:Ljava/lang/Object;

    .line 483
    .line 484
    iput v4, v7, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;->label:I

    .line 485
    .line 486
    invoke-virtual {v0, v1, v7}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    if-ne v1, v12, :cond_13

    .line 491
    .line 492
    :goto_d
    move-object v8, v12

    .line 493
    goto :goto_10

    .line 494
    :cond_13
    :goto_e
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 495
    .line 496
    iget-object v2, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 497
    .line 498
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 503
    .line 504
    .line 505
    move-result v3

    .line 506
    if-eqz v3, :cond_14

    .line 507
    .line 508
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 513
    .line 514
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 515
    .line 516
    .line 517
    goto :goto_f

    .line 518
    :cond_14
    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 519
    .line 520
    if-eqz v1, :cond_16

    .line 521
    .line 522
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    if-eqz v2, :cond_16

    .line 527
    .line 528
    :cond_15
    const/4 v1, 0x0

    .line 529
    goto :goto_c

    .line 530
    :cond_16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 535
    .line 536
    .line 537
    move-result v2

    .line 538
    if-eqz v2, :cond_15

    .line 539
    .line 540
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 545
    .line 546
    iget-boolean v2, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 547
    .line 548
    if-eqz v2, :cond_17

    .line 549
    .line 550
    goto :goto_b

    .line 551
    :cond_18
    :goto_10
    return-object v8

    .line 552
    nop

    .line 553
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
