.class public abstract Landroidx/compose/material3/SurfaceKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final LocalAbsoluteTonalElevation:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroidx/compose/material3/SurfaceKt;->LocalAbsoluteTonalElevation:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 14
    .line 15
    return-void
.end method

.method public static final Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 2

    .line 1
    and-int/lit8 p8, p9, 0x2

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    sget-object p1, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p8, p9, 0x8

    .line 8
    .line 9
    if-eqz p8, :cond_1

    .line 10
    .line 11
    invoke-static {p2, p3, p7}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;)J

    .line 12
    .line 13
    .line 14
    move-result-wide p4

    .line 15
    :cond_1
    move-object v0, p7

    .line 16
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    sget-object p7, Landroidx/compose/material3/SurfaceKt;->LocalAbsoluteTonalElevation:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 19
    .line 20
    invoke-virtual {v0, p7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p8

    .line 24
    check-cast p8, Landroidx/compose/ui/unit/Dp;

    .line 25
    .line 26
    iget p8, p8, Landroidx/compose/ui/unit/Dp;->value:F

    .line 27
    .line 28
    const/4 p9, 0x0

    .line 29
    add-float/2addr p8, p9

    .line 30
    sget-object p9, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 31
    .line 32
    new-instance v1, Landroidx/compose/ui/graphics/Color;

    .line 33
    .line 34
    invoke-direct {v1, p4, p5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p9, v1}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    new-instance p5, Landroidx/compose/ui/unit/Dp;

    .line 42
    .line 43
    invoke-direct {p5, p8}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p7, p5}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 47
    .line 48
    .line 49
    move-result-object p5

    .line 50
    const/4 p7, 0x2

    .line 51
    new-array v1, p7, [Landroidx/compose/runtime/ProvidedValue;

    .line 52
    .line 53
    const/4 p7, 0x0

    .line 54
    aput-object p4, v1, p7

    .line 55
    .line 56
    const/4 p4, 0x1

    .line 57
    aput-object p5, v1, p4

    .line 58
    .line 59
    move-object p9, p6

    .line 60
    move-wide p5, p2

    .line 61
    new-instance p2, Landroidx/compose/material3/SurfaceKt$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    move p7, p8

    .line 64
    const/4 p8, 0x0

    .line 65
    move-object p3, p0

    .line 66
    move-object p4, p1

    .line 67
    invoke-direct/range {p2 .. p9}, Landroidx/compose/material3/SurfaceKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 68
    .line 69
    .line 70
    const p0, 0x1923bae6

    .line 71
    .line 72
    .line 73
    invoke-static {p0, p2, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const/16 p1, 0x38

    .line 78
    .line 79
    invoke-static {v1, p0, v0, p1}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public static final surface-XO-JAsU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JF)Landroidx/compose/ui/Modifier;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p4, v0

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const v2, 0x7e7df

    .line 10
    .line 11
    .line 12
    invoke-static {v1, p4, p1, v0, v2}, Landroidx/compose/ui/graphics/Brush;->graphicsLayer-_6ThJ44$default(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZI)Landroidx/compose/ui/Modifier;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p4, v1

    .line 18
    :goto_0
    invoke-interface {p0, p4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0, p2, p3, p1}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0, p1}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static final surfaceColorAtElevation-CLU3JFs(JFLandroidx/compose/runtime/GapComposer;)J
    .locals 9

    .line 1
    sget-object v0, Landroidx/compose/material3/MaterialThemeKt;->_localMaterialTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/material3/MaterialTheme$Values;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/compose/material3/MaterialTheme$Values;->colorScheme:Landroidx/compose/material3/ColorScheme;

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/material3/ColorSchemeKt;->LocalTonalElevationEnabled:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 12
    .line 13
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    check-cast p3, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surface:J

    .line 24
    .line 25
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_4

    .line 30
    .line 31
    if-eqz p3, :cond_4

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    invoke-static {p2, p0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    return-wide v1

    .line 41
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 42
    .line 43
    add-float/2addr p2, p1

    .line 44
    float-to-double p2, p2

    .line 45
    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    .line 46
    .line 47
    .line 48
    move-result-wide p2

    .line 49
    double-to-float p2, p2

    .line 50
    const/high16 p3, 0x40900000    # 4.5f

    .line 51
    .line 52
    mul-float/2addr p2, p3

    .line 53
    const/high16 p3, 0x40000000    # 2.0f

    .line 54
    .line 55
    add-float/2addr p2, p3

    .line 56
    const/high16 p3, 0x42c80000    # 100.0f

    .line 57
    .line 58
    div-float/2addr p2, p3

    .line 59
    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->surfaceTint:J

    .line 60
    .line 61
    invoke-static {v3, v4, p2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JF)J

    .line 62
    .line 63
    .line 64
    move-result-wide p2

    .line 65
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {p2, p3, v0}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 70
    .line 71
    .line 72
    move-result-wide p2

    .line 73
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    sub-float/2addr p1, v3

    .line 82
    mul-float v4, v0, p1

    .line 83
    .line 84
    add-float/2addr v4, v3

    .line 85
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    cmpg-float v7, v4, p0

    .line 94
    .line 95
    if-nez v7, :cond_1

    .line 96
    .line 97
    move v6, p0

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    mul-float/2addr v5, v3

    .line 100
    mul-float/2addr v6, v0

    .line 101
    mul-float/2addr v6, p1

    .line 102
    add-float/2addr v6, v5

    .line 103
    div-float/2addr v6, v4

    .line 104
    :goto_0
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    if-nez v7, :cond_2

    .line 113
    .line 114
    move v8, p0

    .line 115
    goto :goto_1

    .line 116
    :cond_2
    mul-float/2addr v5, v3

    .line 117
    mul-float/2addr v8, v0

    .line 118
    mul-float/2addr v8, p1

    .line 119
    add-float/2addr v8, v5

    .line 120
    div-float/2addr v8, v4

    .line 121
    :goto_1
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    if-nez v7, :cond_3

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    mul-float/2addr p2, v3

    .line 133
    mul-float/2addr p3, v0

    .line 134
    mul-float/2addr p3, p1

    .line 135
    add-float/2addr p3, p2

    .line 136
    div-float p0, p3, v4

    .line 137
    .line 138
    :goto_2
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {v6, v8, p0, v4, p1}, Landroidx/compose/ui/graphics/Brush;->UncheckedColor(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 143
    .line 144
    .line 145
    move-result-wide p0

    .line 146
    :cond_4
    return-wide p0
.end method
