.class public final synthetic Lorg/wikipedia/yearinreview/YearInReviewActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/yearinreview/YearInReviewActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/yearinreview/YearInReviewActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/yearinreview/YearInReviewActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewActivity$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/yearinreview/YearInReviewActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/yearinreview/YearInReviewActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/yearinreview/YearInReviewActivity$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/yearinreview/YearInReviewActivity;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget v0, Lorg/wikipedia/yearinreview/YearInReviewActivity;->$r8$clinit:I

    .line 12
    .line 13
    iget-object p0, p0, Lorg/wikipedia/yearinreview/YearInReviewActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 14
    .line 15
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel;

    .line 20
    .line 21
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v3, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel;->handler:Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

    .line 26
    .line 27
    new-instance v4, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1;

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1;-><init>(Lorg/wikipedia/yearinreview/YearInReviewViewModel;Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v3, v5, v4, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 34
    .line 35
    .line 36
    return-object v2

    .line 37
    :pswitch_0
    sget v0, Lorg/wikipedia/yearinreview/YearInReviewActivity;->$r8$clinit:I

    .line 38
    .line 39
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 40
    .line 41
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getYearInReviewModelData()Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/16 v3, 0x7e9

    .line 46
    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    iget v0, v0, Lorg/wikipedia/yearinreview/YearInReviewModel;->slideViewedCount:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    if-lt v0, v1, :cond_1

    .line 64
    .line 65
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getYearInReviewSurveyState()Lorg/wikipedia/yearinreview/YearInReviewSurveyState;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sget-object v1, Lorg/wikipedia/yearinreview/YearInReviewSurveyState;->NOT_TRIGGERED:Lorg/wikipedia/yearinreview/YearInReviewSurveyState;

    .line 70
    .line 71
    if-ne v0, v1, :cond_1

    .line 72
    .line 73
    sget-object v0, Lorg/wikipedia/yearinreview/YearInReviewSurveyState;->SHOULD_SHOW:Lorg/wikipedia/yearinreview/YearInReviewSurveyState;

    .line 74
    .line 75
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setYearInReviewSurveyState(Lorg/wikipedia/yearinreview/YearInReviewSurveyState;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 79
    .line 80
    .line 81
    return-object v2

    .line 82
    :pswitch_1
    sget v0, Lorg/wikipedia/yearinreview/YearInReviewActivity;->$r8$clinit:I

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 85
    .line 86
    .line 87
    return-object v2

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
