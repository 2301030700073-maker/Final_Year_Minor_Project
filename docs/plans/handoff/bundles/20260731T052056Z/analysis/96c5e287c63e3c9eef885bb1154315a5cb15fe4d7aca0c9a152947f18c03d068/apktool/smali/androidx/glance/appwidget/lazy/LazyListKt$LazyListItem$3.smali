.class public final Landroidx/glance/appwidget/lazy/LazyListKt$LazyListItem$3;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $alignment:Landroidx/glance/layout/Alignment;

.field public final synthetic $content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic $itemId:J


# direct methods
.method public constructor <init>(JLandroidx/glance/layout/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/glance/appwidget/lazy/LazyListKt$LazyListItem$3;->$itemId:J

    .line 2
    .line 3
    iput-object p3, p0, Landroidx/glance/appwidget/lazy/LazyListKt$LazyListItem$3;->$alignment:Landroidx/glance/layout/Alignment;

    .line 4
    .line 5
    iput-object p4, p0, Landroidx/glance/appwidget/lazy/LazyListKt$LazyListItem$3;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    iget-object v3, p0, Landroidx/glance/appwidget/lazy/LazyListKt$LazyListItem$3;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 10
    .line 11
    const/16 v5, 0x181

    .line 12
    .line 13
    iget-wide v0, p0, Landroidx/glance/appwidget/lazy/LazyListKt$LazyListItem$3;->$itemId:J

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/glance/appwidget/lazy/LazyListKt$LazyListItem$3;->$alignment:Landroidx/glance/layout/Alignment;

    .line 16
    .line 17
    invoke-static/range {v0 .. v5}, Lkotlin/ResultKt;->LazyListItem(JLandroidx/glance/layout/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method
