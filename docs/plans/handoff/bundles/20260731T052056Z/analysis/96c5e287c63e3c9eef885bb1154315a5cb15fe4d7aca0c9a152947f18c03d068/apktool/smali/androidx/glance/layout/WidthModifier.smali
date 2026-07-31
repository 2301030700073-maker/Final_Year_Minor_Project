.class public final Landroidx/glance/layout/WidthModifier;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/glance/GlanceModifier$Element;


# instance fields
.field public final width:Landroidx/glance/unit/Dimension;


# direct methods
.method public constructor <init>(Landroidx/glance/unit/Dimension;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/glance/layout/WidthModifier;->width:Landroidx/glance/unit/Dimension;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final all()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final any(Lkotlin/jvm/functions/Function1;)Z
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p2, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final synthetic then(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcoil3/size/ViewSizeResolver$-CC;->$default$then(Landroidx/glance/GlanceModifier;Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
