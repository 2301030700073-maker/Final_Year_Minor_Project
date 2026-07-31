.class public final Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $Text:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic $contentColor:Landroidx/glance/unit/ColorProvider;

.field public final synthetic $icon:Landroidx/glance/AndroidResourceImageProvider;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/unit/ColorProvider;)V
    .locals 0

    .line 1
    iput-object p3, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1$1;->$contentColor:Landroidx/glance/unit/ColorProvider;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1$1;->$icon:Landroidx/glance/AndroidResourceImageProvider;

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1$1;->$Text:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 6
    .line 7
    const/4 p1, 0x3

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Landroidx/glance/layout/RowScopeImplInstance;

    .line 2
    .line 3
    move-object v4, p2

    .line 4
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/Number;

    .line 7
    .line 8
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 9
    .line 10
    .line 11
    new-instance v3, Landroidx/glance/ColorFilter;

    .line 12
    .line 13
    new-instance p1, Landroidx/glance/TintColorFilterParams;

    .line 14
    .line 15
    iget-object p2, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1$1;->$contentColor:Landroidx/glance/unit/ColorProvider;

    .line 16
    .line 17
    invoke-direct {p1, p2}, Landroidx/glance/TintColorFilterParams;-><init>(Landroidx/glance/unit/ColorProvider;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, p1}, Landroidx/glance/ColorFilter;-><init>(Landroidx/glance/TintColorFilterParams;)V

    .line 21
    .line 22
    .line 23
    const/high16 p1, 0x41900000    # 18.0f

    .line 24
    .line 25
    invoke-static {p1}, Landroidx/compose/ui/unit/DpKt;->size-3ABfNKs(F)Landroidx/glance/GlanceModifier;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const v5, 0x8030

    .line 30
    .line 31
    .line 32
    const/16 v6, 0x8

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1$1;->$icon:Landroidx/glance/AndroidResourceImageProvider;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-static/range {v0 .. v6}, Lcoil3/util/ContextsKt;->Image-GCr5PR4(Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;ILandroidx/glance/ColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Landroidx/glance/layout/WidthModifier;

    .line 41
    .line 42
    new-instance p2, Landroidx/glance/unit/Dimension$Dp;

    .line 43
    .line 44
    const/high16 p3, 0x41000000    # 8.0f

    .line 45
    .line 46
    invoke-direct {p2, p3}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, p2}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 50
    .line 51
    .line 52
    const/4 p2, 0x0

    .line 53
    invoke-static {p1, v4, p2}, Landroidx/work/Operation$State;->Spacer(Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x6

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object p0, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1$1;->$Text:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 62
    .line 63
    invoke-virtual {p0, v4, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p0
.end method
