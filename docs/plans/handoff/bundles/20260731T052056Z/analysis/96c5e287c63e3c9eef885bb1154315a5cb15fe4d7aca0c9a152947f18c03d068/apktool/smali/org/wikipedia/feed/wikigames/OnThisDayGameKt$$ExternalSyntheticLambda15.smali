.class public final synthetic Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda15;->f$0:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda15;->f$1:Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/16 v4, 0x10

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    iget-object v7, v0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda15;->f$1:Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;

    .line 13
    .line 14
    iget-object v0, v0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda15;->f$0:Landroid/content/Context;

    .line 15
    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    move-object/from16 v1, p1

    .line 20
    .line 21
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 22
    .line 23
    move-object/from16 v8, p2

    .line 24
    .line 25
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 26
    .line 27
    move-object/from16 v9, p3

    .line 28
    .line 29
    check-cast v9, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    and-int/lit8 v1, v9, 0x11

    .line 39
    .line 40
    if-eq v1, v4, :cond_0

    .line 41
    .line 42
    move v1, v6

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v1, v5

    .line 45
    :goto_0
    and-int/lit8 v4, v9, 0x1

    .line 46
    .line 47
    invoke-virtual {v8, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    iget-object v1, v7, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->langCode:Ljava/lang/String;

    .line 54
    .line 55
    const v4, 0x7f1204b6

    .line 56
    .line 57
    .line 58
    new-array v5, v5, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-static {v0, v1, v4, v5}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 65
    .line 66
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 71
    .line 72
    iget-object v9, v1, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 73
    .line 74
    sget-object v14, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 75
    .line 76
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 77
    .line 78
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 83
    .line 84
    iget-wide v10, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 85
    .line 86
    const/16 v20, 0x0

    .line 87
    .line 88
    const v21, 0xfffffa

    .line 89
    .line 90
    .line 91
    const-wide/16 v12, 0x0

    .line 92
    .line 93
    const/4 v15, 0x0

    .line 94
    const-wide/16 v16, 0x0

    .line 95
    .line 96
    const-wide/16 v18, 0x0

    .line 97
    .line 98
    invoke-static/range {v9 .. v21}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 99
    .line 100
    .line 101
    move-result-object v27

    .line 102
    new-instance v1, Landroidx/compose/ui/text/style/TextAlign;

    .line 103
    .line 104
    invoke-direct {v1, v3}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 105
    .line 106
    .line 107
    const/16 v30, 0x0

    .line 108
    .line 109
    const v31, 0x1fbfe

    .line 110
    .line 111
    .line 112
    const/4 v9, 0x0

    .line 113
    const-wide/16 v10, 0x0

    .line 114
    .line 115
    const/4 v12, 0x0

    .line 116
    const-wide/16 v13, 0x0

    .line 117
    .line 118
    const/16 v16, 0x0

    .line 119
    .line 120
    const-wide/16 v17, 0x0

    .line 121
    .line 122
    const-wide/16 v20, 0x0

    .line 123
    .line 124
    const/16 v22, 0x0

    .line 125
    .line 126
    const/16 v23, 0x0

    .line 127
    .line 128
    const/16 v24, 0x0

    .line 129
    .line 130
    const/16 v25, 0x0

    .line 131
    .line 132
    const/16 v26, 0x0

    .line 133
    .line 134
    const/16 v29, 0x0

    .line 135
    .line 136
    move-object/from16 v19, v1

    .line 137
    .line 138
    move-object/from16 v28, v8

    .line 139
    .line 140
    move-object v8, v0

    .line 141
    invoke-static/range {v8 .. v31}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_1
    move-object/from16 v28, v8

    .line 146
    .line 147
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 148
    .line 149
    .line 150
    :goto_1
    return-object v2

    .line 151
    :pswitch_0
    move-object/from16 v1, p1

    .line 152
    .line 153
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 154
    .line 155
    move-object/from16 v8, p2

    .line 156
    .line 157
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 158
    .line 159
    move-object/from16 v9, p3

    .line 160
    .line 161
    check-cast v9, Ljava/lang/Integer;

    .line 162
    .line 163
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    and-int/lit8 v1, v9, 0x11

    .line 171
    .line 172
    if-eq v1, v4, :cond_2

    .line 173
    .line 174
    move v1, v6

    .line 175
    goto :goto_2

    .line 176
    :cond_2
    move v1, v5

    .line 177
    :goto_2
    and-int/lit8 v4, v9, 0x1

    .line 178
    .line 179
    invoke-virtual {v8, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_3

    .line 184
    .line 185
    iget-object v1, v7, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;->langCode:Ljava/lang/String;

    .line 186
    .line 187
    const v4, 0x7f1204e0

    .line 188
    .line 189
    .line 190
    new-array v5, v5, [Ljava/lang/Object;

    .line 191
    .line 192
    invoke-static {v0, v1, v4, v5}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 197
    .line 198
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 203
    .line 204
    iget-object v9, v1, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 205
    .line 206
    sget-object v14, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 207
    .line 208
    const/16 v20, 0x0

    .line 209
    .line 210
    const v21, 0xfffffb

    .line 211
    .line 212
    .line 213
    const-wide/16 v10, 0x0

    .line 214
    .line 215
    const-wide/16 v12, 0x0

    .line 216
    .line 217
    const/4 v15, 0x0

    .line 218
    const-wide/16 v16, 0x0

    .line 219
    .line 220
    const-wide/16 v18, 0x0

    .line 221
    .line 222
    invoke-static/range {v9 .. v21}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 223
    .line 224
    .line 225
    move-result-object v27

    .line 226
    new-instance v1, Landroidx/compose/ui/text/style/TextAlign;

    .line 227
    .line 228
    invoke-direct {v1, v3}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 229
    .line 230
    .line 231
    const/16 v30, 0x0

    .line 232
    .line 233
    const v31, 0x1fbfe

    .line 234
    .line 235
    .line 236
    const/4 v9, 0x0

    .line 237
    const/4 v12, 0x0

    .line 238
    const-wide/16 v13, 0x0

    .line 239
    .line 240
    const/16 v16, 0x0

    .line 241
    .line 242
    const-wide/16 v17, 0x0

    .line 243
    .line 244
    const-wide/16 v20, 0x0

    .line 245
    .line 246
    const/16 v22, 0x0

    .line 247
    .line 248
    const/16 v23, 0x0

    .line 249
    .line 250
    const/16 v24, 0x0

    .line 251
    .line 252
    const/16 v25, 0x0

    .line 253
    .line 254
    const/16 v26, 0x0

    .line 255
    .line 256
    const/16 v29, 0x0

    .line 257
    .line 258
    move-object/from16 v19, v1

    .line 259
    .line 260
    move-object/from16 v28, v8

    .line 261
    .line 262
    move-object v8, v0

    .line 263
    invoke-static/range {v8 .. v31}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 264
    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_3
    move-object/from16 v28, v8

    .line 268
    .line 269
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 270
    .line 271
    .line 272
    :goto_3
    return-object v2

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
