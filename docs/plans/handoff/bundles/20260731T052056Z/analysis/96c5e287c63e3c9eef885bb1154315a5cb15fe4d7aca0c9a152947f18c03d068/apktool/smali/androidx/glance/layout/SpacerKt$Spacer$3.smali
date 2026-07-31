.class public final Landroidx/glance/layout/SpacerKt$Spacer$3;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $modifier:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/glance/layout/SpacerKt$Spacer$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p3, p0, Landroidx/glance/layout/SpacerKt$Spacer$3;->$modifier:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 10
    iput p1, p0, Landroidx/glance/layout/SpacerKt$Spacer$3;->$r8$classId:I

    iput-object p2, p0, Landroidx/glance/layout/SpacerKt$Spacer$3;->$modifier:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Landroidx/glance/layout/SpacerKt$Spacer$3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/glance/layout/SpacerKt$Spacer$3;->$modifier:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    check-cast p2, Ljava/lang/Number;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    and-int/2addr p2, v2

    .line 23
    if-ne p2, v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->getSkipping()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    check-cast p0, Lkotlin/jvm/functions/Function3;

    .line 37
    .line 38
    new-instance p2, Landroidx/glance/appwidget/lazy/LazyListKt$applyListScope$1$1$2$1;

    .line 39
    .line 40
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {p0, p2, p1, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :goto_1
    return-object v5

    .line 51
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 52
    .line 53
    check-cast p2, Ljava/lang/Number;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 56
    .line 57
    .line 58
    check-cast p0, Landroidx/compose/ui/window/PopupLayout;

    .line 59
    .line 60
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    invoke-virtual {p0, p2, p1}, Landroidx/compose/ui/window/PopupLayout;->Content(ILandroidx/compose/runtime/GapComposer;)V

    .line 65
    .line 66
    .line 67
    return-object v5

    .line 68
    :pswitch_1
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 69
    .line 70
    check-cast p2, Ljava/lang/Number;

    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 73
    .line 74
    .line 75
    check-cast p0, Landroidx/compose/ui/window/DialogLayout;

    .line 76
    .line 77
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    invoke-virtual {p0, p2, p1}, Landroidx/compose/ui/window/DialogLayout;->Content(ILandroidx/compose/runtime/GapComposer;)V

    .line 82
    .line 83
    .line 84
    return-object v5

    .line 85
    :pswitch_2
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 86
    .line 87
    check-cast p2, Ljava/lang/Number;

    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    and-int/lit8 v0, p2, 0x3

    .line 94
    .line 95
    if-eq v0, v1, :cond_2

    .line 96
    .line 97
    move v0, v4

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    move v0, v3

    .line 100
    :goto_2
    and-int/2addr p2, v4

    .line 101
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_4

    .line 106
    .line 107
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 112
    .line 113
    if-ne p2, v0, :cond_3

    .line 114
    .line 115
    sget-object p2, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1$1;->INSTANCE$1:Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1$1;

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 121
    .line 122
    new-instance v0, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    .line 123
    .line 124
    invoke-direct {v0, p2, v3}, Landroidx/compose/ui/semantics/AppendedSemanticsElement;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    .line 125
    .line 126
    .line 127
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 128
    .line 129
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 134
    .line 135
    invoke-static {v3, p1, v0, p0}, Lcoil3/util/UtilsKt;->DialogLayout(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;)V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 140
    .line 141
    .line 142
    :goto_3
    return-object v5

    .line 143
    :pswitch_3
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 144
    .line 145
    check-cast p2, Ljava/lang/Number;

    .line 146
    .line 147
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 148
    .line 149
    .line 150
    check-cast p0, Landroidx/compose/ui/platform/ComposeView;

    .line 151
    .line 152
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    invoke-virtual {p0, p2, p1}, Landroidx/compose/ui/platform/ComposeView;->Content(ILandroidx/compose/runtime/GapComposer;)V

    .line 157
    .line 158
    .line 159
    return-object v5

    .line 160
    :pswitch_4
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 161
    .line 162
    check-cast p2, Ljava/lang/Number;

    .line 163
    .line 164
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    and-int/lit8 v0, p2, 0x3

    .line 169
    .line 170
    if-eq v0, v1, :cond_5

    .line 171
    .line 172
    move v0, v4

    .line 173
    goto :goto_4

    .line 174
    :cond_5
    move v0, v3

    .line 175
    :goto_4
    and-int/2addr p2, v4

    .line 176
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    if-eqz p2, :cond_6

    .line 181
    .line 182
    check-cast p0, Landroidx/compose/ui/platform/AbstractComposeView;

    .line 183
    .line 184
    invoke-virtual {p0, v3, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->Content(ILandroidx/compose/runtime/GapComposer;)V

    .line 185
    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_6
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 189
    .line 190
    .line 191
    :goto_5
    return-object v5

    .line 192
    :pswitch_5
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 193
    .line 194
    check-cast p2, Ljava/lang/Number;

    .line 195
    .line 196
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    and-int/lit8 v0, p2, 0x3

    .line 201
    .line 202
    if-eq v0, v1, :cond_7

    .line 203
    .line 204
    move v0, v4

    .line 205
    goto :goto_6

    .line 206
    :cond_7
    move v0, v3

    .line 207
    :goto_6
    and-int/2addr p2, v4

    .line 208
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    if-eqz p2, :cond_9

    .line 213
    .line 214
    check-cast p0, Ljava/util/List;

    .line 215
    .line 216
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 217
    .line 218
    .line 219
    move-result p2

    .line 220
    move v0, v3

    .line 221
    :goto_7
    if-ge v0, p2, :cond_a

    .line 222
    .line 223
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 228
    .line 229
    iget-wide v6, p1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 230
    .line 231
    const/16 v2, 0x20

    .line 232
    .line 233
    ushr-long v8, v6, v2

    .line 234
    .line 235
    xor-long/2addr v6, v8

    .line 236
    long-to-int v2, v6

    .line 237
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 238
    .line 239
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->VirtualConstructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 243
    .line 244
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 245
    .line 246
    .line 247
    iget-boolean v7, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 248
    .line 249
    if-eqz v7, :cond_8

    .line 250
    .line 251
    invoke-virtual {p1, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 252
    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_8
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 256
    .line 257
    .line 258
    :goto_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 263
    .line 264
    invoke-static {p1, v2, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 265
    .line 266
    .line 267
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-interface {v1, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 275
    .line 276
    .line 277
    add-int/lit8 v0, v0, 0x1

    .line 278
    .line 279
    goto :goto_7

    .line 280
    :cond_9
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 281
    .line 282
    .line 283
    :cond_a
    return-object v5

    .line 284
    :pswitch_6
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 285
    .line 286
    check-cast p2, Landroidx/compose/ui/Modifier$Element;

    .line 287
    .line 288
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 289
    .line 290
    instance-of v0, p2, Landroidx/compose/ui/ComposedModifier;

    .line 291
    .line 292
    if-eqz v0, :cond_b

    .line 293
    .line 294
    check-cast p2, Landroidx/compose/ui/ComposedModifier;

    .line 295
    .line 296
    iget-object p2, p2, Landroidx/compose/ui/ComposedModifier;->factory:Lkotlin/jvm/functions/Function3;

    .line 297
    .line 298
    invoke-static {v2, p2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 302
    .line 303
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-interface {p2, v0, p0, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    check-cast p2, Landroidx/compose/ui/Modifier;

    .line 312
    .line 313
    invoke-static {p0, p2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeImpl(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    :cond_b
    invoke-interface {p1, p2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    return-object p0

    .line 322
    :pswitch_7
    check-cast p1, Landroidx/compose/animation/EnterExitState;

    .line 323
    .line 324
    check-cast p2, Landroidx/compose/animation/EnterExitState;

    .line 325
    .line 326
    sget-object v0, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    .line 327
    .line 328
    if-ne p1, v0, :cond_c

    .line 329
    .line 330
    if-ne p2, v0, :cond_c

    .line 331
    .line 332
    check-cast p0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 333
    .line 334
    iget-object p0, p0, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 335
    .line 336
    iget-boolean p0, p0, Landroidx/compose/animation/TransitionData;->hold:Z

    .line 337
    .line 338
    if-nez p0, :cond_c

    .line 339
    .line 340
    move v3, v4

    .line 341
    :cond_c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 342
    .line 343
    .line 344
    move-result-object p0

    .line 345
    return-object p0

    .line 346
    :pswitch_8
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 347
    .line 348
    check-cast p2, Ljava/lang/Number;

    .line 349
    .line 350
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 351
    .line 352
    .line 353
    check-cast p0, Landroidx/glance/GlanceModifier;

    .line 354
    .line 355
    invoke-static {p0, p1, v4}, Landroidx/work/Operation$State;->Spacer(Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 356
    .line 357
    .line 358
    return-object v5

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
