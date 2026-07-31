.class public final Landroidx/glance/appwidget/EmittableIgnoreResult;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/glance/Emittable;


# instance fields
.field public modifier:Landroidx/glance/GlanceModifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/glance/GlanceModifier$Companion;->$$INSTANCE:Landroidx/glance/GlanceModifier$Companion;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/glance/appwidget/EmittableIgnoreResult;->modifier:Landroidx/glance/GlanceModifier;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final copy()Landroidx/glance/Emittable;
    .locals 1

    .line 1
    new-instance v0, Landroidx/glance/appwidget/EmittableIgnoreResult;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/glance/appwidget/EmittableIgnoreResult;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/glance/appwidget/EmittableIgnoreResult;->modifier:Landroidx/glance/GlanceModifier;

    .line 7
    .line 8
    iput-object p0, v0, Landroidx/glance/appwidget/EmittableIgnoreResult;->modifier:Landroidx/glance/GlanceModifier;

    .line 9
    .line 10
    return-object v0
.end method

.method public final getModifier()Landroidx/glance/GlanceModifier;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/glance/appwidget/EmittableIgnoreResult;->modifier:Landroidx/glance/GlanceModifier;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setModifier(Landroidx/glance/GlanceModifier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/glance/appwidget/EmittableIgnoreResult;->modifier:Landroidx/glance/GlanceModifier;

    .line 2
    .line 3
    return-void
.end method
