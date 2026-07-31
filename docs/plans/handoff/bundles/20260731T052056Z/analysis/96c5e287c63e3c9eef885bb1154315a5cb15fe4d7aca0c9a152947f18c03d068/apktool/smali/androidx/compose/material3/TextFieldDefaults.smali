.class public final Landroidx/compose/material3/TextFieldDefaults;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

.field public static final INSTANCE$1:Landroidx/compose/material3/TextFieldDefaults;

.field public static final INSTANCE$2:Landroidx/compose/material3/TextFieldDefaults;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material3/TextFieldDefaults;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE$1:Landroidx/compose/material3/TextFieldDefaults;

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/material3/TextFieldDefaults;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE$2:Landroidx/compose/material3/TextFieldDefaults;

    .line 14
    .line 15
    new-instance v0, Landroidx/compose/material3/TextFieldDefaults;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    .line 21
    .line 22
    return-void
.end method

.method public static colors-0hiis_0(JJJJJJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/TextFieldColors;
    .locals 116

    .line 1
    move-object/from16 v0, p12

    .line 2
    .line 3
    move/from16 v1, p13

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    sget-wide v2, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 10
    .line 11
    move-wide v7, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-wide/from16 v7, p2

    .line 14
    .line 15
    :goto_0
    sget-wide v9, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 16
    .line 17
    and-int/lit8 v2, v1, 0x8

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    move-wide v11, v9

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-wide/from16 v11, p4

    .line 24
    .line 25
    :goto_1
    and-int/lit16 v2, v1, 0x100

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    move-wide/from16 v21, v9

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move-wide/from16 v21, p6

    .line 33
    .line 34
    :goto_2
    and-int/lit16 v1, v1, 0x1000

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    move-wide/from16 v28, v9

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    move-wide/from16 v28, p10

    .line 42
    .line 43
    :goto_3
    sget-object v1, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroidx/compose/material3/ColorScheme;

    .line 50
    .line 51
    iget-object v2, v1, Landroidx/compose/material3/ColorScheme;->defaultOutlinedTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    if-nez v2, :cond_4

    .line 55
    .line 56
    const v2, 0x1745d472

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 63
    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    goto :goto_5

    .line 67
    :cond_4
    const v4, 0x1745d473

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 71
    .line 72
    .line 73
    sget-object v4, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 74
    .line 75
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 80
    .line 81
    iget-object v5, v2, Landroidx/compose/material3/TextFieldColors;->textSelectionColors:Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 82
    .line 83
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_5

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_5
    invoke-static {v2, v4}, Landroidx/compose/material3/TextFieldColors;->copy-ejIjP34$default(Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/text/selection/TextSelectionColors;)Landroidx/compose/material3/TextFieldColors;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iput-object v2, v1, Landroidx/compose/material3/ColorScheme;->defaultOutlinedTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

    .line 95
    .line 96
    :goto_4
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 97
    .line 98
    .line 99
    :goto_5
    if-nez v2, :cond_6

    .line 100
    .line 101
    const v2, -0x6a979da7

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 105
    .line 106
    .line 107
    new-instance v30, Landroidx/compose/material3/TextFieldColors;

    .line 108
    .line 109
    sget-object v2, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->FocusInputColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 110
    .line 111
    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 112
    .line 113
    .line 114
    move-result-wide v31

    .line 115
    sget-object v2, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->InputColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 116
    .line 117
    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 118
    .line 119
    .line 120
    move-result-wide v33

    .line 121
    sget-object v2, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->DisabledInputColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 122
    .line 123
    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 124
    .line 125
    .line 126
    move-result-wide v4

    .line 127
    const v6, 0x3ec28f5c    # 0.38f

    .line 128
    .line 129
    .line 130
    invoke-static {v6, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 131
    .line 132
    .line 133
    move-result-wide v35

    .line 134
    sget-object v4, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->ErrorInputColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 135
    .line 136
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 137
    .line 138
    .line 139
    move-result-wide v37

    .line 140
    sget-wide v39, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 141
    .line 142
    sget-object v4, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->CaretColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 143
    .line 144
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 145
    .line 146
    .line 147
    move-result-wide v47

    .line 148
    sget-object v4, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->ErrorFocusCaretColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 149
    .line 150
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 151
    .line 152
    .line 153
    move-result-wide v49

    .line 154
    sget-object v4, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 155
    .line 156
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    move-object/from16 v51, v4

    .line 161
    .line 162
    check-cast v51, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 163
    .line 164
    sget-object v4, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->FocusOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 165
    .line 166
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 167
    .line 168
    .line 169
    move-result-wide v52

    .line 170
    sget-object v4, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->OutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 171
    .line 172
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 173
    .line 174
    .line 175
    move-result-wide v54

    .line 176
    sget-object v4, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->DisabledOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 177
    .line 178
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 179
    .line 180
    .line 181
    move-result-wide v4

    .line 182
    const v13, 0x3df5c28f    # 0.12f

    .line 183
    .line 184
    .line 185
    invoke-static {v13, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 186
    .line 187
    .line 188
    move-result-wide v56

    .line 189
    sget-object v4, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->ErrorOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 190
    .line 191
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 192
    .line 193
    .line 194
    move-result-wide v58

    .line 195
    sget-object v4, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->FocusLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 196
    .line 197
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 198
    .line 199
    .line 200
    move-result-wide v60

    .line 201
    sget-object v4, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->LeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 202
    .line 203
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 204
    .line 205
    .line 206
    move-result-wide v62

    .line 207
    sget-object v4, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->DisabledLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 208
    .line 209
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 210
    .line 211
    .line 212
    move-result-wide v4

    .line 213
    invoke-static {v6, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 214
    .line 215
    .line 216
    move-result-wide v64

    .line 217
    sget-object v4, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->ErrorLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 218
    .line 219
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 220
    .line 221
    .line 222
    move-result-wide v66

    .line 223
    sget-object v4, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->FocusTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 224
    .line 225
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 226
    .line 227
    .line 228
    move-result-wide v68

    .line 229
    sget-object v4, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->TrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 230
    .line 231
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 232
    .line 233
    .line 234
    move-result-wide v70

    .line 235
    sget-object v4, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->DisabledTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 236
    .line 237
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 238
    .line 239
    .line 240
    move-result-wide v4

    .line 241
    invoke-static {v6, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 242
    .line 243
    .line 244
    move-result-wide v72

    .line 245
    sget-object v4, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->ErrorTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 246
    .line 247
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 248
    .line 249
    .line 250
    move-result-wide v74

    .line 251
    sget-object v4, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->FocusLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 252
    .line 253
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 254
    .line 255
    .line 256
    move-result-wide v76

    .line 257
    sget-object v4, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->LabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 258
    .line 259
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 260
    .line 261
    .line 262
    move-result-wide v78

    .line 263
    sget-object v4, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->DisabledLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 264
    .line 265
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 266
    .line 267
    .line 268
    move-result-wide v4

    .line 269
    invoke-static {v6, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 270
    .line 271
    .line 272
    move-result-wide v80

    .line 273
    sget-object v4, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->ErrorLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 274
    .line 275
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 276
    .line 277
    .line 278
    move-result-wide v82

    .line 279
    sget-object v4, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->InputPlaceholderColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 280
    .line 281
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 282
    .line 283
    .line 284
    move-result-wide v84

    .line 285
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 286
    .line 287
    .line 288
    move-result-wide v86

    .line 289
    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 290
    .line 291
    .line 292
    move-result-wide v13

    .line 293
    invoke-static {v6, v13, v14}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 294
    .line 295
    .line 296
    move-result-wide v88

    .line 297
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 298
    .line 299
    .line 300
    move-result-wide v90

    .line 301
    sget-object v2, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->FocusSupportingColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 302
    .line 303
    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 304
    .line 305
    .line 306
    move-result-wide v92

    .line 307
    sget-object v2, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->SupportingColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 308
    .line 309
    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 310
    .line 311
    .line 312
    move-result-wide v94

    .line 313
    sget-object v2, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->DisabledSupportingColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 314
    .line 315
    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 316
    .line 317
    .line 318
    move-result-wide v4

    .line 319
    invoke-static {v6, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 320
    .line 321
    .line 322
    move-result-wide v96

    .line 323
    sget-object v2, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->ErrorSupportingColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 324
    .line 325
    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 326
    .line 327
    .line 328
    move-result-wide v98

    .line 329
    sget-object v2, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->InputPrefixColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 330
    .line 331
    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 332
    .line 333
    .line 334
    move-result-wide v100

    .line 335
    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 336
    .line 337
    .line 338
    move-result-wide v102

    .line 339
    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 340
    .line 341
    .line 342
    move-result-wide v4

    .line 343
    invoke-static {v6, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 344
    .line 345
    .line 346
    move-result-wide v104

    .line 347
    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 348
    .line 349
    .line 350
    move-result-wide v106

    .line 351
    sget-object v2, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->InputSuffixColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 352
    .line 353
    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 354
    .line 355
    .line 356
    move-result-wide v108

    .line 357
    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 358
    .line 359
    .line 360
    move-result-wide v110

    .line 361
    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 362
    .line 363
    .line 364
    move-result-wide v4

    .line 365
    invoke-static {v6, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 366
    .line 367
    .line 368
    move-result-wide v112

    .line 369
    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 370
    .line 371
    .line 372
    move-result-wide v114

    .line 373
    move-wide/from16 v41, v39

    .line 374
    .line 375
    move-wide/from16 v43, v39

    .line 376
    .line 377
    move-wide/from16 v45, v39

    .line 378
    .line 379
    invoke-direct/range {v30 .. v115}, Landroidx/compose/material3/TextFieldColors;-><init>(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    .line 380
    .line 381
    .line 382
    move-object/from16 v2, v30

    .line 383
    .line 384
    iput-object v2, v1, Landroidx/compose/material3/ColorScheme;->defaultOutlinedTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

    .line 385
    .line 386
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 387
    .line 388
    .line 389
    :goto_6
    move-object v4, v2

    .line 390
    goto :goto_7

    .line 391
    :cond_6
    const v1, -0x6a9a946d

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 398
    .line 399
    .line 400
    goto :goto_6

    .line 401
    :goto_7
    const/16 v25, 0x0

    .line 402
    .line 403
    move-wide v13, v9

    .line 404
    move-wide v15, v9

    .line 405
    move-wide/from16 v17, v9

    .line 406
    .line 407
    move-wide/from16 v19, v9

    .line 408
    .line 409
    move-wide/from16 v23, v9

    .line 410
    .line 411
    move-wide/from16 v30, v9

    .line 412
    .line 413
    move-wide/from16 v32, v9

    .line 414
    .line 415
    move-wide/from16 v34, v9

    .line 416
    .line 417
    move-wide/from16 v36, v9

    .line 418
    .line 419
    move-wide/from16 v38, v9

    .line 420
    .line 421
    move-wide/from16 v40, v9

    .line 422
    .line 423
    move-wide/from16 v42, v9

    .line 424
    .line 425
    move-wide/from16 v44, v9

    .line 426
    .line 427
    move-wide/from16 v46, v9

    .line 428
    .line 429
    move-wide/from16 v48, v9

    .line 430
    .line 431
    move-wide/from16 v50, v9

    .line 432
    .line 433
    move-wide/from16 v52, v9

    .line 434
    .line 435
    move-wide/from16 v54, v9

    .line 436
    .line 437
    move-wide/from16 v56, v9

    .line 438
    .line 439
    move-wide/from16 v58, v9

    .line 440
    .line 441
    move-wide/from16 v60, v9

    .line 442
    .line 443
    move-wide/from16 v62, v9

    .line 444
    .line 445
    move-wide/from16 v64, v9

    .line 446
    .line 447
    move-wide/from16 v66, v9

    .line 448
    .line 449
    move-wide/from16 v68, v9

    .line 450
    .line 451
    move-wide/from16 v70, v9

    .line 452
    .line 453
    move-wide/from16 v72, v9

    .line 454
    .line 455
    move-wide/from16 v74, v9

    .line 456
    .line 457
    move-wide/from16 v76, v9

    .line 458
    .line 459
    move-wide/from16 v78, v9

    .line 460
    .line 461
    move-wide/from16 v80, v9

    .line 462
    .line 463
    move-wide/from16 v82, v9

    .line 464
    .line 465
    move-wide/from16 v84, v9

    .line 466
    .line 467
    move-wide/from16 v86, v9

    .line 468
    .line 469
    move-wide/from16 v88, v9

    .line 470
    .line 471
    move-wide/from16 v5, p0

    .line 472
    .line 473
    move-wide/from16 v26, p8

    .line 474
    .line 475
    invoke-virtual/range {v4 .. v89}, Landroidx/compose/material3/TextFieldColors;->copy-ejIjP34(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)Landroidx/compose/material3/TextFieldColors;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    return-object v0
.end method

.method public static defaultTextFieldColors$material3(Landroidx/compose/material3/ColorScheme;Landroidx/compose/foundation/text/selection/TextSelectionColors;)Landroidx/compose/material3/TextFieldColors;
    .locals 89

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/material3/ColorScheme;->defaultTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

    .line 6
    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    iget-object v3, v2, Landroidx/compose/material3/TextFieldColors;->textSelectionColors:Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 10
    .line 11
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    return-object v2

    .line 18
    :cond_0
    invoke-static {v2, v1}, Landroidx/compose/material3/TextFieldColors;->copy-ejIjP34$default(Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/text/selection/TextSelectionColors;)Landroidx/compose/material3/TextFieldColors;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Landroidx/compose/material3/ColorScheme;->defaultTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_1
    new-instance v1, Landroidx/compose/material3/TextFieldColors;

    .line 26
    .line 27
    sget-object v2, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->FocusInputColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 28
    .line 29
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    sget-object v4, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->InputColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 34
    .line 35
    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    sget-object v6, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledInputColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 40
    .line 41
    invoke-static {v0, v6}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    sget v9, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledInputOpacity:F

    .line 46
    .line 47
    invoke-static {v9, v7, v8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v7

    .line 51
    sget-object v10, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->ErrorInputColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 52
    .line 53
    invoke-static {v0, v10}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v10

    .line 57
    sget-object v12, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 58
    .line 59
    move-wide v13, v10

    .line 60
    invoke-static {v0, v12}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v10

    .line 64
    invoke-static {v0, v12}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v15

    .line 68
    move-wide/from16 v18, v15

    .line 69
    .line 70
    move-wide/from16 v16, v13

    .line 71
    .line 72
    invoke-static {v0, v12}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v14

    .line 76
    invoke-static {v0, v12}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v12

    .line 80
    move-object/from16 v20, v1

    .line 81
    .line 82
    sget-object v1, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->CaretColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 83
    .line 84
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v21

    .line 88
    sget-object v1, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->ErrorFocusCaretColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 89
    .line 90
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v23

    .line 94
    sget-object v1, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->FocusActiveIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 95
    .line 96
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v25

    .line 100
    sget-object v1, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->ActiveIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 101
    .line 102
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 103
    .line 104
    .line 105
    move-result-wide v27

    .line 106
    sget-object v1, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledActiveIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 107
    .line 108
    move-wide/from16 v29, v2

    .line 109
    .line 110
    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 111
    .line 112
    .line 113
    move-result-wide v1

    .line 114
    sget v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledActiveIndicatorOpacity:F

    .line 115
    .line 116
    invoke-static {v3, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 117
    .line 118
    .line 119
    move-result-wide v1

    .line 120
    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->ErrorActiveIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 121
    .line 122
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 123
    .line 124
    .line 125
    move-result-wide v31

    .line 126
    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->FocusLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 127
    .line 128
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v33

    .line 132
    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->LeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 133
    .line 134
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 135
    .line 136
    .line 137
    move-result-wide v35

    .line 138
    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 139
    .line 140
    move-wide/from16 v37, v1

    .line 141
    .line 142
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 143
    .line 144
    .line 145
    move-result-wide v1

    .line 146
    sget v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledLeadingIconOpacity:F

    .line 147
    .line 148
    invoke-static {v3, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 149
    .line 150
    .line 151
    move-result-wide v1

    .line 152
    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->ErrorLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 153
    .line 154
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v39

    .line 158
    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->FocusTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 159
    .line 160
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 161
    .line 162
    .line 163
    move-result-wide v41

    .line 164
    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->TrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 165
    .line 166
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 167
    .line 168
    .line 169
    move-result-wide v43

    .line 170
    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 171
    .line 172
    move-wide/from16 v45, v1

    .line 173
    .line 174
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 175
    .line 176
    .line 177
    move-result-wide v1

    .line 178
    sget v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledTrailingIconOpacity:F

    .line 179
    .line 180
    invoke-static {v3, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 181
    .line 182
    .line 183
    move-result-wide v1

    .line 184
    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->ErrorTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 185
    .line 186
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 187
    .line 188
    .line 189
    move-result-wide v47

    .line 190
    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->FocusLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 191
    .line 192
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 193
    .line 194
    .line 195
    move-result-wide v49

    .line 196
    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->LabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 197
    .line 198
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 199
    .line 200
    .line 201
    move-result-wide v51

    .line 202
    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 203
    .line 204
    move-wide/from16 v53, v1

    .line 205
    .line 206
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 207
    .line 208
    .line 209
    move-result-wide v1

    .line 210
    sget v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledLabelOpacity:F

    .line 211
    .line 212
    invoke-static {v3, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 213
    .line 214
    .line 215
    move-result-wide v1

    .line 216
    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->ErrorLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 217
    .line 218
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 219
    .line 220
    .line 221
    move-result-wide v55

    .line 222
    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->InputPlaceholderColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 223
    .line 224
    move-wide/from16 v57, v16

    .line 225
    .line 226
    move-wide/from16 v59, v29

    .line 227
    .line 228
    move-wide/from16 v29, v31

    .line 229
    .line 230
    move-wide/from16 v31, v33

    .line 231
    .line 232
    move-wide/from16 v33, v35

    .line 233
    .line 234
    move-wide/from16 v35, v45

    .line 235
    .line 236
    move-wide/from16 v45, v47

    .line 237
    .line 238
    move-wide/from16 v47, v49

    .line 239
    .line 240
    move-wide/from16 v49, v51

    .line 241
    .line 242
    move-wide/from16 v51, v1

    .line 243
    .line 244
    move-wide/from16 v16, v12

    .line 245
    .line 246
    move-wide/from16 v12, v18

    .line 247
    .line 248
    move-object/from16 v1, v20

    .line 249
    .line 250
    move-wide/from16 v18, v21

    .line 251
    .line 252
    move-wide/from16 v20, v23

    .line 253
    .line 254
    move-wide/from16 v23, v25

    .line 255
    .line 256
    move-wide/from16 v25, v27

    .line 257
    .line 258
    move-wide/from16 v27, v37

    .line 259
    .line 260
    move-wide/from16 v37, v39

    .line 261
    .line 262
    move-wide/from16 v39, v41

    .line 263
    .line 264
    move-wide/from16 v41, v43

    .line 265
    .line 266
    move-wide/from16 v43, v53

    .line 267
    .line 268
    move-wide/from16 v53, v55

    .line 269
    .line 270
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 271
    .line 272
    .line 273
    move-result-wide v55

    .line 274
    move-wide/from16 v61, v57

    .line 275
    .line 276
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 277
    .line 278
    .line 279
    move-result-wide v57

    .line 280
    move-object/from16 v22, v1

    .line 281
    .line 282
    invoke-static {v0, v6}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 283
    .line 284
    .line 285
    move-result-wide v1

    .line 286
    invoke-static {v9, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 287
    .line 288
    .line 289
    move-result-wide v1

    .line 290
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 291
    .line 292
    .line 293
    move-result-wide v63

    .line 294
    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->FocusSupportingColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 295
    .line 296
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 297
    .line 298
    .line 299
    move-result-wide v65

    .line 300
    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->SupportingColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 301
    .line 302
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 303
    .line 304
    .line 305
    move-result-wide v67

    .line 306
    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledSupportingColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 307
    .line 308
    move-wide/from16 v69, v1

    .line 309
    .line 310
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 311
    .line 312
    .line 313
    move-result-wide v1

    .line 314
    sget v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledSupportingOpacity:F

    .line 315
    .line 316
    invoke-static {v3, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 317
    .line 318
    .line 319
    move-result-wide v1

    .line 320
    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->ErrorSupportingColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 321
    .line 322
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 323
    .line 324
    .line 325
    move-result-wide v71

    .line 326
    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->InputPrefixColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 327
    .line 328
    move-wide/from16 v73, v59

    .line 329
    .line 330
    move-wide/from16 v59, v69

    .line 331
    .line 332
    move-wide/from16 v69, v71

    .line 333
    .line 334
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 335
    .line 336
    .line 337
    move-result-wide v71

    .line 338
    move-wide/from16 v75, v73

    .line 339
    .line 340
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 341
    .line 342
    .line 343
    move-result-wide v73

    .line 344
    move-wide/from16 v77, v1

    .line 345
    .line 346
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 347
    .line 348
    .line 349
    move-result-wide v1

    .line 350
    invoke-static {v9, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 351
    .line 352
    .line 353
    move-result-wide v1

    .line 354
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 355
    .line 356
    .line 357
    move-result-wide v79

    .line 358
    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->InputSuffixColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 359
    .line 360
    move-wide/from16 v81, v61

    .line 361
    .line 362
    move-wide/from16 v61, v63

    .line 363
    .line 364
    move-wide/from16 v63, v65

    .line 365
    .line 366
    move-wide/from16 v65, v67

    .line 367
    .line 368
    move-wide/from16 v67, v77

    .line 369
    .line 370
    move-wide/from16 v77, v79

    .line 371
    .line 372
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 373
    .line 374
    .line 375
    move-result-wide v79

    .line 376
    move-wide/from16 v83, v81

    .line 377
    .line 378
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 379
    .line 380
    .line 381
    move-result-wide v81

    .line 382
    move-wide/from16 v85, v1

    .line 383
    .line 384
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 385
    .line 386
    .line 387
    move-result-wide v1

    .line 388
    invoke-static {v9, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 389
    .line 390
    .line 391
    move-result-wide v1

    .line 392
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 393
    .line 394
    .line 395
    move-result-wide v87

    .line 396
    move-wide v6, v7

    .line 397
    move-wide/from16 v8, v83

    .line 398
    .line 399
    move-wide/from16 v83, v1

    .line 400
    .line 401
    move-object/from16 v1, v22

    .line 402
    .line 403
    move-wide/from16 v2, v75

    .line 404
    .line 405
    move-wide/from16 v75, v85

    .line 406
    .line 407
    move-wide/from16 v85, v87

    .line 408
    .line 409
    move-object/from16 v22, p1

    .line 410
    .line 411
    invoke-direct/range {v1 .. v86}, Landroidx/compose/material3/TextFieldColors;-><init>(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    .line 412
    .line 413
    .line 414
    iput-object v1, v0, Landroidx/compose/material3/ColorScheme;->defaultTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

    .line 415
    .line 416
    return-object v1
.end method


# virtual methods
.method public Container-4EFweAY(ZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/GapComposer;I)V
    .locals 18

    move/from16 v7, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v0, p5

    const v1, -0x30cbc77a    # -3.0236032E9f

    .line 492
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p6, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v3

    const/16 v8, 0x10

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    move v3, v8

    :goto_1
    or-int/2addr v1, v3

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x100

    goto :goto_2

    :cond_2
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v1, v3

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x4000

    goto :goto_3

    :cond_3
    const/16 v3, 0x2000

    :goto_3
    or-int/2addr v1, v3

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/high16 v3, 0x20000

    goto :goto_4

    :cond_4
    const/high16 v3, 0x10000

    :goto_4
    or-int/2addr v1, v3

    const v3, 0x2492493

    and-int/2addr v3, v1

    const v9, 0x2492492

    if-eq v3, v9, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    move v3, v2

    :goto_5
    and-int/lit8 v9, v1, 0x1

    invoke-virtual {v0, v9, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v3, p6, 0x1

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_6

    .line 493
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    :cond_7
    :goto_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    shr-int/lit8 v1, v1, 0x6

    and-int/lit8 v1, v1, 0xe

    .line 494
    invoke-static {v4, v0, v1}, Landroidx/work/OperationKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v7, :cond_8

    .line 495
    iget-wide v9, v5, Landroidx/compose/material3/TextFieldColors;->disabledContainerColor:J

    goto :goto_7

    :cond_8
    if-eqz v1, :cond_9

    .line 496
    iget-wide v9, v5, Landroidx/compose/material3/TextFieldColors;->focusedContainerColor:J

    goto :goto_7

    .line 497
    :cond_9
    iget-wide v9, v5, Landroidx/compose/material3/TextFieldColors;->unfocusedContainerColor:J

    .line 498
    :goto_7
    sget-object v1, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v1, v0}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v1

    .line 499
    invoke-static {v9, v10, v1, v0}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/State;

    move-result-object v15

    .line 500
    new-instance v11, Landroidx/compose/material3/TextFieldDefaults$Container$1;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 501
    const-class v14, Landroidx/compose/runtime/State;

    const-string/jumbo v16, "value"

    const-string v17, "getValue()Ljava/lang/Object;"

    invoke-direct/range {v11 .. v17}, Landroidx/compose/material3/TextFieldDefaults$Container$1;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    new-instance v1, Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;

    invoke-direct {v1, v11}, Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;-><init>(Landroidx/compose/material3/TextFieldDefaults$Container$1;)V

    .line 503
    new-instance v3, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;

    invoke-direct {v3, v8, v6, v1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v1, v3}, Landroidx/compose/ui/draw/ClipKt;->drawWithCache(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 504
    new-instance v3, Landroidx/compose/material3/IndicatorLineElement;

    .line 505
    invoke-direct {v3, v7, v4, v5, v6}, Landroidx/compose/material3/IndicatorLineElement;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;)V

    .line 506
    invoke-interface {v1, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 507
    invoke-static {v1, v0, v2}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    goto :goto_8

    .line 508
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 509
    :goto_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_b

    new-instance v0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    move-object/from16 v3, p0

    move/from16 v1, p6

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 510
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public Container-4EFweAY(ZZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFLandroidx/compose/runtime/GapComposer;II)V
    .locals 24

    .line 1
    move/from16 v2, p1

    .line 2
    .line 3
    move/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v6, p5

    .line 8
    .line 9
    move-object/from16 v7, p6

    .line 10
    .line 11
    move-object/from16 v0, p9

    .line 12
    .line 13
    move/from16 v10, p10

    .line 14
    .line 15
    move/from16 v11, p11

    .line 16
    .line 17
    const v1, 0x3db82288

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x2

    .line 32
    :goto_0
    or-int/2addr v1, v10

    .line 33
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    const/16 v5, 0x20

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/16 v5, 0x10

    .line 43
    .line 44
    :goto_1
    or-int/2addr v1, v5

    .line 45
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    const/16 v5, 0x100

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/16 v5, 0x80

    .line 55
    .line 56
    :goto_2
    or-int/2addr v1, v5

    .line 57
    and-int/lit8 v5, v11, 0x8

    .line 58
    .line 59
    if-eqz v5, :cond_4

    .line 60
    .line 61
    or-int/lit16 v1, v1, 0xc00

    .line 62
    .line 63
    :cond_3
    move-object/from16 v9, p4

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_4
    and-int/lit16 v9, v10, 0xc00

    .line 67
    .line 68
    if-nez v9, :cond_3

    .line 69
    .line 70
    move-object/from16 v9, p4

    .line 71
    .line 72
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v12

    .line 76
    if-eqz v12, :cond_5

    .line 77
    .line 78
    const/16 v12, 0x800

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_5
    const/16 v12, 0x400

    .line 82
    .line 83
    :goto_3
    or-int/2addr v1, v12

    .line 84
    :goto_4
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    if-eqz v12, :cond_6

    .line 89
    .line 90
    const/16 v12, 0x4000

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_6
    const/16 v12, 0x2000

    .line 94
    .line 95
    :goto_5
    or-int/2addr v1, v12

    .line 96
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v12

    .line 100
    if-eqz v12, :cond_7

    .line 101
    .line 102
    const/high16 v12, 0x20000

    .line 103
    .line 104
    goto :goto_6

    .line 105
    :cond_7
    const/high16 v12, 0x10000

    .line 106
    .line 107
    :goto_6
    or-int/2addr v1, v12

    .line 108
    const/high16 v12, 0x180000

    .line 109
    .line 110
    and-int/2addr v12, v10

    .line 111
    if-nez v12, :cond_a

    .line 112
    .line 113
    and-int/lit8 v12, v11, 0x40

    .line 114
    .line 115
    if-nez v12, :cond_8

    .line 116
    .line 117
    move/from16 v12, p7

    .line 118
    .line 119
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 120
    .line 121
    .line 122
    move-result v13

    .line 123
    if-eqz v13, :cond_9

    .line 124
    .line 125
    const/high16 v13, 0x100000

    .line 126
    .line 127
    goto :goto_7

    .line 128
    :cond_8
    move/from16 v12, p7

    .line 129
    .line 130
    :cond_9
    const/high16 v13, 0x80000

    .line 131
    .line 132
    :goto_7
    or-int/2addr v1, v13

    .line 133
    goto :goto_8

    .line 134
    :cond_a
    move/from16 v12, p7

    .line 135
    .line 136
    :goto_8
    const/high16 v13, 0xc00000

    .line 137
    .line 138
    and-int/2addr v13, v10

    .line 139
    if-nez v13, :cond_d

    .line 140
    .line 141
    and-int/lit16 v13, v11, 0x80

    .line 142
    .line 143
    if-nez v13, :cond_b

    .line 144
    .line 145
    move/from16 v13, p8

    .line 146
    .line 147
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 148
    .line 149
    .line 150
    move-result v14

    .line 151
    if-eqz v14, :cond_c

    .line 152
    .line 153
    const/high16 v14, 0x800000

    .line 154
    .line 155
    goto :goto_9

    .line 156
    :cond_b
    move/from16 v13, p8

    .line 157
    .line 158
    :cond_c
    const/high16 v14, 0x400000

    .line 159
    .line 160
    :goto_9
    or-int/2addr v1, v14

    .line 161
    goto :goto_a

    .line 162
    :cond_d
    move/from16 v13, p8

    .line 163
    .line 164
    :goto_a
    const v14, 0x2492493

    .line 165
    .line 166
    .line 167
    and-int/2addr v14, v1

    .line 168
    const v15, 0x2492492

    .line 169
    .line 170
    .line 171
    if-eq v14, v15, :cond_e

    .line 172
    .line 173
    const/4 v14, 0x1

    .line 174
    goto :goto_b

    .line 175
    :cond_e
    const/4 v14, 0x0

    .line 176
    :goto_b
    and-int/lit8 v15, v1, 0x1

    .line 177
    .line 178
    invoke-virtual {v0, v15, v14}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 179
    .line 180
    .line 181
    move-result v14

    .line 182
    if-eqz v14, :cond_1c

    .line 183
    .line 184
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 185
    .line 186
    .line 187
    and-int/lit8 v14, v10, 0x1

    .line 188
    .line 189
    const v15, -0x1c00001

    .line 190
    .line 191
    .line 192
    const v16, -0x380001

    .line 193
    .line 194
    .line 195
    if-eqz v14, :cond_12

    .line 196
    .line 197
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 198
    .line 199
    .line 200
    move-result v14

    .line 201
    if-eqz v14, :cond_f

    .line 202
    .line 203
    goto :goto_c

    .line 204
    :cond_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 205
    .line 206
    .line 207
    and-int/lit8 v5, v11, 0x40

    .line 208
    .line 209
    if-eqz v5, :cond_10

    .line 210
    .line 211
    and-int v1, v1, v16

    .line 212
    .line 213
    :cond_10
    and-int/lit16 v5, v11, 0x80

    .line 214
    .line 215
    if-eqz v5, :cond_11

    .line 216
    .line 217
    and-int/2addr v1, v15

    .line 218
    :cond_11
    move-object v5, v9

    .line 219
    move v9, v12

    .line 220
    goto :goto_f

    .line 221
    :cond_12
    :goto_c
    if-eqz v5, :cond_13

    .line 222
    .line 223
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 224
    .line 225
    goto :goto_d

    .line 226
    :cond_13
    move-object v5, v9

    .line 227
    :goto_d
    and-int/lit8 v9, v11, 0x40

    .line 228
    .line 229
    if-eqz v9, :cond_14

    .line 230
    .line 231
    and-int v1, v1, v16

    .line 232
    .line 233
    const/high16 v9, 0x40000000    # 2.0f

    .line 234
    .line 235
    goto :goto_e

    .line 236
    :cond_14
    move v9, v12

    .line 237
    :goto_e
    and-int/lit16 v12, v11, 0x80

    .line 238
    .line 239
    if-eqz v12, :cond_15

    .line 240
    .line 241
    and-int/2addr v1, v15

    .line 242
    const/high16 v12, 0x3f800000    # 1.0f

    .line 243
    .line 244
    move v13, v12

    .line 245
    :cond_15
    :goto_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 246
    .line 247
    .line 248
    shr-int/lit8 v1, v1, 0x6

    .line 249
    .line 250
    and-int/lit8 v1, v1, 0xe

    .line 251
    .line 252
    invoke-static {v4, v0, v1}, Landroidx/work/OperationKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/runtime/MutableState;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    check-cast v1, Ljava/lang/Boolean;

    .line 261
    .line 262
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    invoke-virtual {v6, v2, v3, v1}, Landroidx/compose/material3/TextFieldColors;->indicatorColor-XeAY9LY$material3(ZZZ)J

    .line 267
    .line 268
    .line 269
    move-result-wide v14

    .line 270
    sget-object v12, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 271
    .line 272
    invoke-static {v12, v0}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/animation/core/SpringSpec;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    if-eqz v2, :cond_16

    .line 277
    .line 278
    move/from16 p4, v1

    .line 279
    .line 280
    const v1, -0x63cef6df

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 284
    .line 285
    .line 286
    invoke-static {v14, v15, v8, v0}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/State;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    const/4 v8, 0x0

    .line 291
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 292
    .line 293
    .line 294
    goto :goto_10

    .line 295
    :cond_16
    move/from16 p4, v1

    .line 296
    .line 297
    const/4 v8, 0x0

    .line 298
    const v1, -0x63cdbb6c

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 302
    .line 303
    .line 304
    new-instance v1, Landroidx/compose/ui/graphics/Color;

    .line 305
    .line 306
    invoke-direct {v1, v14, v15}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 307
    .line 308
    .line 309
    invoke-static {v1, v0}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 314
    .line 315
    .line 316
    :goto_10
    sget-object v14, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 317
    .line 318
    invoke-static {v14, v0}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/animation/core/SpringSpec;

    .line 319
    .line 320
    .line 321
    move-result-object v14

    .line 322
    if-eqz v2, :cond_18

    .line 323
    .line 324
    const v15, -0x63caf6c8

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 328
    .line 329
    .line 330
    if-eqz p4, :cond_17

    .line 331
    .line 332
    move v15, v9

    .line 333
    goto :goto_11

    .line 334
    :cond_17
    move v15, v13

    .line 335
    :goto_11
    invoke-static {v15, v14, v0}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateDpAsState-AjpBEmI(FLandroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/State;

    .line 336
    .line 337
    .line 338
    move-result-object v14

    .line 339
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 340
    .line 341
    .line 342
    goto :goto_12

    .line 343
    :cond_18
    const v14, -0x63c82f99

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 347
    .line 348
    .line 349
    new-instance v14, Landroidx/compose/ui/unit/Dp;

    .line 350
    .line 351
    invoke-direct {v14, v13}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 352
    .line 353
    .line 354
    invoke-static {v14, v0}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 355
    .line 356
    .line 357
    move-result-object v14

    .line 358
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 359
    .line 360
    .line 361
    :goto_12
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v8

    .line 365
    check-cast v8, Landroidx/compose/ui/unit/Dp;

    .line 366
    .line 367
    iget v8, v8, Landroidx/compose/ui/unit/Dp;->value:F

    .line 368
    .line 369
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 374
    .line 375
    iget-wide v14, v1, Landroidx/compose/ui/graphics/Color;->value:J

    .line 376
    .line 377
    invoke-static {v8, v14, v15}, Landroidx/compose/foundation/ImageKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-static {v1, v0}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    if-nez v2, :cond_19

    .line 386
    .line 387
    iget-wide v14, v6, Landroidx/compose/material3/TextFieldColors;->disabledContainerColor:J

    .line 388
    .line 389
    goto :goto_13

    .line 390
    :cond_19
    if-eqz v3, :cond_1a

    .line 391
    .line 392
    iget-wide v14, v6, Landroidx/compose/material3/TextFieldColors;->errorContainerColor:J

    .line 393
    .line 394
    goto :goto_13

    .line 395
    :cond_1a
    if-eqz p4, :cond_1b

    .line 396
    .line 397
    iget-wide v14, v6, Landroidx/compose/material3/TextFieldColors;->focusedContainerColor:J

    .line 398
    .line 399
    goto :goto_13

    .line 400
    :cond_1b
    iget-wide v14, v6, Landroidx/compose/material3/TextFieldColors;->unfocusedContainerColor:J

    .line 401
    .line 402
    :goto_13
    invoke-static {v12, v0}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/animation/core/SpringSpec;

    .line 403
    .line 404
    .line 405
    move-result-object v8

    .line 406
    invoke-static {v14, v15, v8, v0}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/State;

    .line 407
    .line 408
    .line 409
    move-result-object v21

    .line 410
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    check-cast v1, Landroidx/compose/foundation/BorderStroke;

    .line 415
    .line 416
    iget v8, v1, Landroidx/compose/foundation/BorderStroke;->width:F

    .line 417
    .line 418
    iget-object v1, v1, Landroidx/compose/foundation/BorderStroke;->brush:Landroidx/compose/ui/graphics/SolidColor;

    .line 419
    .line 420
    new-instance v12, Landroidx/compose/foundation/BorderModifierNodeElement;

    .line 421
    .line 422
    invoke-direct {v12, v8, v1, v7}, Landroidx/compose/foundation/BorderModifierNodeElement;-><init>(FLandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/Shape;)V

    .line 423
    .line 424
    .line 425
    invoke-interface {v5, v12}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    new-instance v17, Landroidx/compose/material3/TextFieldDefaults$Container$1;

    .line 430
    .line 431
    const/16 v18, 0x0

    .line 432
    .line 433
    const/16 v19, 0x5

    .line 434
    .line 435
    const-class v20, Landroidx/compose/runtime/State;

    .line 436
    .line 437
    const-string/jumbo v22, "value"

    .line 438
    .line 439
    .line 440
    const-string v23, "getValue()Ljava/lang/Object;"

    .line 441
    .line 442
    invoke-direct/range {v17 .. v23}, Landroidx/compose/material3/TextFieldDefaults$Container$1;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    move-object/from16 v8, v17

    .line 446
    .line 447
    new-instance v12, Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;

    .line 448
    .line 449
    invoke-direct {v12, v8}, Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;-><init>(Landroidx/compose/material3/TextFieldDefaults$Container$1;)V

    .line 450
    .line 451
    .line 452
    new-instance v8, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;

    .line 453
    .line 454
    const/16 v14, 0x10

    .line 455
    .line 456
    invoke-direct {v8, v14, v7, v12}, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 457
    .line 458
    .line 459
    invoke-static {v1, v8}, Landroidx/compose/ui/draw/ClipKt;->drawWithCache(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    const/4 v8, 0x0

    .line 464
    invoke-static {v1, v0, v8}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 465
    .line 466
    .line 467
    move v8, v9

    .line 468
    :goto_14
    move v9, v13

    .line 469
    goto :goto_15

    .line 470
    :cond_1c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 471
    .line 472
    .line 473
    move-object v5, v9

    .line 474
    move v8, v12

    .line 475
    goto :goto_14

    .line 476
    :goto_15
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 477
    .line 478
    .line 479
    move-result-object v12

    .line 480
    if-eqz v12, :cond_1d

    .line 481
    .line 482
    new-instance v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$$ExternalSyntheticLambda0;

    .line 483
    .line 484
    move-object/from16 v1, p0

    .line 485
    .line 486
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/OutlinedTextFieldDefaults$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/material3/TextFieldDefaults;ZZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFII)V

    .line 487
    .line 488
    .line 489
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 490
    .line 491
    :cond_1d
    return-void
.end method

.method public DecorationBox(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V
    .locals 27

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v0, p7

    move-object/from16 v9, p8

    move-object/from16 v1, p11

    move/from16 v3, p12

    const v5, 0x6bb456c1

    .line 27
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v5, v3, 0x6

    const/4 v8, 0x4

    if-nez v5, :cond_1

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v8

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v3

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    and-int/lit8 v10, v3, 0x30

    if-nez v10, :cond_3

    move-object/from16 v10, p2

    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/16 v13, 0x20

    goto :goto_2

    :cond_2
    const/16 v13, 0x10

    :goto_2
    or-int/2addr v5, v13

    goto :goto_3

    :cond_3
    move-object/from16 v10, p2

    :goto_3
    and-int/lit16 v13, v3, 0x180

    const/16 v15, 0x100

    if-nez v13, :cond_5

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v13

    if-eqz v13, :cond_4

    move v13, v15

    goto :goto_4

    :cond_4
    const/16 v13, 0x80

    :goto_4
    or-int/2addr v5, v13

    :cond_5
    and-int/lit16 v13, v3, 0xc00

    move/from16 v16, v13

    const/4 v13, 0x0

    const/16 v17, 0x400

    const/16 v18, 0x800

    if-nez v16, :cond_7

    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_6

    move/from16 v16, v18

    goto :goto_5

    :cond_6
    move/from16 v16, v17

    :goto_5
    or-int v5, v5, v16

    :cond_7
    and-int/lit16 v7, v3, 0x6000

    const/16 v19, 0x2000

    if-nez v7, :cond_9

    move-object/from16 v7, p4

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    const/16 v21, 0x4000

    goto :goto_6

    :cond_8
    move/from16 v21, v19

    :goto_6
    or-int v5, v5, v21

    goto :goto_7

    :cond_9
    move-object/from16 v7, p4

    :goto_7
    const/high16 v21, 0x30000

    and-int v21, v3, v21

    const/high16 v22, 0x20000

    const/high16 v23, 0x10000

    if-nez v21, :cond_b

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    move/from16 v21, v22

    goto :goto_8

    :cond_a
    move/from16 v21, v23

    :goto_8
    or-int v5, v5, v21

    :cond_b
    const/high16 v21, 0x180000

    and-int v21, v3, v21

    const/4 v12, 0x0

    if-nez v21, :cond_d

    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v21

    if-eqz v21, :cond_c

    const/high16 v21, 0x100000

    goto :goto_9

    :cond_c
    const/high16 v21, 0x80000

    :goto_9
    or-int v5, v5, v21

    :cond_d
    const/high16 v21, 0xc00000

    and-int v24, v3, v21

    const/4 v13, 0x0

    if-nez v24, :cond_f

    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    const/high16 v24, 0x800000

    goto :goto_a

    :cond_e
    const/high16 v24, 0x400000

    :goto_a
    or-int v5, v5, v24

    :cond_f
    const/high16 v24, 0x6000000

    and-int v25, v3, v24

    if-nez v25, :cond_11

    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    const/high16 v25, 0x4000000

    goto :goto_b

    :cond_10
    const/high16 v25, 0x2000000

    :goto_b
    or-int v5, v5, v25

    :cond_11
    const/high16 v25, 0x30000000

    and-int v25, v3, v25

    if-nez v25, :cond_13

    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_12

    const/high16 v25, 0x20000000

    goto :goto_c

    :cond_12
    const/high16 v25, 0x10000000

    :goto_c
    or-int v5, v5, v25

    :cond_13
    move-object/from16 v14, p6

    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_14

    move/from16 v16, v8

    goto :goto_d

    :cond_14
    const/16 v16, 0x2

    :goto_d
    or-int v16, v24, v16

    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_15

    const/16 v20, 0x20

    goto :goto_e

    :cond_15
    const/16 v20, 0x10

    :goto_e
    or-int v16, v16, v20

    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    move/from16 v25, v15

    goto :goto_f

    :cond_16
    const/16 v25, 0x80

    :goto_f
    or-int v15, v16, v25

    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    move/from16 v17, v18

    :cond_17
    or-int v13, v15, v17

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18

    const/16 v19, 0x4000

    :cond_18
    or-int v13, v13, v19

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19

    goto :goto_10

    :cond_19
    move/from16 v22, v23

    :goto_10
    or-int v13, v13, v22

    const/high16 v15, 0xc80000

    or-int/2addr v13, v15

    const v15, 0x12492493

    and-int/2addr v15, v5

    const v12, 0x12492492

    const/16 v17, 0x1

    if-ne v15, v12, :cond_1b

    const v12, 0x2492493

    and-int/2addr v12, v13

    const v15, 0x2492492

    if-eq v12, v15, :cond_1a

    goto :goto_11

    :cond_1a
    const/4 v12, 0x0

    goto :goto_12

    :cond_1b
    :goto_11
    move/from16 v12, v17

    :goto_12
    and-int/lit8 v15, v5, 0x1

    invoke-virtual {v1, v15, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v12

    if-eqz v12, :cond_22

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v12, v3, 0x1

    const v15, -0x380001

    if-eqz v12, :cond_1d

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v12

    if-eqz v12, :cond_1c

    goto :goto_13

    .line 28
    :cond_1c
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    and-int v12, v13, v15

    move-object/from16 v19, p10

    move v13, v12

    move-object/from16 v12, p9

    goto :goto_14

    .line 29
    :cond_1d
    :goto_13
    new-instance v12, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move/from16 v18, v15

    const/high16 v15, 0x41800000    # 16.0f

    .line 30
    invoke-direct {v12, v15, v15, v15, v15}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    and-int v13, v13, v18

    .line 31
    new-instance v15, Landroidx/compose/material3/TextFieldDefaults$DecorationBox$1;

    invoke-direct {v15, v4, v6, v9, v0}, Landroidx/compose/material3/TextFieldDefaults$DecorationBox$1;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;)V

    const v11, 0x18e8c5b6

    invoke-static {v11, v15, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    move-object/from16 v19, v11

    .line 32
    :goto_14
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    and-int/lit8 v11, v5, 0xe

    if-ne v11, v8, :cond_1e

    move/from16 v8, v17

    goto :goto_15

    :cond_1e
    const/4 v8, 0x0

    :goto_15
    const v11, 0xe000

    and-int v15, v5, v11

    move/from16 p9, v11

    const/16 v11, 0x4000

    if-ne v15, v11, :cond_1f

    goto :goto_16

    :cond_1f
    const/16 v17, 0x0

    :goto_16
    or-int v8, v8, v17

    .line 33
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v8, :cond_20

    .line 34
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v11, v8, :cond_21

    .line 35
    :cond_20
    new-instance v8, Landroidx/compose/ui/text/AnnotatedString;

    invoke-direct {v8, v2}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    new-instance v11, Landroidx/compose/ui/text/input/TransformedText;

    .line 37
    sget-object v15, Landroidx/compose/ui/text/input/OffsetMapping$Companion;->Identity:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    .line 38
    invoke-direct {v11, v8, v15}, Landroidx/compose/ui/text/input/TransformedText;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/input/OffsetMapping;)V

    .line 39
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 40
    :cond_21
    check-cast v11, Landroidx/compose/ui/text/input/TransformedText;

    .line 41
    iget-object v8, v11, Landroidx/compose/ui/text/input/TransformedText;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 42
    iget-object v8, v8, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 43
    sget-object v3, Landroidx/compose/material3/internal/TextFieldType;->Filled:Landroidx/compose/material3/internal/TextFieldType;

    .line 44
    new-instance v6, Landroidx/compose/material3/TextFieldLabelPosition$Attached;

    .line 45
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    const v11, -0x50a724b7

    .line 46
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const/4 v11, 0x0

    .line 47
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    shl-int/lit8 v11, v5, 0x3

    and-int/lit16 v11, v11, 0x380

    or-int/lit8 v11, v11, 0x6

    shr-int/lit8 v15, v5, 0x9

    const/high16 v16, 0x70000

    and-int v16, v15, v16

    or-int v11, v11, v16

    const/high16 v16, 0x380000

    and-int v17, v15, v16

    or-int v11, v11, v17

    shl-int/lit8 v17, v13, 0x15

    const/high16 v18, 0x1c00000

    and-int v18, v17, v18

    or-int v11, v11, v18

    const/high16 v18, 0xe000000

    and-int v18, v17, v18

    or-int v11, v11, v18

    const/high16 v18, 0x70000000

    and-int v17, v17, v18

    or-int v11, v11, v17

    shr-int/lit8 v17, v13, 0x9

    and-int/lit8 v17, v17, 0xe

    shr-int/lit8 v18, v5, 0x6

    and-int/lit8 v18, v18, 0x70

    or-int v17, v17, v18

    and-int/lit16 v0, v5, 0x380

    or-int v0, v17, v0

    and-int/lit16 v15, v15, 0x1c00

    or-int/2addr v0, v15

    shr-int/lit8 v5, v5, 0x3

    and-int v5, v5, p9

    or-int/2addr v0, v5

    shl-int/lit8 v5, v13, 0x3

    and-int v5, v5, v16

    or-int/2addr v0, v5

    or-int v22, v0, v21

    const/4 v7, 0x0

    move-object v4, v8

    const/4 v8, 0x0

    const/4 v10, 0x0

    move/from16 v21, v11

    const/4 v11, 0x0

    move-object/from16 v17, v12

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object/from16 v5, p2

    move-object/from16 v16, p5

    move-object/from16 v20, v1

    move-object/from16 v18, v9

    move-object v9, v14

    const/4 v13, 0x0

    move/from16 v14, p3

    .line 48
    invoke-static/range {v3 .. v22}, Landroidx/compose/material3/internal/LayoutUtilKt;->CommonDecorationBox(Landroidx/compose/material3/internal/TextFieldType;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldLabelPosition$Attached;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;II)V

    move-object/from16 v10, v17

    move-object/from16 v11, v19

    goto :goto_17

    .line 49
    :cond_22
    invoke-virtual/range {p11 .. p11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 50
    :goto_17
    invoke-virtual/range {p11 .. p11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_23

    new-instance v0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda0;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/material3/TextFieldDefaults;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;I)V

    .line 51
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_23
    return-void
.end method

.method public DecorationBox(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 31

    move-object/from16 v2, p1

    move-object/from16 v9, p8

    move-object/from16 v0, p17

    move/from16 v1, p18

    const v3, -0x67408512

    .line 1
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v3, v1, 0x6

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    and-int/lit8 v6, v1, 0x30

    move-object/from16 v12, p2

    if-nez v6, :cond_3

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :cond_3
    and-int/lit16 v6, v1, 0x180

    if-nez v6, :cond_5

    move/from16 v6, p3

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0x100

    goto :goto_3

    :cond_4
    const/16 v13, 0x80

    :goto_3
    or-int/2addr v3, v13

    goto :goto_4

    :cond_5
    move/from16 v6, p3

    :goto_4
    and-int/lit16 v13, v1, 0xc00

    if-nez v13, :cond_7

    move/from16 v13, p4

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_6

    const/16 v16, 0x800

    goto :goto_5

    :cond_6
    const/16 v16, 0x400

    :goto_5
    or-int v3, v3, v16

    goto :goto_6

    :cond_7
    move/from16 v13, p4

    :goto_6
    and-int/lit16 v4, v1, 0x6000

    const/16 v17, 0x2000

    if-nez v4, :cond_9

    move-object/from16 v4, p5

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    const/16 v19, 0x4000

    goto :goto_7

    :cond_8
    move/from16 v19, v17

    :goto_7
    or-int v3, v3, v19

    goto :goto_8

    :cond_9
    move-object/from16 v4, p5

    :goto_8
    const/high16 v19, 0x30000

    and-int v19, v1, v19

    const/high16 v20, 0x10000

    move-object/from16 v8, p6

    if-nez v19, :cond_b

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    const/high16 v21, 0x20000

    goto :goto_9

    :cond_a
    move/from16 v21, v20

    :goto_9
    or-int v3, v3, v21

    :cond_b
    const/high16 v21, 0x180000

    and-int v21, v1, v21

    move/from16 v10, p7

    if-nez v21, :cond_d

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v22

    if-eqz v22, :cond_c

    const/high16 v22, 0x100000

    goto :goto_a

    :cond_c
    const/high16 v22, 0x80000

    :goto_a
    or-int v3, v3, v22

    :cond_d
    const/high16 v22, 0xc00000

    and-int v23, v1, v22

    if-nez v23, :cond_f

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    const/high16 v23, 0x800000

    goto :goto_b

    :cond_e
    const/high16 v23, 0x400000

    :goto_b
    or-int v3, v3, v23

    :cond_f
    const/high16 v23, 0x6000000

    and-int v23, v1, v23

    move-object/from16 v11, p9

    if-nez v23, :cond_11

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    const/high16 v24, 0x4000000

    goto :goto_c

    :cond_10
    const/high16 v24, 0x2000000

    :goto_c
    or-int v3, v3, v24

    :cond_11
    const/high16 v24, 0x30000000

    and-int v24, v1, v24

    const/4 v14, 0x0

    if-nez v24, :cond_13

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    const/high16 v24, 0x20000000

    goto :goto_d

    :cond_12
    const/high16 v24, 0x10000000

    :goto_d
    or-int v3, v3, v24

    :cond_13
    move-object/from16 v14, p10

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_14

    const/16 v16, 0x4

    goto :goto_e

    :cond_14
    const/16 v16, 0x2

    :goto_e
    const/high16 v26, 0xd80000

    or-int v16, v26, v16

    move-object/from16 v15, p11

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_15

    const/16 v18, 0x20

    goto :goto_f

    :cond_15
    const/16 v18, 0x10

    :goto_f
    or-int v16, v16, v18

    move-object/from16 v7, p12

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    const/16 v21, 0x100

    goto :goto_10

    :cond_16
    const/16 v21, 0x80

    :goto_10
    or-int v16, v16, v21

    move-object/from16 v5, p13

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    const/16 v25, 0x800

    goto :goto_11

    :cond_17
    const/16 v25, 0x400

    :goto_11
    or-int v16, v16, v25

    move-object/from16 v1, p14

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    const/16 v17, 0x4000

    :cond_18
    or-int v16, v16, v17

    or-int v16, v16, v20

    const v17, 0x12492493

    and-int v1, v3, v17

    const v4, 0x12492492

    const/16 v17, 0x1

    if-ne v1, v4, :cond_1a

    const v1, 0x492493

    and-int v1, v16, v1

    const v4, 0x492492

    if-eq v1, v4, :cond_19

    goto :goto_12

    :cond_19
    const/4 v1, 0x0

    goto :goto_13

    :cond_1a
    :goto_12
    move/from16 v1, v17

    :goto_13
    and-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v1, p18, 0x1

    const v4, -0x70001

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_14

    .line 2
    :cond_1b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    and-int v1, v16, v4

    move v4, v1

    move-object/from16 v1, p15

    goto :goto_15

    .line 3
    :cond_1c
    :goto_14
    new-instance v1, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move/from16 v20, v4

    const/high16 v4, 0x41800000    # 16.0f

    .line 4
    invoke-direct {v1, v4, v4, v4, v4}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    and-int v4, v16, v20

    .line 5
    :goto_15
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    and-int/lit8 v5, v3, 0xe

    move-object/from16 p15, v1

    const/4 v1, 0x4

    if-ne v5, v1, :cond_1d

    move/from16 v1, v17

    goto :goto_16

    :cond_1d
    const/4 v1, 0x0

    :goto_16
    const v19, 0xe000

    and-int v5, v3, v19

    move/from16 v20, v1

    const/16 v1, 0x4000

    if-ne v5, v1, :cond_1e

    goto :goto_17

    :cond_1e
    const/16 v17, 0x0

    :goto_17
    or-int v1, v20, v17

    .line 6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_1f

    .line 7
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v5, v1, :cond_20

    .line 8
    :cond_1f
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString;

    invoke-direct {v1, v2}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    new-instance v5, Landroidx/compose/ui/text/input/TransformedText;

    .line 10
    sget-object v2, Landroidx/compose/ui/text/input/OffsetMapping$Companion;->Identity:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    .line 11
    invoke-direct {v5, v1, v2}, Landroidx/compose/ui/text/input/TransformedText;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/input/OffsetMapping;)V

    .line 12
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 13
    :cond_20
    check-cast v5, Landroidx/compose/ui/text/input/TransformedText;

    .line 14
    iget-object v1, v5, Landroidx/compose/ui/text/input/TransformedText;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 15
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 16
    sget-object v10, Landroidx/compose/material3/internal/TextFieldType;->Outlined:Landroidx/compose/material3/internal/TextFieldType;

    .line 17
    new-instance v13, Landroidx/compose/material3/TextFieldLabelPosition$Attached;

    .line 18
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x3

    if-nez v9, :cond_21

    const v5, 0x72dc957c

    .line 19
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const/4 v5, 0x0

    .line 20
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move/from16 v17, v2

    const/4 v2, 0x0

    goto :goto_18

    :cond_21
    const v5, 0x72dc957d

    .line 21
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    new-instance v5, Landroidx/compose/material3/TooltipKt$animateTooltip$2;

    invoke-direct {v5, v2, v9}, Landroidx/compose/material3/TooltipKt$animateTooltip$2;-><init>(ILjava/lang/Object;)V

    move/from16 v17, v2

    const v2, -0x570185d2

    invoke-static {v2, v5, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    const/4 v5, 0x0

    .line 22
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    :goto_18
    shl-int/lit8 v5, v3, 0x3

    and-int/lit16 v5, v5, 0x380

    or-int/lit8 v5, v5, 0x6

    shr-int/lit8 v0, v3, 0x9

    const/high16 v16, 0x70000

    and-int v16, v0, v16

    or-int v5, v5, v16

    const/high16 v16, 0x380000

    and-int v18, v0, v16

    or-int v5, v5, v18

    shl-int/lit8 v18, v4, 0x15

    const/high16 v20, 0x1c00000

    and-int v20, v18, v20

    or-int v5, v5, v20

    const/high16 v20, 0xe000000

    and-int v20, v18, v20

    or-int v5, v5, v20

    const/high16 v20, 0x70000000

    and-int v18, v18, v20

    or-int v28, v5, v18

    shr-int/lit8 v5, v4, 0x9

    and-int/lit8 v5, v5, 0xe

    shr-int/lit8 v18, v3, 0x6

    and-int/lit8 v18, v18, 0x70

    or-int v5, v5, v18

    move-object/from16 v18, v1

    and-int/lit16 v1, v3, 0x380

    or-int/2addr v1, v5

    and-int/lit16 v0, v0, 0x1c00

    or-int/2addr v0, v1

    shr-int/lit8 v1, v3, 0x3

    and-int v1, v1, v19

    or-int/2addr v0, v1

    shl-int/lit8 v1, v4, 0x6

    and-int v1, v1, v16

    or-int/2addr v0, v1

    or-int v29, v0, v22

    move/from16 v20, p4

    move/from16 v22, p7

    move-object/from16 v19, p13

    move-object/from16 v25, p14

    move-object/from16 v24, p15

    move-object/from16 v26, p16

    move-object/from16 v27, p17

    move/from16 v21, v6

    move-object/from16 v23, v8

    move-object/from16 v16, v14

    move-object/from16 v17, v15

    move-object v14, v2

    move-object v15, v11

    move-object/from16 v11, v18

    move-object/from16 v18, v7

    .line 23
    invoke-static/range {v10 .. v29}, Landroidx/compose/material3/internal/LayoutUtilKt;->CommonDecorationBox(Landroidx/compose/material3/internal/TextFieldType;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldLabelPosition$Attached;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;II)V

    move-object/from16 v16, v24

    goto :goto_19

    .line 24
    :cond_22
    invoke-virtual/range {p17 .. p17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v16, p15

    .line 25
    :goto_19
    invoke-virtual/range {p17 .. p17}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_23

    move-object v1, v0

    new-instance v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$$ExternalSyntheticLambda1;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v17, p16

    move/from16 v18, p18

    move-object/from16 v30, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v18}, Landroidx/compose/material3/OutlinedTextFieldDefaults$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/material3/TextFieldDefaults;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    move-object/from16 v1, v30

    .line 26
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_23
    return-void
.end method
