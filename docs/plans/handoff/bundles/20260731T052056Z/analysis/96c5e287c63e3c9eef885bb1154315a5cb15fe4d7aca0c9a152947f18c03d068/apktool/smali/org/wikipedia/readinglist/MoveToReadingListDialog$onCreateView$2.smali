.class public final Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $sourceReadingListId:J

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;JLandroidx/compose/animation/SizeAnimationModifierNode;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->L$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-wide p2, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->$sourceReadingListId:J

    .line 7
    .line 8
    iput-object p4, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/readinglist/MoveToReadingListDialog;JLkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->$r8$classId:I

    .line 15
    iput-object p1, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->this$0:Ljava/lang/Object;

    iput-wide p2, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->$sourceReadingListId:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    iget p1, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v1, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;

    .line 9
    .line 10
    iget-object p1, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v2, p1

    .line 13
    check-cast v2, Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;

    .line 14
    .line 15
    iget-wide v3, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->$sourceReadingListId:J

    .line 16
    .line 17
    move-object v5, v0

    .line 18
    check-cast v5, Landroidx/compose/animation/SizeAnimationModifierNode;

    .line 19
    .line 20
    move-object v6, p2

    .line 21
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;-><init>(Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;JLandroidx/compose/animation/SizeAnimationModifierNode;Lkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :pswitch_0
    move-object v6, p2

    .line 26
    new-instance p1, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;

    .line 27
    .line 28
    check-cast v0, Lorg/wikipedia/readinglist/MoveToReadingListDialog;

    .line 29
    .line 30
    iget-wide v1, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->$sourceReadingListId:J

    .line 31
    .line 32
    invoke-direct {p1, v0, v1, v2, v6}, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;-><init>(Lorg/wikipedia/readinglist/MoveToReadingListDialog;JLkotlin/coroutines/Continuation;)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-wide v1, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->$sourceReadingListId:J

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 9
    .line 10
    const/4 v7, 0x1

    .line 11
    iget-object v8, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->this$0:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v8, Landroidx/compose/animation/SizeAnimationModifierNode;

    .line 17
    .line 18
    iget-object v0, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->L$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;

    .line 21
    .line 22
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 23
    .line 24
    iget v10, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->label:I

    .line 25
    .line 26
    if-eqz v10, :cond_1

    .line 27
    .line 28
    if-ne v10, v7, :cond_0

    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    move-object v0, p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    move-object v6, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v0, Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;->anim:Landroidx/compose/animation/core/Animatable;

    .line 44
    .line 45
    new-instance v3, Landroidx/compose/ui/unit/IntSize;

    .line 46
    .line 47
    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 48
    .line 49
    .line 50
    iget-object v2, v8, Landroidx/compose/animation/SizeAnimationModifierNode;->animationSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 51
    .line 52
    iput v7, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->label:I

    .line 53
    .line 54
    move-object v1, v3

    .line 55
    const/4 v3, 0x0

    .line 56
    const/16 v5, 0xc

    .line 57
    .line 58
    move-object v4, p0

    .line 59
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-ne v0, v9, :cond_2

    .line 64
    .line 65
    move-object v6, v9

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :goto_0
    check-cast v0, Landroidx/compose/animation/core/AnimationResult;

    .line 68
    .line 69
    iget-object v0, v0, Landroidx/compose/animation/core/AnimationResult;->endReason:Landroidx/compose/animation/core/AnimationEndReason;

    .line 70
    .line 71
    :goto_1
    return-object v6

    .line 72
    :pswitch_0
    check-cast v8, Lorg/wikipedia/readinglist/MoveToReadingListDialog;

    .line 73
    .line 74
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 75
    .line 76
    iget v9, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->label:I

    .line 77
    .line 78
    if-eqz v9, :cond_4

    .line 79
    .line 80
    if-ne v9, v7, :cond_3

    .line 81
    .line 82
    iget-object v0, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Lorg/wikipedia/readinglist/MoveToReadingListDialog;

    .line 85
    .line 86
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    move-object v1, p1

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    move-object v6, v3

    .line 95
    goto :goto_3

    .line 96
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 100
    .line 101
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    iput-object v8, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->L$0:Ljava/lang/Object;

    .line 110
    .line 111
    iput v7, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog$onCreateView$2;->label:I

    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    const/4 v5, 0x0

    .line 117
    invoke-static {v3, v1, v2, v5, p0}, Lorg/wikipedia/dataclient/Service$-CC;->getListById$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;JZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    if-ne v1, v0, :cond_5

    .line 122
    .line 123
    move-object v6, v0

    .line 124
    goto :goto_3

    .line 125
    :cond_5
    move-object v0, v8

    .line 126
    :goto_2
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 127
    .line 128
    iput-object v1, v0, Lorg/wikipedia/readinglist/MoveToReadingListDialog;->sourceReadingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 129
    .line 130
    iget-object v0, v8, Lorg/wikipedia/readinglist/MoveToReadingListDialog;->sourceReadingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 131
    .line 132
    if-nez v0, :cond_6

    .line 133
    .line 134
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->dismiss()V

    .line 135
    .line 136
    .line 137
    :cond_6
    :goto_3
    return-object v6

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
