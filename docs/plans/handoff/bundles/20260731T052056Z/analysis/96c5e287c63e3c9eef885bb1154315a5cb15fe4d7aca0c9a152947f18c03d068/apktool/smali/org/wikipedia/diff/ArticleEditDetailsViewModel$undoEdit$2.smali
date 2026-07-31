.class public final Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $comment:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $revisionId:J

.field public final synthetic $title:Ljava/lang/Object;

.field public final synthetic $user:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/UpdatableAnimationState;Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/BringIntoViewSpec;JLkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$r8$classId:I

    .line 21
    iput-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$user:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$comment:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$title:Ljava/lang/Object;

    iput-wide p4, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$revisionId:J

    iput-object p6, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/OffsetMapping;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$user:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->L$2:Ljava/lang/Object;

    .line 7
    .line 8
    iput-wide p3, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$revisionId:J

    .line 9
    .line 10
    iput-object p5, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$comment:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p6, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$title:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p7, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->this$0:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 p1, 0x2

    .line 17
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/PageTitle;JLjava/lang/String;Ljava/lang/String;Lorg/wikipedia/diff/ArticleEditDetailsViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$r8$classId:I

    .line 22
    iput-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$title:Ljava/lang/Object;

    iput-wide p2, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$revisionId:J

    iput-object p4, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$user:Ljava/lang/Object;

    iput-object p5, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$comment:Ljava/lang/Object;

    iput-object p6, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 14

    .line 1
    iget v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$title:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$comment:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$user:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    new-instance v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;

    .line 15
    .line 16
    move-object v6, v4

    .line 17
    check-cast v6, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    .line 18
    .line 19
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->L$2:Ljava/lang/Object;

    .line 20
    .line 21
    move-object v7, v0

    .line 22
    check-cast v7, Ljava/lang/String;

    .line 23
    .line 24
    move-object v10, v3

    .line 25
    check-cast v10, Landroidx/compose/ui/text/TextRange;

    .line 26
    .line 27
    move-object v11, v2

    .line 28
    check-cast v11, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 29
    .line 30
    move-object v12, v1

    .line 31
    check-cast v12, Landroidx/compose/ui/text/input/OffsetMapping;

    .line 32
    .line 33
    iget-wide v8, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$revisionId:J

    .line 34
    .line 35
    move-object/from16 v13, p2

    .line 36
    .line 37
    invoke-direct/range {v5 .. v13}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;-><init>(Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/OffsetMapping;Lkotlin/coroutines/Continuation;)V

    .line 38
    .line 39
    .line 40
    return-object v5

    .line 41
    :pswitch_0
    new-instance v6, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;

    .line 42
    .line 43
    move-object v7, v4

    .line 44
    check-cast v7, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    .line 45
    .line 46
    move-object v8, v3

    .line 47
    check-cast v8, Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 48
    .line 49
    move-object v9, v2

    .line 50
    check-cast v9, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 51
    .line 52
    iget-wide v10, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$revisionId:J

    .line 53
    .line 54
    move-object v12, v1

    .line 55
    check-cast v12, Lkotlinx/coroutines/Job;

    .line 56
    .line 57
    move-object/from16 v13, p2

    .line 58
    .line 59
    invoke-direct/range {v6 .. v13}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;-><init>(Landroidx/compose/foundation/gestures/UpdatableAnimationState;Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/BringIntoViewSpec;JLkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, v6, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->L$2:Ljava/lang/Object;

    .line 63
    .line 64
    return-object v6

    .line 65
    :pswitch_1
    new-instance v6, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;

    .line 66
    .line 67
    move-object v7, v2

    .line 68
    check-cast v7, Lorg/wikipedia/page/PageTitle;

    .line 69
    .line 70
    move-object v10, v4

    .line 71
    check-cast v10, Ljava/lang/String;

    .line 72
    .line 73
    move-object v11, v3

    .line 74
    check-cast v11, Ljava/lang/String;

    .line 75
    .line 76
    move-object v12, v1

    .line 77
    check-cast v12, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 78
    .line 79
    iget-wide v8, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$revisionId:J

    .line 80
    .line 81
    move-object/from16 v13, p2

    .line 82
    .line 83
    invoke-direct/range {v6 .. v13}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;-><init>(Lorg/wikipedia/page/PageTitle;JLjava/lang/String;Ljava/lang/String;Lorg/wikipedia/diff/ArticleEditDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    .line 84
    .line 85
    .line 86
    return-object v6

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 24
    .line 25
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    iget v0, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$r8$classId:I

    .line 4
    .line 5
    iget-wide v1, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$revisionId:J

    .line 6
    .line 7
    iget-object v3, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$comment:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$user:Ljava/lang/Object;

    .line 10
    .line 11
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 12
    .line 13
    iget-object v6, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$title:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v7, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->this$0:Ljava/lang/Object;

    .line 16
    .line 17
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    .line 19
    const/4 v8, 0x1

    .line 20
    const/4 v11, 0x0

    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    check-cast v7, Landroidx/compose/ui/text/input/OffsetMapping;

    .line 25
    .line 26
    iget-object v0, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->L$2:Ljava/lang/Object;

    .line 27
    .line 28
    move-object/from16 v16, v0

    .line 29
    .line 30
    check-cast v16, Ljava/lang/String;

    .line 31
    .line 32
    check-cast v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 33
    .line 34
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 35
    .line 36
    iget v1, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->label:I

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    if-ne v1, v8, :cond_0

    .line 41
    .line 42
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    move-object/from16 v2, p1

    .line 46
    .line 47
    move-object/from16 v1, v16

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_0
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    move-object v10, v11

    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    check-cast v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    .line 60
    .line 61
    iput v8, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->label:I

    .line 62
    .line 63
    move-object v15, v4

    .line 64
    check-cast v15, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 65
    .line 66
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    iget-wide v13, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$revisionId:J

    .line 77
    .line 78
    invoke-static {v13, v14}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    :goto_0
    move-object v2, v11

    .line 85
    move-object/from16 v1, v16

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    new-instance v12, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;

    .line 89
    .line 90
    const/16 v17, 0x0

    .line 91
    .line 92
    invoke-direct/range {v12 .. v17}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;-><init>(JLandroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;Ljava/lang/CharSequence;Lkotlin/coroutines/Continuation;)V

    .line 93
    .line 94
    .line 95
    move-object/from16 v1, v16

    .line 96
    .line 97
    iget-object v2, v15, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 98
    .line 99
    new-instance v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2;

    .line 100
    .line 101
    invoke-direct {v4, v15, v12, v11}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2;-><init>(Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v2, v4, v9}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    :goto_1
    if-ne v2, v0, :cond_4

    .line 109
    .line 110
    move-object v10, v0

    .line 111
    goto :goto_3

    .line 112
    :cond_4
    :goto_2
    check-cast v2, Landroidx/compose/ui/text/TextRange;

    .line 113
    .line 114
    if-eqz v2, :cond_5

    .line 115
    .line 116
    iget-wide v4, v2, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 117
    .line 118
    const/16 v0, 0x20

    .line 119
    .line 120
    shr-long v8, v4, v0

    .line 121
    .line 122
    long-to-int v0, v8

    .line 123
    invoke-interface {v7, v0}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    const-wide v8, 0xffffffffL

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    and-long/2addr v4, v8

    .line 133
    long-to-int v2, v4

    .line 134
    invoke-interface {v7, v2}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-static {v0, v2}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 139
    .line 140
    .line 141
    move-result-wide v4

    .line 142
    check-cast v3, Landroidx/compose/ui/text/TextRange;

    .line 143
    .line 144
    invoke-static {v4, v5, v3}, Landroidx/compose/ui/text/TextRange;->equals-impl(JLjava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_5

    .line 149
    .line 150
    invoke-virtual {v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget-object v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 155
    .line 156
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_5

    .line 163
    .line 164
    iget-object v0, v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 165
    .line 166
    if-ne v7, v0, :cond_5

    .line 167
    .line 168
    iget-object v0, v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->onValueChange:Lkotlin/jvm/functions/Function1;

    .line 169
    .line 170
    invoke-virtual {v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    iget-object v1, v1, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 175
    .line 176
    invoke-static {v1, v4, v5}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->createTextFieldValue-FDrldGo(Landroidx/compose/ui/text/AnnotatedString;J)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    new-instance v0, Landroidx/compose/ui/text/TextRange;

    .line 184
    .line 185
    invoke-direct {v0, v4, v5}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 186
    .line 187
    .line 188
    iput-object v0, v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->latestSelection:Landroidx/compose/ui/text/TextRange;

    .line 189
    .line 190
    :cond_5
    :goto_3
    return-object v10

    .line 191
    :pswitch_0
    check-cast v6, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 192
    .line 193
    check-cast v3, Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 194
    .line 195
    check-cast v4, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    .line 196
    .line 197
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 198
    .line 199
    iget v12, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->label:I

    .line 200
    .line 201
    if-eqz v12, :cond_7

    .line 202
    .line 203
    if-ne v12, v8, :cond_6

    .line 204
    .line 205
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_6
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    move-object v10, v11

    .line 213
    goto :goto_4

    .line 214
    :cond_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    iget-object v5, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->L$2:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v5, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 220
    .line 221
    invoke-virtual {v3, v6, v1, v2}, Landroidx/compose/foundation/gestures/ContentInViewNode;->calculateScrollDelta-I_oMVgE(Landroidx/compose/foundation/gestures/BringIntoViewSpec;J)F

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    iput v1, v4, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->value:F

    .line 226
    .line 227
    check-cast v7, Lkotlinx/coroutines/Job;

    .line 228
    .line 229
    new-instance v1, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;

    .line 230
    .line 231
    invoke-direct {v1, v3, v4, v7, v5}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/UpdatableAnimationState;Lkotlinx/coroutines/Job;Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;)V

    .line 232
    .line 233
    .line 234
    new-instance v2, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;

    .line 235
    .line 236
    invoke-direct {v2, v3, v4, v6, v8}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 237
    .line 238
    .line 239
    iput v8, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->label:I

    .line 240
    .line 241
    invoke-virtual {v4, v1, v2, v9}, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->animateToZero(Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    if-ne v1, v0, :cond_8

    .line 246
    .line 247
    move-object v10, v0

    .line 248
    :cond_8
    :goto_4
    return-object v10

    .line 249
    :pswitch_1
    move-object v12, v7

    .line 250
    check-cast v12, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 251
    .line 252
    check-cast v6, Lorg/wikipedia/page/PageTitle;

    .line 253
    .line 254
    sget-object v13, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 255
    .line 256
    iget v0, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->label:I

    .line 257
    .line 258
    const-string/jumbo v7, "undo-summary"

    .line 259
    .line 260
    .line 261
    const/4 v14, 0x3

    .line 262
    const/4 v15, 0x2

    .line 263
    const/4 v11, 0x0

    .line 264
    if-eqz v0, :cond_d

    .line 265
    .line 266
    if-eq v0, v8, :cond_c

    .line 267
    .line 268
    if-eq v0, v15, :cond_a

    .line 269
    .line 270
    if-ne v0, v14, :cond_9

    .line 271
    .line 272
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    move-object/from16 v0, p1

    .line 276
    .line 277
    goto/16 :goto_b

    .line 278
    .line 279
    :cond_9
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    const/4 v10, 0x0

    .line 283
    goto/16 :goto_c

    .line 284
    .line 285
    :cond_a
    iget-object v0, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->L$2:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v0, Ljava/lang/String;

    .line 288
    .line 289
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    move-object/from16 v1, p1

    .line 293
    .line 294
    :cond_b
    move-object v2, v0

    .line 295
    goto/16 :goto_9

    .line 296
    .line 297
    :cond_c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    move-object/from16 v0, p1

    .line 301
    .line 302
    goto :goto_5

    .line 303
    :cond_d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 307
    .line 308
    iget-object v0, v6, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 309
    .line 310
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    check-cast v4, Ljava/lang/String;

    .line 315
    .line 316
    new-instance v5, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-string/jumbo v1, "|"

    .line 325
    .line 326
    .line 327
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    iput v8, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->label:I

    .line 338
    .line 339
    const/4 v2, 0x0

    .line 340
    invoke-interface {v0, v7, v1, v2, v9}, Lorg/wikipedia/dataclient/Service;->getMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    if-ne v0, v13, :cond_e

    .line 345
    .line 346
    goto/16 :goto_a

    .line 347
    .line 348
    :cond_e
    :goto_5
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 349
    .line 350
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 351
    .line 352
    if-eqz v0, :cond_11

    .line 353
    .line 354
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->allmessages:Ljava/util/List;

    .line 355
    .line 356
    if-eqz v0, :cond_11

    .line 357
    .line 358
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    if-eqz v1, :cond_10

    .line 367
    .line 368
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    move-object v2, v1

    .line 373
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Message;

    .line 374
    .line 375
    iget-object v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Message;->name:Ljava/lang/String;

    .line 376
    .line 377
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    if-eqz v2, :cond_f

    .line 382
    .line 383
    goto :goto_6

    .line 384
    :cond_10
    move-object v1, v11

    .line 385
    :goto_6
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Message;

    .line 386
    .line 387
    if-eqz v1, :cond_11

    .line 388
    .line 389
    iget-object v0, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Message;->content:Ljava/lang/String;

    .line 390
    .line 391
    goto :goto_7

    .line 392
    :cond_11
    move-object v0, v11

    .line 393
    :goto_7
    check-cast v3, Ljava/lang/String;

    .line 394
    .line 395
    if-eqz v0, :cond_12

    .line 396
    .line 397
    const-string v1, " "

    .line 398
    .line 399
    invoke-static {v0, v1, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    goto :goto_8

    .line 404
    :cond_12
    move-object v0, v3

    .line 405
    :goto_8
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 406
    .line 407
    iget-object v1, v6, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 408
    .line 409
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    iput-object v0, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->L$2:Ljava/lang/Object;

    .line 414
    .line 415
    iput v15, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->label:I

    .line 416
    .line 417
    const-string v2, "csrf"

    .line 418
    .line 419
    invoke-interface {v1, v2, v9}, Lorg/wikipedia/dataclient/Service;->getToken(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    if-ne v1, v13, :cond_b

    .line 424
    .line 425
    goto :goto_a

    .line 426
    :goto_9
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 427
    .line 428
    iget-object v0, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 429
    .line 430
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->csrfToken()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v4

    .line 437
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    .line 439
    .line 440
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 441
    .line 442
    iget-object v0, v6, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 443
    .line 444
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    const-string v3, "app-undo"

    .line 453
    .line 454
    invoke-virtual {v12, v3}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->getEditTags(Ljava/lang/String;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v8

    .line 458
    iput-object v11, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->L$2:Ljava/lang/Object;

    .line 459
    .line 460
    iput v14, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->label:I

    .line 461
    .line 462
    const/4 v3, 0x0

    .line 463
    iget-wide v5, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;->$revisionId:J

    .line 464
    .line 465
    move-object v7, v11

    .line 466
    invoke-interface/range {v0 .. v9}, Lorg/wikipedia/dataclient/Service;->postUndoEdit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    if-ne v0, v13, :cond_13

    .line 471
    .line 472
    :goto_a
    move-object v10, v13

    .line 473
    goto :goto_c

    .line 474
    :cond_13
    :goto_b
    check-cast v0, Lorg/wikipedia/edit/Edit;

    .line 475
    .line 476
    iget-object v1, v12, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->undoEditResponse:Lorg/wikipedia/util/SingleLiveData;

    .line 477
    .line 478
    new-instance v2, Lorg/wikipedia/util/Resource$Success;

    .line 479
    .line 480
    invoke-direct {v2, v0}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 484
    .line 485
    .line 486
    :goto_c
    return-object v10

    .line 487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
