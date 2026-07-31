.class public final Landroidx/compose/material3/RippleNodeFactory;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/foundation/IndicationNodeFactory;


# instance fields
.field public final bounded:Z

.field public final color:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Landroidx/compose/material3/RippleNodeFactory;->bounded:Z

    .line 5
    .line 6
    iput-wide p1, p0, Landroidx/compose/material3/RippleNodeFactory;->color:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final create(Landroidx/compose/foundation/interaction/InteractionSource;)Landroidx/compose/ui/node/DelegatableNode;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/widget/PopupMenu$1;

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/PopupMenu$1;-><init>(Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;

    .line 9
    .line 10
    iget-boolean p0, p0, Landroidx/compose/material3/RippleNodeFactory;->bounded:Z

    .line 11
    .line 12
    invoke-direct {v1, p1, p0, v0}, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;ZLandroidx/appcompat/widget/PopupMenu$1;)V

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
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 20
    .line 21
    invoke-static {v0, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    :goto_0
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_3
    iget-wide v0, p0, Landroidx/compose/material3/RippleNodeFactory;->color:J

    .line 30
    .line 31
    iget-wide p0, p1, Landroidx/compose/material3/RippleNodeFactory;->color:J

    .line 32
    .line 33
    invoke-static {v0, v1, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
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
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 13
    .line 14
    const/16 v2, 0x3c1

    .line 15
    .line 16
    invoke-static {v1, v0, v2}, Landroidx/compose/ui/Modifier$-CC;->m(FII)I

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
    invoke-static {v1, v2}, Lkotlin/ULong;->hashCode-impl(J)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    add-int/2addr p0, v0

    .line 29
    return p0
.end method

.method public final rememberUpdatedInstance(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/GapComposer;)V
    .locals 0

    .line 1
    const p0, 0x4af582f5    # 8044922.5f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
