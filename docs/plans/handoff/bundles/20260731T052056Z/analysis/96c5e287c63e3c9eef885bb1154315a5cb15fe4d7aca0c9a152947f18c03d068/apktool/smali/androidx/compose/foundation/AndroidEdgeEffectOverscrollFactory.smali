.class public final Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final context:Landroid/content/Context;

.field public final density:Landroidx/compose/ui/unit/Density;

.field public final glowColor:J

.field public final glowDrawPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/compose/ui/unit/Density;JLandroidx/compose/foundation/layout/PaddingValuesImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->density:Landroidx/compose/ui/unit/Density;

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->glowColor:J

    .line 9
    .line 10
    iput-object p5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->glowDrawPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_2

    .line 4
    :cond_0
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 v0, 0x0

    .line 12
    :goto_0
    const-class v1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    check-cast p1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->context:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v1, p1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->context:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->density:Landroidx/compose/ui/unit/Density;

    .line 38
    .line 39
    iget-object v1, p1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->density:Landroidx/compose/ui/unit/Density;

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_4
    iget-wide v0, p1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->glowColor:J

    .line 49
    .line 50
    sget v2, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 51
    .line 52
    iget-wide v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->glowColor:J

    .line 53
    .line 54
    invoke-static {v2, v3, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_5

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_5
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->glowDrawPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 62
    .line 63
    iget-object p1, p1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->glowDrawPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/PaddingValuesImpl;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-nez p0, :cond_6

    .line 70
    .line 71
    :goto_1
    const/4 p0, 0x0

    .line 72
    return p0

    .line 73
    :cond_6
    :goto_2
    const/4 p0, 0x1

    .line 74
    return p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->density:Landroidx/compose/ui/unit/Density;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/2addr v2, v0

    .line 17
    mul-int/2addr v2, v1

    .line 18
    sget v0, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 19
    .line 20
    iget-wide v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->glowColor:J

    .line 21
    .line 22
    invoke-static {v2, v1, v3, v4}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->glowDrawPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/PaddingValuesImpl;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    add-int/2addr p0, v0

    .line 33
    return p0
.end method
