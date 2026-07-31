.class public final synthetic Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Landroidx/compose/foundation/pager/DefaultPagerState;

.field public final synthetic f$4:Lorg/wikipedia/feed/personalization/PersonalizationViewModel;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Landroidx/compose/foundation/pager/DefaultPagerState;Lorg/wikipedia/feed/personalization/PersonalizationViewModel;I)V
    .locals 0

    .line 1
    iput p6, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda12;->f$0:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda12;->f$1:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda12;->f$2:Ljava/util/List;

    .line 8
    .line 9
    iput-object p4, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda12;->f$3:Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 10
    .line 11
    iput-object p5, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda12;->f$4:Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda12;->f$4:Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda12;->f$3:Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda12;->f$2:Ljava/util/List;

    .line 10
    .line 11
    iget-object v5, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda12;->f$1:Ljava/util/Map;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda12;->f$0:Landroid/content/Context;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    if-eqz v6, :cond_0

    .line 23
    .line 24
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    move-object v8, p0

    .line 37
    check-cast v8, Ljava/lang/String;

    .line 38
    .line 39
    const/4 v12, 0x0

    .line 40
    const/16 v13, 0xf4

    .line 41
    .line 42
    const-string v7, "click"

    .line 43
    .line 44
    const/4 v9, 0x0

    .line 45
    const-string v10, "retry"

    .line 46
    .line 47
    const/4 v11, 0x0

    .line 48
    invoke-static/range {v6 .. v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object p0, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 52
    .line 53
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 58
    .line 59
    iget-object p0, p0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->selectedTopics:Ljava/util/List;

    .line 60
    .line 61
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;

    .line 66
    .line 67
    if-eqz p0, :cond_1

    .line 68
    .line 69
    invoke-virtual {v2, p0}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->loadArticlesByTopic(Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v2}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->loadInitialArticles()V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-object v1

    .line 77
    :pswitch_0
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    if-eqz p0, :cond_2

    .line 82
    .line 83
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    move-object v5, v0

    .line 96
    check-cast v5, Ljava/lang/String;

    .line 97
    .line 98
    const/4 v9, 0x0

    .line 99
    const/16 v10, 0xf4

    .line 100
    .line 101
    const-string v4, "click"

    .line 102
    .line 103
    const/4 v6, 0x0

    .line 104
    const-string v7, "deselect_all"

    .line 105
    .line 106
    const/4 v8, 0x0

    .line 107
    move-object v3, p0

    .line 108
    invoke-static/range {v3 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 109
    .line 110
    .line 111
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    new-instance v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1;

    .line 119
    .line 120
    const/4 v3, 0x2

    .line 121
    invoke-direct {v0, v2, v3}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;I)V

    .line 122
    .line 123
    .line 124
    new-instance v4, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;

    .line 125
    .line 126
    const/4 v5, 0x1

    .line 127
    const/4 v6, 0x0

    .line 128
    invoke-direct {v4, v2, v6, v5}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 129
    .line 130
    .line 131
    invoke-static {p0, v0, v6, v4, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 132
    .line 133
    .line 134
    return-object v1

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
