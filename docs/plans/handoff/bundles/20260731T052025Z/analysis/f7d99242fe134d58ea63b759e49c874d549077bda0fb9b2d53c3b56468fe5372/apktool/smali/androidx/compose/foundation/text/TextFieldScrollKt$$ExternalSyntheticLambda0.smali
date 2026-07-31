.class public final synthetic Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/TextFieldScrollerPosition;ZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p2, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda0;->f$1:Z

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Z)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    iput-boolean p3, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-boolean v3, v0, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    iget-object v4, v0, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v0, Lkotlinx/collections/immutable/ImmutableList;

    .line 17
    .line 18
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 23
    .line 24
    move-object/from16 v6, p2

    .line 25
    .line 26
    check-cast v6, Landroidx/compose/runtime/Composer;

    .line 27
    .line 28
    move-object/from16 v7, p3

    .line 29
    .line 30
    check-cast v7, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    and-int/lit8 v8, v7, 0x6

    .line 40
    .line 41
    if-nez v8, :cond_1

    .line 42
    .line 43
    move-object v8, v6

    .line 44
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 45
    .line 46
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    if-eqz v8, :cond_0

    .line 51
    .line 52
    const/4 v8, 0x4

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v8, 0x2

    .line 55
    :goto_0
    or-int/2addr v7, v8

    .line 56
    :cond_1
    and-int/lit8 v8, v7, 0x13

    .line 57
    .line 58
    const/16 v9, 0x12

    .line 59
    .line 60
    if-eq v8, v9, :cond_2

    .line 61
    .line 62
    move v2, v5

    .line 63
    :cond_2
    and-int/2addr v5, v7

    .line 64
    move-object v15, v6

    .line 65
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 66
    .line 67
    invoke-virtual {v15, v5, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 74
    .line 75
    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/OffsetKt;->consumeWindowInsets(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    new-instance v1, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;

    .line 84
    .line 85
    const/4 v2, 0x6

    .line 86
    invoke-direct {v1, v2, v0, v4, v3}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 87
    .line 88
    .line 89
    const v0, -0x40cb4a3e

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v1, v15}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 93
    .line 94
    .line 95
    move-result-object v14

    .line 96
    const/high16 v16, 0x30000

    .line 97
    .line 98
    const/16 v17, 0x1e

    .line 99
    .line 100
    const/4 v8, 0x0

    .line 101
    const-wide/16 v9, 0x0

    .line 102
    .line 103
    const-wide/16 v11, 0x0

    .line 104
    .line 105
    const/4 v13, 0x0

    .line 106
    invoke-static/range {v7 .. v17}, Lkotlin/math/MathKt;->Surface-_UMDTes(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 111
    .line 112
    .line 113
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 114
    .line 115
    return-object v0

    .line 116
    :pswitch_0
    check-cast v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 117
    .line 118
    iget-object v1, v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->orientation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 119
    .line 120
    check-cast v4, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 121
    .line 122
    move-object/from16 v6, p1

    .line 123
    .line 124
    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 125
    .line 126
    move-object/from16 v6, p2

    .line 127
    .line 128
    check-cast v6, Landroidx/compose/runtime/Composer;

    .line 129
    .line 130
    move-object/from16 v7, p3

    .line 131
    .line 132
    check-cast v7, Ljava/lang/Integer;

    .line 133
    .line 134
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 138
    .line 139
    const v7, -0x7f685f60

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 143
    .line 144
    .line 145
    sget-object v7, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 146
    .line 147
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    sget-object v8, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 152
    .line 153
    if-ne v7, v8, :cond_4

    .line 154
    .line 155
    move v7, v5

    .line 156
    goto :goto_2

    .line 157
    :cond_4
    move v7, v2

    .line 158
    :goto_2
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    check-cast v8, Landroidx/compose/foundation/gestures/Orientation;

    .line 163
    .line 164
    sget-object v9, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 165
    .line 166
    if-eq v8, v9, :cond_6

    .line 167
    .line 168
    if-nez v7, :cond_5

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_5
    move v7, v2

    .line 172
    goto :goto_4

    .line 173
    :cond_6
    :goto_3
    move v7, v5

    .line 174
    :goto_4
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 183
    .line 184
    if-nez v8, :cond_7

    .line 185
    .line 186
    if-ne v9, v10, :cond_8

    .line 187
    .line 188
    :cond_7
    new-instance v9, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    .line 189
    .line 190
    const/16 v8, 0x16

    .line 191
    .line 192
    invoke-direct {v9, v8, v0}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :cond_8
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 199
    .line 200
    invoke-static {v9, v6}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    if-ne v9, v10, :cond_9

    .line 209
    .line 210
    new-instance v9, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;

    .line 211
    .line 212
    invoke-direct {v9, v8, v5}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 213
    .line 214
    .line 215
    new-instance v8, Landroidx/compose/foundation/gestures/DefaultScrollableState;

    .line 216
    .line 217
    invoke-direct {v8, v9}, Landroidx/compose/foundation/gestures/DefaultScrollableState;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    move-object v9, v8

    .line 224
    :cond_9
    check-cast v9, Landroidx/compose/foundation/gestures/ScrollableState;

    .line 225
    .line 226
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v11

    .line 234
    or-int/2addr v8, v11

    .line 235
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v11

    .line 239
    if-nez v8, :cond_a

    .line 240
    .line 241
    if-ne v11, v10, :cond_b

    .line 242
    .line 243
    :cond_a
    new-instance v11, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;

    .line 244
    .line 245
    invoke-direct {v11, v9, v0}, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/text/TextFieldScrollerPosition;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    :cond_b
    check-cast v11, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;

    .line 252
    .line 253
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    check-cast v1, Landroidx/compose/foundation/gestures/Orientation;

    .line 258
    .line 259
    if-eqz v3, :cond_c

    .line 260
    .line 261
    iget-object v0, v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->maximum$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 262
    .line 263
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    const/4 v3, 0x0

    .line 268
    cmpg-float v0, v0, v3

    .line 269
    .line 270
    if-nez v0, :cond_d

    .line 271
    .line 272
    :cond_c
    move v5, v2

    .line 273
    :cond_d
    invoke-static {v11, v1, v5, v7, v4}, Landroidx/compose/foundation/gestures/ScrollableKt;->scrollable$default(Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;)Landroidx/compose/ui/Modifier;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 278
    .line 279
    .line 280
    return-object v0

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
