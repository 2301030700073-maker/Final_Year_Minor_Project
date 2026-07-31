.class public final Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolverKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static final synthetic access$inferredCoilSize-BRTryo0(J)Lcoil3/size/Size;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolverKt;->inferredCoilSize-BRTryo0(J)Lcoil3/size/Size;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final inferredCoilSize-BRTryo0(J)Lcoil3/size/Size;
    .locals 5

    .line 1
    const-wide/16 v0, 0x3

    .line 2
    .line 3
    and-long/2addr v0, p0

    .line 4
    long-to-int v0, v0

    .line 5
    and-int/lit8 v1, v0, 0x1

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    shl-int/2addr v1, v2

    .line 9
    and-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    shr-int/2addr v0, v2

    .line 12
    mul-int/lit8 v0, v0, 0x3

    .line 13
    .line 14
    add-int/2addr v0, v1

    .line 15
    const/16 v1, 0x21

    .line 16
    .line 17
    shr-long v3, p0, v1

    .line 18
    .line 19
    long-to-int v1, v3

    .line 20
    add-int/lit8 v3, v0, 0xd

    .line 21
    .line 22
    shl-int v3, v2, v3

    .line 23
    .line 24
    sub-int/2addr v3, v2

    .line 25
    and-int/2addr v1, v3

    .line 26
    sub-int/2addr v1, v2

    .line 27
    add-int/lit8 v3, v0, 0x2e

    .line 28
    .line 29
    shr-long v3, p0, v3

    .line 30
    .line 31
    long-to-int v3, v3

    .line 32
    rsub-int/lit8 v0, v0, 0x12

    .line 33
    .line 34
    shl-int v0, v2, v0

    .line 35
    .line 36
    sub-int/2addr v0, v2

    .line 37
    and-int/2addr v0, v3

    .line 38
    sub-int/2addr v0, v2

    .line 39
    const/4 v3, 0x0

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    move v1, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v1, v3

    .line 45
    :goto_0
    if-nez v0, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v2, v3

    .line 49
    :goto_1
    or-int v0, v1, v2

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    return-object p0

    .line 55
    :cond_2
    new-instance v0, Lcoil3/size/Size;

    .line 56
    .line 57
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {v1}, Lcoil3/size/DimensionKt;->Dimension(I)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-static {v1}, Lcoil3/size/Dimension$Pixels;->box-impl(I)Lcoil3/size/Dimension$Pixels;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    sget-object v1, Lcoil3/size/Dimension$Undefined;->INSTANCE:Lcoil3/size/Dimension$Undefined;

    .line 77
    .line 78
    :goto_2
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedHeight-impl(J)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    invoke-static {p0}, Lcoil3/size/DimensionKt;->Dimension(I)I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    invoke-static {p0}, Lcoil3/size/Dimension$Pixels;->box-impl(I)Lcoil3/size/Dimension$Pixels;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    goto :goto_3

    .line 97
    :cond_4
    sget-object p0, Lcoil3/size/Dimension$Undefined;->INSTANCE:Lcoil3/size/Dimension$Undefined;

    .line 98
    .line 99
    :goto_3
    invoke-direct {v0, v1, p0}, Lcoil3/size/Size;-><init>(Lcoil3/size/Dimension;Lcoil3/size/Dimension;)V

    .line 100
    .line 101
    .line 102
    return-object v0
.end method
