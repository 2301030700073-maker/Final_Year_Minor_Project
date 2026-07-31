.class public final Landroidx/glance/CombinedGlanceModifier;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/glance/GlanceModifier;


# instance fields
.field public final inner:Landroidx/glance/GlanceModifier;

.field public final outer:Landroidx/glance/GlanceModifier;


# direct methods
.method public constructor <init>(Landroidx/glance/GlanceModifier;Landroidx/glance/GlanceModifier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/glance/CombinedGlanceModifier;->outer:Landroidx/glance/GlanceModifier;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/glance/CombinedGlanceModifier;->inner:Landroidx/glance/GlanceModifier;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final all()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/glance/CombinedGlanceModifier;->outer:Landroidx/glance/GlanceModifier;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/glance/GlanceModifier;->all()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/glance/CombinedGlanceModifier;->inner:Landroidx/glance/GlanceModifier;

    .line 10
    .line 11
    invoke-interface {p0}, Landroidx/glance/GlanceModifier;->all()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final any(Lkotlin/jvm/functions/Function1;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/glance/CombinedGlanceModifier;->outer:Landroidx/glance/GlanceModifier;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/glance/GlanceModifier;->any(Lkotlin/jvm/functions/Function1;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/glance/CombinedGlanceModifier;->inner:Landroidx/glance/GlanceModifier;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Landroidx/glance/GlanceModifier;->any(Lkotlin/jvm/functions/Function1;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/glance/CombinedGlanceModifier;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroidx/glance/CombinedGlanceModifier;

    .line 6
    .line 7
    iget-object v0, p1, Landroidx/glance/CombinedGlanceModifier;->outer:Landroidx/glance/GlanceModifier;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/glance/CombinedGlanceModifier;->outer:Landroidx/glance/GlanceModifier;

    .line 10
    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/glance/CombinedGlanceModifier;->inner:Landroidx/glance/GlanceModifier;

    .line 18
    .line 19
    iget-object p1, p1, Landroidx/glance/CombinedGlanceModifier;->inner:Landroidx/glance/GlanceModifier;

    .line 20
    .line 21
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/glance/CombinedGlanceModifier;->outer:Landroidx/glance/GlanceModifier;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroidx/glance/GlanceModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Landroidx/glance/CombinedGlanceModifier;->inner:Landroidx/glance/GlanceModifier;

    .line 8
    .line 9
    invoke-interface {p0, p1, p2}, Landroidx/glance/GlanceModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/glance/CombinedGlanceModifier;->outer:Landroidx/glance/GlanceModifier;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object p0, p0, Landroidx/glance/CombinedGlanceModifier;->inner:Landroidx/glance/GlanceModifier;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    mul-int/lit8 p0, p0, 0x1f

    .line 14
    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
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

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    sget-object v2, Landroidx/glance/ImageKt$Image$2$1;->INSTANCE$1:Landroidx/glance/ImageKt$Image$2$1;

    .line 11
    .line 12
    invoke-virtual {p0, v1, v2}, Landroidx/glance/CombinedGlanceModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/String;

    .line 17
    .line 18
    const/16 v1, 0x5d

    .line 19
    .line 20
    invoke-static {v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
