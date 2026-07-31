.class public abstract Landroidx/compose/material3/ButtonDefaults;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final ButtonWithIconContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final MinHeight:F

.field public static final MinWidth:F

.field public static final TextButtonContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Landroidx/compose/material3/tokens/ButtonSmallTokens;->ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 2
    .line 3
    new-instance v0, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 4
    .line 5
    sget v1, Landroidx/room/Room;->LeadingSpace:F

    .line 6
    .line 7
    const/high16 v2, 0x41000000    # 8.0f

    .line 8
    .line 9
    sget v3, Landroidx/room/Room;->TrailingSpace:F

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 15
    .line 16
    new-instance v0, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 17
    .line 18
    const/high16 v1, 0x41800000    # 16.0f

    .line 19
    .line 20
    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Landroidx/compose/material3/ButtonDefaults;->ButtonWithIconContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 24
    .line 25
    new-instance v0, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 26
    .line 27
    const/high16 v1, 0x41400000    # 12.0f

    .line 28
    .line 29
    invoke-direct {v0, v1, v2, v1, v2}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Landroidx/compose/material3/ButtonDefaults;->TextButtonContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    cmpl-float v1, v2, v0

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x1

    .line 39
    if-ltz v1, :cond_0

    .line 40
    .line 41
    move v1, v4

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v1, v3

    .line 44
    :goto_0
    cmpl-float v0, v2, v0

    .line 45
    .line 46
    if-ltz v0, :cond_1

    .line 47
    .line 48
    move v3, v4

    .line 49
    :cond_1
    and-int v0, v1, v3

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    const-string v0, "Padding must be non-negative"

    .line 54
    .line 55
    invoke-static {v0}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    const/high16 v0, 0x42680000    # 58.0f

    .line 59
    .line 60
    sput v0, Landroidx/compose/material3/ButtonDefaults;->MinWidth:F

    .line 61
    .line 62
    const/high16 v0, 0x42200000    # 40.0f

    .line 63
    .line 64
    sput v0, Landroidx/compose/material3/ButtonDefaults;->MinHeight:F

    .line 65
    .line 66
    return-void
.end method

