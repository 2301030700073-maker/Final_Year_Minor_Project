.class public final Landroidx/compose/material3/RippleNodeFactory;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/foundation/IndicationNodeFactory;


# instance fields
.field public final bounded:Z

.field public final color:J

.field public final radius:F


# direct methods
.method public constructor <init>(FJZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p4, p0, Landroidx/compose/material3/RippleNodeFactory;->bounded:Z

    .line 5
    .line 6
    iput p1, p0, Landroidx/compose/material3/RippleNodeFactory;->radius:F

    .line 7
    .line 8
    iput-wide p2, p0, Landroidx/compose/material3/RippleNodeFactory;->color:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final create(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;)Landroidx/compose/ui/node/DelegatableNode;
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/material3/RippleNodeFactory$create$colorProducer$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/material3/RippleNodeFactory$create$colorProducer$1;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;

    .line 7
    .line 8
    iget-boolean v2, p0, Landroidx/compose/material3/RippleNodeFactory;->bounded:Z

    .line 9
    .line 10
    iget p0, p0, Landroidx/compose/material3/RippleNodeFactory;->radius:F

    .line 11
    .line 12
    invoke-direct {v1, p1, v2, p0, v0}, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZFLandroidx/compose/material3/RippleNodeFactory$create$colorProducer$1;)V

    .line 13
    .line 14
    .line 15
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/compose/material3/RippleNodeFactory;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    check-cast p1, Landroidx/compose/material3/RippleNodeFactory;

    .line 11
    .line 12
    iget-boolean v0, p1, Landroidx/compose/material3/RippleNodeFactory;->bounded:Z

    .line 13
    .line 14
    iget-boolean v1, p0, Landroidx/compose/material3/RippleNodeFactory;->bounded:Z

    .line 15
    .line 16
    if-eq v1, v0, :cond_2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    iget v0, p0, Landroidx/compose/material3/RippleNodeFactory;->radius:F

    .line 20
    .line 21
    iget v1, p1, Landroidx/compose/material3/RippleNodeFactory;->radius:F

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    :goto_0
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_3
    iget-wide v0, p1, Landroidx/compose/material3/RippleNodeFactory;->color:J

    .line 32
    .line 33
    sget p1, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 34
    .line 35
    iget-wide p0, p0, Landroidx/compose/material3/RippleNodeFactory;->color:J

    .line 36
    .line 37
    invoke-static {p0, p1, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/compose/material3/RippleNodeFactory;->bounded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x4cf

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x4d5

    .line 9
    .line 10
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 11
    .line 12
    iget v1, p0, Landroidx/compose/material3/RippleNodeFactory;->radius:F

    .line 13
    .line 14
    const/16 v2, 0x3c1

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IFI)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    sget v1, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 21
    .line 22
    iget-wide v1, p0, Landroidx/compose/material3/RippleNodeFactory;->color:J

    .line 23
    .line 24
    invoke-static {v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(J)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    add-int/2addr p0, v0

    .line 29
    return p0
.end method
