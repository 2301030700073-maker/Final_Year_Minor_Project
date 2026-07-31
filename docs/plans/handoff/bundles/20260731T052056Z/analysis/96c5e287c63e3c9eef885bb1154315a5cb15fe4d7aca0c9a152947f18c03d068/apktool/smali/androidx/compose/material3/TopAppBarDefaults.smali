.class public abstract Landroidx/compose/material3/TopAppBarDefaults;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final TopAppBarExpandedHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/tokens/AppBarSmallTokens;->TitleFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 2
    .line 3
    const/high16 v0, 0x42800000    # 64.0f

    .line 4
    .line 5
    sput v0, Landroidx/compose/material3/TopAppBarDefaults;->TopAppBarExpandedHeight:F

    .line 6
    .line 7
    return-void
.end method

.method public static topAppBarColors-5tl4gsc(JJJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/TopAppBarColors;
    .locals 25

    .line 1
    and-int/lit8 v0, p7, 0x2

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-wide/from16 v0, p2

    .line 9
    .line 10
    :goto_0
    sget-wide v2, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 11
    .line 12
    and-int/lit8 v4, p7, 0x8

    .line 13
    .line 14
    if-eqz v4, :cond_1

    .line 15
    .line 16
    move-wide v4, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-wide/from16 v4, p4

    .line 19
    .line 20
    :goto_1
    sget-object v6, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 21
    .line 22
    move-object/from16 v7, p6

    .line 23
    .line 24
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Landroidx/compose/material3/ColorScheme;

    .line 29
    .line 30
    iget-object v7, v6, Landroidx/compose/material3/ColorScheme;->defaultTopAppBarColorsCached:Landroidx/compose/material3/TopAppBarColors;

    .line 31
    .line 32
    if-nez v7, :cond_2

    .line 33
    .line 34
    new-instance v8, Landroidx/compose/material3/TopAppBarColors;

    .line 35
    .line 36
    sget-object v7, Landroidx/compose/material3/tokens/AppBarTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 37
    .line 38
    invoke-static {v6, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v9

    .line 42
    sget-object v7, Landroidx/compose/material3/tokens/AppBarTokens;->OnScrollContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 43
    .line 44
    invoke-static {v6, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v11

    .line 48
    sget-object v7, Landroidx/compose/material3/tokens/AppBarTokens;->LeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 49
    .line 50
    invoke-static {v6, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v13

    .line 54
    sget-object v7, Landroidx/compose/material3/tokens/AppBarTokens;->TitleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 55
    .line 56
    invoke-static {v6, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v15

    .line 60
    sget-object v7, Landroidx/compose/material3/tokens/AppBarTokens;->TrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 61
    .line 62
    invoke-static {v6, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v17

    .line 66
    sget-object v7, Landroidx/compose/material3/tokens/AppBarTokens;->SubtitleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 67
    .line 68
    invoke-static {v6, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v19

    .line 72
    invoke-direct/range {v8 .. v20}, Landroidx/compose/material3/TopAppBarColors;-><init>(JJJJJJ)V

    .line 73
    .line 74
    .line 75
    iput-object v8, v6, Landroidx/compose/material3/ColorScheme;->defaultTopAppBarColorsCached:Landroidx/compose/material3/TopAppBarColors;

    .line 76
    .line 77
    move-object v7, v8

    .line 78
    :cond_2
    const-wide/16 v8, 0x10

    .line 79
    .line 80
    cmp-long v6, p0, v8

    .line 81
    .line 82
    if-eqz v6, :cond_3

    .line 83
    .line 84
    move-wide/from16 v13, p0

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    iget-wide v10, v7, Landroidx/compose/material3/TopAppBarColors;->containerColor:J

    .line 88
    .line 89
    move-wide v13, v10

    .line 90
    :goto_2
    cmp-long v6, v0, v8

    .line 91
    .line 92
    if-eqz v6, :cond_4

    .line 93
    .line 94
    :goto_3
    move-wide v15, v0

    .line 95
    goto :goto_4

    .line 96
    :cond_4
    iget-wide v0, v7, Landroidx/compose/material3/TopAppBarColors;->scrolledContainerColor:J

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :goto_4
    cmp-long v0, v2, v8

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    move-wide/from16 v17, v2

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_5
    iget-wide v0, v7, Landroidx/compose/material3/TopAppBarColors;->navigationIconContentColor:J

    .line 107
    .line 108
    move-wide/from16 v17, v0

    .line 109
    .line 110
    :goto_5
    cmp-long v0, v4, v8

    .line 111
    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    :goto_6
    move-wide/from16 v19, v4

    .line 115
    .line 116
    goto :goto_7

    .line 117
    :cond_6
    iget-wide v4, v7, Landroidx/compose/material3/TopAppBarColors;->titleContentColor:J

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :goto_7
    cmp-long v0, v2, v8

    .line 121
    .line 122
    if-eqz v0, :cond_7

    .line 123
    .line 124
    move-wide/from16 v21, v2

    .line 125
    .line 126
    goto :goto_8

    .line 127
    :cond_7
    iget-wide v0, v7, Landroidx/compose/material3/TopAppBarColors;->actionIconContentColor:J

    .line 128
    .line 129
    move-wide/from16 v21, v0

    .line 130
    .line 131
    :goto_8
    cmp-long v0, v2, v8

    .line 132
    .line 133
    if-eqz v0, :cond_8

    .line 134
    .line 135
    :goto_9
    move-wide/from16 v23, v2

    .line 136
    .line 137
    goto :goto_a

    .line 138
    :cond_8
    iget-wide v2, v7, Landroidx/compose/material3/TopAppBarColors;->subtitleContentColor:J

    .line 139
    .line 140
    goto :goto_9

    .line 141
    :goto_a
    new-instance v12, Landroidx/compose/material3/TopAppBarColors;

    .line 142
    .line 143
    invoke-direct/range {v12 .. v24}, Landroidx/compose/material3/TopAppBarColors;-><init>(JJJJJJ)V

    .line 144
    .line 145
    .line 146
    return-object v12
.end method
