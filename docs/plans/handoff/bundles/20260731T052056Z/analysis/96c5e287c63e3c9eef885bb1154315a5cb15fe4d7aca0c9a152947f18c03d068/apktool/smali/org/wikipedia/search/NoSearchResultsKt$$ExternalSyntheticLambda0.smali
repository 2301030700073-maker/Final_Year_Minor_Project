.class public final synthetic Lorg/wikipedia/search/NoSearchResultsKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/search/NoSearchResultsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/search/NoSearchResultsKt$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/search/NoSearchResultsKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lorg/wikipedia/search/NoSearchResultsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/search/NoSearchResultsKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/search/NoSearchResultsKt$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    new-instance v4, Lorg/wikipedia/language/LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/language/LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3;-><init>(Ljava/util/List;I)V

    .line 26
    .line 27
    .line 28
    new-instance v6, Lorg/wikipedia/language/LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$4;

    .line 29
    .line 30
    invoke-direct {v6, v5, v2, p0}, Lorg/wikipedia/language/LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$4;-><init>(ILjava/lang/Object;Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 34
    .line 35
    const v2, 0x2fd4df92

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v6, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1, v0, v2, v4, p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->items(ILandroidx/compose/runtime/Latch$await$2$2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    new-instance v4, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda3;

    .line 54
    .line 55
    invoke-direct {v4, p0, v2, v3}, Lorg/wikipedia/feed/news/NewsModuleKt$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;I)V

    .line 56
    .line 57
    .line 58
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 59
    .line 60
    const v2, 0x47d2d220    # 107940.25f

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v4, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v0, p0}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->items$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;ILandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 67
    .line 68
    .line 69
    return-object v1

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
