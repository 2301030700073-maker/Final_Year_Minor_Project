.class public final Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final colors:Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeVariants;

.field public final images:Lnet/thunderbird/core/ui/compose/theme2/ThemeImageVariants;

.field public final shapes:Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;

.field public final typography:Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeVariants;Lnet/thunderbird/core/ui/compose/theme2/ThemeImageVariants;Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->colors:Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeVariants;

    .line 11
    .line 12
    iput-object p2, p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->images:Lnet/thunderbird/core/ui/compose/theme2/ThemeImageVariants;

    .line 13
    .line 14
    iput-object p3, p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->shapes:Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;

    .line 15
    .line 16
    iput-object p4, p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->typography:Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;

    .line 10
    .line 11
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->colors:Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeVariants;

    .line 12
    .line 13
    iget-object v1, p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->colors:Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeVariants;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeVariants;->equals(Ljava/lang/Object;)Z

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
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/default/DefaultThemeSizesKt;->defaultThemeElevations:Lnet/thunderbird/core/ui/compose/theme2/ThemeElevations;

    .line 23
    .line 24
    invoke-virtual {v0, v0}, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevations;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->images:Lnet/thunderbird/core/ui/compose/theme2/ThemeImageVariants;

    .line 32
    .line 33
    iget-object v1, p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->images:Lnet/thunderbird/core/ui/compose/theme2/ThemeImageVariants;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/ui/compose/theme2/ThemeImageVariants;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_4

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_4
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->shapes:Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;

    .line 43
    .line 44
    iget-object v1, p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->shapes:Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;

    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_5

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_5
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/default/DefaultThemeSizesKt;->defaultThemeSizes:Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 54
    .line 55
    invoke-virtual {v0, v0}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_6

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_6
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/default/DefaultThemeSizesKt;->defaultThemeSpacings:Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 63
    .line 64
    invoke-virtual {v0, v0}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_7

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_7
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->typography:Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 72
    .line 73
    iget-object p1, p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->typography:Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 74
    .line 75
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-nez p0, :cond_8

    .line 80
    .line 81
    :goto_0
    const/4 p0, 0x0

    .line 82
    return p0

    .line 83
    :cond_8
    :goto_1
    const/4 p0, 0x1

    .line 84
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->colors:Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeVariants;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeVariants;->hashCode()I

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
    const/4 v2, 0x0

    .line 11
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    mul-int/2addr v2, v1

    .line 16
    const/high16 v3, 0x3f800000    # 1.0f

    .line 17
    .line 18
    invoke-static {v2, v3, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/high16 v3, 0x40400000    # 3.0f

    .line 23
    .line 24
    invoke-static {v2, v3, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/high16 v3, 0x40c00000    # 6.0f

    .line 29
    .line 30
    invoke-static {v2, v3, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/high16 v3, 0x41000000    # 8.0f

    .line 35
    .line 36
    invoke-static {v2, v3, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/high16 v3, 0x41400000    # 12.0f

    .line 41
    .line 42
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    add-int/2addr v3, v2

    .line 47
    add-int/2addr v3, v0

    .line 48
    mul-int/2addr v3, v1

    .line 49
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->images:Lnet/thunderbird/core/ui/compose/theme2/ThemeImageVariants;

    .line 50
    .line 51
    invoke-virtual {v0}, Lnet/thunderbird/core/ui/compose/theme2/ThemeImageVariants;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    add-int/2addr v0, v3

    .line 56
    mul-int/2addr v0, v1

    .line 57
    iget-object v2, p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->shapes:Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;

    .line 58
    .line 59
    invoke-virtual {v2}, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    add-int/2addr v2, v0

    .line 64
    mul-int/2addr v2, v1

    .line 65
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/default/DefaultThemeSizesKt;->defaultThemeSizes:Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 66
    .line 67
    invoke-virtual {v0}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;->hashCode()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    add-int/2addr v0, v2

    .line 72
    mul-int/2addr v0, v1

    .line 73
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/default/DefaultThemeSizesKt;->defaultThemeSpacings:Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 74
    .line 75
    invoke-virtual {v2}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;->hashCode()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    add-int/2addr v2, v0

    .line 80
    mul-int/2addr v2, v1

    .line 81
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->typography:Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 82
    .line 83
    invoke-virtual {p0}, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    add-int/2addr p0, v2

    .line 88
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/default/DefaultThemeSizesKt;->defaultThemeElevations:Lnet/thunderbird/core/ui/compose/theme2/ThemeElevations;

    .line 2
    .line 3
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/default/DefaultThemeSizesKt;->defaultThemeSizes:Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 4
    .line 5
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/default/DefaultThemeSizesKt;->defaultThemeSpacings:Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v4, "ThemeConfig(colors="

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v4, p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->colors:Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeVariants;

    .line 15
    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v4, ", elevations="

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, ", images="

    .line 28
    .line 29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->images:Lnet/thunderbird/core/ui/compose/theme2/ThemeImageVariants;

    .line 33
    .line 34
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, ", shapes="

    .line 38
    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->shapes:Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;

    .line 43
    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, ", sizes="

    .line 48
    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, ", spacings="

    .line 56
    .line 57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, ", typography="

    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeConfig;->typography:Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 69
    .line 70
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p0, ")"

    .line 74
    .line 75
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method
