.class public abstract Landroidx/compose/material3/ListItemDefaults;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget v0, Landroidx/compose/material3/ListItemKt;->InteractiveListStartPadding:F

    .line 2
    .line 3
    sget v1, Landroidx/compose/material3/ListItemKt;->InteractiveListEndPadding:F

    .line 4
    .line 5
    sget v2, Landroidx/compose/material3/ListItemKt;->InteractiveListTopPadding:F

    .line 6
    .line 7
    sget v3, Landroidx/compose/material3/ListItemKt;->InteractiveListBottomPadding:F

    .line 8
    .line 9
    new-instance v4, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 10
    .line 11
    invoke-direct {v4, v0, v2, v1, v3}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 12
    .line 13
    .line 14
    sput-object v4, Landroidx/compose/material3/ListItemDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 15
    .line 16
    return-void
.end method

.method public static colors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ListItemColors;
    .locals 51

    .line 1
    sget-object v0, Landroidx/compose/material3/MaterialThemeKt;->_localMaterialTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/compose/material3/MaterialTheme$Values;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/compose/material3/MaterialTheme$Values;->colorScheme:Landroidx/compose/material3/ColorScheme;

    .line 14
    .line 15
    iget-object v1, v0, Landroidx/compose/material3/ColorScheme;->defaultListItemColorsCached:Landroidx/compose/material3/ListItemColors;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    sget-object v1, Landroidx/compose/material3/tokens/ListTokens;->ItemContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->ItemLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 26
    .line 27
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v5

    .line 31
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->ItemLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 32
    .line 33
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v7

    .line 37
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->ItemTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 38
    .line 39
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v9

    .line 43
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->ItemOverlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 44
    .line 45
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v11

    .line 49
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->ItemSupportingTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 50
    .line 51
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v13

    .line 55
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->ItemSelectedContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 56
    .line 57
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v27

    .line 61
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->ItemSelectedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 62
    .line 63
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v29

    .line 67
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->ItemSelectedLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 68
    .line 69
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v31

    .line 73
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->ItemSelectedTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 74
    .line 75
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v33

    .line 79
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->ItemSelectedOverlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 80
    .line 81
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v35

    .line 85
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->ItemSelectedSupportingTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 86
    .line 87
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v37

    .line 91
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 92
    .line 93
    .line 94
    move-result-wide v15

    .line 95
    sget-object v1, Landroidx/compose/material3/tokens/ListTokens;->ItemDisabledLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 96
    .line 97
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v1

    .line 101
    move-wide/from16 v17, v3

    .line 102
    .line 103
    sget v3, Landroidx/compose/material3/tokens/ListTokens;->ItemDisabledLabelTextOpacity:F

    .line 104
    .line 105
    invoke-static {v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JF)J

    .line 106
    .line 107
    .line 108
    move-result-wide v1

    .line 109
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ItemDisabledLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 110
    .line 111
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    move-wide/from16 v19, v1

    .line 116
    .line 117
    sget v1, Landroidx/compose/material3/tokens/ListTokens;->ItemDisabledLeadingIconOpacity:F

    .line 118
    .line 119
    invoke-static {v3, v4, v1}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JF)J

    .line 120
    .line 121
    .line 122
    move-result-wide v1

    .line 123
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ItemDisabledTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 124
    .line 125
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v3

    .line 129
    move-wide/from16 v21, v1

    .line 130
    .line 131
    sget v1, Landroidx/compose/material3/tokens/ListTokens;->ItemDisabledTrailingIconOpacity:F

    .line 132
    .line 133
    invoke-static {v3, v4, v1}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JF)J

    .line 134
    .line 135
    .line 136
    move-result-wide v1

    .line 137
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ItemDisabledOverlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 138
    .line 139
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 140
    .line 141
    .line 142
    move-result-wide v3

    .line 143
    move-wide/from16 v23, v1

    .line 144
    .line 145
    sget v1, Landroidx/compose/material3/tokens/ListTokens;->ItemDisabledOverlineOpacity:F

    .line 146
    .line 147
    invoke-static {v3, v4, v1}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JF)J

    .line 148
    .line 149
    .line 150
    move-result-wide v1

    .line 151
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ItemDisabledSupportingTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 152
    .line 153
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 154
    .line 155
    .line 156
    move-result-wide v3

    .line 157
    move-wide/from16 v25, v1

    .line 158
    .line 159
    sget v1, Landroidx/compose/material3/tokens/ListTokens;->ItemDisabledSupportingTextOpacity:F

    .line 160
    .line 161
    invoke-static {v3, v4, v1}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JF)J

    .line 162
    .line 163
    .line 164
    move-result-wide v1

    .line 165
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ItemContainerColor$1:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 166
    .line 167
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 168
    .line 169
    .line 170
    move-result-wide v39

    .line 171
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ItemLabelTextColor$1:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 172
    .line 173
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 174
    .line 175
    .line 176
    move-result-wide v41

    .line 177
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ItemLeadingIconColor$1:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 178
    .line 179
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 180
    .line 181
    .line 182
    move-result-wide v43

    .line 183
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ItemTrailingIconColor$1:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 184
    .line 185
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 186
    .line 187
    .line 188
    move-result-wide v45

    .line 189
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ItemOverlineColor$1:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 190
    .line 191
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 192
    .line 193
    .line 194
    move-result-wide v47

    .line 195
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ItemSupportingTextColor$1:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 196
    .line 197
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 198
    .line 199
    .line 200
    move-result-wide v49

    .line 201
    move-wide/from16 v3, v17

    .line 202
    .line 203
    move-wide/from16 v17, v19

    .line 204
    .line 205
    move-wide/from16 v19, v21

    .line 206
    .line 207
    move-wide/from16 v21, v23

    .line 208
    .line 209
    move-wide/from16 v23, v25

    .line 210
    .line 211
    move-wide/from16 v25, v1

    .line 212
    .line 213
    new-instance v2, Landroidx/compose/material3/ListItemColors;

    .line 214
    .line 215
    invoke-direct/range {v2 .. v50}, Landroidx/compose/material3/ListItemColors;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJ)V

    .line 216
    .line 217
    .line 218
    iput-object v2, v0, Landroidx/compose/material3/ColorScheme;->defaultListItemColorsCached:Landroidx/compose/material3/ListItemColors;

    .line 219
    .line 220
    return-object v2

    .line 221
    :cond_0
    return-object v1
.end method
