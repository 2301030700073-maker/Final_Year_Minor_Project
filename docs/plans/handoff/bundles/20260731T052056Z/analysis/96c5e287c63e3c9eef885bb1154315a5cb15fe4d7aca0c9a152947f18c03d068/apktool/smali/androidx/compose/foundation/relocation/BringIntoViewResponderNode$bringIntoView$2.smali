.class public final Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $boundsProvider:Ljava/lang/Object;

.field public final synthetic $childCoordinates:Ljava/lang/Object;

.field public final synthetic $parentRect:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Landroidx/compose/foundation/pager/DefaultPagerState;Lorg/wikipedia/feed/personalization/PersonalizationViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->L$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$childCoordinates:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$boundsProvider:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$parentRect:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/node/NodeCoordinator;Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$r8$classId:I

    .line 19
    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$childCoordinates:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$boundsProvider:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$parentRect:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 12

    .line 1
    iget v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$parentRect:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$boundsProvider:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$childCoordinates:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->this$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    new-instance v5, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v6, p0

    .line 19
    check-cast v6, Landroid/content/Context;

    .line 20
    .line 21
    move-object v7, v4

    .line 22
    check-cast v7, Ljava/util/Map;

    .line 23
    .line 24
    move-object v8, v3

    .line 25
    check-cast v8, Ljava/util/List;

    .line 26
    .line 27
    move-object v9, v2

    .line 28
    check-cast v9, Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 29
    .line 30
    move-object v10, v1

    .line 31
    check-cast v10, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 32
    .line 33
    move-object v11, p2

    .line 34
    invoke-direct/range {v5 .. v11}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Landroidx/compose/foundation/pager/DefaultPagerState;Lorg/wikipedia/feed/personalization/PersonalizationViewModel;Lkotlin/coroutines/Continuation;)V

    .line 35
    .line 36
    .line 37
    return-object v5

    .line 38
    :pswitch_0
    move-object v11, p2

    .line 39
    new-instance v6, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;

    .line 40
    .line 41
    move-object v7, v4

    .line 42
    check-cast v7, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    .line 43
    .line 44
    move-object v8, v3

    .line 45
    check-cast v8, Landroidx/compose/ui/node/NodeCoordinator;

    .line 46
    .line 47
    move-object v9, v2

    .line 48
    check-cast v9, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    .line 49
    .line 50
    move-object v10, v1

    .line 51
    check-cast v10, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;

    .line 52
    .line 53
    invoke-direct/range {v6 .. v11}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/node/NodeCoordinator;Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;Lkotlin/coroutines/Continuation;)V

    .line 54
    .line 55
    .line 56
    iput-object p1, v6, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->L$0:Ljava/lang/Object;

    .line 57
    .line 58
    return-object v6

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0xb

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$parentRect:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->this$0:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$childCoordinates:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$boundsProvider:Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v7, 0x3

    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    check-cast v6, Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 20
    .line 21
    check-cast v5, Ljava/util/List;

    .line 22
    .line 23
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->L$0:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    if-eqz v8, :cond_0

    .line 35
    .line 36
    check-cast v4, Ljava/util/Map;

    .line 37
    .line 38
    invoke-virtual {v6}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    move-object v10, v0

    .line 51
    check-cast v10, Ljava/lang/String;

    .line 52
    .line 53
    const/4 v14, 0x0

    .line 54
    const/16 v15, 0xfc

    .line 55
    .line 56
    const-string v9, "impression"

    .line 57
    .line 58
    const/4 v11, 0x0

    .line 59
    const/4 v12, 0x0

    .line 60
    const/4 v13, 0x0

    .line 61
    invoke-static/range {v8 .. v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 62
    .line 63
    .line 64
    :cond_0
    check-cast v3, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 65
    .line 66
    invoke-virtual {v6}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lorg/wikipedia/feed/personalization/PersonalizationPage;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    sget-object v1, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    aget v0, v1, v0

    .line 89
    .line 90
    const/4 v1, 0x1

    .line 91
    const/4 v4, 0x2

    .line 92
    const/4 v5, 0x0

    .line 93
    if-eq v0, v1, :cond_3

    .line 94
    .line 95
    if-eq v0, v4, :cond_1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, v3, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 99
    .line 100
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 105
    .line 106
    iget-object v0, v0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->communityContent:Ljava/util/List;

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    new-instance v1, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1;

    .line 119
    .line 120
    invoke-direct {v1, v3, v7}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;I)V

    .line 121
    .line 122
    .line 123
    new-instance v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;

    .line 124
    .line 125
    invoke-direct {v2, v3, v5, v4}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 126
    .line 127
    .line 128
    invoke-static {v0, v1, v5, v2, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 129
    .line 130
    .line 131
    :cond_2
    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    new-instance v1, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1;

    .line 136
    .line 137
    const/4 v2, 0x5

    .line 138
    invoke-direct {v1, v3, v2}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;I)V

    .line 139
    .line 140
    .line 141
    new-instance v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;

    .line 142
    .line 143
    const/4 v6, 0x4

    .line 144
    invoke-direct {v2, v3, v5, v6}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 145
    .line 146
    .line 147
    invoke-static {v0, v1, v5, v2, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_3
    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    sget-object v1, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 156
    .line 157
    new-instance v6, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

    .line 158
    .line 159
    invoke-direct {v6, v1, v2}, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 160
    .line 161
    .line 162
    new-instance v1, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;

    .line 163
    .line 164
    invoke-direct {v1, v3, v5, v7}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 165
    .line 166
    .line 167
    invoke-static {v0, v6, v5, v1, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 168
    .line 169
    .line 170
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 171
    .line 172
    return-object v0

    .line 173
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    iget-object v0, v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->L$0:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 179
    .line 180
    new-instance v8, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 181
    .line 182
    move-object v9, v4

    .line 183
    check-cast v9, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    .line 184
    .line 185
    move-object v10, v5

    .line 186
    check-cast v10, Landroidx/compose/ui/node/NodeCoordinator;

    .line 187
    .line 188
    move-object v11, v6

    .line 189
    check-cast v11, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    .line 190
    .line 191
    const/16 v13, 0xc

    .line 192
    .line 193
    const/4 v12, 0x0

    .line 194
    invoke-direct/range {v8 .. v13}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 195
    .line 196
    .line 197
    invoke-static {v0, v12, v12, v8, v7}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 198
    .line 199
    .line 200
    new-instance v1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 201
    .line 202
    check-cast v3, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;

    .line 203
    .line 204
    invoke-direct {v1, v9, v3, v12, v2}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 205
    .line 206
    .line 207
    invoke-static {v0, v12, v12, v1, v7}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    return-object v0

    .line 212
    nop

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
