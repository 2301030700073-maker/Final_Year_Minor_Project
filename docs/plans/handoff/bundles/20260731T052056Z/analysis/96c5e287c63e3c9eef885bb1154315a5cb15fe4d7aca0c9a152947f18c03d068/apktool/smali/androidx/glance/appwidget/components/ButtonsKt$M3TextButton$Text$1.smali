.class public final Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$Text$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $contentColor:Landroidx/glance/unit/ColorProvider;

.field public final synthetic $maxLines:I

.field public final synthetic $text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/glance/unit/ColorProvider;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$Text$1;->$text:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$Text$1;->$contentColor:Landroidx/glance/unit/ColorProvider;

    .line 4
    .line 5
    iput p3, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$Text$1;->$maxLines:I

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
    .locals 7

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
    move-result p1

    .line 10
    and-int/lit8 p1, p1, 0x3

    .line 11
    .line 12
    const/4 p2, 0x2

    .line 13
    if-ne p1, p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->getSkipping()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    new-instance v2, Landroidx/glance/text/TextStyle;

    .line 27
    .line 28
    const/16 p1, 0xe

    .line 29
    .line 30
    invoke-static {p1}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 31
    .line 32
    .line 33
    move-result-wide p1

    .line 34
    new-instance v0, Landroidx/compose/ui/unit/TextUnit;

    .line 35
    .line 36
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Landroidx/glance/text/FontWeight;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    const/16 p2, 0x78

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$Text$1;->$contentColor:Landroidx/glance/unit/ColorProvider;

    .line 47
    .line 48
    invoke-direct {v2, v1, v0, p1, p2}, Landroidx/glance/text/TextStyle;-><init>(Landroidx/glance/unit/ColorProvider;Landroidx/compose/ui/unit/TextUnit;Landroidx/glance/text/FontWeight;I)V

    .line 49
    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x2

    .line 53
    iget-object v0, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$Text$1;->$text:Ljava/lang/String;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    iget v3, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$Text$1;->$maxLines:I

    .line 57
    .line 58
    invoke-static/range {v0 .. v6}, Lkotlin/ResultKt;->Text(Ljava/lang/String;Landroidx/glance/GlanceModifier;Landroidx/glance/text/TextStyle;ILandroidx/compose/runtime/GapComposer;II)V

    .line 59
    .line 60
    .line 61
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 62
    .line 63
    return-object p0
.end method
