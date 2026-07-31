.class public final Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/compose/ui/unit/Density;


# instance fields
.field public _density:Landroidx/compose/foundation/layout/FlexBoxKt$DefaultDensity$1;

.field public _maxContentSize:I

.field public _minMainAxisSize:I

.field public crossAxisSize:I

.field public crossPosition:I

.field public flexBaseSize:I

.field public hypotheticalMainSize:I

.field public isFrozen:Z

.field public mainPosition:I

.field public measurable:Landroidx/compose/ui/layout/Measurable;

.field public placeable:Landroidx/compose/ui/layout/Placeable;

.field public targetMainSize:I


# virtual methods
.method public final getDensity()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_density:Landroidx/compose/foundation/layout/FlexBoxKt$DefaultDensity$1;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/high16 p0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    return p0
.end method

.method public final getFontScale()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_density:Landroidx/compose/foundation/layout/FlexBoxKt$DefaultDensity$1;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/high16 p0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    return p0
.end method

.method public final getMinMainAxisSize$foundation_layout(Z)I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_minMainAxisSize:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->measurable:Landroidx/compose/ui/layout/Measurable;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const v2, 0x7fffffff

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, v2}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {v0, v2}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    :cond_1
    :goto_0
    iput v1, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_minMainAxisSize:I

    .line 28
    .line 29
    :cond_2
    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_minMainAxisSize:I

    .line 30
    .line 31
    return p0
.end method

.method public final synthetic roundToPx-0680j_4(F)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final toDp-GaN1DYA(J)F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_density:Landroidx/compose/foundation/layout/FlexBoxKt$DefaultDensity$1;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2, p0}, Landroidx/compose/ui/Modifier$-CC;->$default$toDp-GaN1DYA(JLandroidx/compose/ui/unit/Density;)F

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final toDp-u2uoSUM(F)F
    .locals 0

    .line 9
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getDensity()F

    const/high16 p0, 0x3f800000    # 1.0f

    div-float/2addr p1, p0

    return p1
.end method

.method public final toDp-u2uoSUM(I)F
    .locals 0

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getDensity()F

    .line 3
    .line 4
    .line 5
    const/high16 p0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    div-float/2addr p1, p0

    .line 8
    return p1
.end method

.method public final synthetic toDpSize-k-rfVVM(J)J
    .locals 0

    .line 1
    invoke-static {p1, p2, p0}, Landroidx/compose/ui/Modifier$-CC;->$default$toDpSize-k-rfVVM(JLandroidx/compose/ui/unit/Density;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public final synthetic toPx--R2X_6o(J)F
    .locals 0

    .line 1
    invoke-static {p1, p2, p0}, Landroidx/compose/ui/Modifier$-CC;->$default$toPx--R2X_6o(JLandroidx/compose/ui/unit/Density;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final toPx-0680j_4(F)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getDensity()F

    .line 2
    .line 3
    .line 4
    const/high16 p0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    mul-float/2addr p0, p1

    .line 7
    return p0
.end method

.method public final synthetic toSize-XkaWNTQ(J)J
    .locals 0

    .line 1
    invoke-static {p1, p2, p0}, Landroidx/compose/ui/Modifier$-CC;->$default$toSize-XkaWNTQ(JLandroidx/compose/ui/unit/Density;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public final toSp-0xMU5do(F)J
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_density:Landroidx/compose/foundation/layout/FlexBoxKt$DefaultDensity$1;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroidx/compose/ui/Modifier$-CC;->$default$toSp-0xMU5do(Landroidx/compose/ui/unit/Density;F)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method public final toSp-kPz2Gy4(F)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->toDp-u2uoSUM(F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->toSp-0xMU5do(F)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method
