.class public final Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardElevation$ElevatedCardElevation;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardElevation;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of p0, p1, Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardElevation$ElevatedCardElevation;

    .line 5
    .line 6
    if-nez p0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 10
    .line 11
    invoke-static {p0, p0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    invoke-static {p0, p0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    invoke-static {p0, p0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_4

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_4
    const/high16 p1, 0x40400000    # 3.0f

    .line 33
    .line 34
    invoke-static {p1, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_5

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_5
    const/high16 p1, 0x41000000    # 8.0f

    .line 42
    .line 43
    invoke-static {p1, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_6

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_6
    invoke-static {p0, p0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_7

    .line 55
    .line 56
    :goto_0
    const/4 p0, 0x0

    .line 57
    return p0

    .line 58
    :cond_7
    :goto_1
    const/4 p0, 0x1

    .line 59
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

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
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/high16 v2, 0x40400000    # 3.0f

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/high16 v2, 0x41000000    # 8.0f

    .line 25
    .line 26
    invoke-static {v0, v2, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    add-int/2addr p0, v0

    .line 35
    return p0
.end method

.method public final toMaterial3CardElevation(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/CardElevation;
    .locals 9

    .line 1
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const p0, 0x6dd2d175

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    and-int/lit8 v0, p0, 0x1

    .line 11
    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget v0, Landroidx/compose/material3/tokens/ListTokens;->ContainerElevation:F

    .line 17
    .line 18
    move v3, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v1

    .line 21
    :goto_0
    and-int/lit8 v0, p0, 0x2

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget v0, Landroidx/compose/material3/tokens/ListTokens;->PressedContainerElevation:F

    .line 26
    .line 27
    move v4, v0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v4, v1

    .line 30
    :goto_1
    and-int/lit8 v0, p0, 0x4

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    sget v0, Landroidx/compose/material3/tokens/ListTokens;->FocusContainerElevation:F

    .line 35
    .line 36
    move v5, v0

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move v5, v1

    .line 39
    :goto_2
    and-int/lit8 v0, p0, 0x8

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    sget v0, Landroidx/compose/material3/tokens/ListTokens;->HoverContainerElevation:F

    .line 44
    .line 45
    :goto_3
    move v6, v0

    .line 46
    goto :goto_4

    .line 47
    :cond_3
    const/high16 v0, 0x40400000    # 3.0f

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :goto_4
    and-int/lit8 v0, p0, 0x10

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    sget v0, Landroidx/compose/material3/tokens/ListTokens;->DraggedContainerElevation:F

    .line 55
    .line 56
    :goto_5
    move v7, v0

    .line 57
    goto :goto_6

    .line 58
    :cond_4
    const/high16 v0, 0x41000000    # 8.0f

    .line 59
    .line 60
    goto :goto_5

    .line 61
    :goto_6
    and-int/lit8 v0, p0, 0x20

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    sget v1, Landroidx/compose/material3/tokens/ListTokens;->DisabledContainerElevation:F

    .line 66
    .line 67
    :cond_5
    move v8, v1

    .line 68
    new-instance v2, Landroidx/compose/material3/CardElevation;

    .line 69
    .line 70
    invoke-direct/range {v2 .. v8}, Landroidx/compose/material3/CardElevation;-><init>(FFFFFF)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 74
    .line 75
    .line 76
    return-object v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/high16 v3, 0x40400000    # 3.0f

    .line 16
    .line 17
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/high16 v4, 0x41000000    # 8.0f

    .line 22
    .line 23
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v5, ", pressedElevation="

    .line 32
    .line 33
    const-string v6, ", focusedElevation="

    .line 34
    .line 35
    const-string v7, "ElevatedCardElevation(defaultElevation="

    .line 36
    .line 37
    invoke-static {v7, v0, v5, v1, v6}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, ", hoveredElevation="

    .line 42
    .line 43
    const-string v5, ", draggedElevation="

    .line 44
    .line 45
    invoke-static {v0, v2, v1, v3, v5}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", disabledElevation="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p0, ")"

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method
