.class public abstract Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonDefaults;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 2
    .line 3
    sput-object v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 4
    .line 5
    return-void
.end method

.method public static outlinedButtonBorder-RIQooxk(ZJLandroidx/compose/runtime/Composer;II)Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonBorderStroke;
    .locals 2

    .line 1
    and-int/lit8 p4, p5, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    :cond_0
    and-int/lit8 p4, p5, 0x2

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    sget-wide p1, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 11
    .line 12
    :cond_1
    const p4, 0x3dcccccd    # 0.1f

    .line 13
    .line 14
    .line 15
    invoke-static {p4, p1, p2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 16
    .line 17
    .line 18
    move-result-wide p4

    .line 19
    invoke-static {p0, p3}, Landroidx/compose/material3/ButtonDefaults;->outlinedButtonBorder(ZLandroidx/compose/runtime/Composer;)Landroidx/compose/foundation/BorderStroke;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 24
    .line 25
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 32
    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move-wide p1, p4

    .line 37
    :goto_0
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 38
    .line 39
    .line 40
    iget p0, p3, Landroidx/compose/foundation/BorderStroke;->width:F

    .line 41
    .line 42
    new-instance p3, Landroidx/compose/foundation/BorderStroke;

    .line 43
    .line 44
    invoke-direct {p3, p0, v0}, Landroidx/compose/foundation/BorderStroke;-><init>(FLandroidx/compose/ui/graphics/Brush;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    new-instance p0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonBorderStroke;

    .line 48
    .line 49
    iget p1, p3, Landroidx/compose/foundation/BorderStroke;->width:F

    .line 50
    .line 51
    iget-object p2, p3, Landroidx/compose/foundation/BorderStroke;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 52
    .line 53
    invoke-direct {p0, p1, p2}, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonBorderStroke;-><init>(FLandroidx/compose/ui/graphics/Brush;)V

    .line 54
    .line 55
    .line 56
    return-object p0
.end method

.method public static outlinedButtonColors-5tl4gsc(JLandroidx/compose/runtime/Composer;I)Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonColors;
    .locals 15

    .line 1
    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 2
    .line 3
    and-int/lit8 v0, p3, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-wide v3, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-wide v3, p0

    .line 10
    :goto_0
    sget-object v0, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 11
    .line 12
    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 13
    .line 14
    move-object/from16 v5, p2

    .line 15
    .line 16
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroidx/compose/material3/ColorScheme;

    .line 23
    .line 24
    iget-object v5, v0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    .line 25
    .line 26
    if-nez v5, :cond_1

    .line 27
    .line 28
    new-instance v6, Landroidx/compose/material3/ButtonColors;

    .line 29
    .line 30
    sget-wide v7, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 31
    .line 32
    sget-object v5, Landroidx/compose/material3/tokens/ListTokens;->LabelTextColor$1:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 33
    .line 34
    invoke-static {v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v9

    .line 38
    sget-object v5, Landroidx/compose/material3/tokens/ListTokens;->DisabledLabelTextColor$1:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 39
    .line 40
    invoke-static {v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v11

    .line 44
    sget v5, Landroidx/compose/material3/tokens/ListTokens;->DisabledLabelTextOpacity$1:F

    .line 45
    .line 46
    invoke-static {v5, v11, v12}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide v13

    .line 50
    move-wide v11, v7

    .line 51
    invoke-direct/range {v6 .. v14}, Landroidx/compose/material3/ButtonColors;-><init>(JJJJ)V

    .line 52
    .line 53
    .line 54
    iput-object v6, v0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    .line 55
    .line 56
    move-object v0, v6

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move-object v0, v5

    .line 59
    :goto_1
    move-wide v5, v1

    .line 60
    move-wide v7, v1

    .line 61
    invoke-virtual/range {v0 .. v8}, Landroidx/compose/material3/ButtonColors;->copy-jRlVdoo(JJJJ)Landroidx/compose/material3/ButtonColors;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v5, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonColors;

    .line 66
    .line 67
    move-wide v11, v1

    .line 68
    iget-wide v1, v0, Landroidx/compose/material3/ButtonColors;->containerColor:J

    .line 69
    .line 70
    move-wide v9, v3

    .line 71
    iget-wide v3, v0, Landroidx/compose/material3/ButtonColors;->contentColor:J

    .line 72
    .line 73
    move-object v7, v5

    .line 74
    iget-wide v5, v0, Landroidx/compose/material3/ButtonColors;->disabledContainerColor:J

    .line 75
    .line 76
    iget-wide v13, v0, Landroidx/compose/material3/ButtonColors;->disabledContentColor:J

    .line 77
    .line 78
    move-object v0, v7

    .line 79
    move-wide v7, v13

    .line 80
    invoke-direct/range {v0 .. v12}, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonColors;-><init>(JJJJJJ)V

    .line 81
    .line 82
    .line 83
    return-object v0
.end method

.method public static outlinedShape(ZLapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonBorderStroke;Landroidx/compose/runtime/Composer;II)Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonShape;
    .locals 6

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    :cond_0
    move v0, p0

    .line 7
    sget-object p0, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 8
    .line 9
    sget-object p0, Landroidx/compose/material3/tokens/ListTokens;->ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 10
    .line 11
    invoke-static {p0, p2}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    and-int/lit8 p4, p4, 0x4

    .line 16
    .line 17
    if-eqz p4, :cond_1

    .line 18
    .line 19
    and-int/lit16 v4, p3, 0x1c0e

    .line 20
    .line 21
    const/4 v5, 0x6

    .line 22
    const-wide/16 v1, 0x0

    .line 23
    .line 24
    move-object v3, p2

    .line 25
    invoke-static/range {v0 .. v5}, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonDefaults;->outlinedButtonBorder-RIQooxk(ZJLandroidx/compose/runtime/Composer;II)Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonBorderStroke;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :cond_1
    new-instance p2, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonShape;

    .line 30
    .line 31
    invoke-direct {p2, p0, p1}, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonShape;-><init>(Landroidx/compose/ui/graphics/Shape;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonBorderStroke;)V

    .line 32
    .line 33
    .line 34
    return-object p2
.end method
