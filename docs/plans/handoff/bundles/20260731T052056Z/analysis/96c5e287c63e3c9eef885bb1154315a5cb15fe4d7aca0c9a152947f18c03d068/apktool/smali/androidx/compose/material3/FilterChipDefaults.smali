.class public abstract Landroidx/compose/material3/FilterChipDefaults;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final Height:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/tokens/FilterChipTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 2
    .line 3
    const/high16 v0, 0x42000000    # 32.0f

    .line 4
    .line 5
    sput v0, Landroidx/compose/material3/FilterChipDefaults;->Height:F

    .line 6
    .line 7
    return-void
.end method

.method public static getDefaultFilterChipColors$material3(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/SelectableChipColors;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/material3/ColorScheme;->defaultFilterChipColorsCached:Landroidx/compose/material3/SelectableChipColors;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v2, Landroidx/compose/material3/SelectableChipColors;

    .line 8
    .line 9
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/material3/tokens/FilterChipTokens;->UnselectedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    sget-object v1, Landroidx/compose/material3/tokens/FilterChipTokens;->UnselectedLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v7

    .line 23
    sget-object v1, Landroidx/compose/material3/tokens/FilterChipTokens;->UnselectedTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v9

    .line 29
    sget-object v1, Landroidx/compose/material3/tokens/FilterChipTokens;->DisabledLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 30
    .line 31
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v11

    .line 35
    sget v1, Landroidx/compose/material3/tokens/FilterChipTokens;->DisabledLabelTextOpacity:F

    .line 36
    .line 37
    invoke-static {v1, v11, v12}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 38
    .line 39
    .line 40
    move-result-wide v13

    .line 41
    sget-object v1, Landroidx/compose/material3/tokens/FilterChipTokens;->DisabledLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 42
    .line 43
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v11

    .line 47
    sget v1, Landroidx/compose/material3/tokens/FilterChipTokens;->DisabledLeadingIconOpacity:F

    .line 48
    .line 49
    invoke-static {v1, v11, v12}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v15

    .line 53
    sget-object v1, Landroidx/compose/material3/tokens/FilterChipTokens;->DisabledTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 54
    .line 55
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v11

    .line 59
    sget v1, Landroidx/compose/material3/tokens/FilterChipTokens;->DisabledTrailingIconOpacity:F

    .line 60
    .line 61
    invoke-static {v1, v11, v12}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 62
    .line 63
    .line 64
    move-result-wide v17

    .line 65
    sget-object v1, Landroidx/compose/material3/tokens/FilterChipTokens;->FlatSelectedContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 66
    .line 67
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v19

    .line 71
    sget-object v1, Landroidx/compose/material3/tokens/FilterChipTokens;->FlatDisabledSelectedContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 72
    .line 73
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v11

    .line 77
    sget v1, Landroidx/compose/material3/tokens/FilterChipTokens;->FlatDisabledSelectedContainerOpacity:F

    .line 78
    .line 79
    invoke-static {v1, v11, v12}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 80
    .line 81
    .line 82
    move-result-wide v21

    .line 83
    sget-object v1, Landroidx/compose/material3/tokens/FilterChipTokens;->SelectedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 84
    .line 85
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v23

    .line 89
    sget-object v1, Landroidx/compose/material3/tokens/FilterChipTokens;->SelectedLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 90
    .line 91
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 92
    .line 93
    .line 94
    move-result-wide v25

    .line 95
    sget-object v1, Landroidx/compose/material3/tokens/FilterChipTokens;->SelectedTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 96
    .line 97
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v27

    .line 101
    move-wide v11, v3

    .line 102
    invoke-direct/range {v2 .. v28}, Landroidx/compose/material3/SelectableChipColors;-><init>(JJJJJJJJJJJJJ)V

    .line 103
    .line 104
    .line 105
    iput-object v2, v0, Landroidx/compose/material3/ColorScheme;->defaultFilterChipColorsCached:Landroidx/compose/material3/SelectableChipColors;

    .line 106
    .line 107
    return-object v2

    .line 108
    :cond_0
    return-object v1
.end method
