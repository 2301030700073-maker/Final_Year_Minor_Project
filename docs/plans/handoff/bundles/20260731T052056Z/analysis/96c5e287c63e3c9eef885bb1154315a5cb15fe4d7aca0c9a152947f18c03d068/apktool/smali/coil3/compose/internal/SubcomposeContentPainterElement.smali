.class public final Lcoil3/compose/internal/SubcomposeContentPainterElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0081\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcoil3/compose/internal/SubcomposeContentPainterElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Lcoil3/compose/internal/SubcomposeContentPainterNode;",
        "coil-compose-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final alignment:Landroidx/compose/ui/Alignment;

.field public final alpha:F

.field public final clipToBounds:Z

.field public final contentDescription:Ljava/lang/String;

.field public final contentScale:Landroidx/compose/ui/layout/ContentScale;

.field public final painter:Landroidx/compose/ui/graphics/painter/Painter;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->alignment:Landroidx/compose/ui/Alignment;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 9
    .line 10
    iput p4, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->alpha:F

    .line 11
    .line 12
    iput-boolean p5, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->clipToBounds:Z

    .line 13
    .line 14
    iput-object p6, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->contentDescription:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 7

    .line 1
    new-instance v0, Lcoil3/compose/internal/SubcomposeContentPainterNode;

    .line 2
    .line 3
    iget-object v5, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->contentDescription:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    iget-object v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->alignment:Landroidx/compose/ui/Alignment;

    .line 7
    .line 8
    iget-object v2, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 9
    .line 10
    iget v3, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->alpha:F

    .line 11
    .line 12
    iget-boolean v4, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->clipToBounds:Z

    .line 13
    .line 14
    invoke-direct/range {v0 .. v6}, Lcoil3/compose/internal/AbstractContentPainterNode;-><init>(Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FZLjava/lang/String;Lcoil3/compose/ConstraintsSizeResolver;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 18
    .line 19
    iput-object p0, v0, Lcoil3/compose/internal/SubcomposeContentPainterNode;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 20
    .line 21
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcoil3/compose/internal/SubcomposeContentPainterElement;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcoil3/compose/internal/SubcomposeContentPainterElement;

    .line 10
    .line 11
    iget-object v0, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 12
    .line 13
    iget-object v1, p1, Lcoil3/compose/internal/SubcomposeContentPainterElement;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->alignment:Landroidx/compose/ui/Alignment;

    .line 23
    .line 24
    iget-object v1, p1, Lcoil3/compose/internal/SubcomposeContentPainterElement;->alignment:Landroidx/compose/ui/Alignment;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-object v0, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 34
    .line 35
    iget-object v1, p1, Lcoil3/compose/internal/SubcomposeContentPainterElement;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    iget v0, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->alpha:F

    .line 45
    .line 46
    iget v1, p1, Lcoil3/compose/internal/SubcomposeContentPainterElement;->alpha:F

    .line 47
    .line 48
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    iget-boolean v0, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->clipToBounds:Z

    .line 56
    .line 57
    iget-boolean v1, p1, Lcoil3/compose/internal/SubcomposeContentPainterElement;->clipToBounds:Z

    .line 58
    .line 59
    if-eq v0, v1, :cond_6

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_6
    iget-object p0, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->contentDescription:Ljava/lang/String;

    .line 63
    .line 64
    iget-object p1, p1, Lcoil3/compose/internal/SubcomposeContentPainterElement;->contentDescription:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-nez p0, :cond_7

    .line 71
    .line 72
    :goto_0
    const/4 p0, 0x0

    .line 73
    return p0

    .line 74
    :cond_7
    :goto_1
    const/4 p0, 0x1

    .line 75
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->alignment:Landroidx/compose/ui/Alignment;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->alpha:F

    .line 28
    .line 29
    const/16 v2, 0x3c1

    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IFI)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-boolean v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->clipToBounds:Z

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    const/16 v1, 0x4cf

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/16 v1, 0x4d5

    .line 43
    .line 44
    :goto_0
    add-int/2addr v0, v1

    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 46
    .line 47
    iget-object p0, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->contentDescription:Ljava/lang/String;

    .line 48
    .line 49
    if-nez p0, :cond_1

    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    :goto_1
    add-int/2addr v0, p0

    .line 58
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SubcomposeContentPainterElement(painter="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", alignment="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->alignment:Landroidx/compose/ui/Alignment;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", contentScale="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", alpha="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->alpha:F

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", colorFilter=null, clipToBounds="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->clipToBounds:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", contentDescription="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->contentDescription:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p0, ")"

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 5

    .line 1
    check-cast p1, Lcoil3/compose/internal/SubcomposeContentPainterNode;

    .line 2
    .line 3
    iget-object v0, p1, Lcoil3/compose/internal/SubcomposeContentPainterNode;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput-object v2, p1, Lcoil3/compose/internal/SubcomposeContentPainterNode;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 20
    .line 21
    iget-object v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->alignment:Landroidx/compose/ui/Alignment;

    .line 22
    .line 23
    iput-object v1, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->alignment:Landroidx/compose/ui/Alignment;

    .line 24
    .line 25
    iget-object v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 26
    .line 27
    iput-object v1, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 28
    .line 29
    iget v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->alpha:F

    .line 30
    .line 31
    iput v1, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->alpha:F

    .line 32
    .line 33
    iget-boolean v1, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->clipToBounds:Z

    .line 34
    .line 35
    iput-boolean v1, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->clipToBounds:Z

    .line 36
    .line 37
    iget-object v1, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->contentDescription:Ljava/lang/String;

    .line 38
    .line 39
    iget-object p0, p0, Lcoil3/compose/internal/SubcomposeContentPainterElement;->contentDescription:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    iput-object p0, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->contentDescription:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p1}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    if-nez v0, :cond_1

    .line 53
    .line 54
    invoke-static {p1}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-static {p1}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
