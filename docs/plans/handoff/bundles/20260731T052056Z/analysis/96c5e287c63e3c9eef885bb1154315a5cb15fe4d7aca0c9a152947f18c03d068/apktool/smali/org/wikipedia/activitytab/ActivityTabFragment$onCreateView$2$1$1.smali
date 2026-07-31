.class public final Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic Z$0:Z

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 13
    iput p1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->$r8$classId:I

    iput-object p2, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->Z$0:Z

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(ZLandroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->$r8$classId:I

    .line 14
    iput-boolean p1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->Z$0:Z

    iput-object p2, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;

    .line 9
    .line 10
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    iget-boolean p0, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->Z$0:Z

    .line 13
    .line 14
    invoke-direct {p1, v1, p0, p2}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;-><init>(Lkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_0
    new-instance p1, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;

    .line 19
    .line 20
    iget-boolean p0, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->Z$0:Z

    .line 21
    .line 22
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 23
    .line 24
    invoke-direct {p1, p0, v1, p2}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;-><init>(ZLandroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :pswitch_1
    new-instance p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;

    .line 29
    .line 30
    check-cast v1, Landroid/content/Context;

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 34
    .line 35
    .line 36
    check-cast p1, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput-boolean p1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->Z$0:Z

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_2
    new-instance p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;

    .line 46
    .line 47
    check-cast v1, Landroidx/compose/material3/TooltipStateImpl;

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 51
    .line 52
    .line 53
    check-cast p1, Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput-boolean p1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->Z$0:Z

    .line 60
    .line 61
    return-object p0

    .line 62
    :pswitch_3
    new-instance p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;

    .line 63
    .line 64
    check-cast v1, Lorg/wikipedia/activitytab/ActivityTabFragment;

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 68
    .line 69
    .line 70
    check-cast p1, Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput-boolean p1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->Z$0:Z

    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 23
    .line 24
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    return-object v1

    .line 53
    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 59
    .line 60
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    return-object v1

    .line 70
    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 76
    .line 77
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    return-object v1

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    iget-boolean v0, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->Z$0:Z

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-object v2

    .line 27
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-boolean v0, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->Z$0:Z

    .line 31
    .line 32
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-interface {v3, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-interface {v3, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    return-object v2

    .line 60
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-boolean v0, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->Z$0:Z

    .line 64
    .line 65
    check-cast v3, Landroid/content/Context;

    .line 66
    .line 67
    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    .line 68
    .line 69
    invoke-static {v3, v1, v0}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 70
    .line 71
    .line 72
    return-object v2

    .line 73
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-boolean v0, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->Z$0:Z

    .line 77
    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    check-cast v3, Landroidx/compose/material3/TooltipStateImpl;

    .line 81
    .line 82
    invoke-virtual {v3}, Landroidx/compose/material3/TooltipStateImpl;->dismiss()V

    .line 83
    .line 84
    .line 85
    :cond_2
    return-object v2

    .line 86
    :pswitch_3
    check-cast v3, Lorg/wikipedia/activitytab/ActivityTabFragment;

    .line 87
    .line 88
    iget-boolean v0, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;->Z$0:Z

    .line 89
    .line 90
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    if-eqz v0, :cond_a

    .line 94
    .line 95
    invoke-virtual {v3}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v0, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->_readingHistoryState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 100
    .line 101
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lorg/wikipedia/util/UiState;

    .line 106
    .line 107
    instance-of v1, v0, Lorg/wikipedia/util/UiState$Success;

    .line 108
    .line 109
    const-wide/16 v4, 0x0

    .line 110
    .line 111
    if-eqz v1, :cond_3

    .line 112
    .line 113
    check-cast v0, Lorg/wikipedia/util/UiState$Success;

    .line 114
    .line 115
    iget-object v0, v0, Lorg/wikipedia/util/UiState$Success;->data:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;

    .line 118
    .line 119
    iget-wide v6, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;->timeSpentThisWeek:J

    .line 120
    .line 121
    cmp-long v1, v6, v4

    .line 122
    .line 123
    if-gtz v1, :cond_7

    .line 124
    .line 125
    iget v1, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;->articlesReadThisMonth:I

    .line 126
    .line 127
    if-gtz v1, :cond_7

    .line 128
    .line 129
    iget v1, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;->articlesSavedThisMonth:I

    .line 130
    .line 131
    if-gtz v1, :cond_7

    .line 132
    .line 133
    iget-object v0, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;->topCategories:Ljava/util/List;

    .line 134
    .line 135
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_7

    .line 140
    .line 141
    :cond_3
    invoke-virtual {v3}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iget-object v0, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->_impactUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 146
    .line 147
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Lorg/wikipedia/util/UiState;

    .line 152
    .line 153
    instance-of v1, v0, Lorg/wikipedia/util/UiState$Success;

    .line 154
    .line 155
    if-eqz v1, :cond_4

    .line 156
    .line 157
    check-cast v0, Lorg/wikipedia/util/UiState$Success;

    .line 158
    .line 159
    iget-object v0, v0, Lorg/wikipedia/util/UiState$Success;->data:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v0, Lkotlin/Pair;

    .line 162
    .line 163
    iget-object v0, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;

    .line 166
    .line 167
    iget v1, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->totalEditsCount:I

    .line 168
    .line 169
    if-gtz v1, :cond_7

    .line 170
    .line 171
    iget v1, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->receivedThanksCount:I

    .line 172
    .line 173
    if-gtz v1, :cond_7

    .line 174
    .line 175
    iget-wide v0, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->totalPageviewsCount:J

    .line 176
    .line 177
    cmp-long v0, v0, v4

    .line 178
    .line 179
    if-gtz v0, :cond_7

    .line 180
    .line 181
    :cond_4
    invoke-virtual {v3}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iget-object v0, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->_wikiGamesUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 186
    .line 187
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Lorg/wikipedia/util/UiState;

    .line 192
    .line 193
    instance-of v1, v0, Lorg/wikipedia/util/UiState$Success;

    .line 194
    .line 195
    if-eqz v1, :cond_6

    .line 196
    .line 197
    check-cast v0, Lorg/wikipedia/util/UiState$Success;

    .line 198
    .line 199
    iget-object v0, v0, Lorg/wikipedia/util/UiState$Success;->data:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;

    .line 202
    .line 203
    if-nez v0, :cond_5

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_5
    iget v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->totalGamesPlayed:I

    .line 207
    .line 208
    if-gtz v0, :cond_7

    .line 209
    .line 210
    :cond_6
    :goto_1
    invoke-virtual {v3}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iget-object v0, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->_donationUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 215
    .line 216
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    check-cast v0, Lorg/wikipedia/util/UiState;

    .line 221
    .line 222
    instance-of v1, v0, Lorg/wikipedia/util/UiState$Success;

    .line 223
    .line 224
    if-eqz v1, :cond_8

    .line 225
    .line 226
    check-cast v0, Lorg/wikipedia/util/UiState$Success;

    .line 227
    .line 228
    iget-object v0, v0, Lorg/wikipedia/util/UiState$Success;->data:Ljava/lang/Object;

    .line 229
    .line 230
    if-nez v0, :cond_7

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_7
    const/4 v0, 0x0

    .line 234
    goto :goto_3

    .line 235
    :cond_8
    :goto_2
    const/4 v0, 0x1

    .line 236
    :goto_3
    invoke-virtual {v3}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v1}, Lorg/wikipedia/activitytab/ActivityTabViewModel;->getTotalEditsCount()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    new-instance v5, Ljava/lang/Integer;

    .line 245
    .line 246
    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 247
    .line 248
    .line 249
    if-eqz v0, :cond_9

    .line 250
    .line 251
    const-string v0, "empty"

    .line 252
    .line 253
    :goto_4
    move-object v6, v0

    .line 254
    goto :goto_5

    .line 255
    :cond_9
    const-string v0, "complete"

    .line 256
    .line 257
    goto :goto_4

    .line 258
    :goto_5
    const/4 v14, 0x0

    .line 259
    const/16 v15, 0x3fe4

    .line 260
    .line 261
    const-string v3, "activity_tab"

    .line 262
    .line 263
    const-string v4, "impression"

    .line 264
    .line 265
    const/4 v7, 0x0

    .line 266
    const/4 v8, 0x0

    .line 267
    const/4 v9, 0x0

    .line 268
    const/4 v10, 0x0

    .line 269
    const/4 v11, 0x0

    .line 270
    const/4 v12, 0x0

    .line 271
    const/4 v13, 0x0

    .line 272
    invoke-static/range {v3 .. v15}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 273
    .line 274
    .line 275
    :cond_a
    return-object v2

    .line 276
    nop

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
