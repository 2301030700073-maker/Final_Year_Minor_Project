.class public final synthetic Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Ljava/util/List;

    .line 16
    .line 17
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 18
    .line 19
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    new-instance v5, Lorg/wikipedia/language/LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3;

    .line 29
    .line 30
    const/4 v6, 0x7

    .line 31
    invoke-direct {v5, p0, v6}, Lorg/wikipedia/language/LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3;-><init>(Ljava/util/List;I)V

    .line 32
    .line 33
    .line 34
    new-instance v6, Lorg/wikipedia/watchlist/WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4;

    .line 35
    .line 36
    invoke-direct {v6, p0, v4, v3}, Lorg/wikipedia/watchlist/WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    .line 37
    .line 38
    .line 39
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 40
    .line 41
    const v3, 0x2fd4df92

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v6, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p1, v0, v2, v5, p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->items(ILandroidx/compose/runtime/Latch$await$2$2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 49
    .line 50
    .line 51
    return-object v1

    .line 52
    :pswitch_0
    check-cast p0, Landroidx/paging/compose/LazyPagingItems;

    .line 53
    .line 54
    check-cast v3, Ljava/lang/String;

    .line 55
    .line 56
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/paging/compose/LazyPagingItems;->getItemCount()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    new-instance v5, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;

    .line 66
    .line 67
    const/4 v6, 0x3

    .line 68
    invoke-direct {v5, p0, v4, v3, v6}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 69
    .line 70
    .line 71
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 72
    .line 73
    const v3, -0x3825654c

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v5, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1, v0, p0}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->items$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;ILandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 80
    .line 81
    .line 82
    return-object v1

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
