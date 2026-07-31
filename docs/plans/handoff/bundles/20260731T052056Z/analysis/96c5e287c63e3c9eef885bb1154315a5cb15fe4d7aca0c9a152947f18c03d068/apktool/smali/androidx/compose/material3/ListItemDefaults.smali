.class public abstract Landroidx/compose/material3/ListItemDefaults;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/tokens/ListTokens;->ListItemContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 2
    .line 3
    return-void
.end method

.method public static colors-J08w3-E(JLandroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/ListItemColors;
    .locals 44

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 2
    .line 3
    sget-object v2, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Landroidx/compose/material3/ColorScheme;

    .line 12
    .line 13
    iget-object v3, v2, Landroidx/compose/material3/ColorScheme;->defaultListItemColorsCached:Landroidx/compose/material3/ListItemColors;

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    new-instance v4, Landroidx/compose/material3/ListItemColors;

    .line 18
    .line 19
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ListItemContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 20
    .line 21
    invoke-static {v2, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ListItemLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 26
    .line 27
    invoke-static {v2, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v7

    .line 31
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ListItemLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 32
    .line 33
    invoke-static {v2, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v9

    .line 37
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ListItemOverlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 38
    .line 39
    invoke-static {v2, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v11

    .line 43
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ListItemSupportingTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 44
    .line 45
    invoke-static {v2, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v13

    .line 49
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ListItemTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 50
    .line 51
    invoke-static {v2, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v15

    .line 55
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 56
    .line 57
    move-wide/from16 v23, v0

    .line 58
    .line 59
    invoke-static {v2, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    sget v3, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLabelTextOpacity:F

    .line 64
    .line 65
    invoke-static {v3, v0, v1}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 66
    .line 67
    .line 68
    move-result-wide v17

    .line 69
    sget-object v0, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 70
    .line 71
    invoke-static {v2, v0}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    sget v3, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLeadingIconOpacity:F

    .line 76
    .line 77
    invoke-static {v3, v0, v1}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 78
    .line 79
    .line 80
    move-result-wide v19

    .line 81
    sget-object v0, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 82
    .line 83
    invoke-static {v2, v0}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 84
    .line 85
    .line 86
    move-result-wide v0

    .line 87
    sget v3, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledTrailingIconOpacity:F

    .line 88
    .line 89
    invoke-static {v3, v0, v1}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 90
    .line 91
    .line 92
    move-result-wide v21

    .line 93
    invoke-direct/range {v4 .. v22}, Landroidx/compose/material3/ListItemColors;-><init>(JJJJJJJJJ)V

    .line 94
    .line 95
    .line 96
    iput-object v4, v2, Landroidx/compose/material3/ColorScheme;->defaultListItemColorsCached:Landroidx/compose/material3/ListItemColors;

    .line 97
    .line 98
    move-object v3, v4

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    move-wide/from16 v23, v0

    .line 101
    .line 102
    :goto_0
    const-wide/16 v0, 0x10

    .line 103
    .line 104
    cmp-long v2, p0, v0

    .line 105
    .line 106
    if-eqz v2, :cond_1

    .line 107
    .line 108
    move-wide/from16 v26, p0

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    iget-wide v4, v3, Landroidx/compose/material3/ListItemColors;->containerColor:J

    .line 112
    .line 113
    move-wide/from16 v26, v4

    .line 114
    .line 115
    :goto_1
    cmp-long v2, v23, v0

    .line 116
    .line 117
    if-eqz v2, :cond_2

    .line 118
    .line 119
    move-wide/from16 v28, v23

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_2
    iget-wide v4, v3, Landroidx/compose/material3/ListItemColors;->headlineColor:J

    .line 123
    .line 124
    move-wide/from16 v28, v4

    .line 125
    .line 126
    :goto_2
    cmp-long v2, v23, v0

    .line 127
    .line 128
    if-eqz v2, :cond_3

    .line 129
    .line 130
    move-wide/from16 v30, v23

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_3
    iget-wide v4, v3, Landroidx/compose/material3/ListItemColors;->leadingIconColor:J

    .line 134
    .line 135
    move-wide/from16 v30, v4

    .line 136
    .line 137
    :goto_3
    cmp-long v2, v23, v0

    .line 138
    .line 139
    if-eqz v2, :cond_4

    .line 140
    .line 141
    move-wide/from16 v32, v23

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_4
    iget-wide v4, v3, Landroidx/compose/material3/ListItemColors;->overlineColor:J

    .line 145
    .line 146
    move-wide/from16 v32, v4

    .line 147
    .line 148
    :goto_4
    cmp-long v2, v23, v0

    .line 149
    .line 150
    if-eqz v2, :cond_5

    .line 151
    .line 152
    move-wide/from16 v34, v23

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_5
    iget-wide v4, v3, Landroidx/compose/material3/ListItemColors;->supportingTextColor:J

    .line 156
    .line 157
    move-wide/from16 v34, v4

    .line 158
    .line 159
    :goto_5
    cmp-long v2, v23, v0

    .line 160
    .line 161
    if-eqz v2, :cond_6

    .line 162
    .line 163
    move-wide/from16 v36, v23

    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_6
    iget-wide v4, v3, Landroidx/compose/material3/ListItemColors;->trailingIconColor:J

    .line 167
    .line 168
    move-wide/from16 v36, v4

    .line 169
    .line 170
    :goto_6
    cmp-long v2, v23, v0

    .line 171
    .line 172
    if-eqz v2, :cond_7

    .line 173
    .line 174
    move-wide/from16 v38, v23

    .line 175
    .line 176
    goto :goto_7

    .line 177
    :cond_7
    iget-wide v4, v3, Landroidx/compose/material3/ListItemColors;->disabledHeadlineColor:J

    .line 178
    .line 179
    move-wide/from16 v38, v4

    .line 180
    .line 181
    :goto_7
    cmp-long v2, v23, v0

    .line 182
    .line 183
    if-eqz v2, :cond_8

    .line 184
    .line 185
    move-wide/from16 v40, v23

    .line 186
    .line 187
    goto :goto_8

    .line 188
    :cond_8
    iget-wide v4, v3, Landroidx/compose/material3/ListItemColors;->disabledLeadingIconColor:J

    .line 189
    .line 190
    move-wide/from16 v40, v4

    .line 191
    .line 192
    :goto_8
    cmp-long v0, v23, v0

    .line 193
    .line 194
    if-eqz v0, :cond_9

    .line 195
    .line 196
    move-wide/from16 v42, v23

    .line 197
    .line 198
    goto :goto_9

    .line 199
    :cond_9
    iget-wide v0, v3, Landroidx/compose/material3/ListItemColors;->disabledTrailingIconColor:J

    .line 200
    .line 201
    move-wide/from16 v42, v0

    .line 202
    .line 203
    :goto_9
    new-instance v25, Landroidx/compose/material3/ListItemColors;

    .line 204
    .line 205
    invoke-direct/range {v25 .. v43}, Landroidx/compose/material3/ListItemColors;-><init>(JJJJJJJJJ)V

    .line 206
    .line 207
    .line 208
    return-object v25
.end method
