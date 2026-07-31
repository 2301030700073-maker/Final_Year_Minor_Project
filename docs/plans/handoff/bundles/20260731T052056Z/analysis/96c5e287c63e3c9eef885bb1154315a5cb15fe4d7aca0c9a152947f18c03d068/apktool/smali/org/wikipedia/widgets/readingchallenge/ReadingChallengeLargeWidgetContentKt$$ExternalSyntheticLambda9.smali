.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroidx/glance/appwidget/action/RunCallbackAction;

.field public final synthetic f$2:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/glance/appwidget/action/RunCallbackAction;Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;JLjava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda9;->f$1:Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda9;->f$2:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 9
    .line 10
    iput-wide p4, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda9;->f$3:J

    .line 11
    .line 12
    iput-object p6, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda9;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p7, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda9;->f$5:Lkotlin/jvm/functions/Function2;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    check-cast p1, Landroidx/glance/appwidget/lazy/LazyListKt$applyListScope$listScopeImpl$1;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;

    .line 7
    .line 8
    const/4 v6, 0x2

    .line 9
    iget-object v1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda9;->f$1:Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 10
    .line 11
    iget-object v2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda9;->f$2:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda9;->f$3:J

    .line 14
    .line 15
    iget-object v5, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda9;->f$4:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;-><init>(Landroidx/glance/appwidget/action/RunCallbackAction;Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;JLjava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    const v7, 0x4dd00b99    # 4.3630262E8f

    .line 24
    .line 25
    .line 26
    invoke-direct {v5, v0, v6, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v5}, Lcoil3/size/ViewSizeResolver$-CC;->item$default(Landroidx/glance/appwidget/lazy/LazyListKt$applyListScope$listScopeImpl$1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lorg/wikipedia/compose/components/WikiButtonsKt$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    iget-object v5, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda9;->f$5:Lkotlin/jvm/functions/Function2;

    .line 35
    .line 36
    invoke-direct {v0, v6, v5}, Lorg/wikipedia/compose/components/WikiButtonsKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 37
    .line 38
    .line 39
    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 40
    .line 41
    const v7, 0x31e6a602

    .line 42
    .line 43
    .line 44
    invoke-direct {v5, v0, v6, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v5}, Lcoil3/size/ViewSizeResolver$-CC;->item$default(Landroidx/glance/appwidget/lazy/LazyListKt$applyListScope$listScopeImpl$1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 48
    .line 49
    .line 50
    sget-object v0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->lambda$-1715926239:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 51
    .line 52
    invoke-static {p1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->item$default(Landroidx/glance/appwidget/lazy/LazyListKt$applyListScope$listScopeImpl$1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 53
    .line 54
    .line 55
    iget-object v12, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz v12, :cond_0

    .line 58
    .line 59
    new-instance v7, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;

    .line 60
    .line 61
    const/4 v13, 0x3

    .line 62
    move-object v8, v1

    .line 63
    move-object v9, v2

    .line 64
    move-wide v10, v3

    .line 65
    invoke-direct/range {v7 .. v13}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;-><init>(Landroidx/glance/appwidget/action/RunCallbackAction;Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;JLjava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 69
    .line 70
    const v0, -0x2f6723e9

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v7, v6, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p0}, Lcoil3/size/ViewSizeResolver$-CC;->item$default(Landroidx/glance/appwidget/lazy/LazyListKt$applyListScope$listScopeImpl$1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 80
    .line 81
    return-object p0
.end method
