.class public abstract Landroidx/compose/material3/ButtonDefaults;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final MinHeight:F

.field public static final MinWidth:F

.field public static final TextButtonContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget v0, Landroidx/compose/material3/tokens/ListTokens;->LeadingSpace:F

    .line 2
    .line 3
    sget v1, Landroidx/compose/material3/tokens/ListTokens;->TrailingSpace:F

    .line 4
    .line 5
    new-instance v2, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 6
    .line 7
    const/high16 v3, 0x41000000    # 8.0f

    .line 8
    .line 9
    invoke-direct {v2, v0, v3, v1, v3}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 10
    .line 11
    .line 12
    sput-object v2, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 13
    .line 14
    const/high16 v0, 0x41800000    # 16.0f

    .line 15
    .line 16
    invoke-static {v0, v3, v1, v3}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 17
    .line 18
    .line 19
    new-instance v1, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 20
    .line 21
    const/high16 v2, 0x41400000    # 12.0f

    .line 22
    .line 23
    invoke-direct {v1, v2, v3, v2, v3}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 24
    .line 25
    .line 26
    sput-object v1, Landroidx/compose/material3/ButtonDefaults;->TextButtonContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 27
    .line 28
    invoke-static {v2, v3, v0, v3}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 29
    .line 30
    .line 31
    const/high16 v0, 0x42680000    # 58.0f

    .line 32
    .line 33
    sput v0, Landroidx/compose/material3/ButtonDefaults;->MinWidth:F

    .line 34
    .line 35
    const/high16 v0, 0x42200000    # 40.0f

    .line 36
    .line 37
    sput v0, Landroidx/compose/material3/ButtonDefaults;->MinHeight:F

    .line 38
    .line 39
    return-void
.end method

.method public static buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ButtonColors;
    .locals 20

    .line 1
    and-int/lit8 v0, p9, 0x4

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 6
    .line 7
    move-wide v7, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-wide/from16 v7, p4

    .line 10
    .line 11
    :goto_0
    and-int/lit8 v0, p9, 0x8

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 16
    .line 17
    move-wide v9, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-wide/from16 v9, p6

    .line 20
    .line 21
    :goto_1
    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 22
    .line 23
    move-object/from16 v1, p8

    .line 24
    .line 25
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroidx/compose/material3/ColorScheme;

    .line 32
    .line 33
    iget-object v1, v0, Landroidx/compose/material3/ColorScheme;->defaultButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    new-instance v11, Landroidx/compose/material3/ButtonColors;

    .line 38
    .line 39
    sget-object v1, Landroidx/compose/material3/tokens/ListTokens;->ContainerColor$3:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 40
    .line 41
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v12

    .line 45
    sget-object v1, Landroidx/compose/material3/tokens/ListTokens;->LabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 46
    .line 47
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v14

    .line 51
    sget-object v1, Landroidx/compose/material3/tokens/ListTokens;->DisabledContainerColor$1:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 52
    .line 53
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    sget v3, Landroidx/compose/material3/tokens/ListTokens;->DisabledContainerOpacity$1:F

    .line 58
    .line 59
    invoke-static {v3, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide v16

    .line 63
    sget-object v1, Landroidx/compose/material3/tokens/ListTokens;->DisabledLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 64
    .line 65
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v1

    .line 69
    sget v3, Landroidx/compose/material3/tokens/ListTokens;->DisabledLabelTextOpacity:F

    .line 70
    .line 71
    invoke-static {v3, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 72
    .line 73
    .line 74
    move-result-wide v18

    .line 75
    invoke-direct/range {v11 .. v19}, Landroidx/compose/material3/ButtonColors;-><init>(JJJJ)V

    .line 76
    .line 77
    .line 78
    iput-object v11, v0, Landroidx/compose/material3/ColorScheme;->defaultButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    .line 79
    .line 80
    move-object v2, v11

    .line 81
    :goto_2
    move-wide/from16 v3, p0

    .line 82
    .line 83
    move-wide/from16 v5, p2

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_2
    move-object v2, v1

    .line 87
    goto :goto_2

    .line 88
    :goto_3
    invoke-virtual/range {v2 .. v10}, Landroidx/compose/material3/ButtonColors;->copy-jRlVdoo(JJJJ)Landroidx/compose/material3/ButtonColors;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0
.end method

.method public static outlinedButtonBorder(ZLandroidx/compose/runtime/Composer;)Landroidx/compose/foundation/BorderStroke;
    .locals 5

    .line 1
    sget-object v0, Landroidx/compose/material3/tokens/ListTokens;->OutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 2
    .line 3
    sget v1, Landroidx/compose/material3/tokens/ListTokens;->OutlinedOutlineWidth:F

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const p0, -0x6b2473e

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p1}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    const p0, -0x6b0f108

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, p1}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    const p0, 0x3dcccccd    # 0.1f

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v3, v4}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {v1, v3, v4}, Landroidx/compose/foundation/ImageKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public static textButtonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ButtonColors;
    .locals 20

    .line 1
    and-int/lit8 v0, p9, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 6
    .line 7
    move-wide v3, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-wide/from16 v3, p0

    .line 10
    .line 11
    :goto_0
    and-int/lit8 v0, p9, 0x4

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 16
    .line 17
    move-wide v7, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-wide/from16 v7, p4

    .line 20
    .line 21
    :goto_1
    and-int/lit8 v0, p9, 0x8

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 26
    .line 27
    move-wide v9, v0

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move-wide/from16 v9, p6

    .line 30
    .line 31
    :goto_2
    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 32
    .line 33
    move-object/from16 v1, p8

    .line 34
    .line 35
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroidx/compose/material3/ColorScheme;

    .line 42
    .line 43
    iget-object v1, v0, Landroidx/compose/material3/ColorScheme;->defaultTextButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    .line 44
    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    new-instance v11, Landroidx/compose/material3/ButtonColors;

    .line 48
    .line 49
    sget-wide v12, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 50
    .line 51
    sget-object v1, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Primary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 52
    .line 53
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v14

    .line 57
    sget-object v1, Landroidx/compose/material3/tokens/ListTokens;->DisabledLabelColor$1:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 58
    .line 59
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    sget v5, Landroidx/compose/material3/tokens/ListTokens;->DisabledLabelOpacity:F

    .line 64
    .line 65
    invoke-static {v5, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 66
    .line 67
    .line 68
    move-result-wide v18

    .line 69
    move-wide/from16 v16, v12

    .line 70
    .line 71
    invoke-direct/range {v11 .. v19}, Landroidx/compose/material3/ButtonColors;-><init>(JJJJ)V

    .line 72
    .line 73
    .line 74
    iput-object v11, v0, Landroidx/compose/material3/ColorScheme;->defaultTextButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    .line 75
    .line 76
    move-object v2, v11

    .line 77
    :goto_3
    move-wide/from16 v5, p2

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_3
    move-object v2, v1

    .line 81
    goto :goto_3

    .line 82
    :goto_4
    invoke-virtual/range {v2 .. v10}, Landroidx/compose/material3/ButtonColors;->copy-jRlVdoo(JJJJ)Landroidx/compose/material3/ButtonColors;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method
