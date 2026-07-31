.class public final Landroidx/glance/appwidget/translators/ImageTranslatorApi31Impl;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final INSTANCE:Landroidx/glance/appwidget/translators/ImageTranslatorApi31Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/glance/appwidget/translators/ImageTranslatorApi31Impl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/glance/appwidget/translators/ImageTranslatorApi31Impl;->INSTANCE:Landroidx/glance/appwidget/translators/ImageTranslatorApi31Impl;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final applyTintColorFilter(Landroidx/glance/appwidget/TranslationContext;Landroid/widget/RemoteViews;Landroidx/glance/unit/ColorProvider;I)V
    .locals 3

    .line 1
    instance-of p0, p3, Landroidx/glance/color/DayNightColorProvider;

    .line 2
    .line 3
    const-string v0, "setColorFilter"

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    check-cast p3, Landroidx/glance/color/DayNightColorProvider;

    .line 8
    .line 9
    iget-wide p0, p3, Landroidx/glance/color/DayNightColorProvider;->day:J

    .line 10
    .line 11
    iget-wide v1, p3, Landroidx/glance/color/DayNightColorProvider;->night:J

    .line 12
    .line 13
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {p2, p4, v0, p0, p1}, Landroidx/core/widget/RemoteViewsCompat$Api31Impl;->setColorInt(Landroid/widget/RemoteViews;ILjava/lang/String;II)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    instance-of p0, p3, Landroidx/glance/unit/ResourceColorProvider;

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    check-cast p3, Landroidx/glance/unit/ResourceColorProvider;

    .line 33
    .line 34
    iget p0, p3, Landroidx/glance/unit/ResourceColorProvider;->resId:I

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {p2, p4, v0, p0}, Landroidx/core/widget/RemoteViewsCompat$Api31Impl;->setColor(Landroid/widget/RemoteViews;ILjava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-object p0, p1, Landroidx/glance/appwidget/TranslationContext;->context:Landroid/content/Context;

    .line 44
    .line 45
    invoke-interface {p3, p0}, Landroidx/glance/unit/ColorProvider;->getColor-vNxB06k(Landroid/content/Context;)J

    .line 46
    .line 47
    .line 48
    move-result-wide p0

    .line 49
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p4, v0, p0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
