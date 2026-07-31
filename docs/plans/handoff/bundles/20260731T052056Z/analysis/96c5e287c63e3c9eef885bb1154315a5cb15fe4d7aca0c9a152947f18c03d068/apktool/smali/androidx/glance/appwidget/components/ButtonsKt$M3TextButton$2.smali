.class public final Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$changed:I

.field public final synthetic $backgroundTint:Landroidx/glance/unit/ColorProvider;

.field public final synthetic $contentColor:Landroidx/glance/unit/ColorProvider;

.field public final synthetic $enabled:Z

.field public final synthetic $icon:Landroidx/glance/AndroidResourceImageProvider;

.field public final synthetic $maxLines:I

.field public final synthetic $modifier:Landroidx/glance/GlanceModifier;

.field public final synthetic $onClick:Landroidx/glance/appwidget/action/RunCallbackAction;

.field public final synthetic $text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/glance/appwidget/action/RunCallbackAction;Landroidx/glance/GlanceModifier;ZLandroidx/glance/AndroidResourceImageProvider;Landroidx/glance/unit/ColorProvider;Landroidx/glance/unit/ColorProvider;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$2;->$text:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$2;->$onClick:Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$2;->$modifier:Landroidx/glance/GlanceModifier;

    .line 6
    .line 7
    iput-boolean p4, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$2;->$enabled:Z

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$2;->$icon:Landroidx/glance/AndroidResourceImageProvider;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$2;->$contentColor:Landroidx/glance/unit/ColorProvider;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$2;->$backgroundTint:Landroidx/glance/unit/ColorProvider;

    .line 14
    .line 15
    iput p8, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$2;->$maxLines:I

    .line 16
    .line 17
    iput p9, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$2;->$$changed:I

    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v8, p1

    .line 2
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    iget p1, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$2;->$$changed:I

    .line 10
    .line 11
    or-int/lit8 v9, p1, 0x1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$2;->$text:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$2;->$onClick:Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$2;->$modifier:Landroidx/glance/GlanceModifier;

    .line 18
    .line 19
    iget-boolean v3, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$2;->$enabled:Z

    .line 20
    .line 21
    iget-object v4, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$2;->$icon:Landroidx/glance/AndroidResourceImageProvider;

    .line 22
    .line 23
    iget-object v5, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$2;->$contentColor:Landroidx/glance/unit/ColorProvider;

    .line 24
    .line 25
    iget-object v6, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$2;->$backgroundTint:Landroidx/glance/unit/ColorProvider;

    .line 26
    .line 27
    iget v7, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$2;->$maxLines:I

    .line 28
    .line 29
    invoke-static/range {v0 .. v9}, Lcoil3/util/ContextsKt;->M3TextButton(Ljava/lang/String;Landroidx/glance/appwidget/action/RunCallbackAction;Landroidx/glance/GlanceModifier;ZLandroidx/glance/AndroidResourceImageProvider;Landroidx/glance/unit/ColorProvider;Landroidx/glance/unit/ColorProvider;ILandroidx/compose/runtime/GapComposer;I)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method
