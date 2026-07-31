.class public final synthetic Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;->f$0:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    iput-boolean p2, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;->f$1:Z

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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 4
    .line 5
    const v2, 0x7f1204d1

    .line 6
    .line 7
    .line 8
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    const/16 v4, 0x10

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    const/4 v6, 0x0

    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object/from16 v1, p1

    .line 18
    .line 19
    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;

    .line 20
    .line 21
    move-object/from16 v7, p2

    .line 22
    .line 23
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 24
    .line 25
    move-object/from16 v8, p3

    .line 26
    .line 27
    check-cast v8, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    and-int/lit8 v1, v8, 0x11

    .line 37
    .line 38
    if-eq v1, v4, :cond_0

    .line 39
    .line 40
    move v6, v5

    .line 41
    :cond_0
    and-int/lit8 v1, v8, 0x1

    .line 42
    .line 43
    move-object v13, v7

    .line 44
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 45
    .line 46
    invoke-virtual {v13, v1, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-static {v13, v2}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    sget-object v10, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Sync:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 57
    .line 58
    const/4 v14, 0x0

    .line 59
    const/16 v15, 0x8

    .line 60
    .line 61
    iget-object v9, v0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;->f$0:Lkotlin/jvm/functions/Function0;

    .line 62
    .line 63
    const/4 v11, 0x0

    .line 64
    iget-boolean v12, v0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;->f$1:Z

    .line 65
    .line 66
    invoke-static/range {v8 .. v15}, Lokhttp3/Cookie$Companion;->SettingListItem(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-object v3

    .line 74
    :pswitch_0
    move-object/from16 v1, p1

    .line 75
    .line 76
    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;

    .line 77
    .line 78
    move-object/from16 v2, p2

    .line 79
    .line 80
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 81
    .line 82
    move-object/from16 v7, p3

    .line 83
    .line 84
    check-cast v7, Ljava/lang/Integer;

    .line 85
    .line 86
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    and-int/lit8 v1, v7, 0x11

    .line 94
    .line 95
    if-eq v1, v4, :cond_2

    .line 96
    .line 97
    move v6, v5

    .line 98
    :cond_2
    and-int/lit8 v1, v7, 0x1

    .line 99
    .line 100
    move-object v12, v2

    .line 101
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 102
    .line 103
    invoke-virtual {v12, v1, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    const v1, 0x7f1204d0

    .line 110
    .line 111
    .line 112
    invoke-static {v12, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    sget-object v9, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Sync:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 117
    .line 118
    const/4 v13, 0x0

    .line 119
    const/16 v14, 0x8

    .line 120
    .line 121
    iget-object v8, v0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;->f$0:Lkotlin/jvm/functions/Function0;

    .line 122
    .line 123
    const/4 v10, 0x0

    .line 124
    iget-boolean v11, v0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;->f$1:Z

    .line 125
    .line 126
    invoke-static/range {v7 .. v14}, Lokhttp3/Cookie$Companion;->SettingListItem(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 131
    .line 132
    .line 133
    :goto_1
    return-object v3

    .line 134
    :pswitch_1
    move-object/from16 v1, p1

    .line 135
    .line 136
    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;

    .line 137
    .line 138
    move-object/from16 v7, p2

    .line 139
    .line 140
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 141
    .line 142
    move-object/from16 v8, p3

    .line 143
    .line 144
    check-cast v8, Ljava/lang/Integer;

    .line 145
    .line 146
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    and-int/lit8 v1, v8, 0x11

    .line 154
    .line 155
    if-eq v1, v4, :cond_4

    .line 156
    .line 157
    move v6, v5

    .line 158
    :cond_4
    and-int/lit8 v1, v8, 0x1

    .line 159
    .line 160
    move-object v13, v7

    .line 161
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 162
    .line 163
    invoke-virtual {v13, v1, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_5

    .line 168
    .line 169
    invoke-static {v13, v2}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    sget-object v10, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Sync:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 174
    .line 175
    const/4 v14, 0x0

    .line 176
    const/16 v15, 0x8

    .line 177
    .line 178
    iget-object v9, v0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;->f$0:Lkotlin/jvm/functions/Function0;

    .line 179
    .line 180
    const/4 v11, 0x0

    .line 181
    iget-boolean v12, v0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;->f$1:Z

    .line 182
    .line 183
    invoke-static/range {v8 .. v15}, Lokhttp3/Cookie$Companion;->SettingListItem(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_5
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 188
    .line 189
    .line 190
    :goto_2
    return-object v3

    .line 191
    :pswitch_2
    move-object/from16 v1, p1

    .line 192
    .line 193
    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 194
    .line 195
    move-object/from16 v2, p2

    .line 196
    .line 197
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 198
    .line 199
    move-object/from16 v3, p3

    .line 200
    .line 201
    check-cast v3, Ljava/lang/Integer;

    .line 202
    .line 203
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 207
    .line 208
    const v3, -0xbba9706

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 212
    .line 213
    .line 214
    sget-object v3, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 215
    .line 216
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    check-cast v3, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 221
    .line 222
    iget-wide v3, v3, Landroidx/compose/foundation/text/selection/TextSelectionColors;->handleColor:J

    .line 223
    .line 224
    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    iget-object v7, v0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;->f$0:Lkotlin/jvm/functions/Function0;

    .line 229
    .line 230
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    or-int/2addr v5, v8

    .line 235
    iget-boolean v0, v0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;->f$1:Z

    .line 236
    .line 237
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    or-int/2addr v5, v8

    .line 242
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v8

    .line 246
    if-nez v5, :cond_6

    .line 247
    .line 248
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 249
    .line 250
    if-ne v8, v5, :cond_7

    .line 251
    .line 252
    :cond_6
    new-instance v8, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda9;

    .line 253
    .line 254
    invoke-direct {v8, v3, v4, v7, v0}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda9;-><init>(JLkotlin/jvm/functions/Function0;Z)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    :cond_7
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 261
    .line 262
    invoke-static {v1, v8}, Landroidx/compose/ui/draw/ClipKt;->drawWithCache(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 267
    .line 268
    .line 269
    return-object v0

    .line 270
    nop

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
