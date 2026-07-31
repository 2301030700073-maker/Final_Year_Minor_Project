.class public abstract Lkotlin/ranges/RangesKt;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/encoding/Decoder;
.implements Lkotlinx/serialization/encoding/CompositeDecoder;


# direct methods
.method public static final NavigationBackHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    .line 1
    move-object v7, p4

    .line 2
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p4, 0x48bee1a3

    .line 5
    .line 6
    .line 7
    invoke-virtual {v7, p4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p4

    .line 14
    if-eqz p4, :cond_0

    .line 15
    .line 16
    const/4 p4, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p4, 0x2

    .line 19
    :goto_0
    or-int/2addr p4, p5

    .line 20
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/16 v0, 0x20

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/16 v0, 0x10

    .line 30
    .line 31
    :goto_1
    or-int/2addr p4, v0

    .line 32
    or-int/lit16 p4, p4, 0x180

    .line 33
    .line 34
    invoke-virtual {v7, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    const/16 v0, 0x800

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    const/16 v0, 0x400

    .line 44
    .line 45
    :goto_2
    or-int/2addr p4, v0

    .line 46
    and-int/lit16 v0, p4, 0x493

    .line 47
    .line 48
    const/16 v1, 0x492

    .line 49
    .line 50
    if-eq v0, v1, :cond_3

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    const/4 v0, 0x0

    .line 55
    :goto_3
    and-int/lit8 v1, p4, 0x1

    .line 56
    .line 57
    invoke-virtual {v7, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_7

    .line 62
    .line 63
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    const/4 v0, 0x6

    .line 68
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 69
    .line 70
    if-ne p2, v1, :cond_4

    .line 71
    .line 72
    new-instance p2, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 73
    .line 74
    invoke-direct {p2, v0}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v7, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_4
    move-object v5, p2

    .line 81
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 82
    .line 83
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    if-ne p2, v1, :cond_5

    .line 88
    .line 89
    new-instance p2, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 90
    .line 91
    invoke-direct {p2, v0}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    move-object v2, p2

    .line 98
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 99
    .line 100
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    if-ne p2, v1, :cond_6

    .line 105
    .line 106
    new-instance p2, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    invoke-direct {p2, v0}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_6
    move-object v3, p2

    .line 115
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 116
    .line 117
    and-int/lit8 p2, p4, 0xe

    .line 118
    .line 119
    or-int/lit16 p2, p2, 0xdb0

    .line 120
    .line 121
    shl-int/lit8 p4, p4, 0x9

    .line 122
    .line 123
    const v0, 0xe000

    .line 124
    .line 125
    .line 126
    and-int/2addr v0, p4

    .line 127
    or-int/2addr p2, v0

    .line 128
    const/high16 v0, 0x30000

    .line 129
    .line 130
    or-int/2addr p2, v0

    .line 131
    const/high16 v0, 0x380000

    .line 132
    .line 133
    and-int/2addr p4, v0

    .line 134
    or-int v8, p2, p4

    .line 135
    .line 136
    const/4 v1, 0x0

    .line 137
    move-object v0, p0

    .line 138
    move v4, p1

    .line 139
    move-object v6, p3

    .line 140
    invoke-static/range {v0 .. v8}, Lkotlin/ranges/RangesKt;->NavigationEventHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 141
    .line 142
    .line 143
    move-object p1, v0

    .line 144
    move-object p4, v6

    .line 145
    move-object p3, v5

    .line 146
    goto :goto_4

    .line 147
    :cond_7
    move v4, p1

    .line 148
    move-object p4, p3

    .line 149
    move-object p1, p0

    .line 150
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 151
    .line 152
    .line 153
    move-object p3, p2

    .line 154
    :goto_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-eqz v0, :cond_8

    .line 159
    .line 160
    new-instance p0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda0;

    .line 161
    .line 162
    move p2, v4

    .line 163
    invoke-direct/range {p0 .. p5}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda0;-><init>(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 164
    .line 165
    .line 166
    iput-object p0, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 167
    .line 168
    :cond_8
    return-void
.end method

.method public static final NavigationEventHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v8, p8

    .line 4
    .line 5
    move-object/from16 v9, p7

    .line 6
    .line 7
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v0, 0x358b6fe0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v0, v8, 0x6

    .line 16
    .line 17
    const/4 v10, 0x4

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    move v0, v10

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x2

    .line 29
    :goto_0
    or-int/2addr v0, v8

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v0, v8

    .line 32
    :goto_1
    and-int/lit8 v2, v8, 0x30

    .line 33
    .line 34
    const/16 v3, 0x20

    .line 35
    .line 36
    if-nez v2, :cond_3

    .line 37
    .line 38
    move/from16 v2, p1

    .line 39
    .line 40
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    move v4, v3

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v4, 0x10

    .line 49
    .line 50
    :goto_2
    or-int/2addr v0, v4

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    move/from16 v2, p1

    .line 53
    .line 54
    :goto_3
    and-int/lit16 v4, v8, 0x180

    .line 55
    .line 56
    const/16 v5, 0x100

    .line 57
    .line 58
    if-nez v4, :cond_5

    .line 59
    .line 60
    move-object/from16 v4, p2

    .line 61
    .line 62
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_4

    .line 67
    .line 68
    move v6, v5

    .line 69
    goto :goto_4

    .line 70
    :cond_4
    const/16 v6, 0x80

    .line 71
    .line 72
    :goto_4
    or-int/2addr v0, v6

    .line 73
    goto :goto_5

    .line 74
    :cond_5
    move-object/from16 v4, p2

    .line 75
    .line 76
    :goto_5
    and-int/lit16 v6, v8, 0xc00

    .line 77
    .line 78
    if-nez v6, :cond_7

    .line 79
    .line 80
    move-object/from16 v6, p3

    .line 81
    .line 82
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    if-eqz v11, :cond_6

    .line 87
    .line 88
    const/16 v11, 0x800

    .line 89
    .line 90
    goto :goto_6

    .line 91
    :cond_6
    const/16 v11, 0x400

    .line 92
    .line 93
    :goto_6
    or-int/2addr v0, v11

    .line 94
    goto :goto_7

    .line 95
    :cond_7
    move-object/from16 v6, p3

    .line 96
    .line 97
    :goto_7
    and-int/lit16 v11, v8, 0x6000

    .line 98
    .line 99
    if-nez v11, :cond_9

    .line 100
    .line 101
    move/from16 v11, p4

    .line 102
    .line 103
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 104
    .line 105
    .line 106
    move-result v13

    .line 107
    if-eqz v13, :cond_8

    .line 108
    .line 109
    const/16 v13, 0x4000

    .line 110
    .line 111
    goto :goto_8

    .line 112
    :cond_8
    const/16 v13, 0x2000

    .line 113
    .line 114
    :goto_8
    or-int/2addr v0, v13

    .line 115
    goto :goto_9

    .line 116
    :cond_9
    move/from16 v11, p4

    .line 117
    .line 118
    :goto_9
    const/high16 v13, 0x30000

    .line 119
    .line 120
    and-int/2addr v13, v8

    .line 121
    if-nez v13, :cond_b

    .line 122
    .line 123
    move-object/from16 v13, p5

    .line 124
    .line 125
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    if-eqz v15, :cond_a

    .line 130
    .line 131
    const/high16 v15, 0x20000

    .line 132
    .line 133
    goto :goto_a

    .line 134
    :cond_a
    const/high16 v15, 0x10000

    .line 135
    .line 136
    :goto_a
    or-int/2addr v0, v15

    .line 137
    goto :goto_b

    .line 138
    :cond_b
    move-object/from16 v13, p5

    .line 139
    .line 140
    :goto_b
    const/high16 v15, 0x180000

    .line 141
    .line 142
    and-int/2addr v15, v8

    .line 143
    if-nez v15, :cond_d

    .line 144
    .line 145
    move-object/from16 v15, p6

    .line 146
    .line 147
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v16

    .line 151
    if-eqz v16, :cond_c

    .line 152
    .line 153
    const/high16 v16, 0x100000

    .line 154
    .line 155
    goto :goto_c

    .line 156
    :cond_c
    const/high16 v16, 0x80000

    .line 157
    .line 158
    :goto_c
    or-int v0, v0, v16

    .line 159
    .line 160
    goto :goto_d

    .line 161
    :cond_d
    move-object/from16 v15, p6

    .line 162
    .line 163
    :goto_d
    const v16, 0x92493

    .line 164
    .line 165
    .line 166
    and-int v14, v0, v16

    .line 167
    .line 168
    const v12, 0x92492

    .line 169
    .line 170
    .line 171
    const/4 v7, 0x0

    .line 172
    const/16 v17, 0x1

    .line 173
    .line 174
    if-eq v14, v12, :cond_e

    .line 175
    .line 176
    move/from16 v12, v17

    .line 177
    .line 178
    goto :goto_e

    .line 179
    :cond_e
    move v12, v7

    .line 180
    :goto_e
    and-int/lit8 v14, v0, 0x1

    .line 181
    .line 182
    invoke-virtual {v9, v14, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 183
    .line 184
    .line 185
    move-result v12

    .line 186
    if-eqz v12, :cond_25

    .line 187
    .line 188
    sget-object v12, Landroidx/compose/ui/platform/InspectionModeKt;->LocalInspectionMode:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 189
    .line 190
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v12

    .line 194
    check-cast v12, Ljava/lang/Boolean;

    .line 195
    .line 196
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 197
    .line 198
    .line 199
    move-result v12

    .line 200
    if-eqz v12, :cond_f

    .line 201
    .line 202
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 203
    .line 204
    .line 205
    move-result-object v10

    .line 206
    if-eqz v10, :cond_26

    .line 207
    .line 208
    new-instance v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;

    .line 209
    .line 210
    const/4 v9, 0x0

    .line 211
    move-object v3, v4

    .line 212
    move-object v4, v6

    .line 213
    move v5, v11

    .line 214
    move-object v6, v13

    .line 215
    move-object v7, v15

    .line 216
    invoke-direct/range {v0 .. v9}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;-><init>(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    .line 217
    .line 218
    .line 219
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 220
    .line 221
    return-void

    .line 222
    :cond_f
    sget-object v2, Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;->LocalNavigationEventDispatcherOwner:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 223
    .line 224
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    check-cast v2, Landroidx/navigationevent/NavigationEventDispatcherOwner;

    .line 229
    .line 230
    if-nez v2, :cond_14

    .line 231
    .line 232
    const v2, 0x38ac9bd8

    .line 233
    .line 234
    .line 235
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 236
    .line 237
    .line 238
    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 239
    .line 240
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    check-cast v2, Landroid/view/View;

    .line 245
    .line 246
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    :goto_f
    const/4 v4, 0x0

    .line 250
    if-eqz v2, :cond_13

    .line 251
    .line 252
    const v6, 0x7f0a042c

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    instance-of v8, v6, Landroidx/navigationevent/NavigationEventDispatcherOwner;

    .line 260
    .line 261
    if-eqz v8, :cond_10

    .line 262
    .line 263
    check-cast v6, Landroidx/navigationevent/NavigationEventDispatcherOwner;

    .line 264
    .line 265
    goto :goto_10

    .line 266
    :cond_10
    move-object v6, v4

    .line 267
    :goto_10
    if-eqz v6, :cond_11

    .line 268
    .line 269
    move-object v2, v6

    .line 270
    goto :goto_11

    .line 271
    :cond_11
    invoke-static {v2}, Lkotlin/io/CloseableKt;->getParentOrViewTreeDisjointParent(Landroid/view/View;)Landroid/view/ViewParent;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    instance-of v6, v2, Landroid/view/View;

    .line 276
    .line 277
    if-eqz v6, :cond_12

    .line 278
    .line 279
    check-cast v2, Landroid/view/View;

    .line 280
    .line 281
    goto :goto_f

    .line 282
    :cond_12
    move-object v2, v4

    .line 283
    goto :goto_f

    .line 284
    :cond_13
    move-object v2, v4

    .line 285
    :goto_11
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 286
    .line 287
    .line 288
    goto :goto_12

    .line 289
    :cond_14
    const v4, 0x38ac9437

    .line 290
    .line 291
    .line 292
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 296
    .line 297
    .line 298
    :goto_12
    if-eqz v2, :cond_24

    .line 299
    .line 300
    invoke-interface {v2}, Landroidx/navigationevent/NavigationEventDispatcherOwner;->getNavigationEventDispatcher()Lokhttp3/Dispatcher;

    .line 301
    .line 302
    .line 303
    move-result-object v11

    .line 304
    and-int/lit8 v12, v0, 0xe

    .line 305
    .line 306
    if-ne v12, v10, :cond_15

    .line 307
    .line 308
    move/from16 v2, v17

    .line 309
    .line 310
    goto :goto_13

    .line 311
    :cond_15
    move v2, v7

    .line 312
    :goto_13
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 317
    .line 318
    if-nez v2, :cond_16

    .line 319
    .line 320
    if-ne v4, v13, :cond_17

    .line 321
    .line 322
    :cond_16
    new-instance v4, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

    .line 323
    .line 324
    iget-object v2, v1, Landroidx/navigationevent/compose/NavigationEventState;->currentInfo$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 325
    .line 326
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    check-cast v2, Landroidx/navigationevent/NavigationEventInfo;

    .line 331
    .line 332
    new-instance v6, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 333
    .line 334
    const/16 v8, 0x19

    .line 335
    .line 336
    invoke-direct {v6, v1, v8}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 337
    .line 338
    .line 339
    invoke-direct {v4, v2, v6}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;-><init>(Landroidx/navigationevent/NavigationEventInfo;Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    :cond_17
    check-cast v4, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

    .line 346
    .line 347
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    and-int/lit8 v6, v0, 0x70

    .line 352
    .line 353
    if-ne v6, v3, :cond_18

    .line 354
    .line 355
    move/from16 v3, v17

    .line 356
    .line 357
    goto :goto_14

    .line 358
    :cond_18
    move v3, v7

    .line 359
    :goto_14
    or-int/2addr v2, v3

    .line 360
    and-int/lit16 v3, v0, 0x380

    .line 361
    .line 362
    if-ne v3, v5, :cond_19

    .line 363
    .line 364
    move/from16 v3, v17

    .line 365
    .line 366
    goto :goto_15

    .line 367
    :cond_19
    move v3, v7

    .line 368
    :goto_15
    or-int/2addr v2, v3

    .line 369
    and-int/lit16 v3, v0, 0x1c00

    .line 370
    .line 371
    const/16 v5, 0x800

    .line 372
    .line 373
    if-ne v3, v5, :cond_1a

    .line 374
    .line 375
    move/from16 v3, v17

    .line 376
    .line 377
    goto :goto_16

    .line 378
    :cond_1a
    move v3, v7

    .line 379
    :goto_16
    or-int/2addr v2, v3

    .line 380
    const v3, 0xe000

    .line 381
    .line 382
    .line 383
    and-int/2addr v3, v0

    .line 384
    const/16 v5, 0x4000

    .line 385
    .line 386
    if-ne v3, v5, :cond_1b

    .line 387
    .line 388
    move/from16 v3, v17

    .line 389
    .line 390
    goto :goto_17

    .line 391
    :cond_1b
    move v3, v7

    .line 392
    :goto_17
    or-int/2addr v2, v3

    .line 393
    const/high16 v3, 0x70000

    .line 394
    .line 395
    and-int/2addr v3, v0

    .line 396
    const/high16 v5, 0x20000

    .line 397
    .line 398
    if-ne v3, v5, :cond_1c

    .line 399
    .line 400
    move/from16 v3, v17

    .line 401
    .line 402
    goto :goto_18

    .line 403
    :cond_1c
    move v3, v7

    .line 404
    :goto_18
    or-int/2addr v2, v3

    .line 405
    const/high16 v3, 0x380000

    .line 406
    .line 407
    and-int/2addr v0, v3

    .line 408
    const/high16 v3, 0x100000

    .line 409
    .line 410
    if-ne v0, v3, :cond_1d

    .line 411
    .line 412
    move/from16 v0, v17

    .line 413
    .line 414
    goto :goto_19

    .line 415
    :cond_1d
    move v0, v7

    .line 416
    :goto_19
    or-int/2addr v0, v2

    .line 417
    if-ne v12, v10, :cond_1e

    .line 418
    .line 419
    move/from16 v2, v17

    .line 420
    .line 421
    goto :goto_1a

    .line 422
    :cond_1e
    move v2, v7

    .line 423
    :goto_1a
    or-int/2addr v0, v2

    .line 424
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    if-nez v0, :cond_20

    .line 429
    .line 430
    if-ne v2, v13, :cond_1f

    .line 431
    .line 432
    goto :goto_1b

    .line 433
    :cond_1f
    move v14, v7

    .line 434
    goto :goto_1c

    .line 435
    :cond_20
    :goto_1b
    new-instance v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda3;

    .line 436
    .line 437
    move/from16 v2, p1

    .line 438
    .line 439
    move-object/from16 v3, p2

    .line 440
    .line 441
    move/from16 v5, p4

    .line 442
    .line 443
    move-object/from16 v6, p5

    .line 444
    .line 445
    move-object v8, v1

    .line 446
    move-object v1, v4

    .line 447
    move v14, v7

    .line 448
    move-object/from16 v4, p3

    .line 449
    .line 450
    move-object/from16 v7, p6

    .line 451
    .line 452
    invoke-direct/range {v0 .. v8}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda3;-><init>(Landroidx/navigationevent/compose/ComposeNavigationEventHandler;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/navigationevent/compose/NavigationEventState;)V

    .line 453
    .line 454
    .line 455
    move-object v4, v1

    .line 456
    move-object v1, v8

    .line 457
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    move-object v2, v0

    .line 461
    :goto_1c
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 462
    .line 463
    invoke-static {v2, v9}, Landroidx/compose/runtime/Updater;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    .line 464
    .line 465
    .line 466
    if-ne v12, v10, :cond_21

    .line 467
    .line 468
    move/from16 v7, v17

    .line 469
    .line 470
    goto :goto_1d

    .line 471
    :cond_21
    move v7, v14

    .line 472
    :goto_1d
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v0

    .line 476
    or-int/2addr v0, v7

    .line 477
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    or-int/2addr v0, v2

    .line 482
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    if-nez v0, :cond_22

    .line 487
    .line 488
    if-ne v2, v13, :cond_23

    .line 489
    .line 490
    :cond_22
    new-instance v2, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;

    .line 491
    .line 492
    const/4 v0, 0x5

    .line 493
    invoke-direct {v2, v0, v1, v4, v11}, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    :cond_23
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 500
    .line 501
    invoke-static {v1, v2, v9}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 502
    .line 503
    .line 504
    goto :goto_1e

    .line 505
    :cond_24
    const-string v0, "No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner"

    .line 506
    .line 507
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    return-void

    .line 511
    :cond_25
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 512
    .line 513
    .line 514
    :goto_1e
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 515
    .line 516
    .line 517
    move-result-object v10

    .line 518
    if-eqz v10, :cond_26

    .line 519
    .line 520
    new-instance v0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;

    .line 521
    .line 522
    const/4 v9, 0x1

    .line 523
    move/from16 v2, p1

    .line 524
    .line 525
    move-object/from16 v3, p2

    .line 526
    .line 527
    move-object/from16 v4, p3

    .line 528
    .line 529
    move/from16 v5, p4

    .line 530
    .line 531
    move-object/from16 v6, p5

    .line 532
    .line 533
    move-object/from16 v7, p6

    .line 534
    .line 535
    move/from16 v8, p8

    .line 536
    .line 537
    invoke-direct/range {v0 .. v9}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$$ExternalSyntheticLambda1;-><init>(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    .line 538
    .line 539
    .line 540
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 541
    .line 542
    :cond_26
    return-void
.end method

.method public static buildAndCacheResult(Ljava/lang/String;Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Lkotlin/ranges/RangesKt;->documentToXml(Lorg/w3c/dom/Document;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2, p0, p1}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-object p1

    .line 9
    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 11
    .line 12
    const-string p2, "Could not convert the DASH manifest generated to a string"

    .line 13
    .line 14
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public static canWrite(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const-string v1, "mime_type"

    .line 10
    .line 11
    invoke-static {p0, p1, v1}, Lkotlin/ranges/RangesKt;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "flags"

    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    invoke-static {p0, p1, v2, v3, v4}, Lkotlin/ranges/RangesKt;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    long-to-int p0, p0

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    and-int/lit8 p1, p0, 0x4

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const-string/jumbo p1, "vnd.android.document/directory"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    and-int/lit8 p1, p0, 0x8

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_4

    .line 55
    .line 56
    and-int/2addr p0, v0

    .line 57
    if-eqz p0, :cond_4

    .line 58
    .line 59
    :goto_0
    const/4 p0, 0x1

    .line 60
    return p0

    .line 61
    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 62
    return p0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static closeQuietly(Landroid/database/Cursor;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    throw p0

    .line 9
    :catch_1
    :cond_0
    return-void
.end method

.method public static coerceIn(DDD)D
    .locals 1

    cmpl-double v0, p2, p4

    if-gtz v0, :cond_2

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    return-wide p2

    :cond_0
    cmpl-double p2, p0, p4

    if-lez p2, :cond_1

    return-wide p4

    :cond_1
    return-wide p0

    .line 93
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot coerce value to an empty range: maximum "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p4, " is less than minimum "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static coerceIn(FFF)F
    .locals 2

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_2

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0

    .line 92
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static coerceIn(III)I
    .locals 2

    if-gt p1, p2, :cond_2

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0

    .line 88
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static coerceIn(JJJ)J
    .locals 1

    cmp-long v0, p2, p4

    if-gtz v0, :cond_2

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    return-wide p2

    :cond_0
    cmp-long p2, p0, p4

    if-lez p2, :cond_1

    return-wide p4

    :cond_1
    return-wide p0

    .line 89
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot coerce value to an empty range: maximum "

    const-string v0, " is less than minimum "

    .line 90
    invoke-static {p4, p5, p1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 91
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static coerceIn(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    if-eqz p2, :cond_2

    .line 7
    .line 8
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-gtz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-gez v0, :cond_0

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    invoke-interface {p0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-lez p1, :cond_4

    .line 26
    .line 27
    return-object p2

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "Cannot coerce value to an empty range: maximum "

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p2, " is less than minimum "

    .line 41
    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/16 p1, 0x2e

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_2
    if-eqz p1, :cond_3

    .line 62
    .line 63
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-gez v0, :cond_3

    .line 68
    .line 69
    return-object p1

    .line 70
    :cond_3
    if-eqz p2, :cond_4

    .line 71
    .line 72
    invoke-interface {p0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-lez p1, :cond_4

    .line 77
    .line 78
    return-object p2

    .line 79
    :cond_4
    return-object p0
.end method

.method public static coerceIn(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatRange;)Ljava/lang/Comparable;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    const/4 v1, 0x0

    .line 80
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_2

    .line 81
    invoke-static {p0, v2}, Lkotlin/ranges/ClosedFloatRange;->lessThanOrEquals(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v2, p0}, Lkotlin/ranges/ClosedFloatRange;->lessThanOrEquals(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v2

    .line 82
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 83
    invoke-static {p1, p0}, Lkotlin/ranges/ClosedFloatRange;->lessThanOrEquals(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 84
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 85
    invoke-static {p0, p1}, Lkotlin/ranges/ClosedFloatRange;->lessThanOrEquals(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 86
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :cond_1
    return-object p0

    .line 87
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot coerce value to an empty range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createCornerTreatment(I)Lorg/jsoup/Jsoup;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    new-instance p0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    .line 7
    .line 8
    const/16 v0, 0xd

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lorg/jsoup/Jsoup;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p0, Lcom/google/android/material/shape/CutCornerTreatment;

    .line 15
    .line 16
    const/16 v0, 0xd

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lorg/jsoup/Jsoup;-><init>(I)V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    new-instance p0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    .line 23
    .line 24
    const/16 v0, 0xd

    .line 25
    .line 26
    invoke-direct {p0, v0}, Lorg/jsoup/Jsoup;-><init>(I)V

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

.method public static final createFontFamilyResolver(Landroid/content/Context;)Landroidx/compose/ui/text/font/FontFamilyResolverImpl;
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 2
    .line 3
    new-instance v1, Landroidx/transition/Transition$1;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    invoke-direct {v1, v2}, Landroidx/transition/Transition$1;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v3, 0x1f

    .line 15
    .line 16
    if-lt v2, v3, :cond_0

    .line 17
    .line 18
    sget-object v2, Landroidx/compose/ui/text/font/FontWeightAdjustmentHelperApi31;->INSTANCE:Landroidx/compose/ui/text/font/FontWeightAdjustmentHelperApi31;

    .line 19
    .line 20
    invoke-virtual {v2, p0}, Landroidx/compose/ui/text/font/FontWeightAdjustmentHelperApi31;->fontWeightAdjustment(Landroid/content/Context;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    new-instance v2, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;-><init>(Landroidx/transition/Transition$1;Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public static final decoderErrorMessage(Ljava/lang/String;Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "Cannot deserialize "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p0, " with \'"

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p0, "\'. This serializer can only be used with SavedStateDecoder. Use \'decodeFromSavedState\' instead."

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static documentToXml(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :try_start_0
    const-string v2, "http://javax.xml.XMLConstants/property/accessExternalDTD"

    .line 8
    .line 9
    invoke-virtual {v1, v2, v0}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "http://javax.xml.XMLConstants/property/accessExternalSchema"

    .line 13
    .line 14
    invoke-virtual {v1, v2, v0}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :catch_0
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string/jumbo v1, "version"

    .line 22
    .line 23
    .line 24
    const-string v2, "1.0"

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "encoding"

    .line 30
    .line 31
    const-string v2, "UTF-8"

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string/jumbo v1, "standalone"

    .line 37
    .line 38
    .line 39
    const-string v2, "no"

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Ljava/io/StringWriter;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    .line 50
    .line 51
    invoke-direct {v2, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 52
    .line 53
    .line 54
    new-instance p0, Ljavax/xml/transform/stream/StreamResult;

    .line 55
    .line 56
    invoke-direct {p0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2, p0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public static final encoderErrorMessage(Ljava/lang/String;Lkotlinx/serialization/encoding/Encoder;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "Cannot serialize "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p0, " with \'"

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p0, "\'. This serializer can only be used with SavedStateEncoder. Use \'encodeToSavedState\' instead."

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static exists(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 9

    .line 1
    const-string v1, "Failed query: "

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 p0, 0x0

    .line 8
    const/4 v8, 0x0

    .line 9
    :try_start_0
    const-string v0, "document_id"

    .line 10
    .line 11
    filled-new-array {v0}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    move-object v3, p1

    .line 19
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    .line 24
    .line 25
    .line 26
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-lez p1, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    :cond_0
    invoke-static {v8}, Lkotlin/ranges/RangesKt;->closeQuietly(Landroid/database/Cursor;)V

    .line 31
    .line 32
    .line 33
    return p0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    move-object p0, v0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    move-object p1, v0

    .line 39
    :try_start_1
    const-string v0, "DocumentFile"

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    invoke-static {v8}, Lkotlin/ranges/RangesKt;->closeQuietly(Landroid/database/Cursor;)V

    .line 57
    .line 58
    .line 59
    return p0

    .line 60
    :goto_0
    invoke-static {v8}, Lkotlin/ranges/RangesKt;->closeQuietly(Landroid/database/Cursor;)V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

.method public static generateDocumentAndDoCommonElementsGeneration(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;J)Lorg/w3c/dom/Document;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "Representation"

    .line 4
    .line 5
    const-string/jumbo v2, "value"

    .line 6
    .line 7
    .line 8
    const-string v3, "schemeIdUri"

    .line 9
    .line 10
    const-string v4, "id"

    .line 11
    .line 12
    const-string v5, "Period"

    .line 13
    .line 14
    const-string v6, "MPD"

    .line 15
    .line 16
    const-string v7, "AdaptationSet"

    .line 17
    .line 18
    :try_start_0
    const-string v8, ""

    .line 19
    .line 20
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 21
    .line 22
    .line 23
    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 24
    :try_start_1
    const-string v10, "http://javax.xml.XMLConstants/property/accessExternalDTD"

    .line 25
    .line 26
    invoke-virtual {v9, v10, v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const-string v10, "http://javax.xml.XMLConstants/property/accessExternalSchema"

    .line 30
    .line 31
    invoke-virtual {v9, v10, v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    :try_start_2
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-interface {v8, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 47
    .line 48
    .line 49
    const-string/jumbo v10, "xmlns:xsi"

    .line 50
    .line 51
    .line 52
    const-string v11, "http://www.w3.org/2001/XMLSchema-instance"

    .line 53
    .line 54
    invoke-static {v9, v8, v10, v11}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string/jumbo v10, "xmlns"

    .line 58
    .line 59
    .line 60
    const-string/jumbo v11, "urn:mpeg:DASH:schema:MPD:2011"

    .line 61
    .line 62
    .line 63
    invoke-static {v9, v8, v10, v11}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string/jumbo v10, "xsi:schemaLocation"

    .line 67
    .line 68
    .line 69
    const-string/jumbo v11, "urn:mpeg:DASH:schema:MPD:2011 DASH-MPD.xsd"

    .line 70
    .line 71
    .line 72
    invoke-static {v9, v8, v10, v11}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v10, "minBufferTime"

    .line 76
    .line 77
    const-string v11, "PT1.500S"

    .line 78
    .line 79
    invoke-static {v9, v8, v10, v11}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v10, "profiles"

    .line 83
    .line 84
    const-string/jumbo v11, "urn:mpeg:dash:profile:full:2011"

    .line 85
    .line 86
    .line 87
    invoke-static {v9, v8, v10, v11}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string/jumbo v10, "type"

    .line 91
    .line 92
    .line 93
    const-string/jumbo v11, "static"

    .line 94
    .line 95
    .line 96
    invoke-static {v9, v8, v10, v11}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v10, "mediaPresentationDuration"

    .line 100
    .line 101
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 102
    .line 103
    const-string v12, "PT%.3fS"

    .line 104
    .line 105
    move-wide/from16 v13, p1

    .line 106
    .line 107
    long-to-double v13, v13

    .line 108
    const-wide v15, 0x408f400000000000L    # 1000.0

    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    div-double/2addr v13, v15

    .line 114
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 115
    .line 116
    .line 117
    move-result-object v13

    .line 118
    const/4 v14, 0x1

    .line 119
    new-array v15, v14, [Ljava/lang/Object;

    .line 120
    .line 121
    const/4 v14, 0x0

    .line 122
    aput-object v13, v15, v14

    .line 123
    .line 124
    invoke-static {v11, v12, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    invoke-static {v9, v8, v10, v11}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 129
    .line 130
    .line 131
    :try_start_3
    invoke-interface {v8, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-interface {v6, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    check-cast v6, Lorg/w3c/dom/Element;

    .line 140
    .line 141
    invoke-interface {v8, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-interface {v6, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_3
    .catch Lorg/w3c/dom/DOMException; {:try_start_3 .. :try_end_3} :catch_5

    .line 146
    .line 147
    .line 148
    :try_start_4
    invoke-interface {v8, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-interface {v5, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    check-cast v5, Lorg/w3c/dom/Element;

    .line 157
    .line 158
    invoke-interface {v8, v7}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    const-string v9, "0"

    .line 163
    .line 164
    invoke-static {v6, v8, v4, v9}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getMediaFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    if-eqz v9, :cond_f

    .line 172
    .line 173
    iget-object v10, v9, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    .line 174
    .line 175
    invoke-static {v10}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result v10

    .line 179
    if-nez v10, :cond_f

    .line 180
    .line 181
    iget-object v10, v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 182
    .line 183
    sget-object v11, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 184
    .line 185
    if-ne v10, v11, :cond_0

    .line 186
    .line 187
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioLocale()Ljava/util/Locale;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    if-eqz v10, :cond_0

    .line 192
    .line 193
    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 198
    .line 199
    .line 200
    move-result v12

    .line 201
    if-nez v12, :cond_0

    .line 202
    .line 203
    const-string v12, "lang"

    .line 204
    .line 205
    invoke-static {v6, v8, v12, v10}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    goto :goto_0

    .line 209
    :catch_1
    move-exception v0

    .line 210
    goto/16 :goto_7

    .line 211
    .line 212
    :cond_0
    :goto_0
    const-string v10, "mimeType"

    .line 213
    .line 214
    iget-object v9, v9, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    .line 215
    .line 216
    invoke-static {v6, v8, v10, v9}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const-string/jumbo v9, "subsegmentAlignment"

    .line 220
    .line 221
    .line 222
    const-string/jumbo v10, "true"

    .line 223
    .line 224
    .line 225
    invoke-static {v6, v8, v9, v10}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-interface {v5, v6}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_4
    .catch Lorg/w3c/dom/DOMException; {:try_start_4 .. :try_end_4} :catch_1

    .line 229
    .line 230
    .line 231
    const-string v5, "Role"

    .line 232
    .line 233
    :try_start_5
    invoke-interface {v8, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    invoke-interface {v6, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    check-cast v6, Lorg/w3c/dom/Element;

    .line 242
    .line 243
    invoke-interface {v8, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    const-string/jumbo v10, "urn:mpeg:DASH:role:2011"

    .line 248
    .line 249
    .line 250
    invoke-static {v9, v8, v3, v10}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioTrackType()Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    const-string v12, "main"

    .line 258
    .line 259
    if-eqz v10, :cond_3

    .line 260
    .line 261
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 262
    .line 263
    .line 264
    move-result v10

    .line 265
    if-eqz v10, :cond_3

    .line 266
    .line 267
    const/4 v13, 0x1

    .line 268
    if-eq v10, v13, :cond_2

    .line 269
    .line 270
    const/4 v12, 0x2

    .line 271
    if-eq v10, v12, :cond_1

    .line 272
    .line 273
    const-string v12, "alternate"

    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_1
    const-string v12, "description"

    .line 277
    .line 278
    goto :goto_1

    .line 279
    :cond_2
    const-string v12, "dub"

    .line 280
    .line 281
    :cond_3
    :goto_1
    invoke-static {v9, v8, v2, v12}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-interface {v6, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_5
    .catch Lorg/w3c/dom/DOMException; {:try_start_5 .. :try_end_5} :catch_4

    .line 285
    .line 286
    .line 287
    const-string v5, "1"

    .line 288
    .line 289
    :try_start_6
    invoke-interface {v8, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    invoke-interface {v6, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    check-cast v6, Lorg/w3c/dom/Element;

    .line 298
    .line 299
    invoke-interface {v8, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 300
    .line 301
    .line 302
    move-result-object v9

    .line 303
    iget v10, v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 304
    .line 305
    if-lez v10, :cond_e

    .line 306
    .line 307
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v10

    .line 311
    invoke-static {v9, v8, v4, v10}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getCodec()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 319
    .line 320
    .line 321
    move-result v10

    .line 322
    if-nez v10, :cond_d

    .line 323
    .line 324
    const-string v7, "codecs"

    .line 325
    .line 326
    invoke-static {v9, v8, v7, v4}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    const-string/jumbo v4, "startWithSAP"

    .line 330
    .line 331
    .line 332
    invoke-static {v9, v8, v4, v5}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    const-string v4, "maxPlayoutRate"

    .line 336
    .line 337
    invoke-static {v9, v8, v4, v5}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getBitrate()I

    .line 341
    .line 342
    .line 343
    move-result v4

    .line 344
    if-lez v4, :cond_c

    .line 345
    .line 346
    const-string v5, "bandwidth"

    .line 347
    .line 348
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    invoke-static {v9, v8, v5, v4}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    iget-object v4, v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 356
    .line 357
    sget-object v5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 358
    .line 359
    if-eq v4, v5, :cond_4

    .line 360
    .line 361
    sget-object v5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 362
    .line 363
    if-ne v4, v5, :cond_8

    .line 364
    .line 365
    goto :goto_2

    .line 366
    :catch_2
    move-exception v0

    .line 367
    goto/16 :goto_6

    .line 368
    .line 369
    :cond_4
    :goto_2
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getHeight()I

    .line 370
    .line 371
    .line 372
    move-result v4

    .line 373
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getWidth()I

    .line 374
    .line 375
    .line 376
    move-result v5

    .line 377
    if-gtz v4, :cond_6

    .line 378
    .line 379
    if-lez v5, :cond_5

    .line 380
    .line 381
    goto :goto_3

    .line 382
    :cond_5
    const-string v0, "both width and height of the ItagItem are <= 0"

    .line 383
    .line 384
    invoke-static {v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    throw v0

    .line 389
    :cond_6
    :goto_3
    if-lez v5, :cond_7

    .line 390
    .line 391
    const-string/jumbo v4, "width"

    .line 392
    .line 393
    .line 394
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    invoke-static {v9, v8, v4, v5}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    :cond_7
    const-string v4, "height"

    .line 402
    .line 403
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getHeight()I

    .line 404
    .line 405
    .line 406
    move-result v5

    .line 407
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v5

    .line 411
    invoke-static {v9, v8, v4, v5}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    iget v4, v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 415
    .line 416
    if-lez v4, :cond_8

    .line 417
    .line 418
    const-string v5, "frameRate"

    .line 419
    .line 420
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v4

    .line 424
    invoke-static {v9, v8, v5, v4}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    :cond_8
    iget-object v4, v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 428
    .line 429
    if-ne v4, v11, :cond_9

    .line 430
    .line 431
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getSampleRate()I

    .line 432
    .line 433
    .line 434
    move-result v4

    .line 435
    if-lez v4, :cond_9

    .line 436
    .line 437
    const-string v4, "audioSamplingRate"

    .line 438
    .line 439
    invoke-interface {v8, v4}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getSampleRate()I

    .line 444
    .line 445
    .line 446
    move-result v5

    .line 447
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    invoke-interface {v4, v5}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    :cond_9
    invoke-interface {v6, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_6
    .catch Lorg/w3c/dom/DOMException; {:try_start_6 .. :try_end_6} :catch_2

    .line 455
    .line 456
    .line 457
    iget-object v4, v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 458
    .line 459
    if-ne v4, v11, :cond_b

    .line 460
    .line 461
    const-string v4, "AudioChannelConfiguration"

    .line 462
    .line 463
    const-string/jumbo v5, "the number of audioChannels in the ItagItem is <= 0: "

    .line 464
    .line 465
    .line 466
    :try_start_7
    invoke-interface {v8, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    invoke-interface {v1, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    check-cast v1, Lorg/w3c/dom/Element;

    .line 475
    .line 476
    invoke-interface {v8, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 477
    .line 478
    .line 479
    move-result-object v6

    .line 480
    const-string/jumbo v7, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    .line 481
    .line 482
    .line 483
    invoke-static {v6, v8, v3, v7}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioChannels()I

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    if-lez v3, :cond_a

    .line 491
    .line 492
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioChannels()I

    .line 493
    .line 494
    .line 495
    move-result v0

    .line 496
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    invoke-static {v6, v8, v2, v0}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    invoke-interface {v1, v6}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 504
    .line 505
    .line 506
    goto :goto_5

    .line 507
    :catch_3
    move-exception v0

    .line 508
    goto :goto_4

    .line 509
    :cond_a
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 510
    .line 511
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioChannels()I

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    throw v1
    :try_end_7
    .catch Lorg/w3c/dom/DOMException; {:try_start_7 .. :try_end_7} :catch_3

    .line 531
    :goto_4
    invoke-static {v0, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/RuntimeException;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    throw v0

    .line 536
    :cond_b
    :goto_5
    return-object v8

    .line 537
    :cond_c
    :try_start_8
    const-string/jumbo v0, "the bitrate of the ItagItem is <= 0"

    .line 538
    .line 539
    .line 540
    invoke-static {v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    throw v0

    .line 545
    :cond_d
    const-string/jumbo v0, "the codec value of the ItagItem is null or empty"

    .line 546
    .line 547
    .line 548
    invoke-static {v7, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    throw v0

    .line 553
    :cond_e
    const-string/jumbo v0, "the id of the ItagItem is <= 0"

    .line 554
    .line 555
    .line 556
    invoke-static {v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    throw v0
    :try_end_8
    .catch Lorg/w3c/dom/DOMException; {:try_start_8 .. :try_end_8} :catch_2

    .line 561
    :goto_6
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/RuntimeException;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    throw v0

    .line 566
    :catch_4
    move-exception v0

    .line 567
    invoke-static {v0, v5}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/RuntimeException;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    throw v0

    .line 572
    :cond_f
    :try_start_9
    const-string/jumbo v0, "the MediaFormat or its mime type is null or empty"

    .line 573
    .line 574
    .line 575
    invoke-static {v7, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    throw v0
    :try_end_9
    .catch Lorg/w3c/dom/DOMException; {:try_start_9 .. :try_end_9} :catch_1

    .line 580
    :goto_7
    invoke-static {v0, v7}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/RuntimeException;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    throw v0

    .line 585
    :catch_5
    move-exception v0

    .line 586
    invoke-static {v0, v5}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/RuntimeException;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    throw v0

    .line 591
    :catch_6
    move-exception v0

    .line 592
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 593
    .line 594
    const-string v2, "Could not generate the DASH manifest or append the MPD doc to it"

    .line 595
    .line 596
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 597
    .line 598
    .line 599
    throw v1
.end method

.method public static generateSegmentTemplateElement(Lorg/w3c/dom/Document;Ljava/lang/String;I)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "SegmentTemplate"

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    if-eq p2, v2, :cond_4

    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 p0, 0x1

    .line 11
    if-eq p2, p0, :cond_3

    .line 12
    .line 13
    if-eq p2, v2, :cond_2

    .line 14
    .line 15
    if-eq p2, v0, :cond_1

    .line 16
    .line 17
    const-string p0, "null"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const-string p0, "LIVE"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const-string p0, "OTF"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_3
    const-string p0, "PROGRESSIVE"

    .line 27
    .line 28
    :goto_0
    const-string p1, "invalid delivery type: "

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {v1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    throw p0

    .line 39
    :cond_4
    :goto_1
    :try_start_0
    const-string v2, "Representation"

    .line 40
    .line 41
    invoke-interface {p0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lorg/w3c/dom/Element;

    .line 51
    .line 52
    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string/jumbo v4, "startNumber"

    .line 57
    .line 58
    .line 59
    if-ne p2, v0, :cond_5

    .line 60
    .line 61
    const-string v5, "0"

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :catch_0
    move-exception p0

    .line 65
    goto :goto_3

    .line 66
    :cond_5
    const-string v5, "1"

    .line 67
    .line 68
    :goto_2
    invoke-static {v3, p0, v4, v5}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string/jumbo v4, "timescale"

    .line 72
    .line 73
    .line 74
    const-string v5, "1000"

    .line 75
    .line 76
    invoke-static {v3, p0, v4, v5}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    if-eq p2, v0, :cond_6

    .line 80
    .line 81
    const-string p2, "initialization"

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v4, "&sq=0"

    .line 92
    .line 93
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v3, p0, p2, v0}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_6
    const-string p2, "media"

    .line 104
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p1, "&sq=$Number$"

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {v3, p0, p2, p1}, Lkotlin/ranges/RangesKt;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {v2, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :goto_3
    invoke-static {p0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/RuntimeException;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    throw p0
.end method

.method public static generateSegmentTimelineElement(Lorg/w3c/dom/Document;)V
    .locals 3

    .line 1
    const-string v0, "SegmentTimeline"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "SegmentTemplate"

    .line 4
    .line 5
    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lorg/w3c/dom/Element;

    .line 15
    .line 16
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {v1, p0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    move-exception p0

    .line 25
    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/RuntimeException;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    throw p0
.end method

.method public static final generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/work/impl/model/WorkGenerationalId;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 7
    .line 8
    iget p0, p0, Landroidx/work/impl/model/WorkSpec;->generation:I

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Landroidx/work/impl/model/WorkGenerationalId;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static final getCenter-uvyYCjk(J)J
    .locals 5

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v1, p0, v0

    .line 4
    .line 5
    long-to-int v1, v1

    .line 6
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/high16 v2, 0x40000000    # 2.0f

    .line 11
    .line 12
    div-float/2addr v1, v2

    .line 13
    const-wide v3, 0xffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    and-long/2addr p0, v3

    .line 19
    long-to-int p0, p0

    .line 20
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    div-float/2addr p0, v2

    .line 25
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    int-to-long v1, p1

    .line 30
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    int-to-long p0, p0

    .line 35
    shl-long v0, v1, v0

    .line 36
    .line 37
    and-long/2addr p0, v3

    .line 38
    or-long/2addr p0, v0

    .line 39
    return-wide p0
.end method

.method public static getFileForUri(Landroid/net/Uri;)Ljava/io/File;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x2f

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    add-int/2addr v0, v1

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "root"

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    new-instance v0, Ljava/io/File;

    .line 39
    .line 40
    const-string v2, "/"

    .line 41
    .line 42
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v2, Ljava/io/File;

    .line 46
    .line 47
    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 70
    .line 71
    const-string v0, "Resolved path jumped beyond configured root"

    .line 72
    .line 73
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :catch_0
    const-string p0, "Failed to resolve canonical path for "

    .line 78
    .line 79
    invoke-static {v2, p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-object v1

    .line 83
    :cond_1
    const-string p0, "Can\'t decode paths to \'"

    .line 84
    .line 85
    const-string v0, "\', only for \'root\' paths."

    .line 86
    .line 87
    invoke-static {p0, v2, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-object v1
.end method

.method public static getInitializationResponse(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;I)Landroidx/recyclerview/widget/ChildHelper;
    .locals 6

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_WEB_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/utils/Parser;->isMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_WEB_EMBEDDED_PLAYER_PATTERN:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/utils/Parser;->isMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v0, v1

    .line 23
    :goto_1
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const-string v3, "&alr=yes"

    .line 26
    .line 27
    invoke-static {p0, v3}, Landroidx/compose/ui/node/Owner$-CC;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :cond_2
    const-string v3, ""

    .line 32
    .line 33
    if-ne p2, v1, :cond_3

    .line 34
    .line 35
    move-object p2, v3

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    const-string p2, "&sq=0"

    .line 38
    .line 39
    :goto_2
    const-string v4, "&rn=0"

    .line 40
    .line 41
    invoke-static {p0, p2, v4}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    sget-object p2, Lus/shandian/giga/util/Utility;->downloader:Lorg/schabi/newpipe/DownloaderImpl;

    .line 46
    .line 47
    const-string v4, "POST"

    .line 48
    .line 49
    if-eqz v0, :cond_8

    .line 50
    .line 51
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getMediaFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_e

    .line 62
    .line 63
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    .line 64
    .line 65
    const-string v1, "https://www.youtube.com"

    .line 66
    .line 67
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 72
    .line 73
    .line 74
    :goto_3
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    const/16 v3, 0x14

    .line 79
    .line 80
    if-nez v1, :cond_6

    .line 81
    .line 82
    if-ge v2, v3, :cond_6

    .line 83
    .line 84
    const/4 v1, 0x2

    .line 85
    :try_start_1
    new-array v1, v1, [B

    .line 86
    .line 87
    fill-array-data v1, :array_0

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lus/shandian/giga/util/Utility;->getPreferredLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    new-instance v5, Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 98
    .line 99
    invoke-direct {v5}, Lorg/schabi/newpipe/streams/WebMReader$Segment;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v4, v5, Lorg/schabi/newpipe/streams/WebMReader$Segment;->info:Ljava/lang/Object;

    .line 103
    .line 104
    iput-object p0, v5, Lorg/schabi/newpipe/streams/WebMReader$Segment;->tracks:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object v1, v5, Lorg/schabi/newpipe/streams/WebMReader$Segment;->ref:Ljava/lang/Object;

    .line 107
    .line 108
    iget-object p0, v5, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 113
    .line 114
    .line 115
    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 116
    .line 117
    .line 118
    iput-object v3, v5, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Ljava/lang/Object;

    .line 119
    .line 120
    new-instance p0, Lorg/schabi/newpipe/extractor/downloader/Request;

    .line 121
    .line 122
    invoke-direct {p0, v5}, Lorg/schabi/newpipe/extractor/downloader/Request;-><init>(Lorg/schabi/newpipe/streams/WebMReader$Segment;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p0}, Lorg/schabi/newpipe/DownloaderImpl;->execute(Lorg/schabi/newpipe/extractor/downloader/Request;)Landroidx/recyclerview/widget/ChildHelper;

    .line 126
    .line 127
    .line 128
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :try_start_2
    iget v1, p0, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    .line 130
    .line 131
    const/16 v3, 0xc8

    .line 132
    .line 133
    if-ne v1, v3, :cond_5

    .line 134
    .line 135
    const-string v1, "Content-Type"

    .line 136
    .line 137
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/ChildHelper;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    const-string v1, "Could not get the Content-Type header from the response headers"

    .line 142
    .line 143
    invoke-static {v3, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    const-string/jumbo v1, "text/plain"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_2 .. :try_end_2} :catch_1

    .line 153
    if-eqz v1, :cond_4

    .line 154
    .line 155
    :try_start_3
    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/io/Serializable;

    .line 156
    .line 157
    check-cast p0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_3 .. :try_end_3} :catch_0

    .line 158
    .line 159
    add-int/lit8 v2, v2, 0x1

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :catch_0
    move-exception p0

    .line 163
    goto :goto_4

    .line 164
    :cond_4
    return-object p0

    .line 165
    :cond_5
    :try_start_4
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 166
    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string p2, "Could not get the initialization URL: HTTP response code "

    .line 173
    .line 174
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p0

    .line 188
    :cond_6
    if-lt v2, v3, :cond_7

    .line 189
    .line 190
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 191
    .line 192
    const-string p1, "Too many redirects when trying to get the the streaming URL response of a HTML5 client"

    .line 193
    .line 194
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw p0

    .line 198
    :cond_7
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 199
    .line 200
    const-string p1, "Could not get the streaming URL response of a HTML5 client: unreachable code reached!"

    .line 201
    .line 202
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_4 .. :try_end_4} :catch_1

    .line 206
    :catch_1
    move-exception p0

    .line 207
    :goto_4
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 208
    .line 209
    const-string p2, "Could not get the streaming URL response of a HTML5 client"

    .line 210
    .line 211
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    .line 213
    .line 214
    throw p1

    .line 215
    :cond_8
    sget-object p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_ANDROID_PATTERN:Ljava/util/regex/Pattern;

    .line 216
    .line 217
    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/utils/Parser;->isMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    const/4 v0, 0x0

    .line 222
    if-eqz p1, :cond_a

    .line 223
    .line 224
    :try_start_5
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getAndroidUserAgent(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_5 .. :try_end_5} :catch_3

    .line 228
    :try_start_6
    new-array v0, v1, [Ljava/lang/Object;

    .line 229
    .line 230
    aput-object p1, v0, v2

    .line 231
    .line 232
    new-instance p1, Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    .line 236
    .line 237
    aget-object v0, v0, v2

    .line 238
    .line 239
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_6 .. :try_end_6} :catch_2

    .line 249
    :try_start_7
    invoke-static {p1}, Lcom/android/tools/r8/RecordTag;->m$1(Ljava/util/List;)Ljava/util/Map;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 254
    .line 255
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 256
    .line 257
    .line 258
    move-result-object v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_7 .. :try_end_7} :catch_3

    .line 259
    :try_start_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    invoke-static {}, Lus/shandian/giga/util/Utility;->getPreferredLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    new-instance v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 267
    .line 268
    invoke-direct {v2}, Lorg/schabi/newpipe/streams/WebMReader$Segment;-><init>()V

    .line 269
    .line 270
    .line 271
    iput-object v4, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->info:Ljava/lang/Object;

    .line 272
    .line 273
    iput-object p0, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->tracks:Ljava/lang/Object;

    .line 274
    .line 275
    iput-object v0, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->ref:Ljava/lang/Object;

    .line 276
    .line 277
    iget-object p0, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 280
    .line 281
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 282
    .line 283
    .line 284
    if-eqz p1, :cond_9

    .line 285
    .line 286
    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 287
    .line 288
    .line 289
    :cond_9
    iput-object v1, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Ljava/lang/Object;

    .line 290
    .line 291
    new-instance p0, Lorg/schabi/newpipe/extractor/downloader/Request;

    .line 292
    .line 293
    invoke-direct {p0, v2}, Lorg/schabi/newpipe/extractor/downloader/Request;-><init>(Lorg/schabi/newpipe/streams/WebMReader$Segment;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p2, p0}, Lorg/schabi/newpipe/DownloaderImpl;->execute(Lorg/schabi/newpipe/extractor/downloader/Request;)Landroidx/recyclerview/widget/ChildHelper;

    .line 297
    .line 298
    .line 299
    move-result-object p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_8 .. :try_end_8} :catch_2

    .line 300
    return-object p0

    .line 301
    :catch_2
    move-exception p0

    .line 302
    goto :goto_5

    .line 303
    :catch_3
    move-exception p0

    .line 304
    :goto_5
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 305
    .line 306
    const-string p2, "Could not get the ANDROID streaming URL response"

    .line 307
    .line 308
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    .line 310
    .line 311
    throw p1

    .line 312
    :cond_a
    sget-object p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_IOS_PATTERN:Ljava/util/regex/Pattern;

    .line 313
    .line 314
    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/utils/Parser;->isMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    if-eqz p1, :cond_c

    .line 319
    .line 320
    :try_start_9
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getIosUserAgent()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_9 .. :try_end_9} :catch_5

    .line 324
    :try_start_a
    new-array v0, v1, [Ljava/lang/Object;

    .line 325
    .line 326
    aput-object p1, v0, v2

    .line 327
    .line 328
    new-instance p1, Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    .line 332
    .line 333
    aget-object v0, v0, v2

    .line 334
    .line 335
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 342
    .line 343
    .line 344
    move-result-object p1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_a .. :try_end_a} :catch_4

    .line 345
    :try_start_b
    invoke-static {p1}, Lcom/android/tools/r8/RecordTag;->m$1(Ljava/util/List;)Ljava/util/Map;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 350
    .line 351
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 352
    .line 353
    .line 354
    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_b .. :try_end_b} :catch_5

    .line 355
    :try_start_c
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    invoke-static {}, Lus/shandian/giga/util/Utility;->getPreferredLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    new-instance v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 363
    .line 364
    invoke-direct {v2}, Lorg/schabi/newpipe/streams/WebMReader$Segment;-><init>()V

    .line 365
    .line 366
    .line 367
    iput-object v4, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->info:Ljava/lang/Object;

    .line 368
    .line 369
    iput-object p0, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->tracks:Ljava/lang/Object;

    .line 370
    .line 371
    iput-object v0, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->ref:Ljava/lang/Object;

    .line 372
    .line 373
    iget-object p0, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 376
    .line 377
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 378
    .line 379
    .line 380
    if-eqz p1, :cond_b

    .line 381
    .line 382
    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 383
    .line 384
    .line 385
    :cond_b
    iput-object v1, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Ljava/lang/Object;

    .line 386
    .line 387
    new-instance p0, Lorg/schabi/newpipe/extractor/downloader/Request;

    .line 388
    .line 389
    invoke-direct {p0, v2}, Lorg/schabi/newpipe/extractor/downloader/Request;-><init>(Lorg/schabi/newpipe/streams/WebMReader$Segment;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p2, p0}, Lorg/schabi/newpipe/DownloaderImpl;->execute(Lorg/schabi/newpipe/extractor/downloader/Request;)Landroidx/recyclerview/widget/ChildHelper;

    .line 393
    .line 394
    .line 395
    move-result-object p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_c .. :try_end_c} :catch_4

    .line 396
    return-object p0

    .line 397
    :catch_4
    move-exception p0

    .line 398
    goto :goto_6

    .line 399
    :catch_5
    move-exception p0

    .line 400
    :goto_6
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 401
    .line 402
    const-string p2, "Could not get the IOS streaming URL response"

    .line 403
    .line 404
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 405
    .line 406
    .line 407
    throw p1

    .line 408
    :cond_c
    sget-object p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_VISIONOS_PATTERN:Ljava/util/regex/Pattern;

    .line 409
    .line 410
    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/utils/Parser;->isMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    .line 411
    .line 412
    .line 413
    move-result p1

    .line 414
    if-eqz p1, :cond_e

    .line 415
    .line 416
    :try_start_d
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getVisionOsUserAgent(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object p1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_d .. :try_end_d} :catch_7

    .line 420
    :try_start_e
    new-array v0, v1, [Ljava/lang/Object;

    .line 421
    .line 422
    aput-object p1, v0, v2

    .line 423
    .line 424
    new-instance p1, Ljava/util/ArrayList;

    .line 425
    .line 426
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 427
    .line 428
    .line 429
    aget-object v0, v0, v2

    .line 430
    .line 431
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 438
    .line 439
    .line 440
    move-result-object p1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_e .. :try_end_e} :catch_6

    .line 441
    :try_start_f
    invoke-static {p1}, Lcom/android/tools/r8/RecordTag;->m$1(Ljava/util/List;)Ljava/util/Map;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 446
    .line 447
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 448
    .line 449
    .line 450
    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_f .. :try_end_f} :catch_7

    .line 451
    :try_start_10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 452
    .line 453
    .line 454
    invoke-static {}, Lus/shandian/giga/util/Utility;->getPreferredLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    new-instance v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 459
    .line 460
    invoke-direct {v2}, Lorg/schabi/newpipe/streams/WebMReader$Segment;-><init>()V

    .line 461
    .line 462
    .line 463
    iput-object v4, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->info:Ljava/lang/Object;

    .line 464
    .line 465
    iput-object p0, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->tracks:Ljava/lang/Object;

    .line 466
    .line 467
    iput-object v0, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->ref:Ljava/lang/Object;

    .line 468
    .line 469
    iget-object p0, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Ljava/lang/Object;

    .line 470
    .line 471
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 472
    .line 473
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 474
    .line 475
    .line 476
    if-eqz p1, :cond_d

    .line 477
    .line 478
    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 479
    .line 480
    .line 481
    :cond_d
    iput-object v1, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Ljava/lang/Object;

    .line 482
    .line 483
    new-instance p0, Lorg/schabi/newpipe/extractor/downloader/Request;

    .line 484
    .line 485
    invoke-direct {p0, v2}, Lorg/schabi/newpipe/extractor/downloader/Request;-><init>(Lorg/schabi/newpipe/streams/WebMReader$Segment;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {p2, p0}, Lorg/schabi/newpipe/DownloaderImpl;->execute(Lorg/schabi/newpipe/extractor/downloader/Request;)Landroidx/recyclerview/widget/ChildHelper;

    .line 489
    .line 490
    .line 491
    move-result-object p0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_10 .. :try_end_10} :catch_6

    .line 492
    return-object p0

    .line 493
    :catch_6
    move-exception p0

    .line 494
    goto :goto_7

    .line 495
    :catch_7
    move-exception p0

    .line 496
    :goto_7
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 497
    .line 498
    const-string p2, "Could not get the VISIONOS streaming URL response"

    .line 499
    .line 500
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 501
    .line 502
    .line 503
    throw p1

    .line 504
    :cond_e
    :try_start_11
    invoke-virtual {p2, p0}, Lkotlin/io/CloseableKt;->get(Ljava/lang/String;)Landroidx/recyclerview/widget/ChildHelper;

    .line 505
    .line 506
    .line 507
    move-result-object p0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_11 .. :try_end_11} :catch_8

    .line 508
    return-object p0

    .line 509
    :catch_8
    move-exception p0

    .line 510
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 511
    .line 512
    const-string p2, "Could not get the streaming URL response"

    .line 513
    .line 514
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 515
    .line 516
    .line 517
    throw p1

    .line 518
    nop

    .line 519
    :array_0
    .array-data 1
        0x78t
        0x0t
    .end array-data
.end method

.method public static final getKioskIcon(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sparse-switch v0, :sswitch_data_0

    .line 9
    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :sswitch_0
    const-string/jumbo v0, "trending_podcasts_episodes"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    const p0, 0x7f080141

    .line 25
    .line 26
    .line 27
    return p0

    .line 28
    :sswitch_1
    const-string/jumbo v0, "trending_music"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_1
    const p0, 0x7f08012c

    .line 40
    .line 41
    .line 42
    return p0

    .line 43
    :sswitch_2
    const-string v0, "Recently added"

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_8

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :sswitch_3
    const-string v0, "Trending"

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_a

    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :sswitch_4
    const-string v0, "conferences"

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-nez p0, :cond_a

    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :sswitch_5
    const-string/jumbo v0, "trending_movies_and_shows"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-nez p0, :cond_2

    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :cond_2
    const p0, 0x7f080127

    .line 85
    .line 86
    .line 87
    return p0

    .line 88
    :sswitch_6
    const-string v0, "Radio"

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-nez p0, :cond_3

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    const p0, 0x7f080144

    .line 98
    .line 99
    .line 100
    return p0

    .line 101
    :sswitch_7
    const-string v0, "Local"

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-nez p0, :cond_4

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    const p0, 0x7f080118

    .line 111
    .line 112
    .line 113
    return p0

    .line 114
    :sswitch_8
    const-string v0, "live"

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    if-nez p0, :cond_5

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    const p0, 0x7f08011f

    .line 124
    .line 125
    .line 126
    return p0

    .line 127
    :sswitch_9
    const-string v0, "New & hot"

    .line 128
    .line 129
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-nez p0, :cond_a

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :sswitch_a
    const-string v0, "Featured"

    .line 137
    .line 138
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    if-nez p0, :cond_6

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_6
    const p0, 0x7f080157

    .line 146
    .line 147
    .line 148
    return p0

    .line 149
    :sswitch_b
    const-string/jumbo v0, "trending_gaming"

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    if-nez p0, :cond_7

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_7
    const p0, 0x7f08015f

    .line 160
    .line 161
    .line 162
    return p0

    .line 163
    :sswitch_c
    const-string v0, "recent"

    .line 164
    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-nez p0, :cond_8

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_8
    const p0, 0x7f0800df

    .line 173
    .line 174
    .line 175
    return p0

    .line 176
    :sswitch_d
    const-string v0, "Most liked"

    .line 177
    .line 178
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    if-nez p0, :cond_9

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_9
    const p0, 0x7f08015c

    .line 186
    .line 187
    .line 188
    return p0

    .line 189
    :sswitch_e
    const-string v0, "Top 50"

    .line 190
    .line 191
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    if-nez p0, :cond_a

    .line 196
    .line 197
    :goto_0
    const/4 p0, 0x0

    .line 198
    return p0

    .line 199
    :cond_a
    const p0, 0x7f080167

    .line 200
    .line 201
    .line 202
    return p0

    .line 203
    :sswitch_data_0
    .sparse-switch
        -0x6a59529a -> :sswitch_e
        -0x5d047f10 -> :sswitch_d
        -0x37b9b9a5 -> :sswitch_c
        -0x18964777 -> :sswitch_b
        -0xd78b7b2 -> :sswitch_a
        -0x7873d4d -> :sswitch_9
        0x32b0ec -> :sswitch_8
        0x462ef4b -> :sswitch_7
        0x4b123db -> :sswitch_6
        0x2b396a8c -> :sswitch_5
        0x40895ed7 -> :sswitch_4
        0x56ffb945 -> :sswitch_3
        0x612c6c28 -> :sswitch_2
        0x62ab768b -> :sswitch_1
        0x65e4b18e -> :sswitch_0
    .end sparse-switch
.end method

.method public static final getTranslatedKioskName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sparse-switch v0, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :sswitch_0
    const-string/jumbo v0, "trending_podcasts_episodes"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_0
    const p1, 0x7f130509

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :sswitch_1
    const-string/jumbo v0, "trending_music"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_1
    const p1, 0x7f130508

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    return-object p0

    .line 60
    :sswitch_2
    const-string v0, "Recently added"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :cond_2
    const p1, 0x7f130413

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    return-object p0

    .line 81
    :sswitch_3
    const-string v0, "Trending"

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_3

    .line 88
    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :cond_3
    const p1, 0x7f130505

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    return-object p0

    .line 102
    :sswitch_4
    const-string v0, "conferences"

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_4

    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :cond_4
    const p1, 0x7f1300b2

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    return-object p0

    .line 123
    :sswitch_5
    const-string/jumbo v0, "trending_movies_and_shows"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_5

    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :cond_5
    const p1, 0x7f130507

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    return-object p0

    .line 145
    :sswitch_6
    const-string v0, "Radio"

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_6

    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_6
    const p1, 0x7f130408

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    return-object p0

    .line 166
    :sswitch_7
    const-string v0, "Local"

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-nez v0, :cond_7

    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_7
    const p1, 0x7f130253

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    return-object p0

    .line 187
    :sswitch_8
    const-string v0, "live"

    .line 188
    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-nez v0, :cond_8

    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_8
    const p1, 0x7f130132

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    return-object p0

    .line 208
    :sswitch_9
    const-string v0, "New & hot"

    .line 209
    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-nez v0, :cond_9

    .line 215
    .line 216
    goto :goto_0

    .line 217
    :cond_9
    const p1, 0x7f13034b

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    return-object p0

    .line 228
    :sswitch_a
    const-string v0, "Featured"

    .line 229
    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-nez v0, :cond_a

    .line 235
    .line 236
    goto :goto_0

    .line 237
    :cond_a
    const p1, 0x7f1301c1

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    return-object p0

    .line 248
    :sswitch_b
    const-string/jumbo v0, "trending_gaming"

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-nez v0, :cond_b

    .line 256
    .line 257
    goto :goto_0

    .line 258
    :cond_b
    const p1, 0x7f130506

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    return-object p0

    .line 269
    :sswitch_c
    const-string v0, "recent"

    .line 270
    .line 271
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-nez v0, :cond_c

    .line 276
    .line 277
    goto :goto_0

    .line 278
    :cond_c
    const p1, 0x7f130412

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    return-object p0

    .line 289
    :sswitch_d
    const-string v0, "Most liked"

    .line 290
    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-nez v0, :cond_d

    .line 296
    .line 297
    goto :goto_0

    .line 298
    :cond_d
    const p1, 0x7f1302fd

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    return-object p0

    .line 309
    :sswitch_e
    const-string v0, "Top 50"

    .line 310
    .line 311
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-nez v0, :cond_e

    .line 316
    .line 317
    :goto_0
    return-object p1

    .line 318
    :cond_e
    const p1, 0x7f130503

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p0

    .line 325
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    return-object p0

    .line 329
    :sswitch_data_0
    .sparse-switch
        -0x6a59529a -> :sswitch_e
        -0x5d047f10 -> :sswitch_d
        -0x37b9b9a5 -> :sswitch_c
        -0x18964777 -> :sswitch_b
        -0xd78b7b2 -> :sswitch_a
        -0x7873d4d -> :sswitch_9
        0x32b0ec -> :sswitch_8
        0x462ef4b -> :sswitch_7
        0x4b123db -> :sswitch_6
        0x2b396a8c -> :sswitch_5
        0x40895ed7 -> :sswitch_4
        0x56ffb945 -> :sswitch_3
        0x612c6c28 -> :sswitch_2
        0x62ab768b -> :sswitch_1
        0x65e4b18e -> :sswitch_0
    .end sparse-switch
.end method

.method public static isEndToEnd(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "Connection"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "Keep-Alive"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "Proxy-Authenticate"

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const-string v0, "Proxy-Authorization"

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const-string v0, "TE"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    const-string v0, "Trailers"

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    const-string v0, "Transfer-Encoding"

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    .line 57
    const-string v0, "Upgrade"

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-nez p0, :cond_0

    .line 64
    .line 65
    const/4 p0, 0x1

    .line 66
    return p0

    .line 67
    :cond_0
    const/4 p0, 0x0

    .line 68
    return p0
.end method

.method public static final materializeImpl(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 4

    .line 1
    sget-object v0, Landroidx/compose/ui/ComposedModifierKt$materializeImpl$1;->INSTANCE:Landroidx/compose/ui/ComposedModifierKt$materializeImpl$1;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroidx/compose/ui/Modifier;->all(Lkotlin/jvm/functions/Function1;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    move-object v0, p0

    .line 11
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const v2, 0x48ae8da7

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v0, v2, v1, v1, v3}, Landroidx/compose/runtime/GapComposer;->start-AzEfcrM(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroidx/compose/ui/ComposedModifierKt$materializeImpl$result$1;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Landroidx/compose/ui/ComposedModifierKt$materializeImpl$result$1;-><init>(Landroidx/compose/runtime/Composer;)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 27
    .line 28
    invoke-interface {p1, v1, v0}, Landroidx/compose/ui/Modifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 33
    .line 34
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 35
    .line 36
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 37
    .line 38
    .line 39
    return-object p1
.end method

.method public static final materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x1a365f2c

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt;->materializeImpl(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 15
    .line 16
    .line 17
    return-object p1
.end method

.method public static queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J
    .locals 8

    .line 1
    const-string v1, "Failed query: "

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 p0, 0x0

    .line 8
    :try_start_0
    filled-new-array {p2}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v3, p1

    .line 16
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    .line 34
    .line 35
    .line 36
    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {p0}, Lkotlin/ranges/RangesKt;->closeQuietly(Landroid/database/Cursor;)V

    .line 38
    .line 39
    .line 40
    return-wide p1

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    move-object p1, v0

    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    move-object p1, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p0}, Lkotlin/ranges/RangesKt;->closeQuietly(Landroid/database/Cursor;)V

    .line 48
    .line 49
    .line 50
    return-wide p3

    .line 51
    :goto_0
    :try_start_1
    const-string p2, "DocumentFile"

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    invoke-static {p0}, Lkotlin/ranges/RangesKt;->closeQuietly(Landroid/database/Cursor;)V

    .line 69
    .line 70
    .line 71
    return-wide p3

    .line 72
    :goto_1
    invoke-static {p0}, Lkotlin/ranges/RangesKt;->closeQuietly(Landroid/database/Cursor;)V

    .line 73
    .line 74
    .line 75
    throw p1
.end method

.method public static queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v1, "Failed query: "

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 p0, 0x0

    .line 8
    :try_start_0
    filled-new-array {p2}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v3, p1

    .line 16
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    invoke-static {p1}, Lkotlin/ranges/RangesKt;->closeQuietly(Landroid/database/Cursor;)V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    move-object p0, v0

    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    move-object p2, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p1}, Lkotlin/ranges/RangesKt;->closeQuietly(Landroid/database/Cursor;)V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :catchall_1
    move-exception v0

    .line 52
    move-object p1, v0

    .line 53
    move-object v8, p1

    .line 54
    move-object p1, p0

    .line 55
    move-object p0, v8

    .line 56
    goto :goto_1

    .line 57
    :catch_1
    move-exception v0

    .line 58
    move-object p2, v0

    .line 59
    move-object p1, p0

    .line 60
    :goto_0
    :try_start_2
    const-string v0, "DocumentFile"

    .line 61
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Lkotlin/ranges/RangesKt;->closeQuietly(Landroid/database/Cursor;)V

    .line 78
    .line 79
    .line 80
    return-object p0

    .line 81
    :goto_1
    invoke-static {p1}, Lkotlin/ranges/RangesKt;->closeQuietly(Landroid/database/Cursor;)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public static setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1, p3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static setMaxElevation(Landroidx/cardview/widget/CardView$1;F)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/cardview/widget/RoundRectDrawable;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/cardview/widget/CardView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    iget v4, v0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    .line 18
    .line 19
    cmpl-float v4, p1, v4

    .line 20
    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    iget-boolean v4, v0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForPadding:Z

    .line 24
    .line 25
    if-ne v4, v2, :cond_0

    .line 26
    .line 27
    iget-boolean v4, v0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    .line 28
    .line 29
    if-ne v4, v3, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iput p1, v0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    .line 33
    .line 34
    iput-boolean v2, v0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForPadding:Z

    .line 35
    .line 36
    iput-boolean v3, v0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    invoke-virtual {v0, p1}, Landroidx/cardview/widget/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1, p1, p1, p1}, Landroidx/cardview/widget/CardView$1;->setShadowPadding(IIII)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iget-object p1, p0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Landroidx/cardview/widget/RoundRectDrawable;

    .line 59
    .line 60
    iget v0, p1, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    .line 61
    .line 62
    iget p1, p1, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    .line 63
    .line 64
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 69
    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    float-to-double v5, v0

    .line 73
    sget-wide v7, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    .line 74
    .line 75
    sub-double v7, v3, v7

    .line 76
    .line 77
    float-to-double v9, p1

    .line 78
    mul-double/2addr v7, v9

    .line 79
    add-double/2addr v7, v5

    .line 80
    double-to-float v2, v7

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    sget v2, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->$r8$clinit:I

    .line 83
    .line 84
    move v2, v0

    .line 85
    :goto_1
    float-to-double v5, v2

    .line 86
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 87
    .line 88
    .line 89
    move-result-wide v5

    .line 90
    double-to-int v2, v5

    .line 91
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const/high16 v5, 0x3fc00000    # 1.5f

    .line 96
    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    mul-float/2addr v0, v5

    .line 100
    float-to-double v0, v0

    .line 101
    sget-wide v5, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    .line 102
    .line 103
    sub-double/2addr v3, v5

    .line 104
    float-to-double v5, p1

    .line 105
    mul-double/2addr v3, v5

    .line 106
    add-double/2addr v3, v0

    .line 107
    double-to-float p1, v3

    .line 108
    goto :goto_2

    .line 109
    :cond_3
    mul-float p1, v0, v5

    .line 110
    .line 111
    :goto_2
    float-to-double v0, p1

    .line 112
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 113
    .line 114
    .line 115
    move-result-wide v0

    .line 116
    double-to-int p1, v0

    .line 117
    invoke-virtual {p0, v2, p1, v2, p1}, Landroidx/cardview/widget/CardView$1;->setShadowPadding(IIII)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public static setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayEnabled:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    instance-of v1, p0, Landroid/view/View;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    move-object v1, p0

    .line 21
    check-cast v1, Landroid/view/View;

    .line 22
    .line 23
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getElevation()F

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-float/2addr v0, v1

    .line 30
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p0, p1, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 36
    .line 37
    iget v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->parentAbsoluteElevation:F

    .line 38
    .line 39
    cmpl-float v1, v1, v0

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iput v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->parentAbsoluteElevation:F

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->updateZ()V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public static step(Lkotlin/ranges/IntRange;I)Lkotlin/ranges/IntProgression;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-lez p1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget v0, p0, Lkotlin/ranges/IntProgression;->first:I

    .line 16
    .line 17
    iget v1, p0, Lkotlin/ranges/IntProgression;->last:I

    .line 18
    .line 19
    iget p0, p0, Lkotlin/ranges/IntProgression;->step:I

    .line 20
    .line 21
    if-lez p0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    neg-int p1, p1

    .line 25
    :goto_1
    new-instance p0, Lkotlin/ranges/IntProgression;

    .line 26
    .line 27
    invoke-direct {p0, v0, v1, p1}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v0, "Step must be positive, was: "

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/16 v0, 0x2e

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public static stream(Lorg/jsoup/nodes/Element;Ljava/lang/Class;)Lj$/util/stream/Stream;
    .locals 1

    .line 1
    new-instance v0, Lorg/jsoup/nodes/NodeIterator;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/jsoup/nodes/NodeIterator;-><init>(Lorg/jsoup/nodes/Node;Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    const/16 p0, 0x111

    .line 7
    .line 8
    invoke-static {v0, p0}, Lj$/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Lj$/util/Spliterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-static {p0, p1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static until(II)Lkotlin/ranges/IntRange;
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    if-gt p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lkotlin/ranges/IntRange;->EMPTY:Lkotlin/ranges/IntRange;

    .line 6
    .line 7
    sget-object p0, Lkotlin/ranges/IntRange;->EMPTY:Lkotlin/ranges/IntRange;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    sub-int/2addr p1, v1

    .line 14
    invoke-direct {v0, p0, p1, v1}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static withDefaultMutable(Ljava/util/EnumMap;Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;)Ljava/util/Map;
    .locals 1

    .line 1
    new-instance v0, Lkotlin/collections/MutableMapWithDefaultImpl;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lkotlin/collections/MutableMapWithDefaultImpl;-><init>(Ljava/util/EnumMap;Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public abstract casListeners(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;)Z
.end method

.method public abstract casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract casWaiters(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)Z
.end method

.method public decodeBoolean()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/ranges/RangesKt;->decodeValue()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public decodeBooleanElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lkotlin/ranges/RangesKt;->decodeBoolean()Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public decodeByte()B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/ranges/RangesKt;->decodeValue()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public decodeByteElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)B
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lkotlin/ranges/RangesKt;->decodeByte()B

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public decodeChar()C
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/ranges/RangesKt;->decodeValue()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public decodeCharElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)C
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lkotlin/ranges/RangesKt;->decodeChar()C

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public decodeDouble()D
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/ranges/RangesKt;->decodeValue()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public decodeDoubleElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)D
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lkotlin/ranges/RangesKt;->decodeDouble()D

    .line 5
    .line 6
    .line 7
    move-result-wide p0

    .line 8
    return-wide p0
.end method

.method public decodeFloat()F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/ranges/RangesKt;->decodeValue()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public decodeFloatElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lkotlin/ranges/RangesKt;->decodeFloat()F

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public decodeInlineElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)Lkotlinx/serialization/encoding/Decoder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2}, Lkotlinx/serialization/internal/ListLikeDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lkotlin/ranges/RangesKt;->decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public decodeInt()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/ranges/RangesKt;->decodeValue()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lkotlin/ranges/RangesKt;->decodeInt()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public decodeLong()J
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/ranges/RangesKt;->decodeValue()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public decodeLongElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)J
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lkotlin/ranges/RangesKt;->decodeLong()J

    .line 5
    .line 6
    .line 7
    move-result-wide p0

    .line 8
    return-wide p0
.end method

.method public decodeNotNullMark()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlinx/serialization/internal/StringSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Lkotlinx/serialization/encoding/Decoder;->decodeNotNullMark()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lkotlin/ranges/RangesKt;->decodeSerializableValue(Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p3}, Lkotlin/ranges/RangesKt;->decodeSerializableValue(Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public decodeSerializableValue(Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p0}, Lkotlinx/serialization/KSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public decodeShort()S
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/ranges/RangesKt;->decodeValue()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public decodeShortElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)S
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lkotlin/ranges/RangesKt;->decodeShort()S

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public decodeString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/ranges/RangesKt;->decodeValue()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lkotlin/ranges/RangesKt;->decodeString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public decodeValue()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/serialization/SerializationException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, " can\'t retrieve untyped values"

    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public abstract putNext(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V
.end method

.method public abstract putThread(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;Ljava/lang/Thread;)V
.end method
