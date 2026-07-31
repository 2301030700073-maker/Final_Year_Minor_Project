.class public final synthetic Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    iget-object p0, p0, Lorg/wikipedia/readinglist/RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v0, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivityKt$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    invoke-direct {v0, p0, v3}, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivityKt$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;I)V

    .line 20
    .line 21
    .line 22
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 23
    .line 24
    const v5, 0x5e36665c

    .line 25
    .line 26
    .line 27
    invoke-direct {v4, v0, v3, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-static {p1, v0, v4, v2}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 32
    .line 33
    .line 34
    const v2, 0x2fd4df92

    .line 35
    .line 36
    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    new-instance v5, Lorg/wikipedia/language/LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3;

    .line 44
    .line 45
    const/4 v6, 0x5

    .line 46
    invoke-direct {v5, p0, v6}, Lorg/wikipedia/language/LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3;-><init>(Ljava/util/List;I)V

    .line 47
    .line 48
    .line 49
    new-instance v6, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundActivityKt$CategoryTable$lambda$0$0$$inlined$items$default$4;

    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    invoke-direct {v6, p0, v7}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundActivityKt$CategoryTable$lambda$0$0$$inlined$items$default$4;-><init>(Ljava/util/List;I)V

    .line 53
    .line 54
    .line 55
    new-instance v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 56
    .line 57
    invoke-direct {v7, v6, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v4, v0, v5, v7}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->items(ILandroidx/compose/runtime/Latch$await$2$2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    if-eqz p0, :cond_1

    .line 64
    .line 65
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    new-instance v5, Lorg/wikipedia/language/LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3;

    .line 70
    .line 71
    const/4 v6, 0x6

    .line 72
    invoke-direct {v5, p0, v6}, Lorg/wikipedia/language/LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3;-><init>(Ljava/util/List;I)V

    .line 73
    .line 74
    .line 75
    new-instance v6, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundActivityKt$CategoryTable$lambda$0$0$$inlined$items$default$4;

    .line 76
    .line 77
    invoke-direct {v6, p0, v3}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundActivityKt$CategoryTable$lambda$0$0$$inlined$items$default$4;-><init>(Ljava/util/List;I)V

    .line 78
    .line 79
    .line 80
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 81
    .line 82
    invoke-direct {p0, v6, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v4, v0, v5, p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->items(ILandroidx/compose/runtime/Latch$await$2$2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-object v1

    .line 89
    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;

    .line 95
    .line 96
    invoke-direct {v0, v2, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 100
    .line 101
    const v2, 0x35d7f33f

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, v0, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p1, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->intervals:Lokhttp3/internal/http/StatusLine;

    .line 108
    .line 109
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;

    .line 110
    .line 111
    sget-object v2, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->DefaultSpan:Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda0;

    .line 112
    .line 113
    sget-object v3, Landroidx/compose/foundation/lazy/grid/LazyGridScope$items$1;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridScope$items$1;

    .line 114
    .line 115
    invoke-direct {v0, v2, v3, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 116
    .line 117
    .line 118
    const/4 p0, 0x4

    .line 119
    invoke-virtual {p1, p0, v0}, Lokhttp3/internal/http/StatusLine;->addInterval(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V

    .line 120
    .line 121
    .line 122
    return-object v1

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