.method public static buttonColors-ro_MJ88(JJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/ButtonColors;
    .locals 18

    .line 1
    and-int/lit8 v0, p5, 0x2

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 6
    .line 7
    move-wide v5, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-wide/from16 v5, p2

    .line 10
    .line 11
    :goto_0
    sget-wide v7, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 12
    .line 13
    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 14
    .line 15
    move-object/from16 v1, p4

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/compose/material3/ColorScheme;

    .line 22
    .line 23
    iget-object v1, v0, Landroidx/compose/material3/ColorScheme;->defaultButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    new-instance v9, Landroidx/compose/material3/ButtonColors;

    .line 28
    .line 29
    sget-object v1, Landroidx/compose/material3/tokens/FilledButtonTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 30
    .line 31
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v10

    .line 35
    sget-object v1, Landroidx/compose/material3/tokens/FilledButtonTokens;->LabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 36
    .line 37
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v12

    .line 41
    sget-object v1, Landroidx/compose/material3/tokens/FilledButtonTokens;->DisabledContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 42
    .line 43
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    sget v3, Landroidx/compose/material3/tokens/FilledButtonTokens;->DisabledContainerOpacity:F

    .line 48
    .line 49
    invoke-static {v3, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v14

    .line 53
    sget-object v1, Landroidx/compose/material3/tokens/FilledButtonTokens;->DisabledLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 54
    .line 55
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    sget v3, Landroidx/compose/material3/tokens/FilledButtonTokens;->DisabledLabelTextOpacity:F

    .line 60
    .line 61
    invoke-static {v3, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 62
    .line 63
    .line 64
    move-result-wide v16

    .line 65
    invoke-direct/range {v9 .. v17}, Landroidx/compose/material3/ButtonColors;-><init>(JJJJ)V

    .line 66
    .line 67
    .line 68
    iput-object v9, v0, Landroidx/compose/material3/ColorScheme;->defaultButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    .line 69
    .line 70
    move-object v2, v9

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    move-object v2, v1

    .line 73
    :goto_1
    move-wide v9, v7

    .line 74
    move-wide/from16 v3, p0

    .line 75
    .line 76
    invoke-virtual/range {v2 .. v10}, Landroidx/compose/material3/ButtonColors;->copy-jRlVdoo(JJJJ)Landroidx/compose/material3/ButtonColors;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    return-object v0
.end method

.method public static filledTonalButtonColors-ro_MJ88(JJLandroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/ButtonColors;
    .locals 16

    .line 1
    sget-wide v5, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 4
    .line 5
    move-object/from16 v1, p4

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/compose/material3/ColorScheme;

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/compose/material3/ColorScheme;->defaultFilledTonalButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v7, Landroidx/compose/material3/ButtonColors;

    .line 18
    .line 19
    sget-object v1, Landroidx/compose/material3/tokens/FilledTonalButtonTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v8

    .line 25
    sget-object v1, Landroidx/compose/material3/tokens/FilledTonalButtonTokens;->LabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v10

    .line 31
    sget-object v1, Landroidx/compose/material3/tokens/FilledTonalButtonTokens;->DisabledContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 32
    .line 33
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    const v3, 0x3df5c28f    # 0.12f

    .line 38
    .line 39
    .line 40
    invoke-static {v3, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v12

    .line 44
    sget-object v1, Landroidx/compose/material3/tokens/FilledTonalButtonTokens;->DisabledLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 45
    .line 46
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    const v3, 0x3ec28f5c    # 0.38f

    .line 51
    .line 52
    .line 53
    invoke-static {v3, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 54
    .line 55
    .line 56
    move-result-wide v14

    .line 57
    invoke-direct/range {v7 .. v15}, Landroidx/compose/material3/ButtonColors;-><init>(JJJJ)V

    .line 58
    .line 59
    .line 60
    iput-object v7, v0, Landroidx/compose/material3/ColorScheme;->defaultFilledTonalButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    .line 61
    .line 62
    move-object v0, v7

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move-object v0, v1

    .line 65
    :goto_0
    move-wide v7, v5

    .line 66
    move-wide/from16 v1, p0

    .line 67
    .line 68
    move-wide/from16 v3, p2

    .line 69
    .line 70
    invoke-virtual/range {v0 .. v8}, Landroidx/compose/material3/ButtonColors;->copy-jRlVdoo(JJJJ)Landroidx/compose/material3/ButtonColors;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method

.method public static getDefaultOutlinedButtonColors$material3(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ButtonColors;
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroidx/compose/material3/ButtonColors;

    .line 6
    .line 7
    sget-wide v2, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/material3/tokens/OutlinedButtonTokens;->LabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    sget-object v0, Landroidx/compose/material3/tokens/OutlinedButtonTokens;->DisabledLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 16
    .line 17
    invoke-static {p0, v0}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    sget v0, Landroidx/compose/material3/tokens/OutlinedButtonTokens;->DisabledLabelTextOpacity:F

    .line 22
    .line 23
    invoke-static {v0, v6, v7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide v8

    .line 27
    move-wide v6, v2

    .line 28
    invoke-direct/range {v1 .. v9}, Landroidx/compose/material3/ButtonColors;-><init>(JJJJ)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_0
    return-object v0
.end method

.method public static getDefaultTextButtonColors$material3(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ButtonColors;
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/compose/material3/ColorScheme;->defaultTextButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroidx/compose/material3/ButtonColors;

    .line 6
    .line 7
    sget-wide v2, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Primary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    sget-object v0, Landroidx/compose/material3/tokens/TextButtonTokens;->DisabledLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 16
    .line 17
    invoke-static {p0, v0}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    sget v0, Landroidx/compose/material3/tokens/TextButtonTokens;->DisabledLabelOpacity:F

    .line 22
    .line 23
    invoke-static {v0, v6, v7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide v8

    .line 27
    move-wide v6, v2

    .line 28
    invoke-direct/range {v1 .. v9}, Landroidx/compose/material3/ButtonColors;-><init>(JJJJ)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Landroidx/compose/material3/ColorScheme;->defaultTextButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_0
    return-object v0
.end method

.method public static outlinedButtonColors-ro_MJ88(JLandroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/ButtonColors;
    .locals 9

    .line 1
    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Landroidx/compose/material3/ColorScheme;

    .line 10
    .line 11
    invoke-static {p2}, Landroidx/compose/material3/ButtonDefaults;->getDefaultOutlinedButtonColors$material3(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ButtonColors;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-wide v5, v1

    .line 16
    move-wide v7, v1

    .line 17
    move-wide v3, p0

    .line 18
    invoke-virtual/range {v0 .. v8}, Landroidx/compose/material3/ButtonColors;->copy-jRlVdoo(JJJJ)Landroidx/compose/material3/ButtonColors;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static textButtonColors-ro_MJ88(JLandroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/ButtonColors;
    .locals 9

    .line 1
    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Landroidx/compose/material3/ColorScheme;

    .line 10
    .line 11
    invoke-static {p2}, Landroidx/compose/material3/ButtonDefaults;->getDefaultTextButtonColors$material3(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ButtonColors;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-wide v5, v1

    .line 16
    move-wide v7, v1

    .line 17
    move-wide v3, p0

    .line 18
    invoke-virtual/range {v0 .. v8}, Landroidx/compose/material3/ButtonColors;->copy-jRlVdoo(JJJJ)Landroidx/compose/material3/ButtonColors;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
